/*
 * AD7960 + AXI DMA + lwIP UDP sender (minimal version)
 */

#include <stdio.h>
#include <string.h>

#include "xparameters.h"
#include "xil_printf.h"
#include "xil_cache.h"
#include "xstatus.h"
#include "xil_io.h"

#include "netif/xadapter.h"
#include "platform.h"
#include "platform_config.h"

#include "xaxidma.h"

#include "lwip/tcp.h"
#include "lwip/udp.h"
#include "lwip/ip_addr.h"

#if LWIP_IPV6==1
#include "lwip/ip.h"
#else
#if LWIP_DHCP==1
#include "lwip/dhcp.h"
#endif
#endif

/* ===== lwIP 기본 선언 ===== */

void lwip_init();

#if LWIP_IPV6==0
#if LWIP_DHCP==1
extern volatile int dhcp_timoutcntr;
err_t dhcp_start(struct netif *netif);
#endif
#endif

extern volatile int TcpFastTmrFlag;
extern volatile int TcpSlowTmrFlag;

static struct netif server_netif;
struct netif *echo_netif;

/* IP 출력 유틸 (IPv4) */
#if LWIP_IPV6==0
void print_ip(char *msg, ip_addr_t *ip)
{
    print(msg);
    xil_printf("%d.%d.%d.%d\n\r", ip4_addr1(ip), ip4_addr2(ip),
               ip4_addr3(ip), ip4_addr4(ip));
}

void print_ip_settings(ip_addr_t *ip, ip_addr_t *mask, ip_addr_t *gw)
{
    print_ip("Board IP: ", ip);
    print_ip("Netmask : ", mask);
    print_ip("Gateway : ", gw);
}
#endif

/* ===== AD7960 + DMA 설정 ===== */

#define DMA_DEV_ID          XPAR_AXIDMA_0_DEVICE_ID

/* AD7960: 18bit bipolar, Vref = 5.000V 기준 (전압 계산은 여기선 안씀) */
#define ADC_VREF_MV         5000
#define ADC_FS_DIV          131072    /* 2^(18-1) */

/* 프레임당 샘플 수 (Verilog wrapper 의 FRAME_SAMPLES와 반드시 일치) */
#define FRAME_SAMPLES       8U
#define BYTES_PER_SAMPLE    4U
#define FRAME_BYTE_LEN      (FRAME_SAMPLES * BYTES_PER_SAMPLE)

/* 더블 버퍼 (DDR) */
#define RX_BUFFER_BASE_A    0x01000000U
#define RX_BUFFER_BASE_B    (RX_BUFFER_BASE_A + FRAME_BYTE_LEN)

static XAxiDma AxiDma;

/* ===== UDP 송신 관련 ===== */

static struct udp_pcb *udp_tx_pcb = NULL;
static ip_addr_t dest_ip;
static u16_t dest_port = 5005;   /* H4에서 받는 포트 */

/* ===== DMA 초기화/제어 ===== */

static int init_dma(void)
{
    int Status;
    XAxiDma_Config *CfgPtr;

    xil_printf("Initializing DMA...\r\n");

    CfgPtr = XAxiDma_LookupConfig(DMA_DEV_ID);
    if (CfgPtr == NULL) {
        xil_printf("No DMA config found!\r\n");
        return XST_FAILURE;
    }

    Status = XAxiDma_CfgInitialize(&AxiDma, CfgPtr);
    if (Status != XST_SUCCESS) {
        xil_printf("DMA init failed! status = %d\r\n", Status);
        return XST_FAILURE;
    }

    if (XAxiDma_HasSg(&AxiDma)) {
        xil_printf("Error: DMA is in SG mode! Need Simple mode.\r\n");
        return XST_FAILURE;
    }

    xil_printf("DMA init OK. RegBase=0x%08lx\r\n", AxiDma.RegBase);
    return XST_SUCCESS;
}

/* S2MM 채널 리셋 + 에러 플래그 클리어 (초기 1회만 호출) */
static void reset_s2mm(void)
{
    xil_printf("Resetting S2MM channel...\r\n");

    u32 s2mm_sr =
        XAxiDma_ReadReg(AxiDma.RegBase + XAXIDMA_RX_OFFSET, XAXIDMA_SR_OFFSET);

    /* 에러 비트 있으면 클리어 */
    if (s2mm_sr & XAXIDMA_ERR_ALL_MASK) {
        XAxiDma_WriteReg(AxiDma.RegBase + XAXIDMA_RX_OFFSET,
                         XAXIDMA_SR_OFFSET,
                         s2mm_sr | XAXIDMA_ERR_ALL_MASK);
        xil_printf("S2MM error flags cleared (before reset).\r\n");
    }

    XAxiDma_Reset(&AxiDma);
    while (!XAxiDma_ResetIsDone(&AxiDma)) {
        /* busy wait */
    }
    xil_printf("S2MM reset done.\r\n");
}

/* S2MM 전송 시작 (buf_base에 FRAME_BYTE_LEN 만큼 기록) */
static int start_dma_receive(u32 buf_base)
{
    u32 Status;

    /* DMA가 DDR에 새 데이터를 쓸 것이므로,
       시작 전에 굳이 invalidate 할 필요는 없음.
       (보낼 때 memcpy 전에 invalidate 한 번만 수행) */

    Status = XAxiDma_SimpleTransfer(
                 &AxiDma,
                 (UINTPTR)buf_base,
                 (u32)FRAME_BYTE_LEN,
                 XAXIDMA_DEVICE_TO_DMA);

    if (Status != XST_SUCCESS) {
        xil_printf("XAxiDma_SimpleTransfer failed! status=%lu\r\n", Status);
        return XST_FAILURE;
    }

    return XST_SUCCESS;
}

/* DMA 완료 대기 + 에러 체크 (정상일 땐 조용히 지나감) */
static int wait_for_dma_done(void)
{
    while (1) {
        u32 s2mm_sr =
            XAxiDma_ReadReg(AxiDma.RegBase + XAXIDMA_RX_OFFSET,
                            XAXIDMA_SR_OFFSET);

        if (s2mm_sr & XAXIDMA_ERR_ALL_MASK) {
            xil_printf("DMA error! S2MM_DMASR=0x%08lx\r\n", s2mm_sr);

            /* 에러 플래그 클리어 */
            XAxiDma_WriteReg(AxiDma.RegBase + XAXIDMA_RX_OFFSET,
                             XAXIDMA_SR_OFFSET,
                             s2mm_sr | XAXIDMA_ERR_ALL_MASK);
            return XST_FAILURE;
        }

        if (!XAxiDma_Busy(&AxiDma, XAXIDMA_DEVICE_TO_DMA)) {
            /* 정상 완료: 로그는 남기지 않음 */
            break;
        }
    }

    return XST_SUCCESS;
}

/* ===== UDP 송신: 한 프레임을 그대로 UDP 패킷으로 보내기 ====== */
/* 패킷 포맷:
 *  [0:3]  "AD96"
 *  [4:7]  frame_index (uint32, LE)
 *  [8:]   FRAME_SAMPLES * 4 bytes (raw 32-bit word)
 */

static void send_frame_udp(u32 buf_base, u32 frame_index)
{
    if (!udp_tx_pcb) {
        /* 초기화 실패했으면 그냥 패킷 버림 */
        return;
    }

    const u16_t payload_len = 8 + FRAME_BYTE_LEN;

    struct pbuf *p = pbuf_alloc(PBUF_TRANSPORT, payload_len, PBUF_RAM);
    if (!p) {
        /* 메모리 부족 시 그냥 드롭 */
        return;
    }

    u8_t *payload = (u8_t *)p->payload;

    /* 1) 매직 헤더 "AD96" */
    payload[0] = 'A';
    payload[1] = 'D';
    payload[2] = '9';
    payload[3] = '6';

    /* 2) frame_index (little-endian) */
    payload[4] = (u8_t)(frame_index & 0xFF);
    payload[5] = (u8_t)((frame_index >> 8) & 0xFF);
    payload[6] = (u8_t)((frame_index >> 16) & 0xFF);
    payload[7] = (u8_t)((frame_index >> 24) & 0xFF);

    /* 3) DMA가 써놓은 DDR 데이터를 UDP로 보낼 것이므로,
          memcpy 전에 캐시 무효화 */
    Xil_DCacheInvalidateRange(buf_base, FRAME_BYTE_LEN);

    memcpy(&payload[8], (void *)buf_base, FRAME_BYTE_LEN);

    err_t err = udp_send(udp_tx_pcb, p);
    if (err != ERR_OK) {
        /* 송신 실패 시 그냥 무시 (속도 우선) */
    }

    pbuf_free(p);
}

/* ===== main: lwIP 초기화 + DMA + UDP 연속 송신 루프 ===== */

int main()
{
#if LWIP_IPV6==0
    ip_addr_t ipaddr, netmask, gw;
#endif

    /* 보드 MAC 주소 */
    unsigned char mac_ethernet_address[] =
        { 0x00, 0x0a, 0x35, 0x00, 0x01, 0x02 };

    echo_netif = &server_netif;

    init_platform();

#if LWIP_IPV6==0
#if LWIP_DHCP==1
    ipaddr.addr = 0;
    gw.addr = 0;
    netmask.addr = 0;
#else
    /* Zynq 보드 고정 IP = 192.168.1.10 */
    IP4_ADDR(&ipaddr,  192, 168,   1, 10);
    IP4_ADDR(&netmask, 255, 255, 255,  0);
    IP4_ADDR(&gw,      192, 168,   1,  1);
#endif
#endif

    xil_printf("==== AD7960 + AXI DMA + lwIP UDP sender (FRAME_SAMPLES=%d, minimal) ====\r\n",
               (int)FRAME_SAMPLES);

    lwip_init();

#if (LWIP_IPV6 == 0)
    if (!xemac_add(echo_netif, &ipaddr, &netmask,
                   &gw, mac_ethernet_address,
                   PLATFORM_EMAC_BASEADDR)) {
        xil_printf("Error adding N/W interface\n\r");
        return -1;
    }
#else
    if (!xemac_add(echo_netif, NULL, NULL, NULL,
                   mac_ethernet_address,
                   PLATFORM_EMAC_BASEADDR)) {
        xil_printf("Error adding N/W interface\n\r");
        return -1;
    }
    echo_netif->ip6_autoconfig_enabled = 1;

    netif_create_ip6_linklocal_address(echo_netif, 1);
    netif_ip6_addr_set_state(echo_netif, 0, IP6_ADDR_VALID);
#endif

    netif_set_default(echo_netif);
    platform_enable_interrupts();
    netif_set_up(echo_netif);

#if (LWIP_IPV6 == 0)
#if (LWIP_DHCP==1)
    /* 현재는 static IP 권장이라, 필요 없으면 DHCP 부분은 꺼도 됨 */
    dhcp_start(echo_netif);
    dhcp_timoutcntr = 24;

    while(((echo_netif->ip_addr.addr) == 0) && (dhcp_timoutcntr > 0))
        xemacif_input(echo_netif);

    if (dhcp_timoutcntr <= 0) {
        if ((echo_netif->ip_addr.addr) == 0) {
            xil_printf("DHCP Timeout\r\n");
            xil_printf("Configuring default IP of 192.168.1.10\r\n");
            IP4_ADDR(&(echo_netif->ip_addr),  192, 168,   1, 10);
            IP4_ADDR(&(echo_netif->netmask), 255, 255, 255,  0);
            IP4_ADDR(&(echo_netif->gw),      192, 168,   1,  1);
        }
    }

    ipaddr.addr = echo_netif->ip_addr.addr;
    gw.addr = echo_netif->gw.addr;
    netmask.addr = echo_netif->netmask.addr;
#endif

    print_ip_settings(&ipaddr, &netmask, &gw);
#endif

    /* ===== DMA 초기화 ===== */
    if (init_dma() != XST_SUCCESS) {
        xil_printf("init_dma failed\r\n");
        return -1;
    }
    reset_s2mm();

    /* ===== UDP TX PCB 초기화 (목적지: H4) ===== */
    udp_tx_pcb = udp_new();
    if (!udp_tx_pcb) {
        xil_printf("udp_new failed\r\n");
        return -1;
    }
    /* H4 IP: 192.168.1.20 가정 (필요하면 수정) */
    IP4_ADDR(&dest_ip, 192, 168, 1, 20);
    udp_connect(udp_tx_pcb, &dest_ip, dest_port);
    xil_printf("UDP TX ready. Dest = %d.%d.%d.%d:%d\r\n",
               ip4_addr1(&dest_ip),
               ip4_addr2(&dest_ip),
               ip4_addr3(&dest_ip),
               ip4_addr4(&dest_ip),
               dest_port);

    /* ===== 반복 DMA + UDP 송신 루프 ===== */

    u32 cur_buf = RX_BUFFER_BASE_A;
    u32 frame_index = 0;

    while (1) {
        /* lwIP 타이머 처리 (ARP 등) */
        if (TcpFastTmrFlag) {
            tcp_fasttmr();
            TcpFastTmrFlag = 0;
        }
        if (TcpSlowTmrFlag) {
            tcp_slowtmr();
            TcpSlowTmrFlag = 0;
        }

        /* 이더넷 입력 처리 (ARP, ICMP 등) */
        xemacif_input(echo_netif);

        /* DMA 한 프레임 수집 */
        if (start_dma_receive(cur_buf) != XST_SUCCESS) {
            xil_printf("start_dma_receive failed\r\n");
            continue;
        }

        if (wait_for_dma_done() != XST_SUCCESS) {
            xil_printf("wait_for_dma_done failed\r\n");
            continue;
        }

        /* 수집된 프레임을 UDP로 전송 */
        send_frame_udp(cur_buf, frame_index);

        /* 더블 버퍼 스왑 */
        if (cur_buf == RX_BUFFER_BASE_A)
            cur_buf = RX_BUFFER_BASE_B;
        else
            cur_buf = RX_BUFFER_BASE_A;

        frame_index++;
    }

    /* 도달하지 않음 */
    cleanup_platform();
    return 0;
}
