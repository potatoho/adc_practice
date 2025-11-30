-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Thu Nov 27 11:29:42 2025
-- Host        : sunset running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_ad7960_axis_wrapper_0_0_sim_netlist.vhdl
-- Design      : design_1_ad7960_axis_wrapper_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu7ev-ffvc1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ad7960_axis_wrapper is
  port (
    m_axis_tdata : out STD_LOGIC_VECTOR ( 17 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    adc_valid : in STD_LOGIC;
    adc_data : in STD_LOGIC_VECTOR ( 17 downto 0 );
    clk : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    resetn : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ad7960_axis_wrapper;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ad7960_axis_wrapper is
  signal \m_axis_tdata[17]_i_1_n_0\ : STD_LOGIC;
  signal \^m_axis_tvalid\ : STD_LOGIC;
  signal m_axis_tvalid_i_1_n_0 : STD_LOGIC;
begin
  m_axis_tvalid <= \^m_axis_tvalid\;
\m_axis_tdata[17]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => resetn,
      O => \m_axis_tdata[17]_i_1_n_0\
    );
\m_axis_tdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => adc_valid,
      D => adc_data(0),
      Q => m_axis_tdata(0),
      R => \m_axis_tdata[17]_i_1_n_0\
    );
\m_axis_tdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => adc_valid,
      D => adc_data(10),
      Q => m_axis_tdata(10),
      R => \m_axis_tdata[17]_i_1_n_0\
    );
\m_axis_tdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => adc_valid,
      D => adc_data(11),
      Q => m_axis_tdata(11),
      R => \m_axis_tdata[17]_i_1_n_0\
    );
\m_axis_tdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => adc_valid,
      D => adc_data(12),
      Q => m_axis_tdata(12),
      R => \m_axis_tdata[17]_i_1_n_0\
    );
\m_axis_tdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => adc_valid,
      D => adc_data(13),
      Q => m_axis_tdata(13),
      R => \m_axis_tdata[17]_i_1_n_0\
    );
\m_axis_tdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => adc_valid,
      D => adc_data(14),
      Q => m_axis_tdata(14),
      R => \m_axis_tdata[17]_i_1_n_0\
    );
\m_axis_tdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => adc_valid,
      D => adc_data(15),
      Q => m_axis_tdata(15),
      R => \m_axis_tdata[17]_i_1_n_0\
    );
\m_axis_tdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => adc_valid,
      D => adc_data(16),
      Q => m_axis_tdata(16),
      R => \m_axis_tdata[17]_i_1_n_0\
    );
\m_axis_tdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => adc_valid,
      D => adc_data(17),
      Q => m_axis_tdata(17),
      R => \m_axis_tdata[17]_i_1_n_0\
    );
\m_axis_tdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => adc_valid,
      D => adc_data(1),
      Q => m_axis_tdata(1),
      R => \m_axis_tdata[17]_i_1_n_0\
    );
\m_axis_tdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => adc_valid,
      D => adc_data(2),
      Q => m_axis_tdata(2),
      R => \m_axis_tdata[17]_i_1_n_0\
    );
\m_axis_tdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => adc_valid,
      D => adc_data(3),
      Q => m_axis_tdata(3),
      R => \m_axis_tdata[17]_i_1_n_0\
    );
\m_axis_tdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => adc_valid,
      D => adc_data(4),
      Q => m_axis_tdata(4),
      R => \m_axis_tdata[17]_i_1_n_0\
    );
\m_axis_tdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => adc_valid,
      D => adc_data(5),
      Q => m_axis_tdata(5),
      R => \m_axis_tdata[17]_i_1_n_0\
    );
\m_axis_tdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => adc_valid,
      D => adc_data(6),
      Q => m_axis_tdata(6),
      R => \m_axis_tdata[17]_i_1_n_0\
    );
\m_axis_tdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => adc_valid,
      D => adc_data(7),
      Q => m_axis_tdata(7),
      R => \m_axis_tdata[17]_i_1_n_0\
    );
\m_axis_tdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => adc_valid,
      D => adc_data(8),
      Q => m_axis_tdata(8),
      R => \m_axis_tdata[17]_i_1_n_0\
    );
\m_axis_tdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => adc_valid,
      D => adc_data(9),
      Q => m_axis_tdata(9),
      R => \m_axis_tdata[17]_i_1_n_0\
    );
m_axis_tvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F400"
    )
        port map (
      I0 => m_axis_tready,
      I1 => \^m_axis_tvalid\,
      I2 => adc_valid,
      I3 => resetn,
      O => m_axis_tvalid_i_1_n_0
    );
m_axis_tvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => m_axis_tvalid_i_1_n_0,
      Q => \^m_axis_tvalid\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk : in STD_LOGIC;
    resetn : in STD_LOGIC;
    adc_data : in STD_LOGIC_VECTOR ( 17 downto 0 );
    adc_valid : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tlast : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_ad7960_axis_wrapper_0_0,ad7960_axis_wrapper,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "ad7960_axis_wrapper,Vivado 2022.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \^m_axis_tdata\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF m_axis, ASSOCIATED_RESET resetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_tlast : signal is "xilinx.com:interface:axis:1.0 m_axis TLAST";
  attribute X_INTERFACE_PARAMETER of m_axis_tlast : signal is "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 m_axis TREADY";
  attribute X_INTERFACE_INFO of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis TVALID";
  attribute X_INTERFACE_INFO of resetn : signal is "xilinx.com:signal:reset:1.0 resetn RST";
  attribute X_INTERFACE_PARAMETER of resetn : signal is "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis TDATA";
begin
  m_axis_tdata(31) <= \<const0>\;
  m_axis_tdata(30) <= \<const0>\;
  m_axis_tdata(29) <= \<const0>\;
  m_axis_tdata(28) <= \<const0>\;
  m_axis_tdata(27) <= \<const0>\;
  m_axis_tdata(26) <= \<const0>\;
  m_axis_tdata(25) <= \<const0>\;
  m_axis_tdata(24) <= \<const0>\;
  m_axis_tdata(23) <= \<const0>\;
  m_axis_tdata(22) <= \<const0>\;
  m_axis_tdata(21) <= \<const0>\;
  m_axis_tdata(20) <= \<const0>\;
  m_axis_tdata(19) <= \<const0>\;
  m_axis_tdata(18) <= \<const0>\;
  m_axis_tdata(17 downto 0) <= \^m_axis_tdata\(17 downto 0);
  m_axis_tlast <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ad7960_axis_wrapper
     port map (
      adc_data(17 downto 0) => adc_data(17 downto 0),
      adc_valid => adc_valid,
      clk => clk,
      m_axis_tdata(17 downto 0) => \^m_axis_tdata\(17 downto 0),
      m_axis_tready => m_axis_tready,
      m_axis_tvalid => m_axis_tvalid,
      resetn => resetn
    );
end STRUCTURE;
