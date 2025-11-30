// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sat Nov 29 12:27:56 2025
// Host        : sunset running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_ad7960_axis_wrapper_0_0_sim_netlist.v
// Design      : design_1_ad7960_axis_wrapper_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu7ev-ffvc1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ad7960_axis_wrapper
   (m_axis_tdata,
    m_axis_tvalid,
    m_axis_tlast,
    m_axis_tready,
    resetn,
    clk,
    adc_data,
    adc_valid);
  output [17:0]m_axis_tdata;
  output m_axis_tvalid;
  output m_axis_tlast;
  input m_axis_tready;
  input resetn;
  input clk;
  input [17:0]adc_data;
  input adc_valid;

  wire [17:0]adc_data;
  wire adc_valid;
  wire clk;
  wire frame_active_i_1_n_0;
  wire frame_active_reg_n_0;
  wire [17:0]m_axis_tdata;
  wire \m_axis_tdata[17]_i_1_n_0 ;
  wire \m_axis_tdata[17]_i_2_n_0 ;
  wire m_axis_tlast;
  wire m_axis_tlast_i_1_n_0;
  wire m_axis_tlast_i_2_n_0;
  wire m_axis_tlast_i_3_n_0;
  wire m_axis_tlast_i_4_n_0;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire m_axis_tvalid_i_1_n_0;
  wire resetn;
  wire [7:0]sample_cnt;
  wire \sample_cnt[7]_i_1_n_0 ;
  wire \sample_cnt[7]_i_3_n_0 ;
  wire [7:0]sample_cnt_0;

  LUT6 #(
    .INIT(64'hFFF7AAAA00000000)) 
    frame_active_i_1
       (.I0(m_axis_tready),
        .I1(adc_valid),
        .I2(m_axis_tlast_i_2_n_0),
        .I3(m_axis_tlast_i_3_n_0),
        .I4(frame_active_reg_n_0),
        .I5(resetn),
        .O(frame_active_i_1_n_0));
  FDRE frame_active_reg
       (.C(clk),
        .CE(1'b1),
        .D(frame_active_i_1_n_0),
        .Q(frame_active_reg_n_0),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \m_axis_tdata[17]_i_1 
       (.I0(resetn),
        .O(\m_axis_tdata[17]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \m_axis_tdata[17]_i_2 
       (.I0(frame_active_reg_n_0),
        .I1(m_axis_tready),
        .I2(adc_valid),
        .O(\m_axis_tdata[17]_i_2_n_0 ));
  FDRE \m_axis_tdata_reg[0] 
       (.C(clk),
        .CE(\m_axis_tdata[17]_i_2_n_0 ),
        .D(adc_data[0]),
        .Q(m_axis_tdata[0]),
        .R(\m_axis_tdata[17]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[10] 
       (.C(clk),
        .CE(\m_axis_tdata[17]_i_2_n_0 ),
        .D(adc_data[10]),
        .Q(m_axis_tdata[10]),
        .R(\m_axis_tdata[17]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[11] 
       (.C(clk),
        .CE(\m_axis_tdata[17]_i_2_n_0 ),
        .D(adc_data[11]),
        .Q(m_axis_tdata[11]),
        .R(\m_axis_tdata[17]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[12] 
       (.C(clk),
        .CE(\m_axis_tdata[17]_i_2_n_0 ),
        .D(adc_data[12]),
        .Q(m_axis_tdata[12]),
        .R(\m_axis_tdata[17]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[13] 
       (.C(clk),
        .CE(\m_axis_tdata[17]_i_2_n_0 ),
        .D(adc_data[13]),
        .Q(m_axis_tdata[13]),
        .R(\m_axis_tdata[17]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[14] 
       (.C(clk),
        .CE(\m_axis_tdata[17]_i_2_n_0 ),
        .D(adc_data[14]),
        .Q(m_axis_tdata[14]),
        .R(\m_axis_tdata[17]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[15] 
       (.C(clk),
        .CE(\m_axis_tdata[17]_i_2_n_0 ),
        .D(adc_data[15]),
        .Q(m_axis_tdata[15]),
        .R(\m_axis_tdata[17]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[16] 
       (.C(clk),
        .CE(\m_axis_tdata[17]_i_2_n_0 ),
        .D(adc_data[16]),
        .Q(m_axis_tdata[16]),
        .R(\m_axis_tdata[17]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[17] 
       (.C(clk),
        .CE(\m_axis_tdata[17]_i_2_n_0 ),
        .D(adc_data[17]),
        .Q(m_axis_tdata[17]),
        .R(\m_axis_tdata[17]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[1] 
       (.C(clk),
        .CE(\m_axis_tdata[17]_i_2_n_0 ),
        .D(adc_data[1]),
        .Q(m_axis_tdata[1]),
        .R(\m_axis_tdata[17]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[2] 
       (.C(clk),
        .CE(\m_axis_tdata[17]_i_2_n_0 ),
        .D(adc_data[2]),
        .Q(m_axis_tdata[2]),
        .R(\m_axis_tdata[17]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[3] 
       (.C(clk),
        .CE(\m_axis_tdata[17]_i_2_n_0 ),
        .D(adc_data[3]),
        .Q(m_axis_tdata[3]),
        .R(\m_axis_tdata[17]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[4] 
       (.C(clk),
        .CE(\m_axis_tdata[17]_i_2_n_0 ),
        .D(adc_data[4]),
        .Q(m_axis_tdata[4]),
        .R(\m_axis_tdata[17]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[5] 
       (.C(clk),
        .CE(\m_axis_tdata[17]_i_2_n_0 ),
        .D(adc_data[5]),
        .Q(m_axis_tdata[5]),
        .R(\m_axis_tdata[17]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[6] 
       (.C(clk),
        .CE(\m_axis_tdata[17]_i_2_n_0 ),
        .D(adc_data[6]),
        .Q(m_axis_tdata[6]),
        .R(\m_axis_tdata[17]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[7] 
       (.C(clk),
        .CE(\m_axis_tdata[17]_i_2_n_0 ),
        .D(adc_data[7]),
        .Q(m_axis_tdata[7]),
        .R(\m_axis_tdata[17]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[8] 
       (.C(clk),
        .CE(\m_axis_tdata[17]_i_2_n_0 ),
        .D(adc_data[8]),
        .Q(m_axis_tdata[8]),
        .R(\m_axis_tdata[17]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[9] 
       (.C(clk),
        .CE(\m_axis_tdata[17]_i_2_n_0 ),
        .D(adc_data[9]),
        .Q(m_axis_tdata[9]),
        .R(\m_axis_tdata[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h10F0100010001000)) 
    m_axis_tlast_i_1
       (.I0(m_axis_tlast_i_2_n_0),
        .I1(m_axis_tlast_i_3_n_0),
        .I2(resetn),
        .I3(\m_axis_tdata[17]_i_2_n_0 ),
        .I4(m_axis_tlast_i_4_n_0),
        .I5(m_axis_tlast),
        .O(m_axis_tlast_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    m_axis_tlast_i_2
       (.I0(sample_cnt[7]),
        .I1(sample_cnt[5]),
        .I2(sample_cnt[6]),
        .I3(sample_cnt[4]),
        .O(m_axis_tlast_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hBFFF)) 
    m_axis_tlast_i_3
       (.I0(sample_cnt[3]),
        .I1(sample_cnt[2]),
        .I2(sample_cnt[0]),
        .I3(sample_cnt[1]),
        .O(m_axis_tlast_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h7)) 
    m_axis_tlast_i_4
       (.I0(m_axis_tready),
        .I1(m_axis_tvalid),
        .O(m_axis_tlast_i_4_n_0));
  FDRE m_axis_tlast_reg
       (.C(clk),
        .CE(1'b1),
        .D(m_axis_tlast_i_1_n_0),
        .Q(m_axis_tlast),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h8080AA00)) 
    m_axis_tvalid_i_1
       (.I0(resetn),
        .I1(frame_active_reg_n_0),
        .I2(adc_valid),
        .I3(m_axis_tvalid),
        .I4(m_axis_tready),
        .O(m_axis_tvalid_i_1_n_0));
  FDRE m_axis_tvalid_reg
       (.C(clk),
        .CE(1'b1),
        .D(m_axis_tvalid_i_1_n_0),
        .Q(m_axis_tvalid),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \sample_cnt[0]_i_1 
       (.I0(sample_cnt[0]),
        .O(sample_cnt_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sample_cnt[1]_i_1 
       (.I0(sample_cnt[0]),
        .I1(sample_cnt[1]),
        .O(sample_cnt_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \sample_cnt[2]_i_1 
       (.I0(sample_cnt[2]),
        .I1(sample_cnt[0]),
        .I2(sample_cnt[1]),
        .O(sample_cnt_0[2]));
  LUT6 #(
    .INIT(64'hFFFF00000000FFFE)) 
    \sample_cnt[3]_i_1 
       (.I0(sample_cnt[7]),
        .I1(sample_cnt[5]),
        .I2(sample_cnt[6]),
        .I3(sample_cnt[4]),
        .I4(\sample_cnt[7]_i_3_n_0 ),
        .I5(sample_cnt[3]),
        .O(sample_cnt_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \sample_cnt[4]_i_1 
       (.I0(sample_cnt[4]),
        .I1(sample_cnt[1]),
        .I2(sample_cnt[0]),
        .I3(sample_cnt[2]),
        .I4(sample_cnt[3]),
        .O(sample_cnt_0[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \sample_cnt[5]_i_1 
       (.I0(sample_cnt[5]),
        .I1(sample_cnt[3]),
        .I2(sample_cnt[2]),
        .I3(sample_cnt[0]),
        .I4(sample_cnt[1]),
        .I5(sample_cnt[4]),
        .O(sample_cnt_0[5]));
  LUT5 #(
    .INIT(32'hA6AAAAAA)) 
    \sample_cnt[6]_i_1 
       (.I0(sample_cnt[6]),
        .I1(sample_cnt[4]),
        .I2(\sample_cnt[7]_i_3_n_0 ),
        .I3(sample_cnt[3]),
        .I4(sample_cnt[5]),
        .O(sample_cnt_0[6]));
  LUT3 #(
    .INIT(8'h4F)) 
    \sample_cnt[7]_i_1 
       (.I0(frame_active_reg_n_0),
        .I1(m_axis_tready),
        .I2(resetn),
        .O(\sample_cnt[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA6AAAAAAAAAAAAA)) 
    \sample_cnt[7]_i_2 
       (.I0(sample_cnt[7]),
        .I1(sample_cnt[5]),
        .I2(sample_cnt[3]),
        .I3(\sample_cnt[7]_i_3_n_0 ),
        .I4(sample_cnt[4]),
        .I5(sample_cnt[6]),
        .O(sample_cnt_0[7]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \sample_cnt[7]_i_3 
       (.I0(sample_cnt[1]),
        .I1(sample_cnt[0]),
        .I2(sample_cnt[2]),
        .O(\sample_cnt[7]_i_3_n_0 ));
  FDRE \sample_cnt_reg[0] 
       (.C(clk),
        .CE(\m_axis_tdata[17]_i_2_n_0 ),
        .D(sample_cnt_0[0]),
        .Q(sample_cnt[0]),
        .R(\sample_cnt[7]_i_1_n_0 ));
  FDRE \sample_cnt_reg[1] 
       (.C(clk),
        .CE(\m_axis_tdata[17]_i_2_n_0 ),
        .D(sample_cnt_0[1]),
        .Q(sample_cnt[1]),
        .R(\sample_cnt[7]_i_1_n_0 ));
  FDRE \sample_cnt_reg[2] 
       (.C(clk),
        .CE(\m_axis_tdata[17]_i_2_n_0 ),
        .D(sample_cnt_0[2]),
        .Q(sample_cnt[2]),
        .R(\sample_cnt[7]_i_1_n_0 ));
  FDRE \sample_cnt_reg[3] 
       (.C(clk),
        .CE(\m_axis_tdata[17]_i_2_n_0 ),
        .D(sample_cnt_0[3]),
        .Q(sample_cnt[3]),
        .R(\sample_cnt[7]_i_1_n_0 ));
  FDRE \sample_cnt_reg[4] 
       (.C(clk),
        .CE(\m_axis_tdata[17]_i_2_n_0 ),
        .D(sample_cnt_0[4]),
        .Q(sample_cnt[4]),
        .R(\sample_cnt[7]_i_1_n_0 ));
  FDRE \sample_cnt_reg[5] 
       (.C(clk),
        .CE(\m_axis_tdata[17]_i_2_n_0 ),
        .D(sample_cnt_0[5]),
        .Q(sample_cnt[5]),
        .R(\sample_cnt[7]_i_1_n_0 ));
  FDRE \sample_cnt_reg[6] 
       (.C(clk),
        .CE(\m_axis_tdata[17]_i_2_n_0 ),
        .D(sample_cnt_0[6]),
        .Q(sample_cnt[6]),
        .R(\sample_cnt[7]_i_1_n_0 ));
  FDRE \sample_cnt_reg[7] 
       (.C(clk),
        .CE(\m_axis_tdata[17]_i_2_n_0 ),
        .D(sample_cnt_0[7]),
        .Q(sample_cnt[7]),
        .R(\sample_cnt[7]_i_1_n_0 ));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_ad7960_axis_wrapper_0_0,ad7960_axis_wrapper,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "ad7960_axis_wrapper,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    resetn,
    adc_data,
    adc_valid,
    m_axis_tdata,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tlast);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF m_axis, ASSOCIATED_RESET resetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 resetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input resetn;
  input [17:0]adc_data;
  input adc_valid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) output [31:0]m_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) output m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TREADY" *) input m_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TLAST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_tlast;

  wire \<const0> ;
  wire [17:0]adc_data;
  wire adc_valid;
  wire clk;
  wire [17:0]\^m_axis_tdata ;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire resetn;

  assign m_axis_tdata[31] = \<const0> ;
  assign m_axis_tdata[30] = \<const0> ;
  assign m_axis_tdata[29] = \<const0> ;
  assign m_axis_tdata[28] = \<const0> ;
  assign m_axis_tdata[27] = \<const0> ;
  assign m_axis_tdata[26] = \<const0> ;
  assign m_axis_tdata[25] = \<const0> ;
  assign m_axis_tdata[24] = \<const0> ;
  assign m_axis_tdata[23] = \<const0> ;
  assign m_axis_tdata[22] = \<const0> ;
  assign m_axis_tdata[21] = \<const0> ;
  assign m_axis_tdata[20] = \<const0> ;
  assign m_axis_tdata[19] = \<const0> ;
  assign m_axis_tdata[18] = \<const0> ;
  assign m_axis_tdata[17:0] = \^m_axis_tdata [17:0];
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ad7960_axis_wrapper inst
       (.adc_data(adc_data),
        .adc_valid(adc_valid),
        .clk(clk),
        .m_axis_tdata(\^m_axis_tdata ),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .resetn(resetn));
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
