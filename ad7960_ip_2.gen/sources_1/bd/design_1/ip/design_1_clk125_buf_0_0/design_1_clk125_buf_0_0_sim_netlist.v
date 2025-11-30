// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Mon Nov  3 15:15:48 2025
// Host        : sunset running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/annoa/ad7960_ip_1/ad7960_ip_1.gen/sources_1/bd/design_1/ip/design_1_clk125_buf_0_0/design_1_clk125_buf_0_0_sim_netlist.v
// Design      : design_1_clk125_buf_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu7ev-ffvc1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_clk125_buf_0_0,clk125_buf,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "clk125_buf,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module design_1_clk125_buf_0_0
   (clk_125_p,
    clk_125_n,
    clk_125);
  input clk_125_p;
  input clk_125_n;
  output clk_125;

  (* DIFF_TERM_ADV = "TERM_100" *) (* IBUF_LOW_PWR = 0 *) wire clk_125;
  (* DIFF_TERM_ADV = "TERM_100" *) (* IBUF_LOW_PWR = 0 *) wire clk_125_n;
  (* DIFF_TERM_ADV = "TERM_100" *) (* IBUF_LOW_PWR = 0 *) wire clk_125_p;

  design_1_clk125_buf_0_0_clk125_buf inst
       (.clk_125(clk_125),
        .clk_125_n(clk_125_n),
        .clk_125_p(clk_125_p));
endmodule

(* ORIG_REF_NAME = "clk125_buf" *) 
module design_1_clk125_buf_0_0_clk125_buf
   (clk_125,
    clk_125_p,
    clk_125_n);
  output clk_125;
  input clk_125_p;
  input clk_125_n;

  wire clk_125;
  wire clk_125_n;
  wire clk_125_p;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS #(
    .CCIO_EN_M("TRUE"),
    .CCIO_EN_S("TRUE"),
    .IOSTANDARD("DEFAULT")) 
    IBUFDS_inst
       (.I(clk_125_p),
        .IB(clk_125_n),
        .O(clk_125));
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
