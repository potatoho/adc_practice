// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sun Nov  2 20:23:07 2025
// Host        : sunset running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/annoa/ad7960_ip_1/ad7960_ip_1.gen/sources_1/bd/design_1/ip/design_1_AD7960_0_0/design_1_AD7960_0_0_sim_netlist.v
// Design      : design_1_AD7960_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu7ev-ffvc1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_AD7960_0_0,AD7960,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "AD7960,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module design_1_AD7960_0_0
   (m_clk_i,
    fast_clk_i,
    reset_n_i,
    en_i,
    d_pos_i,
    d_neg_i,
    dco_pos_i,
    dco_neg_i,
    en_o,
    cnv_pos_o,
    cnv_neg_o,
    clk_pos_o,
    clk_neg_o,
    data_rd_rdy_o,
    data_o);
  input m_clk_i;
  input fast_clk_i;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset_n_i RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset_n_i, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset_n_i;
  input [3:0]en_i;
  input d_pos_i;
  input d_neg_i;
  input dco_pos_i;
  input dco_neg_i;
  output [3:0]en_o;
  output cnv_pos_o;
  output cnv_neg_o;
  output clk_pos_o;
  output clk_neg_o;
  output data_rd_rdy_o;
  output [17:0]data_o;

  (* IOSTANDARD = "LVDS" *) (* SLEW = "FAST" *) wire clk_neg_o;
  (* IOSTANDARD = "LVDS" *) (* SLEW = "FAST" *) wire clk_pos_o;
  (* IOSTANDARD = "LVDS" *) (* SLEW = "FAST" *) wire cnv_neg_o;
  (* IOSTANDARD = "LVDS" *) (* SLEW = "FAST" *) wire cnv_pos_o;
  (* DIFF_TERM_ADV = "TERM_100" *) (* IBUF_LOW_PWR = 0 *) (* IOSTANDARD = "LVDS" *) wire d_neg_i;
  (* DIFF_TERM_ADV = "TERM_100" *) (* IBUF_LOW_PWR = 0 *) (* IOSTANDARD = "LVDS" *) wire d_pos_i;
  wire [17:0]data_o;
  wire data_rd_rdy_o;
  (* DIFF_TERM_ADV = "TERM_100" *) (* IBUF_LOW_PWR = 0 *) (* IOSTANDARD = "LVDS" *) wire dco_neg_i;
  (* DIFF_TERM_ADV = "TERM_100" *) (* IBUF_LOW_PWR = 0 *) (* IOSTANDARD = "LVDS" *) wire dco_pos_i;
  wire [3:0]en_i;
  wire fast_clk_i;
  wire m_clk_i;
  wire reset_n_i;

  assign en_o[3:0] = en_i;
  design_1_AD7960_0_0_AD7960 inst
       (.clk_neg_o(clk_neg_o),
        .clk_pos_o(clk_pos_o),
        .cnv_neg_o(cnv_neg_o),
        .cnv_pos_o(cnv_pos_o),
        .d_neg_i(d_neg_i),
        .d_pos_i(d_pos_i),
        .data_o(data_o),
        .data_rd_rdy_o(data_rd_rdy_o),
        .dco_neg_i(dco_neg_i),
        .dco_pos_i(dco_pos_i),
        .fast_clk_i(fast_clk_i),
        .m_clk_i(m_clk_i),
        .reset_n_i(reset_n_i));
endmodule

(* ORIG_REF_NAME = "AD7960" *) 
module design_1_AD7960_0_0_AD7960
   (cnv_pos_o,
    cnv_neg_o,
    clk_pos_o,
    clk_neg_o,
    data_o,
    data_rd_rdy_o,
    d_pos_i,
    d_neg_i,
    dco_pos_i,
    dco_neg_i,
    fast_clk_i,
    m_clk_i,
    reset_n_i);
  output cnv_pos_o;
  output cnv_neg_o;
  output clk_pos_o;
  output clk_neg_o;
  output [17:0]data_o;
  output data_rd_rdy_o;
  input d_pos_i;
  input d_neg_i;
  input dco_pos_i;
  input dco_neg_i;
  input fast_clk_i;
  input m_clk_i;
  input reset_n_i;

  wire Clock_Out_OBUFDS_i_2_n_0;
  wire Clock_Out_OBUFDS_i_3_n_0;
  wire Clock_Out_OBUFDS_i_4_n_0;
  wire Clock_Out_OBUFDS_i_5_n_0;
  wire Clock_Out_OBUFDS_i_6_n_0;
  wire Clock_Out_OBUFDS_i_7_n_0;
  wire Cnv_Out_OBUFDS_i_2_n_0;
  wire I0;
  wire \adc_tcyc_cnt[0]_i_10_n_0 ;
  wire \adc_tcyc_cnt[0]_i_1_n_0 ;
  wire \adc_tcyc_cnt[0]_i_3_n_0 ;
  wire \adc_tcyc_cnt[0]_i_4_n_0 ;
  wire \adc_tcyc_cnt[0]_i_5_n_0 ;
  wire \adc_tcyc_cnt[0]_i_6_n_0 ;
  wire \adc_tcyc_cnt[0]_i_7_n_0 ;
  wire \adc_tcyc_cnt[0]_i_8_n_0 ;
  wire \adc_tcyc_cnt[0]_i_9_n_0 ;
  wire \adc_tcyc_cnt[16]_i_2_n_0 ;
  wire \adc_tcyc_cnt[16]_i_3_n_0 ;
  wire \adc_tcyc_cnt[16]_i_4_n_0 ;
  wire \adc_tcyc_cnt[16]_i_5_n_0 ;
  wire \adc_tcyc_cnt[16]_i_6_n_0 ;
  wire \adc_tcyc_cnt[16]_i_7_n_0 ;
  wire \adc_tcyc_cnt[16]_i_8_n_0 ;
  wire \adc_tcyc_cnt[16]_i_9_n_0 ;
  wire \adc_tcyc_cnt[24]_i_2_n_0 ;
  wire \adc_tcyc_cnt[24]_i_3_n_0 ;
  wire \adc_tcyc_cnt[24]_i_4_n_0 ;
  wire \adc_tcyc_cnt[24]_i_5_n_0 ;
  wire \adc_tcyc_cnt[24]_i_6_n_0 ;
  wire \adc_tcyc_cnt[24]_i_7_n_0 ;
  wire \adc_tcyc_cnt[24]_i_8_n_0 ;
  wire \adc_tcyc_cnt[24]_i_9_n_0 ;
  wire \adc_tcyc_cnt[8]_i_2_n_0 ;
  wire \adc_tcyc_cnt[8]_i_3_n_0 ;
  wire \adc_tcyc_cnt[8]_i_4_n_0 ;
  wire \adc_tcyc_cnt[8]_i_5_n_0 ;
  wire \adc_tcyc_cnt[8]_i_6_n_0 ;
  wire \adc_tcyc_cnt[8]_i_7_n_0 ;
  wire \adc_tcyc_cnt[8]_i_8_n_0 ;
  wire \adc_tcyc_cnt[8]_i_9_n_0 ;
  wire [31:0]adc_tcyc_cnt_reg;
  wire \adc_tcyc_cnt_reg[0]_i_2_n_0 ;
  wire \adc_tcyc_cnt_reg[0]_i_2_n_1 ;
  wire \adc_tcyc_cnt_reg[0]_i_2_n_10 ;
  wire \adc_tcyc_cnt_reg[0]_i_2_n_11 ;
  wire \adc_tcyc_cnt_reg[0]_i_2_n_12 ;
  wire \adc_tcyc_cnt_reg[0]_i_2_n_13 ;
  wire \adc_tcyc_cnt_reg[0]_i_2_n_14 ;
  wire \adc_tcyc_cnt_reg[0]_i_2_n_15 ;
  wire \adc_tcyc_cnt_reg[0]_i_2_n_2 ;
  wire \adc_tcyc_cnt_reg[0]_i_2_n_3 ;
  wire \adc_tcyc_cnt_reg[0]_i_2_n_4 ;
  wire \adc_tcyc_cnt_reg[0]_i_2_n_5 ;
  wire \adc_tcyc_cnt_reg[0]_i_2_n_6 ;
  wire \adc_tcyc_cnt_reg[0]_i_2_n_7 ;
  wire \adc_tcyc_cnt_reg[0]_i_2_n_8 ;
  wire \adc_tcyc_cnt_reg[0]_i_2_n_9 ;
  wire \adc_tcyc_cnt_reg[16]_i_1_n_0 ;
  wire \adc_tcyc_cnt_reg[16]_i_1_n_1 ;
  wire \adc_tcyc_cnt_reg[16]_i_1_n_10 ;
  wire \adc_tcyc_cnt_reg[16]_i_1_n_11 ;
  wire \adc_tcyc_cnt_reg[16]_i_1_n_12 ;
  wire \adc_tcyc_cnt_reg[16]_i_1_n_13 ;
  wire \adc_tcyc_cnt_reg[16]_i_1_n_14 ;
  wire \adc_tcyc_cnt_reg[16]_i_1_n_15 ;
  wire \adc_tcyc_cnt_reg[16]_i_1_n_2 ;
  wire \adc_tcyc_cnt_reg[16]_i_1_n_3 ;
  wire \adc_tcyc_cnt_reg[16]_i_1_n_4 ;
  wire \adc_tcyc_cnt_reg[16]_i_1_n_5 ;
  wire \adc_tcyc_cnt_reg[16]_i_1_n_6 ;
  wire \adc_tcyc_cnt_reg[16]_i_1_n_7 ;
  wire \adc_tcyc_cnt_reg[16]_i_1_n_8 ;
  wire \adc_tcyc_cnt_reg[16]_i_1_n_9 ;
  wire \adc_tcyc_cnt_reg[24]_i_1_n_1 ;
  wire \adc_tcyc_cnt_reg[24]_i_1_n_10 ;
  wire \adc_tcyc_cnt_reg[24]_i_1_n_11 ;
  wire \adc_tcyc_cnt_reg[24]_i_1_n_12 ;
  wire \adc_tcyc_cnt_reg[24]_i_1_n_13 ;
  wire \adc_tcyc_cnt_reg[24]_i_1_n_14 ;
  wire \adc_tcyc_cnt_reg[24]_i_1_n_15 ;
  wire \adc_tcyc_cnt_reg[24]_i_1_n_2 ;
  wire \adc_tcyc_cnt_reg[24]_i_1_n_3 ;
  wire \adc_tcyc_cnt_reg[24]_i_1_n_4 ;
  wire \adc_tcyc_cnt_reg[24]_i_1_n_5 ;
  wire \adc_tcyc_cnt_reg[24]_i_1_n_6 ;
  wire \adc_tcyc_cnt_reg[24]_i_1_n_7 ;
  wire \adc_tcyc_cnt_reg[24]_i_1_n_8 ;
  wire \adc_tcyc_cnt_reg[24]_i_1_n_9 ;
  wire \adc_tcyc_cnt_reg[8]_i_1_n_0 ;
  wire \adc_tcyc_cnt_reg[8]_i_1_n_1 ;
  wire \adc_tcyc_cnt_reg[8]_i_1_n_10 ;
  wire \adc_tcyc_cnt_reg[8]_i_1_n_11 ;
  wire \adc_tcyc_cnt_reg[8]_i_1_n_12 ;
  wire \adc_tcyc_cnt_reg[8]_i_1_n_13 ;
  wire \adc_tcyc_cnt_reg[8]_i_1_n_14 ;
  wire \adc_tcyc_cnt_reg[8]_i_1_n_15 ;
  wire \adc_tcyc_cnt_reg[8]_i_1_n_2 ;
  wire \adc_tcyc_cnt_reg[8]_i_1_n_3 ;
  wire \adc_tcyc_cnt_reg[8]_i_1_n_4 ;
  wire \adc_tcyc_cnt_reg[8]_i_1_n_5 ;
  wire \adc_tcyc_cnt_reg[8]_i_1_n_6 ;
  wire \adc_tcyc_cnt_reg[8]_i_1_n_7 ;
  wire \adc_tcyc_cnt_reg[8]_i_1_n_8 ;
  wire \adc_tcyc_cnt_reg[8]_i_1_n_9 ;
  wire buffer_reset_s;
  wire clk_neg_o;
  wire clk_pos_o;
  wire cnv_neg_o;
  wire cnv_pos_o;
  wire cnv_s;
  wire d_neg_i;
  wire d_pos_i;
  wire [17:0]data_o;
  wire data_rd_rdy_o;
  wire data_rd_rdy_o_INST_0_i_1_n_0;
  wire data_rd_rdy_o_INST_0_i_2_n_0;
  wire data_rd_rdy_o_INST_0_i_3_n_0;
  wire data_rd_rdy_o_INST_0_i_4_n_0;
  wire data_rd_rdy_o_INST_0_i_5_n_0;
  wire data_rd_rdy_o_INST_0_i_6_n_0;
  wire data_rd_rdy_o_INST_0_i_7_n_0;
  wire data_rd_rdy_o_INST_0_i_8_n_0;
  wire dco_neg_i;
  wire dco_pos_i;
  wire fast_clk_i;
  wire m_clk_i;
  wire reset_n_i;
  wire [4:0]sclk_cnt0;
  wire sclk_cnt0_0;
  wire \sclk_cnt[4]_i_3_n_0 ;
  wire [4:0]sclk_cnt_reg;
  wire [4:0]sclk_echo_cnt0;
  wire [4:0]sclk_echo_cnt_reg;
  wire sclk_s;
  wire sdi_s;
  wire sel;
  wire [2:0]serial_next_state;
  wire [2:0]serial_present_state;
  wire \serial_present_state[2]_i_1_n_0 ;
  wire \serial_present_state[2]_i_2_n_0 ;
  wire \serial_present_state[2]_i_4_n_0 ;
  wire \serial_present_state[2]_i_5_n_0 ;
  wire serial_read_done_s_i_1_n_0;
  wire serial_read_done_s_reg_n_0;
  wire [7:7]\NLW_adc_tcyc_cnt_reg[24]_i_1_CO_UNCONNECTED ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  OBUFDS Clock_Out_OBUFDS
       (.I(I0),
        .O(clk_pos_o),
        .OB(clk_neg_o));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    Clock_Out_OBUFDS_i_1
       (.I0(adc_tcyc_cnt_reg[0]),
        .I1(Clock_Out_OBUFDS_i_2_n_0),
        .I2(data_rd_rdy_o_INST_0_i_2_n_0),
        .I3(adc_tcyc_cnt_reg[4]),
        .I4(Clock_Out_OBUFDS_i_3_n_0),
        .I5(Clock_Out_OBUFDS_i_4_n_0),
        .O(I0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    Clock_Out_OBUFDS_i_2
       (.I0(data_rd_rdy_o_INST_0_i_7_n_0),
        .I1(Clock_Out_OBUFDS_i_5_n_0),
        .I2(data_rd_rdy_o_INST_0_i_8_n_0),
        .I3(Clock_Out_OBUFDS_i_6_n_0),
        .O(Clock_Out_OBUFDS_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    Clock_Out_OBUFDS_i_3
       (.I0(adc_tcyc_cnt_reg[3]),
        .I1(adc_tcyc_cnt_reg[2]),
        .I2(adc_tcyc_cnt_reg[1]),
        .O(Clock_Out_OBUFDS_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00200000)) 
    Clock_Out_OBUFDS_i_4
       (.I0(Clock_Out_OBUFDS_i_7_n_0),
        .I1(serial_present_state[0]),
        .I2(serial_present_state[1]),
        .I3(serial_present_state[2]),
        .I4(fast_clk_i),
        .O(Clock_Out_OBUFDS_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    Clock_Out_OBUFDS_i_5
       (.I0(adc_tcyc_cnt_reg[11]),
        .I1(adc_tcyc_cnt_reg[10]),
        .I2(adc_tcyc_cnt_reg[13]),
        .I3(adc_tcyc_cnt_reg[12]),
        .O(Clock_Out_OBUFDS_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    Clock_Out_OBUFDS_i_6
       (.I0(adc_tcyc_cnt_reg[19]),
        .I1(adc_tcyc_cnt_reg[18]),
        .I2(adc_tcyc_cnt_reg[21]),
        .I3(adc_tcyc_cnt_reg[20]),
        .O(Clock_Out_OBUFDS_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    Clock_Out_OBUFDS_i_7
       (.I0(sclk_cnt_reg[3]),
        .I1(sclk_cnt_reg[1]),
        .I2(sclk_cnt_reg[0]),
        .I3(sclk_cnt_reg[2]),
        .I4(sclk_cnt_reg[4]),
        .O(Clock_Out_OBUFDS_i_7_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  OBUFDS Cnv_Out_OBUFDS
       (.I(cnv_s),
        .O(cnv_pos_o),
        .OB(cnv_neg_o));
  LUT5 #(
    .INIT(32'hFFFFFFF8)) 
    Cnv_Out_OBUFDS_i_1
       (.I0(adc_tcyc_cnt_reg[4]),
        .I1(Cnv_Out_OBUFDS_i_2_n_0),
        .I2(data_rd_rdy_o_INST_0_i_2_n_0),
        .I3(data_rd_rdy_o_INST_0_i_3_n_0),
        .I4(data_rd_rdy_o_INST_0_i_4_n_0),
        .O(cnv_s));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    Cnv_Out_OBUFDS_i_2
       (.I0(adc_tcyc_cnt_reg[3]),
        .I1(adc_tcyc_cnt_reg[2]),
        .I2(adc_tcyc_cnt_reg[1]),
        .O(Cnv_Out_OBUFDS_i_2_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS #(
    .CCIO_EN_M("TRUE"),
    .CCIO_EN_S("TRUE")) 
    Data_In_IBUFDS
       (.I(d_pos_i),
        .IB(d_neg_i),
        .O(sdi_s));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS #(
    .CCIO_EN_M("TRUE"),
    .CCIO_EN_S("TRUE")) 
    Serial_Clock_In_IBUFDS
       (.I(dco_pos_i),
        .IB(dco_neg_i),
        .O(sclk_s));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    \adc_tcyc_cnt[0]_i_1 
       (.I0(adc_tcyc_cnt_reg[0]),
        .I1(Clock_Out_OBUFDS_i_2_n_0),
        .I2(data_rd_rdy_o_INST_0_i_2_n_0),
        .I3(adc_tcyc_cnt_reg[4]),
        .I4(Cnv_Out_OBUFDS_i_2_n_0),
        .I5(reset_n_i),
        .O(\adc_tcyc_cnt[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \adc_tcyc_cnt[0]_i_10 
       (.I0(adc_tcyc_cnt_reg[0]),
        .O(\adc_tcyc_cnt[0]_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \adc_tcyc_cnt[0]_i_3 
       (.I0(adc_tcyc_cnt_reg[7]),
        .O(\adc_tcyc_cnt[0]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \adc_tcyc_cnt[0]_i_4 
       (.I0(adc_tcyc_cnt_reg[6]),
        .O(\adc_tcyc_cnt[0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \adc_tcyc_cnt[0]_i_5 
       (.I0(adc_tcyc_cnt_reg[5]),
        .O(\adc_tcyc_cnt[0]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \adc_tcyc_cnt[0]_i_6 
       (.I0(adc_tcyc_cnt_reg[4]),
        .O(\adc_tcyc_cnt[0]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \adc_tcyc_cnt[0]_i_7 
       (.I0(adc_tcyc_cnt_reg[3]),
        .O(\adc_tcyc_cnt[0]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \adc_tcyc_cnt[0]_i_8 
       (.I0(adc_tcyc_cnt_reg[2]),
        .O(\adc_tcyc_cnt[0]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \adc_tcyc_cnt[0]_i_9 
       (.I0(adc_tcyc_cnt_reg[1]),
        .O(\adc_tcyc_cnt[0]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \adc_tcyc_cnt[16]_i_2 
       (.I0(adc_tcyc_cnt_reg[23]),
        .O(\adc_tcyc_cnt[16]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \adc_tcyc_cnt[16]_i_3 
       (.I0(adc_tcyc_cnt_reg[22]),
        .O(\adc_tcyc_cnt[16]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \adc_tcyc_cnt[16]_i_4 
       (.I0(adc_tcyc_cnt_reg[21]),
        .O(\adc_tcyc_cnt[16]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \adc_tcyc_cnt[16]_i_5 
       (.I0(adc_tcyc_cnt_reg[20]),
        .O(\adc_tcyc_cnt[16]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \adc_tcyc_cnt[16]_i_6 
       (.I0(adc_tcyc_cnt_reg[19]),
        .O(\adc_tcyc_cnt[16]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \adc_tcyc_cnt[16]_i_7 
       (.I0(adc_tcyc_cnt_reg[18]),
        .O(\adc_tcyc_cnt[16]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \adc_tcyc_cnt[16]_i_8 
       (.I0(adc_tcyc_cnt_reg[17]),
        .O(\adc_tcyc_cnt[16]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \adc_tcyc_cnt[16]_i_9 
       (.I0(adc_tcyc_cnt_reg[16]),
        .O(\adc_tcyc_cnt[16]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \adc_tcyc_cnt[24]_i_2 
       (.I0(adc_tcyc_cnt_reg[31]),
        .O(\adc_tcyc_cnt[24]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \adc_tcyc_cnt[24]_i_3 
       (.I0(adc_tcyc_cnt_reg[30]),
        .O(\adc_tcyc_cnt[24]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \adc_tcyc_cnt[24]_i_4 
       (.I0(adc_tcyc_cnt_reg[29]),
        .O(\adc_tcyc_cnt[24]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \adc_tcyc_cnt[24]_i_5 
       (.I0(adc_tcyc_cnt_reg[28]),
        .O(\adc_tcyc_cnt[24]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \adc_tcyc_cnt[24]_i_6 
       (.I0(adc_tcyc_cnt_reg[27]),
        .O(\adc_tcyc_cnt[24]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \adc_tcyc_cnt[24]_i_7 
       (.I0(adc_tcyc_cnt_reg[26]),
        .O(\adc_tcyc_cnt[24]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \adc_tcyc_cnt[24]_i_8 
       (.I0(adc_tcyc_cnt_reg[25]),
        .O(\adc_tcyc_cnt[24]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \adc_tcyc_cnt[24]_i_9 
       (.I0(adc_tcyc_cnt_reg[24]),
        .O(\adc_tcyc_cnt[24]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \adc_tcyc_cnt[8]_i_2 
       (.I0(adc_tcyc_cnt_reg[15]),
        .O(\adc_tcyc_cnt[8]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \adc_tcyc_cnt[8]_i_3 
       (.I0(adc_tcyc_cnt_reg[14]),
        .O(\adc_tcyc_cnt[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \adc_tcyc_cnt[8]_i_4 
       (.I0(adc_tcyc_cnt_reg[13]),
        .O(\adc_tcyc_cnt[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \adc_tcyc_cnt[8]_i_5 
       (.I0(adc_tcyc_cnt_reg[12]),
        .O(\adc_tcyc_cnt[8]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \adc_tcyc_cnt[8]_i_6 
       (.I0(adc_tcyc_cnt_reg[11]),
        .O(\adc_tcyc_cnt[8]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \adc_tcyc_cnt[8]_i_7 
       (.I0(adc_tcyc_cnt_reg[10]),
        .O(\adc_tcyc_cnt[8]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \adc_tcyc_cnt[8]_i_8 
       (.I0(adc_tcyc_cnt_reg[9]),
        .O(\adc_tcyc_cnt[8]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \adc_tcyc_cnt[8]_i_9 
       (.I0(adc_tcyc_cnt_reg[8]),
        .O(\adc_tcyc_cnt[8]_i_9_n_0 ));
  FDSE \adc_tcyc_cnt_reg[0] 
       (.C(m_clk_i),
        .CE(1'b1),
        .D(\adc_tcyc_cnt_reg[0]_i_2_n_15 ),
        .Q(adc_tcyc_cnt_reg[0]),
        .S(\adc_tcyc_cnt[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \adc_tcyc_cnt_reg[0]_i_2 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\adc_tcyc_cnt_reg[0]_i_2_n_0 ,\adc_tcyc_cnt_reg[0]_i_2_n_1 ,\adc_tcyc_cnt_reg[0]_i_2_n_2 ,\adc_tcyc_cnt_reg[0]_i_2_n_3 ,\adc_tcyc_cnt_reg[0]_i_2_n_4 ,\adc_tcyc_cnt_reg[0]_i_2_n_5 ,\adc_tcyc_cnt_reg[0]_i_2_n_6 ,\adc_tcyc_cnt_reg[0]_i_2_n_7 }),
        .DI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .O({\adc_tcyc_cnt_reg[0]_i_2_n_8 ,\adc_tcyc_cnt_reg[0]_i_2_n_9 ,\adc_tcyc_cnt_reg[0]_i_2_n_10 ,\adc_tcyc_cnt_reg[0]_i_2_n_11 ,\adc_tcyc_cnt_reg[0]_i_2_n_12 ,\adc_tcyc_cnt_reg[0]_i_2_n_13 ,\adc_tcyc_cnt_reg[0]_i_2_n_14 ,\adc_tcyc_cnt_reg[0]_i_2_n_15 }),
        .S({\adc_tcyc_cnt[0]_i_3_n_0 ,\adc_tcyc_cnt[0]_i_4_n_0 ,\adc_tcyc_cnt[0]_i_5_n_0 ,\adc_tcyc_cnt[0]_i_6_n_0 ,\adc_tcyc_cnt[0]_i_7_n_0 ,\adc_tcyc_cnt[0]_i_8_n_0 ,\adc_tcyc_cnt[0]_i_9_n_0 ,\adc_tcyc_cnt[0]_i_10_n_0 }));
  FDRE \adc_tcyc_cnt_reg[10] 
       (.C(m_clk_i),
        .CE(1'b1),
        .D(\adc_tcyc_cnt_reg[8]_i_1_n_13 ),
        .Q(adc_tcyc_cnt_reg[10]),
        .R(\adc_tcyc_cnt[0]_i_1_n_0 ));
  FDRE \adc_tcyc_cnt_reg[11] 
       (.C(m_clk_i),
        .CE(1'b1),
        .D(\adc_tcyc_cnt_reg[8]_i_1_n_12 ),
        .Q(adc_tcyc_cnt_reg[11]),
        .R(\adc_tcyc_cnt[0]_i_1_n_0 ));
  FDRE \adc_tcyc_cnt_reg[12] 
       (.C(m_clk_i),
        .CE(1'b1),
        .D(\adc_tcyc_cnt_reg[8]_i_1_n_11 ),
        .Q(adc_tcyc_cnt_reg[12]),
        .R(\adc_tcyc_cnt[0]_i_1_n_0 ));
  FDRE \adc_tcyc_cnt_reg[13] 
       (.C(m_clk_i),
        .CE(1'b1),
        .D(\adc_tcyc_cnt_reg[8]_i_1_n_10 ),
        .Q(adc_tcyc_cnt_reg[13]),
        .R(\adc_tcyc_cnt[0]_i_1_n_0 ));
  FDRE \adc_tcyc_cnt_reg[14] 
       (.C(m_clk_i),
        .CE(1'b1),
        .D(\adc_tcyc_cnt_reg[8]_i_1_n_9 ),
        .Q(adc_tcyc_cnt_reg[14]),
        .R(\adc_tcyc_cnt[0]_i_1_n_0 ));
  FDRE \adc_tcyc_cnt_reg[15] 
       (.C(m_clk_i),
        .CE(1'b1),
        .D(\adc_tcyc_cnt_reg[8]_i_1_n_8 ),
        .Q(adc_tcyc_cnt_reg[15]),
        .R(\adc_tcyc_cnt[0]_i_1_n_0 ));
  FDRE \adc_tcyc_cnt_reg[16] 
       (.C(m_clk_i),
        .CE(1'b1),
        .D(\adc_tcyc_cnt_reg[16]_i_1_n_15 ),
        .Q(adc_tcyc_cnt_reg[16]),
        .R(\adc_tcyc_cnt[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \adc_tcyc_cnt_reg[16]_i_1 
       (.CI(\adc_tcyc_cnt_reg[8]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\adc_tcyc_cnt_reg[16]_i_1_n_0 ,\adc_tcyc_cnt_reg[16]_i_1_n_1 ,\adc_tcyc_cnt_reg[16]_i_1_n_2 ,\adc_tcyc_cnt_reg[16]_i_1_n_3 ,\adc_tcyc_cnt_reg[16]_i_1_n_4 ,\adc_tcyc_cnt_reg[16]_i_1_n_5 ,\adc_tcyc_cnt_reg[16]_i_1_n_6 ,\adc_tcyc_cnt_reg[16]_i_1_n_7 }),
        .DI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .O({\adc_tcyc_cnt_reg[16]_i_1_n_8 ,\adc_tcyc_cnt_reg[16]_i_1_n_9 ,\adc_tcyc_cnt_reg[16]_i_1_n_10 ,\adc_tcyc_cnt_reg[16]_i_1_n_11 ,\adc_tcyc_cnt_reg[16]_i_1_n_12 ,\adc_tcyc_cnt_reg[16]_i_1_n_13 ,\adc_tcyc_cnt_reg[16]_i_1_n_14 ,\adc_tcyc_cnt_reg[16]_i_1_n_15 }),
        .S({\adc_tcyc_cnt[16]_i_2_n_0 ,\adc_tcyc_cnt[16]_i_3_n_0 ,\adc_tcyc_cnt[16]_i_4_n_0 ,\adc_tcyc_cnt[16]_i_5_n_0 ,\adc_tcyc_cnt[16]_i_6_n_0 ,\adc_tcyc_cnt[16]_i_7_n_0 ,\adc_tcyc_cnt[16]_i_8_n_0 ,\adc_tcyc_cnt[16]_i_9_n_0 }));
  FDRE \adc_tcyc_cnt_reg[17] 
       (.C(m_clk_i),
        .CE(1'b1),
        .D(\adc_tcyc_cnt_reg[16]_i_1_n_14 ),
        .Q(adc_tcyc_cnt_reg[17]),
        .R(\adc_tcyc_cnt[0]_i_1_n_0 ));
  FDRE \adc_tcyc_cnt_reg[18] 
       (.C(m_clk_i),
        .CE(1'b1),
        .D(\adc_tcyc_cnt_reg[16]_i_1_n_13 ),
        .Q(adc_tcyc_cnt_reg[18]),
        .R(\adc_tcyc_cnt[0]_i_1_n_0 ));
  FDRE \adc_tcyc_cnt_reg[19] 
       (.C(m_clk_i),
        .CE(1'b1),
        .D(\adc_tcyc_cnt_reg[16]_i_1_n_12 ),
        .Q(adc_tcyc_cnt_reg[19]),
        .R(\adc_tcyc_cnt[0]_i_1_n_0 ));
  FDSE \adc_tcyc_cnt_reg[1] 
       (.C(m_clk_i),
        .CE(1'b1),
        .D(\adc_tcyc_cnt_reg[0]_i_2_n_14 ),
        .Q(adc_tcyc_cnt_reg[1]),
        .S(\adc_tcyc_cnt[0]_i_1_n_0 ));
  FDRE \adc_tcyc_cnt_reg[20] 
       (.C(m_clk_i),
        .CE(1'b1),
        .D(\adc_tcyc_cnt_reg[16]_i_1_n_11 ),
        .Q(adc_tcyc_cnt_reg[20]),
        .R(\adc_tcyc_cnt[0]_i_1_n_0 ));
  FDRE \adc_tcyc_cnt_reg[21] 
       (.C(m_clk_i),
        .CE(1'b1),
        .D(\adc_tcyc_cnt_reg[16]_i_1_n_10 ),
        .Q(adc_tcyc_cnt_reg[21]),
        .R(\adc_tcyc_cnt[0]_i_1_n_0 ));
  FDRE \adc_tcyc_cnt_reg[22] 
       (.C(m_clk_i),
        .CE(1'b1),
        .D(\adc_tcyc_cnt_reg[16]_i_1_n_9 ),
        .Q(adc_tcyc_cnt_reg[22]),
        .R(\adc_tcyc_cnt[0]_i_1_n_0 ));
  FDRE \adc_tcyc_cnt_reg[23] 
       (.C(m_clk_i),
        .CE(1'b1),
        .D(\adc_tcyc_cnt_reg[16]_i_1_n_8 ),
        .Q(adc_tcyc_cnt_reg[23]),
        .R(\adc_tcyc_cnt[0]_i_1_n_0 ));
  FDRE \adc_tcyc_cnt_reg[24] 
       (.C(m_clk_i),
        .CE(1'b1),
        .D(\adc_tcyc_cnt_reg[24]_i_1_n_15 ),
        .Q(adc_tcyc_cnt_reg[24]),
        .R(\adc_tcyc_cnt[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \adc_tcyc_cnt_reg[24]_i_1 
       (.CI(\adc_tcyc_cnt_reg[16]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_adc_tcyc_cnt_reg[24]_i_1_CO_UNCONNECTED [7],\adc_tcyc_cnt_reg[24]_i_1_n_1 ,\adc_tcyc_cnt_reg[24]_i_1_n_2 ,\adc_tcyc_cnt_reg[24]_i_1_n_3 ,\adc_tcyc_cnt_reg[24]_i_1_n_4 ,\adc_tcyc_cnt_reg[24]_i_1_n_5 ,\adc_tcyc_cnt_reg[24]_i_1_n_6 ,\adc_tcyc_cnt_reg[24]_i_1_n_7 }),
        .DI({1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .O({\adc_tcyc_cnt_reg[24]_i_1_n_8 ,\adc_tcyc_cnt_reg[24]_i_1_n_9 ,\adc_tcyc_cnt_reg[24]_i_1_n_10 ,\adc_tcyc_cnt_reg[24]_i_1_n_11 ,\adc_tcyc_cnt_reg[24]_i_1_n_12 ,\adc_tcyc_cnt_reg[24]_i_1_n_13 ,\adc_tcyc_cnt_reg[24]_i_1_n_14 ,\adc_tcyc_cnt_reg[24]_i_1_n_15 }),
        .S({\adc_tcyc_cnt[24]_i_2_n_0 ,\adc_tcyc_cnt[24]_i_3_n_0 ,\adc_tcyc_cnt[24]_i_4_n_0 ,\adc_tcyc_cnt[24]_i_5_n_0 ,\adc_tcyc_cnt[24]_i_6_n_0 ,\adc_tcyc_cnt[24]_i_7_n_0 ,\adc_tcyc_cnt[24]_i_8_n_0 ,\adc_tcyc_cnt[24]_i_9_n_0 }));
  FDRE \adc_tcyc_cnt_reg[25] 
       (.C(m_clk_i),
        .CE(1'b1),
        .D(\adc_tcyc_cnt_reg[24]_i_1_n_14 ),
        .Q(adc_tcyc_cnt_reg[25]),
        .R(\adc_tcyc_cnt[0]_i_1_n_0 ));
  FDRE \adc_tcyc_cnt_reg[26] 
       (.C(m_clk_i),
        .CE(1'b1),
        .D(\adc_tcyc_cnt_reg[24]_i_1_n_13 ),
        .Q(adc_tcyc_cnt_reg[26]),
        .R(\adc_tcyc_cnt[0]_i_1_n_0 ));
  FDRE \adc_tcyc_cnt_reg[27] 
       (.C(m_clk_i),
        .CE(1'b1),
        .D(\adc_tcyc_cnt_reg[24]_i_1_n_12 ),
        .Q(adc_tcyc_cnt_reg[27]),
        .R(\adc_tcyc_cnt[0]_i_1_n_0 ));
  FDRE \adc_tcyc_cnt_reg[28] 
       (.C(m_clk_i),
        .CE(1'b1),
        .D(\adc_tcyc_cnt_reg[24]_i_1_n_11 ),
        .Q(adc_tcyc_cnt_reg[28]),
        .R(\adc_tcyc_cnt[0]_i_1_n_0 ));
  FDRE \adc_tcyc_cnt_reg[29] 
       (.C(m_clk_i),
        .CE(1'b1),
        .D(\adc_tcyc_cnt_reg[24]_i_1_n_10 ),
        .Q(adc_tcyc_cnt_reg[29]),
        .R(\adc_tcyc_cnt[0]_i_1_n_0 ));
  FDRE \adc_tcyc_cnt_reg[2] 
       (.C(m_clk_i),
        .CE(1'b1),
        .D(\adc_tcyc_cnt_reg[0]_i_2_n_13 ),
        .Q(adc_tcyc_cnt_reg[2]),
        .R(\adc_tcyc_cnt[0]_i_1_n_0 ));
  FDRE \adc_tcyc_cnt_reg[30] 
       (.C(m_clk_i),
        .CE(1'b1),
        .D(\adc_tcyc_cnt_reg[24]_i_1_n_9 ),
        .Q(adc_tcyc_cnt_reg[30]),
        .R(\adc_tcyc_cnt[0]_i_1_n_0 ));
  FDRE \adc_tcyc_cnt_reg[31] 
       (.C(m_clk_i),
        .CE(1'b1),
        .D(\adc_tcyc_cnt_reg[24]_i_1_n_8 ),
        .Q(adc_tcyc_cnt_reg[31]),
        .R(\adc_tcyc_cnt[0]_i_1_n_0 ));
  FDRE \adc_tcyc_cnt_reg[3] 
       (.C(m_clk_i),
        .CE(1'b1),
        .D(\adc_tcyc_cnt_reg[0]_i_2_n_12 ),
        .Q(adc_tcyc_cnt_reg[3]),
        .R(\adc_tcyc_cnt[0]_i_1_n_0 ));
  FDSE \adc_tcyc_cnt_reg[4] 
       (.C(m_clk_i),
        .CE(1'b1),
        .D(\adc_tcyc_cnt_reg[0]_i_2_n_11 ),
        .Q(adc_tcyc_cnt_reg[4]),
        .S(\adc_tcyc_cnt[0]_i_1_n_0 ));
  FDRE \adc_tcyc_cnt_reg[5] 
       (.C(m_clk_i),
        .CE(1'b1),
        .D(\adc_tcyc_cnt_reg[0]_i_2_n_10 ),
        .Q(adc_tcyc_cnt_reg[5]),
        .R(\adc_tcyc_cnt[0]_i_1_n_0 ));
  FDRE \adc_tcyc_cnt_reg[6] 
       (.C(m_clk_i),
        .CE(1'b1),
        .D(\adc_tcyc_cnt_reg[0]_i_2_n_9 ),
        .Q(adc_tcyc_cnt_reg[6]),
        .R(\adc_tcyc_cnt[0]_i_1_n_0 ));
  FDRE \adc_tcyc_cnt_reg[7] 
       (.C(m_clk_i),
        .CE(1'b1),
        .D(\adc_tcyc_cnt_reg[0]_i_2_n_8 ),
        .Q(adc_tcyc_cnt_reg[7]),
        .R(\adc_tcyc_cnt[0]_i_1_n_0 ));
  FDRE \adc_tcyc_cnt_reg[8] 
       (.C(m_clk_i),
        .CE(1'b1),
        .D(\adc_tcyc_cnt_reg[8]_i_1_n_15 ),
        .Q(adc_tcyc_cnt_reg[8]),
        .R(\adc_tcyc_cnt[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \adc_tcyc_cnt_reg[8]_i_1 
       (.CI(\adc_tcyc_cnt_reg[0]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\adc_tcyc_cnt_reg[8]_i_1_n_0 ,\adc_tcyc_cnt_reg[8]_i_1_n_1 ,\adc_tcyc_cnt_reg[8]_i_1_n_2 ,\adc_tcyc_cnt_reg[8]_i_1_n_3 ,\adc_tcyc_cnt_reg[8]_i_1_n_4 ,\adc_tcyc_cnt_reg[8]_i_1_n_5 ,\adc_tcyc_cnt_reg[8]_i_1_n_6 ,\adc_tcyc_cnt_reg[8]_i_1_n_7 }),
        .DI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .O({\adc_tcyc_cnt_reg[8]_i_1_n_8 ,\adc_tcyc_cnt_reg[8]_i_1_n_9 ,\adc_tcyc_cnt_reg[8]_i_1_n_10 ,\adc_tcyc_cnt_reg[8]_i_1_n_11 ,\adc_tcyc_cnt_reg[8]_i_1_n_12 ,\adc_tcyc_cnt_reg[8]_i_1_n_13 ,\adc_tcyc_cnt_reg[8]_i_1_n_14 ,\adc_tcyc_cnt_reg[8]_i_1_n_15 }),
        .S({\adc_tcyc_cnt[8]_i_2_n_0 ,\adc_tcyc_cnt[8]_i_3_n_0 ,\adc_tcyc_cnt[8]_i_4_n_0 ,\adc_tcyc_cnt[8]_i_5_n_0 ,\adc_tcyc_cnt[8]_i_6_n_0 ,\adc_tcyc_cnt[8]_i_7_n_0 ,\adc_tcyc_cnt[8]_i_8_n_0 ,\adc_tcyc_cnt[8]_i_9_n_0 }));
  FDRE \adc_tcyc_cnt_reg[9] 
       (.C(m_clk_i),
        .CE(1'b1),
        .D(\adc_tcyc_cnt_reg[8]_i_1_n_14 ),
        .Q(adc_tcyc_cnt_reg[9]),
        .R(\adc_tcyc_cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    data_rd_rdy_o_INST_0
       (.I0(data_rd_rdy_o_INST_0_i_1_n_0),
        .I1(adc_tcyc_cnt_reg[4]),
        .I2(data_rd_rdy_o_INST_0_i_2_n_0),
        .I3(data_rd_rdy_o_INST_0_i_3_n_0),
        .I4(data_rd_rdy_o_INST_0_i_4_n_0),
        .I5(adc_tcyc_cnt_reg[0]),
        .O(data_rd_rdy_o));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    data_rd_rdy_o_INST_0_i_1
       (.I0(adc_tcyc_cnt_reg[1]),
        .I1(serial_read_done_s_reg_n_0),
        .I2(adc_tcyc_cnt_reg[3]),
        .I3(adc_tcyc_cnt_reg[2]),
        .O(data_rd_rdy_o_INST_0_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    data_rd_rdy_o_INST_0_i_2
       (.I0(adc_tcyc_cnt_reg[31]),
        .I1(adc_tcyc_cnt_reg[30]),
        .I2(adc_tcyc_cnt_reg[5]),
        .I3(data_rd_rdy_o_INST_0_i_5_n_0),
        .I4(data_rd_rdy_o_INST_0_i_6_n_0),
        .O(data_rd_rdy_o_INST_0_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    data_rd_rdy_o_INST_0_i_3
       (.I0(adc_tcyc_cnt_reg[12]),
        .I1(adc_tcyc_cnt_reg[13]),
        .I2(adc_tcyc_cnt_reg[10]),
        .I3(adc_tcyc_cnt_reg[11]),
        .I4(data_rd_rdy_o_INST_0_i_7_n_0),
        .O(data_rd_rdy_o_INST_0_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    data_rd_rdy_o_INST_0_i_4
       (.I0(adc_tcyc_cnt_reg[20]),
        .I1(adc_tcyc_cnt_reg[21]),
        .I2(adc_tcyc_cnt_reg[18]),
        .I3(adc_tcyc_cnt_reg[19]),
        .I4(data_rd_rdy_o_INST_0_i_8_n_0),
        .O(data_rd_rdy_o_INST_0_i_4_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    data_rd_rdy_o_INST_0_i_5
       (.I0(adc_tcyc_cnt_reg[27]),
        .I1(adc_tcyc_cnt_reg[26]),
        .I2(adc_tcyc_cnt_reg[29]),
        .I3(adc_tcyc_cnt_reg[28]),
        .O(data_rd_rdy_o_INST_0_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    data_rd_rdy_o_INST_0_i_6
       (.I0(adc_tcyc_cnt_reg[7]),
        .I1(adc_tcyc_cnt_reg[6]),
        .I2(adc_tcyc_cnt_reg[9]),
        .I3(adc_tcyc_cnt_reg[8]),
        .O(data_rd_rdy_o_INST_0_i_6_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    data_rd_rdy_o_INST_0_i_7
       (.I0(adc_tcyc_cnt_reg[15]),
        .I1(adc_tcyc_cnt_reg[14]),
        .I2(adc_tcyc_cnt_reg[17]),
        .I3(adc_tcyc_cnt_reg[16]),
        .O(data_rd_rdy_o_INST_0_i_7_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    data_rd_rdy_o_INST_0_i_8
       (.I0(adc_tcyc_cnt_reg[23]),
        .I1(adc_tcyc_cnt_reg[22]),
        .I2(adc_tcyc_cnt_reg[25]),
        .I3(adc_tcyc_cnt_reg[24]),
        .O(data_rd_rdy_o_INST_0_i_8_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \sclk_cnt[0]_i_1 
       (.I0(sclk_cnt_reg[0]),
        .O(sclk_cnt0[0]));
  LUT2 #(
    .INIT(4'h9)) 
    \sclk_cnt[1]_i_1 
       (.I0(sclk_cnt_reg[1]),
        .I1(sclk_cnt_reg[0]),
        .O(sclk_cnt0[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hA9)) 
    \sclk_cnt[2]_i_1 
       (.I0(sclk_cnt_reg[2]),
        .I1(sclk_cnt_reg[0]),
        .I2(sclk_cnt_reg[1]),
        .O(sclk_cnt0[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \sclk_cnt[3]_i_1 
       (.I0(sclk_cnt_reg[3]),
        .I1(sclk_cnt_reg[1]),
        .I2(sclk_cnt_reg[0]),
        .I3(sclk_cnt_reg[2]),
        .O(sclk_cnt0[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \sclk_cnt[4]_i_1 
       (.I0(adc_tcyc_cnt_reg[0]),
        .I1(Clock_Out_OBUFDS_i_2_n_0),
        .I2(data_rd_rdy_o_INST_0_i_2_n_0),
        .I3(adc_tcyc_cnt_reg[4]),
        .I4(Clock_Out_OBUFDS_i_3_n_0),
        .I5(\sclk_cnt[4]_i_3_n_0 ),
        .O(sclk_cnt0_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    \sclk_cnt[4]_i_2 
       (.I0(sclk_cnt_reg[4]),
        .I1(sclk_cnt_reg[2]),
        .I2(sclk_cnt_reg[0]),
        .I3(sclk_cnt_reg[1]),
        .I4(sclk_cnt_reg[3]),
        .O(sclk_cnt0[4]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \sclk_cnt[4]_i_3 
       (.I0(serial_present_state[2]),
        .I1(serial_present_state[1]),
        .I2(serial_present_state[0]),
        .I3(Clock_Out_OBUFDS_i_7_n_0),
        .O(\sclk_cnt[4]_i_3_n_0 ));
  FDCE \sclk_cnt_reg[0] 
       (.C(fast_clk_i),
        .CE(sclk_cnt0_0),
        .CLR(buffer_reset_s),
        .D(sclk_cnt0[0]),
        .Q(sclk_cnt_reg[0]));
  FDPE \sclk_cnt_reg[1] 
       (.C(fast_clk_i),
        .CE(sclk_cnt0_0),
        .D(sclk_cnt0[1]),
        .PRE(buffer_reset_s),
        .Q(sclk_cnt_reg[1]));
  FDCE \sclk_cnt_reg[2] 
       (.C(fast_clk_i),
        .CE(sclk_cnt0_0),
        .CLR(buffer_reset_s),
        .D(sclk_cnt0[2]),
        .Q(sclk_cnt_reg[2]));
  FDCE \sclk_cnt_reg[3] 
       (.C(fast_clk_i),
        .CE(sclk_cnt0_0),
        .CLR(buffer_reset_s),
        .D(sclk_cnt0[3]),
        .Q(sclk_cnt_reg[3]));
  FDPE \sclk_cnt_reg[4] 
       (.C(fast_clk_i),
        .CE(sclk_cnt0_0),
        .D(sclk_cnt0[4]),
        .PRE(buffer_reset_s),
        .Q(sclk_cnt_reg[4]));
  LUT1 #(
    .INIT(2'h1)) 
    \sclk_echo_cnt[0]_i_1 
       (.I0(sclk_echo_cnt_reg[0]),
        .O(sclk_echo_cnt0[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \sclk_echo_cnt[1]_i_1 
       (.I0(sclk_echo_cnt_reg[1]),
        .I1(sclk_echo_cnt_reg[0]),
        .O(sclk_echo_cnt0[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hA9)) 
    \sclk_echo_cnt[2]_i_1 
       (.I0(sclk_echo_cnt_reg[2]),
        .I1(sclk_echo_cnt_reg[0]),
        .I2(sclk_echo_cnt_reg[1]),
        .O(sclk_echo_cnt0[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \sclk_echo_cnt[3]_i_1 
       (.I0(sclk_echo_cnt_reg[3]),
        .I1(sclk_echo_cnt_reg[1]),
        .I2(sclk_echo_cnt_reg[0]),
        .I3(sclk_echo_cnt_reg[2]),
        .O(sclk_echo_cnt0[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    \sclk_echo_cnt[4]_i_1 
       (.I0(sclk_echo_cnt_reg[4]),
        .I1(sclk_echo_cnt_reg[2]),
        .I2(sclk_echo_cnt_reg[0]),
        .I3(sclk_echo_cnt_reg[1]),
        .I4(sclk_echo_cnt_reg[3]),
        .O(sclk_echo_cnt0[4]));
  FDCE \sclk_echo_cnt_reg[0] 
       (.C(sclk_s),
        .CE(sel),
        .CLR(buffer_reset_s),
        .D(sclk_echo_cnt0[0]),
        .Q(sclk_echo_cnt_reg[0]));
  FDPE \sclk_echo_cnt_reg[1] 
       (.C(sclk_s),
        .CE(sel),
        .D(sclk_echo_cnt0[1]),
        .PRE(buffer_reset_s),
        .Q(sclk_echo_cnt_reg[1]));
  FDCE \sclk_echo_cnt_reg[2] 
       (.C(sclk_s),
        .CE(sel),
        .CLR(buffer_reset_s),
        .D(sclk_echo_cnt0[2]),
        .Q(sclk_echo_cnt_reg[2]));
  FDCE \sclk_echo_cnt_reg[3] 
       (.C(sclk_s),
        .CE(sel),
        .CLR(buffer_reset_s),
        .D(sclk_echo_cnt0[3]),
        .Q(sclk_echo_cnt_reg[3]));
  FDPE \sclk_echo_cnt_reg[4] 
       (.C(sclk_s),
        .CE(sel),
        .D(sclk_echo_cnt0[4]),
        .PRE(buffer_reset_s),
        .Q(sclk_echo_cnt_reg[4]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \serial_buffer[17]_i_1 
       (.I0(sclk_echo_cnt_reg[3]),
        .I1(sclk_echo_cnt_reg[1]),
        .I2(sclk_echo_cnt_reg[0]),
        .I3(sclk_echo_cnt_reg[2]),
        .I4(sclk_echo_cnt_reg[4]),
        .O(sel));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \serial_buffer[17]_i_2 
       (.I0(adc_tcyc_cnt_reg[0]),
        .I1(data_rd_rdy_o_INST_0_i_4_n_0),
        .I2(data_rd_rdy_o_INST_0_i_3_n_0),
        .I3(data_rd_rdy_o_INST_0_i_2_n_0),
        .I4(adc_tcyc_cnt_reg[4]),
        .I5(Clock_Out_OBUFDS_i_3_n_0),
        .O(buffer_reset_s));
  FDPE \serial_buffer_reg[0] 
       (.C(sclk_s),
        .CE(sel),
        .D(sdi_s),
        .PRE(buffer_reset_s),
        .Q(data_o[0]));
  FDPE \serial_buffer_reg[10] 
       (.C(sclk_s),
        .CE(sel),
        .D(data_o[9]),
        .PRE(buffer_reset_s),
        .Q(data_o[10]));
  FDPE \serial_buffer_reg[11] 
       (.C(sclk_s),
        .CE(sel),
        .D(data_o[10]),
        .PRE(buffer_reset_s),
        .Q(data_o[11]));
  FDPE \serial_buffer_reg[12] 
       (.C(sclk_s),
        .CE(sel),
        .D(data_o[11]),
        .PRE(buffer_reset_s),
        .Q(data_o[12]));
  FDPE \serial_buffer_reg[13] 
       (.C(sclk_s),
        .CE(sel),
        .D(data_o[12]),
        .PRE(buffer_reset_s),
        .Q(data_o[13]));
  FDPE \serial_buffer_reg[14] 
       (.C(sclk_s),
        .CE(sel),
        .D(data_o[13]),
        .PRE(buffer_reset_s),
        .Q(data_o[14]));
  FDPE \serial_buffer_reg[15] 
       (.C(sclk_s),
        .CE(sel),
        .D(data_o[14]),
        .PRE(buffer_reset_s),
        .Q(data_o[15]));
  FDPE \serial_buffer_reg[16] 
       (.C(sclk_s),
        .CE(sel),
        .D(data_o[15]),
        .PRE(buffer_reset_s),
        .Q(data_o[16]));
  FDPE \serial_buffer_reg[17] 
       (.C(sclk_s),
        .CE(sel),
        .D(data_o[16]),
        .PRE(buffer_reset_s),
        .Q(data_o[17]));
  FDPE \serial_buffer_reg[1] 
       (.C(sclk_s),
        .CE(sel),
        .D(data_o[0]),
        .PRE(buffer_reset_s),
        .Q(data_o[1]));
  FDPE \serial_buffer_reg[2] 
       (.C(sclk_s),
        .CE(sel),
        .D(data_o[1]),
        .PRE(buffer_reset_s),
        .Q(data_o[2]));
  FDPE \serial_buffer_reg[3] 
       (.C(sclk_s),
        .CE(sel),
        .D(data_o[2]),
        .PRE(buffer_reset_s),
        .Q(data_o[3]));
  FDPE \serial_buffer_reg[4] 
       (.C(sclk_s),
        .CE(sel),
        .D(data_o[3]),
        .PRE(buffer_reset_s),
        .Q(data_o[4]));
  FDPE \serial_buffer_reg[5] 
       (.C(sclk_s),
        .CE(sel),
        .D(data_o[4]),
        .PRE(buffer_reset_s),
        .Q(data_o[5]));
  FDPE \serial_buffer_reg[6] 
       (.C(sclk_s),
        .CE(sel),
        .D(data_o[5]),
        .PRE(buffer_reset_s),
        .Q(data_o[6]));
  FDPE \serial_buffer_reg[7] 
       (.C(sclk_s),
        .CE(sel),
        .D(data_o[6]),
        .PRE(buffer_reset_s),
        .Q(data_o[7]));
  FDPE \serial_buffer_reg[8] 
       (.C(sclk_s),
        .CE(sel),
        .D(data_o[7]),
        .PRE(buffer_reset_s),
        .Q(data_o[8]));
  FDPE \serial_buffer_reg[9] 
       (.C(sclk_s),
        .CE(sel),
        .D(data_o[8]),
        .PRE(buffer_reset_s),
        .Q(data_o[9]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hF9)) 
    \serial_present_state[0]_i_1 
       (.I0(serial_present_state[1]),
        .I1(serial_present_state[0]),
        .I2(serial_present_state[2]),
        .O(serial_next_state[0]));
  LUT3 #(
    .INIT(8'h10)) 
    \serial_present_state[1]_i_1 
       (.I0(serial_present_state[2]),
        .I1(serial_present_state[1]),
        .I2(serial_present_state[0]),
        .O(serial_next_state[1]));
  LUT1 #(
    .INIT(2'h1)) 
    \serial_present_state[2]_i_1 
       (.I0(reset_n_i),
        .O(\serial_present_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAAAAAE)) 
    \serial_present_state[2]_i_2 
       (.I0(serial_next_state[0]),
        .I1(\serial_present_state[2]_i_4_n_0 ),
        .I2(adc_tcyc_cnt_reg[0]),
        .I3(Clock_Out_OBUFDS_i_2_n_0),
        .I4(data_rd_rdy_o_INST_0_i_2_n_0),
        .I5(\serial_present_state[2]_i_5_n_0 ),
        .O(\serial_present_state[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \serial_present_state[2]_i_3 
       (.I0(serial_present_state[0]),
        .I1(serial_present_state[1]),
        .I2(serial_present_state[2]),
        .O(serial_next_state[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \serial_present_state[2]_i_4 
       (.I0(adc_tcyc_cnt_reg[4]),
        .I1(serial_present_state[0]),
        .I2(adc_tcyc_cnt_reg[1]),
        .I3(adc_tcyc_cnt_reg[2]),
        .I4(adc_tcyc_cnt_reg[3]),
        .O(\serial_present_state[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \serial_present_state[2]_i_5 
       (.I0(serial_present_state[0]),
        .I1(Clock_Out_OBUFDS_i_7_n_0),
        .I2(sel),
        .O(\serial_present_state[2]_i_5_n_0 ));
  (* FSM_ENCODED_STATES = "SERIAL_IDLE_STATE:001,SERIAL_READ_STATE:010,SERIAL_DONE_STATE:100," *) 
  FDSE \serial_present_state_reg[0] 
       (.C(fast_clk_i),
        .CE(\serial_present_state[2]_i_2_n_0 ),
        .D(serial_next_state[0]),
        .Q(serial_present_state[0]),
        .S(\serial_present_state[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "SERIAL_IDLE_STATE:001,SERIAL_READ_STATE:010,SERIAL_DONE_STATE:100," *) 
  FDRE \serial_present_state_reg[1] 
       (.C(fast_clk_i),
        .CE(\serial_present_state[2]_i_2_n_0 ),
        .D(serial_next_state[1]),
        .Q(serial_present_state[1]),
        .R(\serial_present_state[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "SERIAL_IDLE_STATE:001,SERIAL_READ_STATE:010,SERIAL_DONE_STATE:100," *) 
  FDRE \serial_present_state_reg[2] 
       (.C(fast_clk_i),
        .CE(\serial_present_state[2]_i_2_n_0 ),
        .D(serial_next_state[2]),
        .Q(serial_present_state[2]),
        .R(\serial_present_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h1200)) 
    serial_read_done_s_i_1
       (.I0(serial_present_state[2]),
        .I1(serial_present_state[1]),
        .I2(serial_present_state[0]),
        .I3(reset_n_i),
        .O(serial_read_done_s_i_1_n_0));
  FDRE serial_read_done_s_reg
       (.C(fast_clk_i),
        .CE(1'b1),
        .D(serial_read_done_s_i_1_n_0),
        .Q(serial_read_done_s_reg_n_0),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
