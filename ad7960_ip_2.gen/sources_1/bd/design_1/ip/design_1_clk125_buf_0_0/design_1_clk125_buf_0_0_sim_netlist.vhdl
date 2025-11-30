-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Mon Nov  3 15:15:48 2025
-- Host        : sunset running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/annoa/ad7960_ip_1/ad7960_ip_1.gen/sources_1/bd/design_1/ip/design_1_clk125_buf_0_0/design_1_clk125_buf_0_0_sim_netlist.vhdl
-- Design      : design_1_clk125_buf_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu7ev-ffvc1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_clk125_buf_0_0_clk125_buf is
  port (
    clk_125 : out STD_LOGIC;
    clk_125_p : in STD_LOGIC;
    clk_125_n : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_clk125_buf_0_0_clk125_buf : entity is "clk125_buf";
end design_1_clk125_buf_0_0_clk125_buf;

architecture STRUCTURE of design_1_clk125_buf_0_0_clk125_buf is
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of IBUFDS_inst : label is "PRIMITIVE";
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of IBUFDS_inst : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE : string;
  attribute IBUF_DELAY_VALUE of IBUFDS_inst : label is "0";
  attribute IFD_DELAY_VALUE : string;
  attribute IFD_DELAY_VALUE of IBUFDS_inst : label is "AUTO";
begin
IBUFDS_inst: unisim.vcomponents.IBUFDS
    generic map(
      CCIO_EN_M => "TRUE",
      CCIO_EN_S => "TRUE",
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => clk_125_p,
      IB => clk_125_n,
      O => clk_125
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_clk125_buf_0_0 is
  port (
    clk_125_p : in STD_LOGIC;
    clk_125_n : in STD_LOGIC;
    clk_125 : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_clk125_buf_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_clk125_buf_0_0 : entity is "design_1_clk125_buf_0_0,clk125_buf,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_clk125_buf_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_clk125_buf_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_clk125_buf_0_0 : entity is "clk125_buf,Vivado 2022.2";
end design_1_clk125_buf_0_0;

architecture STRUCTURE of design_1_clk125_buf_0_0 is
begin
inst: entity work.design_1_clk125_buf_0_0_clk125_buf
     port map (
      clk_125 => clk_125,
      clk_125_n => clk_125_n,
      clk_125_p => clk_125_p
    );
end STRUCTURE;
