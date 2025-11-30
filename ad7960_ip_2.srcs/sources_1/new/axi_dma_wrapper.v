module ad7960_axis_wrapper (
    input  wire        clk,
    input  wire        resetn,

    // From AD7960 module
    input  wire [17:0] adc_data,   // data_o
    input  wire        adc_valid,  // data_rd_rdy_o (1클럭짜리 strobe 가정)

    // AXI Stream output to DMA (S2MM)
    output reg  [31:0] m_axis_tdata,
    output reg         m_axis_tvalid,
    input  wire        m_axis_tready,
    output reg         m_axis_tlast
);

    //----------------------------------------------------------------------
    // 프레임 길이 (샘플 개수)
    //  - Vitis 쪽 FRAME_SAMPLES, FRAME_BYTE_LEN(=FRAME_SAMPLES*4) 과 일치해야 함
    //----------------------------------------------------------------------
    localparam integer FRAME_SAMPLES = 8;   // 지금은 8, 나중에 키워도 됨
    //----------------------------------------------------------------------
    // 상태 및 카운터
    //  - frame_active = 1 이면 "이번 DMA 프레임용 스트림 전송 중"
    //  - sample_cnt   = 현재 프레임에서 보낸 샘플 개수 (0~FRAME_SAMPLES-1)
    //----------------------------------------------------------------------
    reg        frame_active;
    reg [7:0]  sample_cnt;   // 최대 255샘플까지 사용 가능 (필요하면 폭 늘리면 됨)

    always @(posedge clk) begin
        if (!resetn) begin
            frame_active   <= 1'b0;
            sample_cnt     <= 8'd0;
            m_axis_tdata   <= 32'd0;
            m_axis_tvalid  <= 1'b0;
            m_axis_tlast   <= 1'b0;
        end else begin
            // 핸드셰이크 완료 후에는 VALID / TLAST 내려주기
            if (m_axis_tvalid && m_axis_tready) begin
                m_axis_tvalid <= 1'b0;
                if (m_axis_tlast)
                    m_axis_tlast <= 1'b0;
            end

            //--------------------------------------------------------------
            // 1) DMA 프레임이 아직 시작되지 않은 상태
            //--------------------------------------------------------------
            if (!frame_active) begin
                // DMA가 SimpleTransfer 호출되면 S2MM 쪽에서 TREADY를 1로 올림
                // 이때를 "새 프레임 시작"으로 봄
                if (m_axis_tready) begin
                    frame_active <= 1'b1;
                    sample_cnt   <= 8'd0;
                end
            end

            //--------------------------------------------------------------
            // 2) frame_active = 1 → 이번 프레임에서 샘플 보내는 중
            //--------------------------------------------------------------
            else begin
                // adc_valid가 뜨고, DMA가 받을 준비(TREADY=1)면 샘플 전송
                if (adc_valid && m_axis_tready) begin
                    // 18bit ADC를 하위 18비트에 배치 (상위 14비트는 0)
                    m_axis_tdata  <= {14'd0, adc_data};
                    m_axis_tvalid <= 1'b1;

                    // 마지막 샘플인지 확인
                    if (sample_cnt == FRAME_SAMPLES-1) begin
                        m_axis_tlast   <= 1'b1;  // 프레임 마지막 beat
                        frame_active   <= 1'b0;  // 프레임 종료, 다음 DMA를 기다림
                        sample_cnt     <= 8'd0;  // 다음 프레임을 위해 0으로
                    end else begin
                        m_axis_tlast   <= 1'b0;
                        sample_cnt     <= sample_cnt + 1'b1;
                    end
                end
                // adc_valid가 0인 클럭에는 아무 것도 안 함 (샘플 대기)
            end
        end
    end

endmodule
