-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Sun Nov  2 20:23:07 2025
-- Host        : sunset running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/annoa/ad7960_ip_1/ad7960_ip_1.gen/sources_1/bd/design_1/ip/design_1_AD7960_0_0/design_1_AD7960_0_0_stub.vhdl
-- Design      : design_1_AD7960_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu7ev-ffvc1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_AD7960_0_0 is
  Port ( 
    m_clk_i : in STD_LOGIC;
    fast_clk_i : in STD_LOGIC;
    reset_n_i : in STD_LOGIC;
    en_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    d_pos_i : in STD_LOGIC;
    d_neg_i : in STD_LOGIC;
    dco_pos_i : in STD_LOGIC;
    dco_neg_i : in STD_LOGIC;
    en_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    cnv_pos_o : out STD_LOGIC;
    cnv_neg_o : out STD_LOGIC;
    clk_pos_o : out STD_LOGIC;
    clk_neg_o : out STD_LOGIC;
    data_rd_rdy_o : out STD_LOGIC;
    data_o : out STD_LOGIC_VECTOR ( 17 downto 0 )
  );

end design_1_AD7960_0_0;

architecture stub of design_1_AD7960_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "m_clk_i,fast_clk_i,reset_n_i,en_i[3:0],d_pos_i,d_neg_i,dco_pos_i,dco_neg_i,en_o[3:0],cnv_pos_o,cnv_neg_o,clk_pos_o,clk_neg_o,data_rd_rdy_o,data_o[17:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "AD7960,Vivado 2022.2";
begin
end;
