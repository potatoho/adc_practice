// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sun Nov  2 20:23:07 2025
// Host        : sunset running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/annoa/ad7960_ip_1/ad7960_ip_1.gen/sources_1/bd/design_1/ip/design_1_AD7960_0_0/design_1_AD7960_0_0_stub.v
// Design      : design_1_AD7960_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu7ev-ffvc1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "AD7960,Vivado 2022.2" *)
module design_1_AD7960_0_0(m_clk_i, fast_clk_i, reset_n_i, en_i, d_pos_i, 
  d_neg_i, dco_pos_i, dco_neg_i, en_o, cnv_pos_o, cnv_neg_o, clk_pos_o, clk_neg_o, data_rd_rdy_o, 
  data_o)
/* synthesis syn_black_box black_box_pad_pin="m_clk_i,fast_clk_i,reset_n_i,en_i[3:0],d_pos_i,d_neg_i,dco_pos_i,dco_neg_i,en_o[3:0],cnv_pos_o,cnv_neg_o,clk_pos_o,clk_neg_o,data_rd_rdy_o,data_o[17:0]" */;
  input m_clk_i;
  input fast_clk_i;
  input reset_n_i;
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
endmodule
