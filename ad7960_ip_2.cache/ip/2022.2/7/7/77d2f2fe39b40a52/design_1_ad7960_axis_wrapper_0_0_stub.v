// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Fri Nov 28 16:13:20 2025
// Host        : sunset running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_ad7960_axis_wrapper_0_0_stub.v
// Design      : design_1_ad7960_axis_wrapper_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu7ev-ffvc1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ad7960_axis_wrapper,Vivado 2022.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, resetn, adc_data, adc_valid, m_axis_tdata, 
  m_axis_tvalid, m_axis_tready, m_axis_tlast)
/* synthesis syn_black_box black_box_pad_pin="clk,resetn,adc_data[17:0],adc_valid,m_axis_tdata[31:0],m_axis_tvalid,m_axis_tready,m_axis_tlast" */;
  input clk;
  input resetn;
  input [17:0]adc_data;
  input adc_valid;
  output [31:0]m_axis_tdata;
  output m_axis_tvalid;
  input m_axis_tready;
  output m_axis_tlast;
endmodule
