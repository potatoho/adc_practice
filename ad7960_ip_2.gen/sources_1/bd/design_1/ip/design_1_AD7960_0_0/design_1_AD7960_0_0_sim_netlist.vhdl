-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Sun Nov  2 20:23:07 2025
-- Host        : sunset running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/annoa/ad7960_ip_1/ad7960_ip_1.gen/sources_1/bd/design_1/ip/design_1_AD7960_0_0/design_1_AD7960_0_0_sim_netlist.vhdl
-- Design      : design_1_AD7960_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu7ev-ffvc1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_AD7960_0_0_AD7960 is
  port (
    cnv_pos_o : out STD_LOGIC;
    cnv_neg_o : out STD_LOGIC;
    clk_pos_o : out STD_LOGIC;
    clk_neg_o : out STD_LOGIC;
    data_o : out STD_LOGIC_VECTOR ( 17 downto 0 );
    data_rd_rdy_o : out STD_LOGIC;
    d_pos_i : in STD_LOGIC;
    d_neg_i : in STD_LOGIC;
    dco_pos_i : in STD_LOGIC;
    dco_neg_i : in STD_LOGIC;
    fast_clk_i : in STD_LOGIC;
    m_clk_i : in STD_LOGIC;
    reset_n_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_AD7960_0_0_AD7960 : entity is "AD7960";
end design_1_AD7960_0_0_AD7960;

architecture STRUCTURE of design_1_AD7960_0_0_AD7960 is
  signal Clock_Out_OBUFDS_i_2_n_0 : STD_LOGIC;
  signal Clock_Out_OBUFDS_i_3_n_0 : STD_LOGIC;
  signal Clock_Out_OBUFDS_i_4_n_0 : STD_LOGIC;
  signal Clock_Out_OBUFDS_i_5_n_0 : STD_LOGIC;
  signal Clock_Out_OBUFDS_i_6_n_0 : STD_LOGIC;
  signal Clock_Out_OBUFDS_i_7_n_0 : STD_LOGIC;
  signal Cnv_Out_OBUFDS_i_2_n_0 : STD_LOGIC;
  signal I0 : STD_LOGIC;
  signal \adc_tcyc_cnt[0]_i_10_n_0\ : STD_LOGIC;
  signal \adc_tcyc_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \adc_tcyc_cnt[0]_i_3_n_0\ : STD_LOGIC;
  signal \adc_tcyc_cnt[0]_i_4_n_0\ : STD_LOGIC;
  signal \adc_tcyc_cnt[0]_i_5_n_0\ : STD_LOGIC;
  signal \adc_tcyc_cnt[0]_i_6_n_0\ : STD_LOGIC;
  signal \adc_tcyc_cnt[0]_i_7_n_0\ : STD_LOGIC;
  signal \adc_tcyc_cnt[0]_i_8_n_0\ : STD_LOGIC;
  signal \adc_tcyc_cnt[0]_i_9_n_0\ : STD_LOGIC;
  signal \adc_tcyc_cnt[16]_i_2_n_0\ : STD_LOGIC;
  signal \adc_tcyc_cnt[16]_i_3_n_0\ : STD_LOGIC;
  signal \adc_tcyc_cnt[16]_i_4_n_0\ : STD_LOGIC;
  signal \adc_tcyc_cnt[16]_i_5_n_0\ : STD_LOGIC;
  signal \adc_tcyc_cnt[16]_i_6_n_0\ : STD_LOGIC;
  signal \adc_tcyc_cnt[16]_i_7_n_0\ : STD_LOGIC;
  signal \adc_tcyc_cnt[16]_i_8_n_0\ : STD_LOGIC;
  signal \adc_tcyc_cnt[16]_i_9_n_0\ : STD_LOGIC;
  signal \adc_tcyc_cnt[24]_i_2_n_0\ : STD_LOGIC;
  signal \adc_tcyc_cnt[24]_i_3_n_0\ : STD_LOGIC;
  signal \adc_tcyc_cnt[24]_i_4_n_0\ : STD_LOGIC;
  signal \adc_tcyc_cnt[24]_i_5_n_0\ : STD_LOGIC;
  signal \adc_tcyc_cnt[24]_i_6_n_0\ : STD_LOGIC;
  signal \adc_tcyc_cnt[24]_i_7_n_0\ : STD_LOGIC;
  signal \adc_tcyc_cnt[24]_i_8_n_0\ : STD_LOGIC;
  signal \adc_tcyc_cnt[24]_i_9_n_0\ : STD_LOGIC;
  signal \adc_tcyc_cnt[8]_i_2_n_0\ : STD_LOGIC;
  signal \adc_tcyc_cnt[8]_i_3_n_0\ : STD_LOGIC;
  signal \adc_tcyc_cnt[8]_i_4_n_0\ : STD_LOGIC;
  signal \adc_tcyc_cnt[8]_i_5_n_0\ : STD_LOGIC;
  signal \adc_tcyc_cnt[8]_i_6_n_0\ : STD_LOGIC;
  signal \adc_tcyc_cnt[8]_i_7_n_0\ : STD_LOGIC;
  signal \adc_tcyc_cnt[8]_i_8_n_0\ : STD_LOGIC;
  signal \adc_tcyc_cnt[8]_i_9_n_0\ : STD_LOGIC;
  signal adc_tcyc_cnt_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \adc_tcyc_cnt_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \adc_tcyc_cnt_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \adc_tcyc_cnt_reg[0]_i_2_n_10\ : STD_LOGIC;
  signal \adc_tcyc_cnt_reg[0]_i_2_n_11\ : STD_LOGIC;
  signal \adc_tcyc_cnt_reg[0]_i_2_n_12\ : STD_LOGIC;
  signal \adc_tcyc_cnt_reg[0]_i_2_n_13\ : STD_LOGIC;
  signal \adc_tcyc_cnt_reg[0]_i_2_n_14\ : STD_LOGIC;
  signal \adc_tcyc_cnt_reg[0]_i_2_n_15\ : STD_LOGIC;
  signal \adc_tcyc_cnt_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \adc_tcyc_cnt_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \adc_tcyc_cnt_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \adc_tcyc_cnt_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \adc_tcyc_cnt_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \adc_tcyc_cnt_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \adc_tcyc_cnt_reg[0]_i_2_n_8\ : STD_LOGIC;
  signal \adc_tcyc_cnt_reg[0]_i_2_n_9\ : STD_LOGIC;
  signal \adc_tcyc_cnt_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \adc_tcyc_cnt_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \adc_tcyc_cnt_reg[16]_i_1_n_10\ : STD_LOGIC;
  signal \adc_tcyc_cnt_reg[16]_i_1_n_11\ : STD_LOGIC;
  signal \adc_tcyc_cnt_reg[16]_i_1_n_12\ : STD_LOGIC;
  signal \adc_tcyc_cnt_reg[16]_i_1_n_13\ : STD_LOGIC;
  signal \adc_tcyc_cnt_reg[16]_i_1_n_14\ : STD_LOGIC;
  signal \adc_tcyc_cnt_reg[16]_i_1_n_15\ : STD_LOGIC;
  signal \adc_tcyc_cnt_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \adc_tcyc_cnt_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \adc_tcyc_cnt_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \adc_tcyc_cnt_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \adc_tcyc_cnt_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \adc_tcyc_cnt_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \adc_tcyc_cnt_reg[16]_i_1_n_8\ : STD_LOGIC;
  signal \adc_tcyc_cnt_reg[16]_i_1_n_9\ : STD_LOGIC;
  signal \adc_tcyc_cnt_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \adc_tcyc_cnt_reg[24]_i_1_n_10\ : STD_LOGIC;
  signal \adc_tcyc_cnt_reg[24]_i_1_n_11\ : STD_LOGIC;
  signal \adc_tcyc_cnt_reg[24]_i_1_n_12\ : STD_LOGIC;
  signal \adc_tcyc_cnt_reg[24]_i_1_n_13\ : STD_LOGIC;
  signal \adc_tcyc_cnt_reg[24]_i_1_n_14\ : STD_LOGIC;
  signal \adc_tcyc_cnt_reg[24]_i_1_n_15\ : STD_LOGIC;
  signal \adc_tcyc_cnt_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \adc_tcyc_cnt_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \adc_tcyc_cnt_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \adc_tcyc_cnt_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \adc_tcyc_cnt_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \adc_tcyc_cnt_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \adc_tcyc_cnt_reg[24]_i_1_n_8\ : STD_LOGIC;
  signal \adc_tcyc_cnt_reg[24]_i_1_n_9\ : STD_LOGIC;
  signal \adc_tcyc_cnt_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \adc_tcyc_cnt_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \adc_tcyc_cnt_reg[8]_i_1_n_10\ : STD_LOGIC;
  signal \adc_tcyc_cnt_reg[8]_i_1_n_11\ : STD_LOGIC;
  signal \adc_tcyc_cnt_reg[8]_i_1_n_12\ : STD_LOGIC;
  signal \adc_tcyc_cnt_reg[8]_i_1_n_13\ : STD_LOGIC;
  signal \adc_tcyc_cnt_reg[8]_i_1_n_14\ : STD_LOGIC;
  signal \adc_tcyc_cnt_reg[8]_i_1_n_15\ : STD_LOGIC;
  signal \adc_tcyc_cnt_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \adc_tcyc_cnt_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \adc_tcyc_cnt_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \adc_tcyc_cnt_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \adc_tcyc_cnt_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \adc_tcyc_cnt_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \adc_tcyc_cnt_reg[8]_i_1_n_8\ : STD_LOGIC;
  signal \adc_tcyc_cnt_reg[8]_i_1_n_9\ : STD_LOGIC;
  signal buffer_reset_s : STD_LOGIC;
  signal cnv_s : STD_LOGIC;
  signal \^data_o\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal data_rd_rdy_o_INST_0_i_1_n_0 : STD_LOGIC;
  signal data_rd_rdy_o_INST_0_i_2_n_0 : STD_LOGIC;
  signal data_rd_rdy_o_INST_0_i_3_n_0 : STD_LOGIC;
  signal data_rd_rdy_o_INST_0_i_4_n_0 : STD_LOGIC;
  signal data_rd_rdy_o_INST_0_i_5_n_0 : STD_LOGIC;
  signal data_rd_rdy_o_INST_0_i_6_n_0 : STD_LOGIC;
  signal data_rd_rdy_o_INST_0_i_7_n_0 : STD_LOGIC;
  signal data_rd_rdy_o_INST_0_i_8_n_0 : STD_LOGIC;
  signal sclk_cnt0 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal sclk_cnt0_0 : STD_LOGIC;
  signal \sclk_cnt[4]_i_3_n_0\ : STD_LOGIC;
  signal sclk_cnt_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal sclk_echo_cnt0 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal sclk_echo_cnt_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal sclk_s : STD_LOGIC;
  signal sdi_s : STD_LOGIC;
  signal sel : STD_LOGIC;
  signal serial_next_state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal serial_present_state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \serial_present_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \serial_present_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \serial_present_state[2]_i_4_n_0\ : STD_LOGIC;
  signal \serial_present_state[2]_i_5_n_0\ : STD_LOGIC;
  signal serial_read_done_s_i_1_n_0 : STD_LOGIC;
  signal serial_read_done_s_reg_n_0 : STD_LOGIC;
  signal \NLW_adc_tcyc_cnt_reg[24]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of Clock_Out_OBUFDS : label is "PRIMITIVE";
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of Clock_Out_OBUFDS : label is "DONT_CARE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of Clock_Out_OBUFDS_i_3 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of Clock_Out_OBUFDS_i_4 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of Clock_Out_OBUFDS_i_5 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of Clock_Out_OBUFDS_i_6 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of Clock_Out_OBUFDS_i_7 : label is "soft_lutpair0";
  attribute BOX_TYPE of Cnv_Out_OBUFDS : label is "PRIMITIVE";
  attribute CAPACITANCE of Cnv_Out_OBUFDS : label is "DONT_CARE";
  attribute SOFT_HLUTNM of Cnv_Out_OBUFDS_i_2 : label is "soft_lutpair4";
  attribute BOX_TYPE of Data_In_IBUFDS : label is "PRIMITIVE";
  attribute CAPACITANCE of Data_In_IBUFDS : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE : string;
  attribute IBUF_DELAY_VALUE of Data_In_IBUFDS : label is "0";
  attribute IFD_DELAY_VALUE : string;
  attribute IFD_DELAY_VALUE of Data_In_IBUFDS : label is "AUTO";
  attribute BOX_TYPE of Serial_Clock_In_IBUFDS : label is "PRIMITIVE";
  attribute CAPACITANCE of Serial_Clock_In_IBUFDS : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of Serial_Clock_In_IBUFDS : label is "0";
  attribute IFD_DELAY_VALUE of Serial_Clock_In_IBUFDS : label is "AUTO";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \adc_tcyc_cnt_reg[0]_i_2\ : label is 16;
  attribute ADDER_THRESHOLD of \adc_tcyc_cnt_reg[16]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \adc_tcyc_cnt_reg[24]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \adc_tcyc_cnt_reg[8]_i_1\ : label is 16;
  attribute SOFT_HLUTNM of data_rd_rdy_o_INST_0_i_1 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of data_rd_rdy_o_INST_0_i_3 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of data_rd_rdy_o_INST_0_i_4 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \sclk_cnt[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \sclk_cnt[3]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \sclk_cnt[4]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \sclk_cnt[4]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \sclk_echo_cnt[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \sclk_echo_cnt[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \sclk_echo_cnt[3]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \sclk_echo_cnt[4]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \serial_present_state[0]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \serial_present_state[2]_i_3\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \serial_present_state[2]_i_4\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \serial_present_state[2]_i_5\ : label is "soft_lutpair10";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \serial_present_state_reg[0]\ : label is "SERIAL_IDLE_STATE:001,SERIAL_READ_STATE:010,SERIAL_DONE_STATE:100,";
  attribute FSM_ENCODED_STATES of \serial_present_state_reg[1]\ : label is "SERIAL_IDLE_STATE:001,SERIAL_READ_STATE:010,SERIAL_DONE_STATE:100,";
  attribute FSM_ENCODED_STATES of \serial_present_state_reg[2]\ : label is "SERIAL_IDLE_STATE:001,SERIAL_READ_STATE:010,SERIAL_DONE_STATE:100,";
  attribute SOFT_HLUTNM of serial_read_done_s_i_1 : label is "soft_lutpair9";
begin
  data_o(17 downto 0) <= \^data_o\(17 downto 0);
Clock_Out_OBUFDS: unisim.vcomponents.OBUFDS
     port map (
      I => I0,
      O => clk_pos_o,
      OB => clk_neg_o
    );
Clock_Out_OBUFDS_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => adc_tcyc_cnt_reg(0),
      I1 => Clock_Out_OBUFDS_i_2_n_0,
      I2 => data_rd_rdy_o_INST_0_i_2_n_0,
      I3 => adc_tcyc_cnt_reg(4),
      I4 => Clock_Out_OBUFDS_i_3_n_0,
      I5 => Clock_Out_OBUFDS_i_4_n_0,
      O => I0
    );
Clock_Out_OBUFDS_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => data_rd_rdy_o_INST_0_i_7_n_0,
      I1 => Clock_Out_OBUFDS_i_5_n_0,
      I2 => data_rd_rdy_o_INST_0_i_8_n_0,
      I3 => Clock_Out_OBUFDS_i_6_n_0,
      O => Clock_Out_OBUFDS_i_2_n_0
    );
Clock_Out_OBUFDS_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => adc_tcyc_cnt_reg(3),
      I1 => adc_tcyc_cnt_reg(2),
      I2 => adc_tcyc_cnt_reg(1),
      O => Clock_Out_OBUFDS_i_3_n_0
    );
Clock_Out_OBUFDS_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => Clock_Out_OBUFDS_i_7_n_0,
      I1 => serial_present_state(0),
      I2 => serial_present_state(1),
      I3 => serial_present_state(2),
      I4 => fast_clk_i,
      O => Clock_Out_OBUFDS_i_4_n_0
    );
Clock_Out_OBUFDS_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => adc_tcyc_cnt_reg(11),
      I1 => adc_tcyc_cnt_reg(10),
      I2 => adc_tcyc_cnt_reg(13),
      I3 => adc_tcyc_cnt_reg(12),
      O => Clock_Out_OBUFDS_i_5_n_0
    );
Clock_Out_OBUFDS_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => adc_tcyc_cnt_reg(19),
      I1 => adc_tcyc_cnt_reg(18),
      I2 => adc_tcyc_cnt_reg(21),
      I3 => adc_tcyc_cnt_reg(20),
      O => Clock_Out_OBUFDS_i_6_n_0
    );
Clock_Out_OBUFDS_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => sclk_cnt_reg(3),
      I1 => sclk_cnt_reg(1),
      I2 => sclk_cnt_reg(0),
      I3 => sclk_cnt_reg(2),
      I4 => sclk_cnt_reg(4),
      O => Clock_Out_OBUFDS_i_7_n_0
    );
Cnv_Out_OBUFDS: unisim.vcomponents.OBUFDS
     port map (
      I => cnv_s,
      O => cnv_pos_o,
      OB => cnv_neg_o
    );
Cnv_Out_OBUFDS_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFF8"
    )
        port map (
      I0 => adc_tcyc_cnt_reg(4),
      I1 => Cnv_Out_OBUFDS_i_2_n_0,
      I2 => data_rd_rdy_o_INST_0_i_2_n_0,
      I3 => data_rd_rdy_o_INST_0_i_3_n_0,
      I4 => data_rd_rdy_o_INST_0_i_4_n_0,
      O => cnv_s
    );
Cnv_Out_OBUFDS_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => adc_tcyc_cnt_reg(3),
      I1 => adc_tcyc_cnt_reg(2),
      I2 => adc_tcyc_cnt_reg(1),
      O => Cnv_Out_OBUFDS_i_2_n_0
    );
Data_In_IBUFDS: unisim.vcomponents.IBUFDS
    generic map(
      CCIO_EN_M => "TRUE",
      CCIO_EN_S => "TRUE"
    )
        port map (
      I => d_pos_i,
      IB => d_neg_i,
      O => sdi_s
    );
Serial_Clock_In_IBUFDS: unisim.vcomponents.IBUFDS
    generic map(
      CCIO_EN_M => "TRUE",
      CCIO_EN_S => "TRUE"
    )
        port map (
      I => dco_pos_i,
      IB => dco_neg_i,
      O => sclk_s
    );
\adc_tcyc_cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001FFFFFFFF"
    )
        port map (
      I0 => adc_tcyc_cnt_reg(0),
      I1 => Clock_Out_OBUFDS_i_2_n_0,
      I2 => data_rd_rdy_o_INST_0_i_2_n_0,
      I3 => adc_tcyc_cnt_reg(4),
      I4 => Cnv_Out_OBUFDS_i_2_n_0,
      I5 => reset_n_i,
      O => \adc_tcyc_cnt[0]_i_1_n_0\
    );
\adc_tcyc_cnt[0]_i_10\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_tcyc_cnt_reg(0),
      O => \adc_tcyc_cnt[0]_i_10_n_0\
    );
\adc_tcyc_cnt[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_tcyc_cnt_reg(7),
      O => \adc_tcyc_cnt[0]_i_3_n_0\
    );
\adc_tcyc_cnt[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_tcyc_cnt_reg(6),
      O => \adc_tcyc_cnt[0]_i_4_n_0\
    );
\adc_tcyc_cnt[0]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_tcyc_cnt_reg(5),
      O => \adc_tcyc_cnt[0]_i_5_n_0\
    );
\adc_tcyc_cnt[0]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_tcyc_cnt_reg(4),
      O => \adc_tcyc_cnt[0]_i_6_n_0\
    );
\adc_tcyc_cnt[0]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_tcyc_cnt_reg(3),
      O => \adc_tcyc_cnt[0]_i_7_n_0\
    );
\adc_tcyc_cnt[0]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_tcyc_cnt_reg(2),
      O => \adc_tcyc_cnt[0]_i_8_n_0\
    );
\adc_tcyc_cnt[0]_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_tcyc_cnt_reg(1),
      O => \adc_tcyc_cnt[0]_i_9_n_0\
    );
\adc_tcyc_cnt[16]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_tcyc_cnt_reg(23),
      O => \adc_tcyc_cnt[16]_i_2_n_0\
    );
\adc_tcyc_cnt[16]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_tcyc_cnt_reg(22),
      O => \adc_tcyc_cnt[16]_i_3_n_0\
    );
\adc_tcyc_cnt[16]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_tcyc_cnt_reg(21),
      O => \adc_tcyc_cnt[16]_i_4_n_0\
    );
\adc_tcyc_cnt[16]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_tcyc_cnt_reg(20),
      O => \adc_tcyc_cnt[16]_i_5_n_0\
    );
\adc_tcyc_cnt[16]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_tcyc_cnt_reg(19),
      O => \adc_tcyc_cnt[16]_i_6_n_0\
    );
\adc_tcyc_cnt[16]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_tcyc_cnt_reg(18),
      O => \adc_tcyc_cnt[16]_i_7_n_0\
    );
\adc_tcyc_cnt[16]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_tcyc_cnt_reg(17),
      O => \adc_tcyc_cnt[16]_i_8_n_0\
    );
\adc_tcyc_cnt[16]_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_tcyc_cnt_reg(16),
      O => \adc_tcyc_cnt[16]_i_9_n_0\
    );
\adc_tcyc_cnt[24]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_tcyc_cnt_reg(31),
      O => \adc_tcyc_cnt[24]_i_2_n_0\
    );
\adc_tcyc_cnt[24]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_tcyc_cnt_reg(30),
      O => \adc_tcyc_cnt[24]_i_3_n_0\
    );
\adc_tcyc_cnt[24]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_tcyc_cnt_reg(29),
      O => \adc_tcyc_cnt[24]_i_4_n_0\
    );
\adc_tcyc_cnt[24]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_tcyc_cnt_reg(28),
      O => \adc_tcyc_cnt[24]_i_5_n_0\
    );
\adc_tcyc_cnt[24]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_tcyc_cnt_reg(27),
      O => \adc_tcyc_cnt[24]_i_6_n_0\
    );
\adc_tcyc_cnt[24]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_tcyc_cnt_reg(26),
      O => \adc_tcyc_cnt[24]_i_7_n_0\
    );
\adc_tcyc_cnt[24]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_tcyc_cnt_reg(25),
      O => \adc_tcyc_cnt[24]_i_8_n_0\
    );
\adc_tcyc_cnt[24]_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_tcyc_cnt_reg(24),
      O => \adc_tcyc_cnt[24]_i_9_n_0\
    );
\adc_tcyc_cnt[8]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_tcyc_cnt_reg(15),
      O => \adc_tcyc_cnt[8]_i_2_n_0\
    );
\adc_tcyc_cnt[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_tcyc_cnt_reg(14),
      O => \adc_tcyc_cnt[8]_i_3_n_0\
    );
\adc_tcyc_cnt[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_tcyc_cnt_reg(13),
      O => \adc_tcyc_cnt[8]_i_4_n_0\
    );
\adc_tcyc_cnt[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_tcyc_cnt_reg(12),
      O => \adc_tcyc_cnt[8]_i_5_n_0\
    );
\adc_tcyc_cnt[8]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_tcyc_cnt_reg(11),
      O => \adc_tcyc_cnt[8]_i_6_n_0\
    );
\adc_tcyc_cnt[8]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_tcyc_cnt_reg(10),
      O => \adc_tcyc_cnt[8]_i_7_n_0\
    );
\adc_tcyc_cnt[8]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_tcyc_cnt_reg(9),
      O => \adc_tcyc_cnt[8]_i_8_n_0\
    );
\adc_tcyc_cnt[8]_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_tcyc_cnt_reg(8),
      O => \adc_tcyc_cnt[8]_i_9_n_0\
    );
\adc_tcyc_cnt_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => m_clk_i,
      CE => '1',
      D => \adc_tcyc_cnt_reg[0]_i_2_n_15\,
      Q => adc_tcyc_cnt_reg(0),
      S => \adc_tcyc_cnt[0]_i_1_n_0\
    );
\adc_tcyc_cnt_reg[0]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \adc_tcyc_cnt_reg[0]_i_2_n_0\,
      CO(6) => \adc_tcyc_cnt_reg[0]_i_2_n_1\,
      CO(5) => \adc_tcyc_cnt_reg[0]_i_2_n_2\,
      CO(4) => \adc_tcyc_cnt_reg[0]_i_2_n_3\,
      CO(3) => \adc_tcyc_cnt_reg[0]_i_2_n_4\,
      CO(2) => \adc_tcyc_cnt_reg[0]_i_2_n_5\,
      CO(1) => \adc_tcyc_cnt_reg[0]_i_2_n_6\,
      CO(0) => \adc_tcyc_cnt_reg[0]_i_2_n_7\,
      DI(7 downto 0) => B"11111111",
      O(7) => \adc_tcyc_cnt_reg[0]_i_2_n_8\,
      O(6) => \adc_tcyc_cnt_reg[0]_i_2_n_9\,
      O(5) => \adc_tcyc_cnt_reg[0]_i_2_n_10\,
      O(4) => \adc_tcyc_cnt_reg[0]_i_2_n_11\,
      O(3) => \adc_tcyc_cnt_reg[0]_i_2_n_12\,
      O(2) => \adc_tcyc_cnt_reg[0]_i_2_n_13\,
      O(1) => \adc_tcyc_cnt_reg[0]_i_2_n_14\,
      O(0) => \adc_tcyc_cnt_reg[0]_i_2_n_15\,
      S(7) => \adc_tcyc_cnt[0]_i_3_n_0\,
      S(6) => \adc_tcyc_cnt[0]_i_4_n_0\,
      S(5) => \adc_tcyc_cnt[0]_i_5_n_0\,
      S(4) => \adc_tcyc_cnt[0]_i_6_n_0\,
      S(3) => \adc_tcyc_cnt[0]_i_7_n_0\,
      S(2) => \adc_tcyc_cnt[0]_i_8_n_0\,
      S(1) => \adc_tcyc_cnt[0]_i_9_n_0\,
      S(0) => \adc_tcyc_cnt[0]_i_10_n_0\
    );
\adc_tcyc_cnt_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => m_clk_i,
      CE => '1',
      D => \adc_tcyc_cnt_reg[8]_i_1_n_13\,
      Q => adc_tcyc_cnt_reg(10),
      R => \adc_tcyc_cnt[0]_i_1_n_0\
    );
\adc_tcyc_cnt_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => m_clk_i,
      CE => '1',
      D => \adc_tcyc_cnt_reg[8]_i_1_n_12\,
      Q => adc_tcyc_cnt_reg(11),
      R => \adc_tcyc_cnt[0]_i_1_n_0\
    );
\adc_tcyc_cnt_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => m_clk_i,
      CE => '1',
      D => \adc_tcyc_cnt_reg[8]_i_1_n_11\,
      Q => adc_tcyc_cnt_reg(12),
      R => \adc_tcyc_cnt[0]_i_1_n_0\
    );
\adc_tcyc_cnt_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => m_clk_i,
      CE => '1',
      D => \adc_tcyc_cnt_reg[8]_i_1_n_10\,
      Q => adc_tcyc_cnt_reg(13),
      R => \adc_tcyc_cnt[0]_i_1_n_0\
    );
\adc_tcyc_cnt_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => m_clk_i,
      CE => '1',
      D => \adc_tcyc_cnt_reg[8]_i_1_n_9\,
      Q => adc_tcyc_cnt_reg(14),
      R => \adc_tcyc_cnt[0]_i_1_n_0\
    );
\adc_tcyc_cnt_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => m_clk_i,
      CE => '1',
      D => \adc_tcyc_cnt_reg[8]_i_1_n_8\,
      Q => adc_tcyc_cnt_reg(15),
      R => \adc_tcyc_cnt[0]_i_1_n_0\
    );
\adc_tcyc_cnt_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => m_clk_i,
      CE => '1',
      D => \adc_tcyc_cnt_reg[16]_i_1_n_15\,
      Q => adc_tcyc_cnt_reg(16),
      R => \adc_tcyc_cnt[0]_i_1_n_0\
    );
\adc_tcyc_cnt_reg[16]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \adc_tcyc_cnt_reg[8]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \adc_tcyc_cnt_reg[16]_i_1_n_0\,
      CO(6) => \adc_tcyc_cnt_reg[16]_i_1_n_1\,
      CO(5) => \adc_tcyc_cnt_reg[16]_i_1_n_2\,
      CO(4) => \adc_tcyc_cnt_reg[16]_i_1_n_3\,
      CO(3) => \adc_tcyc_cnt_reg[16]_i_1_n_4\,
      CO(2) => \adc_tcyc_cnt_reg[16]_i_1_n_5\,
      CO(1) => \adc_tcyc_cnt_reg[16]_i_1_n_6\,
      CO(0) => \adc_tcyc_cnt_reg[16]_i_1_n_7\,
      DI(7 downto 0) => B"11111111",
      O(7) => \adc_tcyc_cnt_reg[16]_i_1_n_8\,
      O(6) => \adc_tcyc_cnt_reg[16]_i_1_n_9\,
      O(5) => \adc_tcyc_cnt_reg[16]_i_1_n_10\,
      O(4) => \adc_tcyc_cnt_reg[16]_i_1_n_11\,
      O(3) => \adc_tcyc_cnt_reg[16]_i_1_n_12\,
      O(2) => \adc_tcyc_cnt_reg[16]_i_1_n_13\,
      O(1) => \adc_tcyc_cnt_reg[16]_i_1_n_14\,
      O(0) => \adc_tcyc_cnt_reg[16]_i_1_n_15\,
      S(7) => \adc_tcyc_cnt[16]_i_2_n_0\,
      S(6) => \adc_tcyc_cnt[16]_i_3_n_0\,
      S(5) => \adc_tcyc_cnt[16]_i_4_n_0\,
      S(4) => \adc_tcyc_cnt[16]_i_5_n_0\,
      S(3) => \adc_tcyc_cnt[16]_i_6_n_0\,
      S(2) => \adc_tcyc_cnt[16]_i_7_n_0\,
      S(1) => \adc_tcyc_cnt[16]_i_8_n_0\,
      S(0) => \adc_tcyc_cnt[16]_i_9_n_0\
    );
\adc_tcyc_cnt_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => m_clk_i,
      CE => '1',
      D => \adc_tcyc_cnt_reg[16]_i_1_n_14\,
      Q => adc_tcyc_cnt_reg(17),
      R => \adc_tcyc_cnt[0]_i_1_n_0\
    );
\adc_tcyc_cnt_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => m_clk_i,
      CE => '1',
      D => \adc_tcyc_cnt_reg[16]_i_1_n_13\,
      Q => adc_tcyc_cnt_reg(18),
      R => \adc_tcyc_cnt[0]_i_1_n_0\
    );
\adc_tcyc_cnt_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => m_clk_i,
      CE => '1',
      D => \adc_tcyc_cnt_reg[16]_i_1_n_12\,
      Q => adc_tcyc_cnt_reg(19),
      R => \adc_tcyc_cnt[0]_i_1_n_0\
    );
\adc_tcyc_cnt_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => m_clk_i,
      CE => '1',
      D => \adc_tcyc_cnt_reg[0]_i_2_n_14\,
      Q => adc_tcyc_cnt_reg(1),
      S => \adc_tcyc_cnt[0]_i_1_n_0\
    );
\adc_tcyc_cnt_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => m_clk_i,
      CE => '1',
      D => \adc_tcyc_cnt_reg[16]_i_1_n_11\,
      Q => adc_tcyc_cnt_reg(20),
      R => \adc_tcyc_cnt[0]_i_1_n_0\
    );
\adc_tcyc_cnt_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => m_clk_i,
      CE => '1',
      D => \adc_tcyc_cnt_reg[16]_i_1_n_10\,
      Q => adc_tcyc_cnt_reg(21),
      R => \adc_tcyc_cnt[0]_i_1_n_0\
    );
\adc_tcyc_cnt_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => m_clk_i,
      CE => '1',
      D => \adc_tcyc_cnt_reg[16]_i_1_n_9\,
      Q => adc_tcyc_cnt_reg(22),
      R => \adc_tcyc_cnt[0]_i_1_n_0\
    );
\adc_tcyc_cnt_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => m_clk_i,
      CE => '1',
      D => \adc_tcyc_cnt_reg[16]_i_1_n_8\,
      Q => adc_tcyc_cnt_reg(23),
      R => \adc_tcyc_cnt[0]_i_1_n_0\
    );
\adc_tcyc_cnt_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => m_clk_i,
      CE => '1',
      D => \adc_tcyc_cnt_reg[24]_i_1_n_15\,
      Q => adc_tcyc_cnt_reg(24),
      R => \adc_tcyc_cnt[0]_i_1_n_0\
    );
\adc_tcyc_cnt_reg[24]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \adc_tcyc_cnt_reg[16]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_adc_tcyc_cnt_reg[24]_i_1_CO_UNCONNECTED\(7),
      CO(6) => \adc_tcyc_cnt_reg[24]_i_1_n_1\,
      CO(5) => \adc_tcyc_cnt_reg[24]_i_1_n_2\,
      CO(4) => \adc_tcyc_cnt_reg[24]_i_1_n_3\,
      CO(3) => \adc_tcyc_cnt_reg[24]_i_1_n_4\,
      CO(2) => \adc_tcyc_cnt_reg[24]_i_1_n_5\,
      CO(1) => \adc_tcyc_cnt_reg[24]_i_1_n_6\,
      CO(0) => \adc_tcyc_cnt_reg[24]_i_1_n_7\,
      DI(7 downto 0) => B"01111111",
      O(7) => \adc_tcyc_cnt_reg[24]_i_1_n_8\,
      O(6) => \adc_tcyc_cnt_reg[24]_i_1_n_9\,
      O(5) => \adc_tcyc_cnt_reg[24]_i_1_n_10\,
      O(4) => \adc_tcyc_cnt_reg[24]_i_1_n_11\,
      O(3) => \adc_tcyc_cnt_reg[24]_i_1_n_12\,
      O(2) => \adc_tcyc_cnt_reg[24]_i_1_n_13\,
      O(1) => \adc_tcyc_cnt_reg[24]_i_1_n_14\,
      O(0) => \adc_tcyc_cnt_reg[24]_i_1_n_15\,
      S(7) => \adc_tcyc_cnt[24]_i_2_n_0\,
      S(6) => \adc_tcyc_cnt[24]_i_3_n_0\,
      S(5) => \adc_tcyc_cnt[24]_i_4_n_0\,
      S(4) => \adc_tcyc_cnt[24]_i_5_n_0\,
      S(3) => \adc_tcyc_cnt[24]_i_6_n_0\,
      S(2) => \adc_tcyc_cnt[24]_i_7_n_0\,
      S(1) => \adc_tcyc_cnt[24]_i_8_n_0\,
      S(0) => \adc_tcyc_cnt[24]_i_9_n_0\
    );
\adc_tcyc_cnt_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => m_clk_i,
      CE => '1',
      D => \adc_tcyc_cnt_reg[24]_i_1_n_14\,
      Q => adc_tcyc_cnt_reg(25),
      R => \adc_tcyc_cnt[0]_i_1_n_0\
    );
\adc_tcyc_cnt_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => m_clk_i,
      CE => '1',
      D => \adc_tcyc_cnt_reg[24]_i_1_n_13\,
      Q => adc_tcyc_cnt_reg(26),
      R => \adc_tcyc_cnt[0]_i_1_n_0\
    );
\adc_tcyc_cnt_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => m_clk_i,
      CE => '1',
      D => \adc_tcyc_cnt_reg[24]_i_1_n_12\,
      Q => adc_tcyc_cnt_reg(27),
      R => \adc_tcyc_cnt[0]_i_1_n_0\
    );
\adc_tcyc_cnt_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => m_clk_i,
      CE => '1',
      D => \adc_tcyc_cnt_reg[24]_i_1_n_11\,
      Q => adc_tcyc_cnt_reg(28),
      R => \adc_tcyc_cnt[0]_i_1_n_0\
    );
\adc_tcyc_cnt_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => m_clk_i,
      CE => '1',
      D => \adc_tcyc_cnt_reg[24]_i_1_n_10\,
      Q => adc_tcyc_cnt_reg(29),
      R => \adc_tcyc_cnt[0]_i_1_n_0\
    );
\adc_tcyc_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m_clk_i,
      CE => '1',
      D => \adc_tcyc_cnt_reg[0]_i_2_n_13\,
      Q => adc_tcyc_cnt_reg(2),
      R => \adc_tcyc_cnt[0]_i_1_n_0\
    );
\adc_tcyc_cnt_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => m_clk_i,
      CE => '1',
      D => \adc_tcyc_cnt_reg[24]_i_1_n_9\,
      Q => adc_tcyc_cnt_reg(30),
      R => \adc_tcyc_cnt[0]_i_1_n_0\
    );
\adc_tcyc_cnt_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => m_clk_i,
      CE => '1',
      D => \adc_tcyc_cnt_reg[24]_i_1_n_8\,
      Q => adc_tcyc_cnt_reg(31),
      R => \adc_tcyc_cnt[0]_i_1_n_0\
    );
\adc_tcyc_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => m_clk_i,
      CE => '1',
      D => \adc_tcyc_cnt_reg[0]_i_2_n_12\,
      Q => adc_tcyc_cnt_reg(3),
      R => \adc_tcyc_cnt[0]_i_1_n_0\
    );
\adc_tcyc_cnt_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => m_clk_i,
      CE => '1',
      D => \adc_tcyc_cnt_reg[0]_i_2_n_11\,
      Q => adc_tcyc_cnt_reg(4),
      S => \adc_tcyc_cnt[0]_i_1_n_0\
    );
\adc_tcyc_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => m_clk_i,
      CE => '1',
      D => \adc_tcyc_cnt_reg[0]_i_2_n_10\,
      Q => adc_tcyc_cnt_reg(5),
      R => \adc_tcyc_cnt[0]_i_1_n_0\
    );
\adc_tcyc_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => m_clk_i,
      CE => '1',
      D => \adc_tcyc_cnt_reg[0]_i_2_n_9\,
      Q => adc_tcyc_cnt_reg(6),
      R => \adc_tcyc_cnt[0]_i_1_n_0\
    );
\adc_tcyc_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => m_clk_i,
      CE => '1',
      D => \adc_tcyc_cnt_reg[0]_i_2_n_8\,
      Q => adc_tcyc_cnt_reg(7),
      R => \adc_tcyc_cnt[0]_i_1_n_0\
    );
\adc_tcyc_cnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => m_clk_i,
      CE => '1',
      D => \adc_tcyc_cnt_reg[8]_i_1_n_15\,
      Q => adc_tcyc_cnt_reg(8),
      R => \adc_tcyc_cnt[0]_i_1_n_0\
    );
\adc_tcyc_cnt_reg[8]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \adc_tcyc_cnt_reg[0]_i_2_n_0\,
      CI_TOP => '0',
      CO(7) => \adc_tcyc_cnt_reg[8]_i_1_n_0\,
      CO(6) => \adc_tcyc_cnt_reg[8]_i_1_n_1\,
      CO(5) => \adc_tcyc_cnt_reg[8]_i_1_n_2\,
      CO(4) => \adc_tcyc_cnt_reg[8]_i_1_n_3\,
      CO(3) => \adc_tcyc_cnt_reg[8]_i_1_n_4\,
      CO(2) => \adc_tcyc_cnt_reg[8]_i_1_n_5\,
      CO(1) => \adc_tcyc_cnt_reg[8]_i_1_n_6\,
      CO(0) => \adc_tcyc_cnt_reg[8]_i_1_n_7\,
      DI(7 downto 0) => B"11111111",
      O(7) => \adc_tcyc_cnt_reg[8]_i_1_n_8\,
      O(6) => \adc_tcyc_cnt_reg[8]_i_1_n_9\,
      O(5) => \adc_tcyc_cnt_reg[8]_i_1_n_10\,
      O(4) => \adc_tcyc_cnt_reg[8]_i_1_n_11\,
      O(3) => \adc_tcyc_cnt_reg[8]_i_1_n_12\,
      O(2) => \adc_tcyc_cnt_reg[8]_i_1_n_13\,
      O(1) => \adc_tcyc_cnt_reg[8]_i_1_n_14\,
      O(0) => \adc_tcyc_cnt_reg[8]_i_1_n_15\,
      S(7) => \adc_tcyc_cnt[8]_i_2_n_0\,
      S(6) => \adc_tcyc_cnt[8]_i_3_n_0\,
      S(5) => \adc_tcyc_cnt[8]_i_4_n_0\,
      S(4) => \adc_tcyc_cnt[8]_i_5_n_0\,
      S(3) => \adc_tcyc_cnt[8]_i_6_n_0\,
      S(2) => \adc_tcyc_cnt[8]_i_7_n_0\,
      S(1) => \adc_tcyc_cnt[8]_i_8_n_0\,
      S(0) => \adc_tcyc_cnt[8]_i_9_n_0\
    );
\adc_tcyc_cnt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => m_clk_i,
      CE => '1',
      D => \adc_tcyc_cnt_reg[8]_i_1_n_14\,
      Q => adc_tcyc_cnt_reg(9),
      R => \adc_tcyc_cnt[0]_i_1_n_0\
    );
data_rd_rdy_o_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => data_rd_rdy_o_INST_0_i_1_n_0,
      I1 => adc_tcyc_cnt_reg(4),
      I2 => data_rd_rdy_o_INST_0_i_2_n_0,
      I3 => data_rd_rdy_o_INST_0_i_3_n_0,
      I4 => data_rd_rdy_o_INST_0_i_4_n_0,
      I5 => adc_tcyc_cnt_reg(0),
      O => data_rd_rdy_o
    );
data_rd_rdy_o_INST_0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => adc_tcyc_cnt_reg(1),
      I1 => serial_read_done_s_reg_n_0,
      I2 => adc_tcyc_cnt_reg(3),
      I3 => adc_tcyc_cnt_reg(2),
      O => data_rd_rdy_o_INST_0_i_1_n_0
    );
data_rd_rdy_o_INST_0_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => adc_tcyc_cnt_reg(31),
      I1 => adc_tcyc_cnt_reg(30),
      I2 => adc_tcyc_cnt_reg(5),
      I3 => data_rd_rdy_o_INST_0_i_5_n_0,
      I4 => data_rd_rdy_o_INST_0_i_6_n_0,
      O => data_rd_rdy_o_INST_0_i_2_n_0
    );
data_rd_rdy_o_INST_0_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => adc_tcyc_cnt_reg(12),
      I1 => adc_tcyc_cnt_reg(13),
      I2 => adc_tcyc_cnt_reg(10),
      I3 => adc_tcyc_cnt_reg(11),
      I4 => data_rd_rdy_o_INST_0_i_7_n_0,
      O => data_rd_rdy_o_INST_0_i_3_n_0
    );
data_rd_rdy_o_INST_0_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => adc_tcyc_cnt_reg(20),
      I1 => adc_tcyc_cnt_reg(21),
      I2 => adc_tcyc_cnt_reg(18),
      I3 => adc_tcyc_cnt_reg(19),
      I4 => data_rd_rdy_o_INST_0_i_8_n_0,
      O => data_rd_rdy_o_INST_0_i_4_n_0
    );
data_rd_rdy_o_INST_0_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => adc_tcyc_cnt_reg(27),
      I1 => adc_tcyc_cnt_reg(26),
      I2 => adc_tcyc_cnt_reg(29),
      I3 => adc_tcyc_cnt_reg(28),
      O => data_rd_rdy_o_INST_0_i_5_n_0
    );
data_rd_rdy_o_INST_0_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => adc_tcyc_cnt_reg(7),
      I1 => adc_tcyc_cnt_reg(6),
      I2 => adc_tcyc_cnt_reg(9),
      I3 => adc_tcyc_cnt_reg(8),
      O => data_rd_rdy_o_INST_0_i_6_n_0
    );
data_rd_rdy_o_INST_0_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => adc_tcyc_cnt_reg(15),
      I1 => adc_tcyc_cnt_reg(14),
      I2 => adc_tcyc_cnt_reg(17),
      I3 => adc_tcyc_cnt_reg(16),
      O => data_rd_rdy_o_INST_0_i_7_n_0
    );
data_rd_rdy_o_INST_0_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => adc_tcyc_cnt_reg(23),
      I1 => adc_tcyc_cnt_reg(22),
      I2 => adc_tcyc_cnt_reg(25),
      I3 => adc_tcyc_cnt_reg(24),
      O => data_rd_rdy_o_INST_0_i_8_n_0
    );
\sclk_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sclk_cnt_reg(0),
      O => sclk_cnt0(0)
    );
\sclk_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => sclk_cnt_reg(1),
      I1 => sclk_cnt_reg(0),
      O => sclk_cnt0(1)
    );
\sclk_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => sclk_cnt_reg(2),
      I1 => sclk_cnt_reg(0),
      I2 => sclk_cnt_reg(1),
      O => sclk_cnt0(2)
    );
\sclk_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA9"
    )
        port map (
      I0 => sclk_cnt_reg(3),
      I1 => sclk_cnt_reg(1),
      I2 => sclk_cnt_reg(0),
      I3 => sclk_cnt_reg(2),
      O => sclk_cnt0(3)
    );
\sclk_cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => adc_tcyc_cnt_reg(0),
      I1 => Clock_Out_OBUFDS_i_2_n_0,
      I2 => data_rd_rdy_o_INST_0_i_2_n_0,
      I3 => adc_tcyc_cnt_reg(4),
      I4 => Clock_Out_OBUFDS_i_3_n_0,
      I5 => \sclk_cnt[4]_i_3_n_0\,
      O => sclk_cnt0_0
    );
\sclk_cnt[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA9"
    )
        port map (
      I0 => sclk_cnt_reg(4),
      I1 => sclk_cnt_reg(2),
      I2 => sclk_cnt_reg(0),
      I3 => sclk_cnt_reg(1),
      I4 => sclk_cnt_reg(3),
      O => sclk_cnt0(4)
    );
\sclk_cnt[4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => serial_present_state(2),
      I1 => serial_present_state(1),
      I2 => serial_present_state(0),
      I3 => Clock_Out_OBUFDS_i_7_n_0,
      O => \sclk_cnt[4]_i_3_n_0\
    );
\sclk_cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => fast_clk_i,
      CE => sclk_cnt0_0,
      CLR => buffer_reset_s,
      D => sclk_cnt0(0),
      Q => sclk_cnt_reg(0)
    );
\sclk_cnt_reg[1]\: unisim.vcomponents.FDPE
     port map (
      C => fast_clk_i,
      CE => sclk_cnt0_0,
      D => sclk_cnt0(1),
      PRE => buffer_reset_s,
      Q => sclk_cnt_reg(1)
    );
\sclk_cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => fast_clk_i,
      CE => sclk_cnt0_0,
      CLR => buffer_reset_s,
      D => sclk_cnt0(2),
      Q => sclk_cnt_reg(2)
    );
\sclk_cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => fast_clk_i,
      CE => sclk_cnt0_0,
      CLR => buffer_reset_s,
      D => sclk_cnt0(3),
      Q => sclk_cnt_reg(3)
    );
\sclk_cnt_reg[4]\: unisim.vcomponents.FDPE
     port map (
      C => fast_clk_i,
      CE => sclk_cnt0_0,
      D => sclk_cnt0(4),
      PRE => buffer_reset_s,
      Q => sclk_cnt_reg(4)
    );
\sclk_echo_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sclk_echo_cnt_reg(0),
      O => sclk_echo_cnt0(0)
    );
\sclk_echo_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => sclk_echo_cnt_reg(1),
      I1 => sclk_echo_cnt_reg(0),
      O => sclk_echo_cnt0(1)
    );
\sclk_echo_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => sclk_echo_cnt_reg(2),
      I1 => sclk_echo_cnt_reg(0),
      I2 => sclk_echo_cnt_reg(1),
      O => sclk_echo_cnt0(2)
    );
\sclk_echo_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA9"
    )
        port map (
      I0 => sclk_echo_cnt_reg(3),
      I1 => sclk_echo_cnt_reg(1),
      I2 => sclk_echo_cnt_reg(0),
      I3 => sclk_echo_cnt_reg(2),
      O => sclk_echo_cnt0(3)
    );
\sclk_echo_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA9"
    )
        port map (
      I0 => sclk_echo_cnt_reg(4),
      I1 => sclk_echo_cnt_reg(2),
      I2 => sclk_echo_cnt_reg(0),
      I3 => sclk_echo_cnt_reg(1),
      I4 => sclk_echo_cnt_reg(3),
      O => sclk_echo_cnt0(4)
    );
\sclk_echo_cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => sclk_s,
      CE => sel,
      CLR => buffer_reset_s,
      D => sclk_echo_cnt0(0),
      Q => sclk_echo_cnt_reg(0)
    );
\sclk_echo_cnt_reg[1]\: unisim.vcomponents.FDPE
     port map (
      C => sclk_s,
      CE => sel,
      D => sclk_echo_cnt0(1),
      PRE => buffer_reset_s,
      Q => sclk_echo_cnt_reg(1)
    );
\sclk_echo_cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => sclk_s,
      CE => sel,
      CLR => buffer_reset_s,
      D => sclk_echo_cnt0(2),
      Q => sclk_echo_cnt_reg(2)
    );
\sclk_echo_cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => sclk_s,
      CE => sel,
      CLR => buffer_reset_s,
      D => sclk_echo_cnt0(3),
      Q => sclk_echo_cnt_reg(3)
    );
\sclk_echo_cnt_reg[4]\: unisim.vcomponents.FDPE
     port map (
      C => sclk_s,
      CE => sel,
      D => sclk_echo_cnt0(4),
      PRE => buffer_reset_s,
      Q => sclk_echo_cnt_reg(4)
    );
\serial_buffer[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => sclk_echo_cnt_reg(3),
      I1 => sclk_echo_cnt_reg(1),
      I2 => sclk_echo_cnt_reg(0),
      I3 => sclk_echo_cnt_reg(2),
      I4 => sclk_echo_cnt_reg(4),
      O => sel
    );
\serial_buffer[17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => adc_tcyc_cnt_reg(0),
      I1 => data_rd_rdy_o_INST_0_i_4_n_0,
      I2 => data_rd_rdy_o_INST_0_i_3_n_0,
      I3 => data_rd_rdy_o_INST_0_i_2_n_0,
      I4 => adc_tcyc_cnt_reg(4),
      I5 => Clock_Out_OBUFDS_i_3_n_0,
      O => buffer_reset_s
    );
\serial_buffer_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => sclk_s,
      CE => sel,
      D => sdi_s,
      PRE => buffer_reset_s,
      Q => \^data_o\(0)
    );
\serial_buffer_reg[10]\: unisim.vcomponents.FDPE
     port map (
      C => sclk_s,
      CE => sel,
      D => \^data_o\(9),
      PRE => buffer_reset_s,
      Q => \^data_o\(10)
    );
\serial_buffer_reg[11]\: unisim.vcomponents.FDPE
     port map (
      C => sclk_s,
      CE => sel,
      D => \^data_o\(10),
      PRE => buffer_reset_s,
      Q => \^data_o\(11)
    );
\serial_buffer_reg[12]\: unisim.vcomponents.FDPE
     port map (
      C => sclk_s,
      CE => sel,
      D => \^data_o\(11),
      PRE => buffer_reset_s,
      Q => \^data_o\(12)
    );
\serial_buffer_reg[13]\: unisim.vcomponents.FDPE
     port map (
      C => sclk_s,
      CE => sel,
      D => \^data_o\(12),
      PRE => buffer_reset_s,
      Q => \^data_o\(13)
    );
\serial_buffer_reg[14]\: unisim.vcomponents.FDPE
     port map (
      C => sclk_s,
      CE => sel,
      D => \^data_o\(13),
      PRE => buffer_reset_s,
      Q => \^data_o\(14)
    );
\serial_buffer_reg[15]\: unisim.vcomponents.FDPE
     port map (
      C => sclk_s,
      CE => sel,
      D => \^data_o\(14),
      PRE => buffer_reset_s,
      Q => \^data_o\(15)
    );
\serial_buffer_reg[16]\: unisim.vcomponents.FDPE
     port map (
      C => sclk_s,
      CE => sel,
      D => \^data_o\(15),
      PRE => buffer_reset_s,
      Q => \^data_o\(16)
    );
\serial_buffer_reg[17]\: unisim.vcomponents.FDPE
     port map (
      C => sclk_s,
      CE => sel,
      D => \^data_o\(16),
      PRE => buffer_reset_s,
      Q => \^data_o\(17)
    );
\serial_buffer_reg[1]\: unisim.vcomponents.FDPE
     port map (
      C => sclk_s,
      CE => sel,
      D => \^data_o\(0),
      PRE => buffer_reset_s,
      Q => \^data_o\(1)
    );
\serial_buffer_reg[2]\: unisim.vcomponents.FDPE
     port map (
      C => sclk_s,
      CE => sel,
      D => \^data_o\(1),
      PRE => buffer_reset_s,
      Q => \^data_o\(2)
    );
\serial_buffer_reg[3]\: unisim.vcomponents.FDPE
     port map (
      C => sclk_s,
      CE => sel,
      D => \^data_o\(2),
      PRE => buffer_reset_s,
      Q => \^data_o\(3)
    );
\serial_buffer_reg[4]\: unisim.vcomponents.FDPE
     port map (
      C => sclk_s,
      CE => sel,
      D => \^data_o\(3),
      PRE => buffer_reset_s,
      Q => \^data_o\(4)
    );
\serial_buffer_reg[5]\: unisim.vcomponents.FDPE
     port map (
      C => sclk_s,
      CE => sel,
      D => \^data_o\(4),
      PRE => buffer_reset_s,
      Q => \^data_o\(5)
    );
\serial_buffer_reg[6]\: unisim.vcomponents.FDPE
     port map (
      C => sclk_s,
      CE => sel,
      D => \^data_o\(5),
      PRE => buffer_reset_s,
      Q => \^data_o\(6)
    );
\serial_buffer_reg[7]\: unisim.vcomponents.FDPE
     port map (
      C => sclk_s,
      CE => sel,
      D => \^data_o\(6),
      PRE => buffer_reset_s,
      Q => \^data_o\(7)
    );
\serial_buffer_reg[8]\: unisim.vcomponents.FDPE
     port map (
      C => sclk_s,
      CE => sel,
      D => \^data_o\(7),
      PRE => buffer_reset_s,
      Q => \^data_o\(8)
    );
\serial_buffer_reg[9]\: unisim.vcomponents.FDPE
     port map (
      C => sclk_s,
      CE => sel,
      D => \^data_o\(8),
      PRE => buffer_reset_s,
      Q => \^data_o\(9)
    );
\serial_present_state[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F9"
    )
        port map (
      I0 => serial_present_state(1),
      I1 => serial_present_state(0),
      I2 => serial_present_state(2),
      O => serial_next_state(0)
    );
\serial_present_state[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => serial_present_state(2),
      I1 => serial_present_state(1),
      I2 => serial_present_state(0),
      O => serial_next_state(1)
    );
\serial_present_state[2]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reset_n_i,
      O => \serial_present_state[2]_i_1_n_0\
    );
\serial_present_state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAAAAAAE"
    )
        port map (
      I0 => serial_next_state(0),
      I1 => \serial_present_state[2]_i_4_n_0\,
      I2 => adc_tcyc_cnt_reg(0),
      I3 => Clock_Out_OBUFDS_i_2_n_0,
      I4 => data_rd_rdy_o_INST_0_i_2_n_0,
      I5 => \serial_present_state[2]_i_5_n_0\,
      O => \serial_present_state[2]_i_2_n_0\
    );
\serial_present_state[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => serial_present_state(0),
      I1 => serial_present_state(1),
      I2 => serial_present_state(2),
      O => serial_next_state(2)
    );
\serial_present_state[2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => adc_tcyc_cnt_reg(4),
      I1 => serial_present_state(0),
      I2 => adc_tcyc_cnt_reg(1),
      I3 => adc_tcyc_cnt_reg(2),
      I4 => adc_tcyc_cnt_reg(3),
      O => \serial_present_state[2]_i_4_n_0\
    );
\serial_present_state[2]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => serial_present_state(0),
      I1 => Clock_Out_OBUFDS_i_7_n_0,
      I2 => sel,
      O => \serial_present_state[2]_i_5_n_0\
    );
\serial_present_state_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => fast_clk_i,
      CE => \serial_present_state[2]_i_2_n_0\,
      D => serial_next_state(0),
      Q => serial_present_state(0),
      S => \serial_present_state[2]_i_1_n_0\
    );
\serial_present_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => fast_clk_i,
      CE => \serial_present_state[2]_i_2_n_0\,
      D => serial_next_state(1),
      Q => serial_present_state(1),
      R => \serial_present_state[2]_i_1_n_0\
    );
\serial_present_state_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => fast_clk_i,
      CE => \serial_present_state[2]_i_2_n_0\,
      D => serial_next_state(2),
      Q => serial_present_state(2),
      R => \serial_present_state[2]_i_1_n_0\
    );
serial_read_done_s_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1200"
    )
        port map (
      I0 => serial_present_state(2),
      I1 => serial_present_state(1),
      I2 => serial_present_state(0),
      I3 => reset_n_i,
      O => serial_read_done_s_i_1_n_0
    );
serial_read_done_s_reg: unisim.vcomponents.FDRE
     port map (
      C => fast_clk_i,
      CE => '1',
      D => serial_read_done_s_i_1_n_0,
      Q => serial_read_done_s_reg_n_0,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_AD7960_0_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_AD7960_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_AD7960_0_0 : entity is "design_1_AD7960_0_0,AD7960,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_AD7960_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_AD7960_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_AD7960_0_0 : entity is "AD7960,Vivado 2022.2";
end design_1_AD7960_0_0;

architecture STRUCTURE of design_1_AD7960_0_0 is
  signal \^en_i\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of reset_n_i : signal is "xilinx.com:signal:reset:1.0 reset_n_i RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of reset_n_i : signal is "XIL_INTERFACENAME reset_n_i, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  \^en_i\(3 downto 0) <= en_i(3 downto 0);
  en_o(3 downto 0) <= \^en_i\(3 downto 0);
inst: entity work.design_1_AD7960_0_0_AD7960
     port map (
      clk_neg_o => clk_neg_o,
      clk_pos_o => clk_pos_o,
      cnv_neg_o => cnv_neg_o,
      cnv_pos_o => cnv_pos_o,
      d_neg_i => d_neg_i,
      d_pos_i => d_pos_i,
      data_o(17 downto 0) => data_o(17 downto 0),
      data_rd_rdy_o => data_rd_rdy_o,
      dco_neg_i => dco_neg_i,
      dco_pos_i => dco_pos_i,
      fast_clk_i => fast_clk_i,
      m_clk_i => m_clk_i,
      reset_n_i => reset_n_i
    );
end STRUCTURE;
