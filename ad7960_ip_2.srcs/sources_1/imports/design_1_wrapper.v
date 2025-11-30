//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
//Date        : Tue Nov  4 17:10:31 2025
//Host        : sunset running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (adc_clk_n,
    adc_clk_p,
    adc_cnv_n,
    adc_cnv_p,
    adc_d_n,
    adc_d_p,
    adc_dco_n,
    adc_dco_p,
    clk_125_n,
    clk_125_p,
    en);
  output adc_clk_n;
  output adc_clk_p;
  output adc_cnv_n;
  output adc_cnv_p;
  input adc_d_n;
  input adc_d_p;
  input adc_dco_n;
  input adc_dco_p;
  input clk_125_n;
  input clk_125_p;
  output [3:0]en;

  wire adc_clk_n;
  wire adc_clk_p;
  wire adc_cnv_n;
  wire adc_cnv_p;
  wire adc_d_n;
  wire adc_d_p;
  wire adc_dco_n;
  wire adc_dco_p;
  wire clk_125_n;
  wire clk_125_p;
  wire [3:0]en;

  design_1 design_1_i
       (.adc_clk_n(adc_clk_n),
        .adc_clk_p(adc_clk_p),
        .adc_cnv_n(adc_cnv_n),
        .adc_cnv_p(adc_cnv_p),
        .adc_d_n(adc_d_n),
        .adc_d_p(adc_d_p),
        .adc_dco_n(adc_dco_n),
        .adc_dco_p(adc_dco_p),
        .clk_125_n(clk_125_n),
        .clk_125_p(clk_125_p),
        .en(en));
endmodule
