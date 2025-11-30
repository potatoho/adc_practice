// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Mon Nov  3 15:15:48 2025
// Host        : sunset running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/annoa/ad7960_ip_1/ad7960_ip_1.gen/sources_1/bd/design_1/ip/design_1_clk125_buf_0_0/design_1_clk125_buf_0_0_stub.v
// Design      : design_1_clk125_buf_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu7ev-ffvc1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "clk125_buf,Vivado 2022.2" *)
module design_1_clk125_buf_0_0(clk_125_p, clk_125_n, clk_125)
/* synthesis syn_black_box black_box_pad_pin="clk_125_p,clk_125_n,clk_125" */;
  input clk_125_p;
  input clk_125_n;
  output clk_125;
endmodule
