// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Fri Nov 28 15:18:38 2025
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
    adc_valid,
    m_axis_tready,
    resetn,
    adc_data,
    clk);
  output [17:0]m_axis_tdata;
  output m_axis_tvalid;
  output m_axis_tlast;
  input adc_valid;
  input m_axis_tready;
  input resetn;
  input [17:0]adc_data;
  input clk;

  wire [17:0]adc_data;
  wire adc_valid;
  wire clk;
  wire [17:0]m_axis_tdata;
  wire \m_axis_tdata[17]_i_1_n_0 ;
  wire m_axis_tlast;
  wire m_axis_tlast_i_1_n_0;
  wire m_axis_tlast_i_2_n_0;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire m_axis_tvalid_i_1_n_0;
  wire resetn;
  wire sample_cnt0;
  wire \sample_cnt[0]_i_1_n_0 ;
  wire \sample_cnt[1]_i_1_n_0 ;
  wire \sample_cnt[2]_i_1_n_0 ;
  wire \sample_cnt[3]_i_1_n_0 ;
  wire \sample_cnt[4]_i_1_n_0 ;
  wire \sample_cnt[4]_i_2_n_0 ;
  wire \sample_cnt_reg_n_0_[0] ;
  wire \sample_cnt_reg_n_0_[1] ;
  wire \sample_cnt_reg_n_0_[2] ;
  wire \sample_cnt_reg_n_0_[3] ;
  wire \sample_cnt_reg_n_0_[4] ;
  wire tready_d;

  LUT1 #(
    .INIT(2'h1)) 
    \m_axis_tdata[17]_i_1 
       (.I0(resetn),
        .O(\m_axis_tdata[17]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[17]_i_2 
       (.I0(adc_valid),
        .I1(m_axis_tready),
        .O(sample_cnt0));
  FDRE \m_axis_tdata_reg[0] 
       (.C(clk),
        .CE(sample_cnt0),
        .D(adc_data[0]),
        .Q(m_axis_tdata[0]),
        .R(\m_axis_tdata[17]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[10] 
       (.C(clk),
        .CE(sample_cnt0),
        .D(adc_data[10]),
        .Q(m_axis_tdata[10]),
        .R(\m_axis_tdata[17]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[11] 
       (.C(clk),
        .CE(sample_cnt0),
        .D(adc_data[11]),
        .Q(m_axis_tdata[11]),
        .R(\m_axis_tdata[17]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[12] 
       (.C(clk),
        .CE(sample_cnt0),
        .D(adc_data[12]),
        .Q(m_axis_tdata[12]),
        .R(\m_axis_tdata[17]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[13] 
       (.C(clk),
        .CE(sample_cnt0),
        .D(adc_data[13]),
        .Q(m_axis_tdata[13]),
        .R(\m_axis_tdata[17]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[14] 
       (.C(clk),
        .CE(sample_cnt0),
        .D(adc_data[14]),
        .Q(m_axis_tdata[14]),
        .R(\m_axis_tdata[17]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[15] 
       (.C(clk),
        .CE(sample_cnt0),
        .D(adc_data[15]),
        .Q(m_axis_tdata[15]),
        .R(\m_axis_tdata[17]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[16] 
       (.C(clk),
        .CE(sample_cnt0),
        .D(adc_data[16]),
        .Q(m_axis_tdata[16]),
        .R(\m_axis_tdata[17]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[17] 
       (.C(clk),
        .CE(sample_cnt0),
        .D(adc_data[17]),
        .Q(m_axis_tdata[17]),
        .R(\m_axis_tdata[17]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[1] 
       (.C(clk),
        .CE(sample_cnt0),
        .D(adc_data[1]),
        .Q(m_axis_tdata[1]),
        .R(\m_axis_tdata[17]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[2] 
       (.C(clk),
        .CE(sample_cnt0),
        .D(adc_data[2]),
        .Q(m_axis_tdata[2]),
        .R(\m_axis_tdata[17]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[3] 
       (.C(clk),
        .CE(sample_cnt0),
        .D(adc_data[3]),
        .Q(m_axis_tdata[3]),
        .R(\m_axis_tdata[17]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[4] 
       (.C(clk),
        .CE(sample_cnt0),
        .D(adc_data[4]),
        .Q(m_axis_tdata[4]),
        .R(\m_axis_tdata[17]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[5] 
       (.C(clk),
        .CE(sample_cnt0),
        .D(adc_data[5]),
        .Q(m_axis_tdata[5]),
        .R(\m_axis_tdata[17]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[6] 
       (.C(clk),
        .CE(sample_cnt0),
        .D(adc_data[6]),
        .Q(m_axis_tdata[6]),
        .R(\m_axis_tdata[17]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[7] 
       (.C(clk),
        .CE(sample_cnt0),
        .D(adc_data[7]),
        .Q(m_axis_tdata[7]),
        .R(\m_axis_tdata[17]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[8] 
       (.C(clk),
        .CE(sample_cnt0),
        .D(adc_data[8]),
        .Q(m_axis_tdata[8]),
        .R(\m_axis_tdata[17]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[9] 
       (.C(clk),
        .CE(sample_cnt0),
        .D(adc_data[9]),
        .Q(m_axis_tdata[9]),
        .R(\m_axis_tdata[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h88B8F0F0)) 
    m_axis_tlast_i_1
       (.I0(m_axis_tlast_i_2_n_0),
        .I1(adc_valid),
        .I2(m_axis_tlast),
        .I3(m_axis_tvalid),
        .I4(m_axis_tready),
        .O(m_axis_tlast_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    m_axis_tlast_i_2
       (.I0(\sample_cnt_reg_n_0_[4] ),
        .I1(\sample_cnt_reg_n_0_[3] ),
        .I2(\sample_cnt_reg_n_0_[2] ),
        .I3(\sample_cnt_reg_n_0_[0] ),
        .I4(\sample_cnt_reg_n_0_[1] ),
        .O(m_axis_tlast_i_2_n_0));
  FDRE m_axis_tlast_reg
       (.C(clk),
        .CE(1'b1),
        .D(m_axis_tlast_i_1_n_0),
        .Q(m_axis_tlast),
        .R(\m_axis_tdata[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    m_axis_tvalid_i_1
       (.I0(adc_valid),
        .I1(m_axis_tready),
        .I2(m_axis_tvalid),
        .O(m_axis_tvalid_i_1_n_0));
  FDRE m_axis_tvalid_reg
       (.C(clk),
        .CE(1'b1),
        .D(m_axis_tvalid_i_1_n_0),
        .Q(m_axis_tvalid),
        .R(\m_axis_tdata[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \sample_cnt[0]_i_1 
       (.I0(\sample_cnt_reg_n_0_[0] ),
        .O(\sample_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sample_cnt[1]_i_1 
       (.I0(\sample_cnt_reg_n_0_[0] ),
        .I1(\sample_cnt_reg_n_0_[1] ),
        .O(\sample_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \sample_cnt[2]_i_1 
       (.I0(\sample_cnt_reg_n_0_[0] ),
        .I1(\sample_cnt_reg_n_0_[1] ),
        .I2(\sample_cnt_reg_n_0_[2] ),
        .O(\sample_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h6CCC)) 
    \sample_cnt[3]_i_1 
       (.I0(\sample_cnt_reg_n_0_[0] ),
        .I1(\sample_cnt_reg_n_0_[3] ),
        .I2(\sample_cnt_reg_n_0_[1] ),
        .I3(\sample_cnt_reg_n_0_[2] ),
        .O(\sample_cnt[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h04FF)) 
    \sample_cnt[4]_i_1 
       (.I0(adc_valid),
        .I1(m_axis_tready),
        .I2(tready_d),
        .I3(resetn),
        .O(\sample_cnt[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF0000)) 
    \sample_cnt[4]_i_2 
       (.I0(\sample_cnt_reg_n_0_[0] ),
        .I1(\sample_cnt_reg_n_0_[3] ),
        .I2(\sample_cnt_reg_n_0_[1] ),
        .I3(\sample_cnt_reg_n_0_[2] ),
        .I4(\sample_cnt_reg_n_0_[4] ),
        .O(\sample_cnt[4]_i_2_n_0 ));
  FDRE \sample_cnt_reg[0] 
       (.C(clk),
        .CE(sample_cnt0),
        .D(\sample_cnt[0]_i_1_n_0 ),
        .Q(\sample_cnt_reg_n_0_[0] ),
        .R(\sample_cnt[4]_i_1_n_0 ));
  FDRE \sample_cnt_reg[1] 
       (.C(clk),
        .CE(sample_cnt0),
        .D(\sample_cnt[1]_i_1_n_0 ),
        .Q(\sample_cnt_reg_n_0_[1] ),
        .R(\sample_cnt[4]_i_1_n_0 ));
  FDRE \sample_cnt_reg[2] 
       (.C(clk),
        .CE(sample_cnt0),
        .D(\sample_cnt[2]_i_1_n_0 ),
        .Q(\sample_cnt_reg_n_0_[2] ),
        .R(\sample_cnt[4]_i_1_n_0 ));
  FDRE \sample_cnt_reg[3] 
       (.C(clk),
        .CE(sample_cnt0),
        .D(\sample_cnt[3]_i_1_n_0 ),
        .Q(\sample_cnt_reg_n_0_[3] ),
        .R(\sample_cnt[4]_i_1_n_0 ));
  FDRE \sample_cnt_reg[4] 
       (.C(clk),
        .CE(sample_cnt0),
        .D(\sample_cnt[4]_i_2_n_0 ),
        .Q(\sample_cnt_reg_n_0_[4] ),
        .R(\sample_cnt[4]_i_1_n_0 ));
  FDRE tready_d_reg
       (.C(clk),
        .CE(1'b1),
        .D(m_axis_tready),
        .Q(tready_d),
        .R(\m_axis_tdata[17]_i_1_n_0 ));
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
