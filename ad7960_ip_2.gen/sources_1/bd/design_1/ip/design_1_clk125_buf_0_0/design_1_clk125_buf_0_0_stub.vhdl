-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Mon Nov  3 15:15:48 2025
-- Host        : sunset running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/annoa/ad7960_ip_1/ad7960_ip_1.gen/sources_1/bd/design_1/ip/design_1_clk125_buf_0_0/design_1_clk125_buf_0_0_stub.vhdl
-- Design      : design_1_clk125_buf_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu7ev-ffvc1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_clk125_buf_0_0 is
  Port ( 
    clk_125_p : in STD_LOGIC;
    clk_125_n : in STD_LOGIC;
    clk_125 : out STD_LOGIC
  );

end design_1_clk125_buf_0_0;

architecture stub of design_1_clk125_buf_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_125_p,clk_125_n,clk_125";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "clk125_buf,Vivado 2022.2";
begin
end;
