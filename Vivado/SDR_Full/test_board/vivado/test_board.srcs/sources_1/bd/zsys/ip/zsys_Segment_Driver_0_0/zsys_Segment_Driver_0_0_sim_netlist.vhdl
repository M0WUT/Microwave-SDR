-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
-- Date        : Wed Apr 21 23:25:03 2021
-- Host        : dan-Desktop running 64-bit Ubuntu 18.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/dan/Microwave-SDR/Vivado/SDR_Full/test_board/vivado/test_board.srcs/sources_1/bd/zsys/ip/zsys_Segment_Driver_0_0/zsys_Segment_Driver_0_0_sim_netlist.vhdl
-- Design      : zsys_Segment_Driver_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zsys_Segment_Driver_0_0_Segment_Driver is
  port (
    o_lat : out STD_LOGIC;
    o_data : out STD_LOGIC;
    o_ledClk : out STD_LOGIC;
    i_bcdData : in STD_LOGIC_VECTOR ( 39 downto 0 );
    i_mode : in STD_LOGIC;
    i_clk : in STD_LOGIC;
    i_resetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of zsys_Segment_Driver_0_0_Segment_Driver : entity is "Segment_Driver";
end zsys_Segment_Driver_0_0_Segment_Driver;

architecture STRUCTURE of zsys_Segment_Driver_0_0_Segment_Driver is
  signal \FSM_sequential_r_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_r_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_r_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_r_state[1]_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal o_data_INST_0_i_10_n_0 : STD_LOGIC;
  signal o_data_INST_0_i_11_n_0 : STD_LOGIC;
  signal o_data_INST_0_i_12_n_0 : STD_LOGIC;
  signal o_data_INST_0_i_13_n_0 : STD_LOGIC;
  signal o_data_INST_0_i_14_n_0 : STD_LOGIC;
  signal o_data_INST_0_i_15_n_0 : STD_LOGIC;
  signal o_data_INST_0_i_16_n_0 : STD_LOGIC;
  signal o_data_INST_0_i_17_n_0 : STD_LOGIC;
  signal o_data_INST_0_i_18_n_0 : STD_LOGIC;
  signal o_data_INST_0_i_19_n_0 : STD_LOGIC;
  signal o_data_INST_0_i_1_n_0 : STD_LOGIC;
  signal o_data_INST_0_i_20_n_0 : STD_LOGIC;
  signal o_data_INST_0_i_21_n_0 : STD_LOGIC;
  signal o_data_INST_0_i_22_n_0 : STD_LOGIC;
  signal o_data_INST_0_i_23_n_0 : STD_LOGIC;
  signal o_data_INST_0_i_24_n_0 : STD_LOGIC;
  signal o_data_INST_0_i_25_n_0 : STD_LOGIC;
  signal o_data_INST_0_i_26_n_0 : STD_LOGIC;
  signal o_data_INST_0_i_27_n_0 : STD_LOGIC;
  signal o_data_INST_0_i_28_n_0 : STD_LOGIC;
  signal o_data_INST_0_i_29_n_0 : STD_LOGIC;
  signal o_data_INST_0_i_2_n_0 : STD_LOGIC;
  signal o_data_INST_0_i_30_n_0 : STD_LOGIC;
  signal o_data_INST_0_i_31_n_0 : STD_LOGIC;
  signal o_data_INST_0_i_32_n_0 : STD_LOGIC;
  signal o_data_INST_0_i_33_n_0 : STD_LOGIC;
  signal o_data_INST_0_i_34_n_0 : STD_LOGIC;
  signal o_data_INST_0_i_35_n_0 : STD_LOGIC;
  signal o_data_INST_0_i_36_n_0 : STD_LOGIC;
  signal o_data_INST_0_i_3_n_0 : STD_LOGIC;
  signal o_data_INST_0_i_4_n_0 : STD_LOGIC;
  signal o_data_INST_0_i_5_n_0 : STD_LOGIC;
  signal o_data_INST_0_i_6_n_0 : STD_LOGIC;
  signal o_data_INST_0_i_7_n_0 : STD_LOGIC;
  signal o_data_INST_0_i_8_n_0 : STD_LOGIC;
  signal o_data_INST_0_i_9_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_0_in_0 : STD_LOGIC_VECTOR ( 79 downto 0 );
  signal r_bitCounter : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \r_bitCounter[2]_i_2_n_0\ : STD_LOGIC;
  signal \r_bitCounter[3]_i_2_n_0\ : STD_LOGIC;
  signal \r_bitCounter[5]_i_2_n_0\ : STD_LOGIC;
  signal \r_bitCounter[7]_i_1_n_0\ : STD_LOGIC;
  signal \r_bitCounter[7]_i_3_n_0\ : STD_LOGIC;
  signal \r_bitCounter_reg_n_0_[0]\ : STD_LOGIC;
  signal \r_bitCounter_reg_n_0_[1]\ : STD_LOGIC;
  signal \r_bitCounter_reg_n_0_[2]\ : STD_LOGIC;
  signal \r_bitCounter_reg_n_0_[3]\ : STD_LOGIC;
  signal \r_bitCounter_reg_n_0_[4]\ : STD_LOGIC;
  signal \r_bitCounter_reg_n_0_[5]\ : STD_LOGIC;
  signal \r_bitCounter_reg_n_0_[6]\ : STD_LOGIC;
  signal \r_bitCounter_reg_n_0_[7]\ : STD_LOGIC;
  signal \r_clockCounter[7]_i_2_n_0\ : STD_LOGIC;
  signal \r_clockCounter_reg_n_0_[0]\ : STD_LOGIC;
  signal \r_clockCounter_reg_n_0_[1]\ : STD_LOGIC;
  signal \r_clockCounter_reg_n_0_[2]\ : STD_LOGIC;
  signal \r_clockCounter_reg_n_0_[3]\ : STD_LOGIC;
  signal \r_clockCounter_reg_n_0_[4]\ : STD_LOGIC;
  signal \r_clockCounter_reg_n_0_[5]\ : STD_LOGIC;
  signal \r_clockCounter_reg_n_0_[6]\ : STD_LOGIC;
  signal r_dataToSend : STD_LOGIC_VECTOR ( 79 downto 0 );
  signal \r_dataToSend[6]_i_1_n_0\ : STD_LOGIC;
  signal r_oldBcdData : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal r_oldMode : STD_LOGIC;
  signal r_oldMode_i_1_n_0 : STD_LOGIC;
  signal \r_state1_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \r_state1_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \r_state1_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \r_state1_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \r_state1_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \r_state1_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \r_state1_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \r_state1_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \r_state1_inferred__0/i__carry__2_n_2\ : STD_LOGIC;
  signal \r_state1_inferred__0/i__carry__2_n_3\ : STD_LOGIC;
  signal \r_state1_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \r_state1_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \r_state1_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \r_state1_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \r_state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \r_state__1\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \r_state__6\ : STD_LOGIC;
  signal w_slowClock : STD_LOGIC;
  signal \NLW_r_state1_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_r_state1_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_r_state1_inferred__0/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_r_state1_inferred__0/i__carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_r_state1_inferred__0/i__carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_r_state[1]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \FSM_sequential_r_state[1]_i_4\ : label is "soft_lutpair33";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_r_state_reg[0]\ : label is "s_LATCH:10,s_IDLE:00,s_SENDING:01";
  attribute FSM_ENCODED_STATES of \FSM_sequential_r_state_reg[1]\ : label is "s_LATCH:10,s_IDLE:00,s_SENDING:01";
  attribute SOFT_HLUTNM of o_lat_INST_0 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of o_ledClk_INST_0 : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \r_bitCounter[2]_i_2\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \r_bitCounter[3]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \r_bitCounter[5]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \r_clockCounter[1]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \r_clockCounter[2]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \r_clockCounter[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \r_clockCounter[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \r_clockCounter[6]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \r_clockCounter[7]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \r_dataToSend[0]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \r_dataToSend[10]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \r_dataToSend[11]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \r_dataToSend[12]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \r_dataToSend[13]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \r_dataToSend[16]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \r_dataToSend[17]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \r_dataToSend[19]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \r_dataToSend[1]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \r_dataToSend[20]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \r_dataToSend[21]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \r_dataToSend[23]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \r_dataToSend[24]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \r_dataToSend[25]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \r_dataToSend[26]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \r_dataToSend[27]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \r_dataToSend[28]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \r_dataToSend[29]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \r_dataToSend[2]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \r_dataToSend[32]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \r_dataToSend[33]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \r_dataToSend[35]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \r_dataToSend[36]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \r_dataToSend[37]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \r_dataToSend[39]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \r_dataToSend[3]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \r_dataToSend[40]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \r_dataToSend[41]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \r_dataToSend[42]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \r_dataToSend[43]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \r_dataToSend[44]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \r_dataToSend[45]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \r_dataToSend[48]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \r_dataToSend[49]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \r_dataToSend[51]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \r_dataToSend[52]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \r_dataToSend[53]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \r_dataToSend[55]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \r_dataToSend[56]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \r_dataToSend[57]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \r_dataToSend[58]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \r_dataToSend[59]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \r_dataToSend[5]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \r_dataToSend[60]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \r_dataToSend[61]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \r_dataToSend[64]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \r_dataToSend[65]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \r_dataToSend[67]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \r_dataToSend[68]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \r_dataToSend[69]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \r_dataToSend[71]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \r_dataToSend[72]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \r_dataToSend[73]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \r_dataToSend[74]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \r_dataToSend[75]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \r_dataToSend[76]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \r_dataToSend[77]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \r_dataToSend[7]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \r_dataToSend[8]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \r_dataToSend[9]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of r_oldMode_i_1 : label is "soft_lutpair0";
begin
\FSM_sequential_r_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF0000F6FFF6"
    )
        port map (
      I0 => r_oldMode,
      I1 => i_mode,
      I2 => \r_state1_inferred__0/i__carry__2_n_2\,
      I3 => \r_state__0\(0),
      I4 => \r_state__6\,
      I5 => \r_state__0\(1),
      O => \FSM_sequential_r_state[0]_i_1_n_0\
    );
\FSM_sequential_r_state[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \r_state__0\(0),
      I1 => \r_state__6\,
      I2 => \r_state__0\(1),
      O => \FSM_sequential_r_state[1]_i_1_n_0\
    );
\FSM_sequential_r_state[1]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_resetn,
      O => \FSM_sequential_r_state[1]_i_2_n_0\
    );
\FSM_sequential_r_state[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \r_bitCounter_reg_n_0_[5]\,
      I1 => \r_bitCounter_reg_n_0_[4]\,
      I2 => \r_bitCounter_reg_n_0_[6]\,
      I3 => \r_bitCounter_reg_n_0_[7]\,
      I4 => \FSM_sequential_r_state[1]_i_4_n_0\,
      O => \r_state__6\
    );
\FSM_sequential_r_state[1]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \r_bitCounter_reg_n_0_[2]\,
      I1 => \r_bitCounter_reg_n_0_[3]\,
      I2 => \r_bitCounter_reg_n_0_[0]\,
      I3 => \r_bitCounter_reg_n_0_[1]\,
      O => \FSM_sequential_r_state[1]_i_4_n_0\
    );
\FSM_sequential_r_state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => '1',
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => \FSM_sequential_r_state[0]_i_1_n_0\,
      Q => \r_state__0\(0)
    );
\FSM_sequential_r_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => '1',
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => \FSM_sequential_r_state[1]_i_1_n_0\,
      Q => \r_state__0\(1)
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => i_bcdData(21),
      I1 => r_oldBcdData(21),
      I2 => r_oldBcdData(23),
      I3 => i_bcdData(23),
      I4 => r_oldBcdData(22),
      I5 => i_bcdData(22),
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => i_bcdData(18),
      I1 => r_oldBcdData(18),
      I2 => r_oldBcdData(20),
      I3 => i_bcdData(20),
      I4 => r_oldBcdData(19),
      I5 => i_bcdData(19),
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => i_bcdData(15),
      I1 => r_oldBcdData(15),
      I2 => r_oldBcdData(17),
      I3 => i_bcdData(17),
      I4 => r_oldBcdData(16),
      I5 => i_bcdData(16),
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => i_bcdData(12),
      I1 => r_oldBcdData(12),
      I2 => r_oldBcdData(14),
      I3 => i_bcdData(14),
      I4 => r_oldBcdData(13),
      I5 => i_bcdData(13),
      O => \i__carry__0_i_4_n_0\
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => i_bcdData(33),
      I1 => r_oldBcdData(33),
      I2 => r_oldBcdData(35),
      I3 => i_bcdData(35),
      I4 => r_oldBcdData(34),
      I5 => i_bcdData(34),
      O => \i__carry__1_i_1_n_0\
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => i_bcdData(30),
      I1 => r_oldBcdData(30),
      I2 => r_oldBcdData(32),
      I3 => i_bcdData(32),
      I4 => r_oldBcdData(31),
      I5 => i_bcdData(31),
      O => \i__carry__1_i_2_n_0\
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => i_bcdData(27),
      I1 => r_oldBcdData(27),
      I2 => r_oldBcdData(29),
      I3 => i_bcdData(29),
      I4 => r_oldBcdData(28),
      I5 => i_bcdData(28),
      O => \i__carry__1_i_3_n_0\
    );
\i__carry__1_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => i_bcdData(24),
      I1 => r_oldBcdData(24),
      I2 => r_oldBcdData(26),
      I3 => i_bcdData(26),
      I4 => r_oldBcdData(25),
      I5 => i_bcdData(25),
      O => \i__carry__1_i_4_n_0\
    );
\i__carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => r_oldBcdData(39),
      I1 => i_bcdData(39),
      O => \i__carry__2_i_1_n_0\
    );
\i__carry__2_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => i_bcdData(36),
      I1 => r_oldBcdData(36),
      I2 => r_oldBcdData(38),
      I3 => i_bcdData(38),
      I4 => r_oldBcdData(37),
      I5 => i_bcdData(37),
      O => \i__carry__2_i_2_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => i_bcdData(9),
      I1 => r_oldBcdData(9),
      I2 => r_oldBcdData(11),
      I3 => i_bcdData(11),
      I4 => r_oldBcdData(10),
      I5 => i_bcdData(10),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => i_bcdData(6),
      I1 => r_oldBcdData(6),
      I2 => r_oldBcdData(8),
      I3 => i_bcdData(8),
      I4 => r_oldBcdData(7),
      I5 => i_bcdData(7),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => i_bcdData(3),
      I1 => r_oldBcdData(3),
      I2 => r_oldBcdData(5),
      I3 => i_bcdData(5),
      I4 => r_oldBcdData(4),
      I5 => i_bcdData(4),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => i_bcdData(0),
      I1 => r_oldBcdData(0),
      I2 => r_oldBcdData(2),
      I3 => i_bcdData(2),
      I4 => r_oldBcdData(1),
      I5 => i_bcdData(1),
      O => \i__carry_i_4_n_0\
    );
o_data_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40444000"
    )
        port map (
      I0 => \r_state__0\(1),
      I1 => \r_state__0\(0),
      I2 => o_data_INST_0_i_1_n_0,
      I3 => \r_bitCounter_reg_n_0_[6]\,
      I4 => o_data_INST_0_i_2_n_0,
      O => o_data
    );
o_data_INST_0_i_1: unisim.vcomponents.MUXF8
     port map (
      I0 => o_data_INST_0_i_3_n_0,
      I1 => o_data_INST_0_i_4_n_0,
      O => o_data_INST_0_i_1_n_0,
      S => \r_bitCounter_reg_n_0_[3]\
    );
o_data_INST_0_i_10: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => r_dataToSend(71),
      I1 => \r_bitCounter_reg_n_0_[1]\,
      I2 => r_dataToSend(69),
      I3 => \r_bitCounter_reg_n_0_[0]\,
      I4 => r_dataToSend(68),
      O => o_data_INST_0_i_10_n_0
    );
o_data_INST_0_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => r_dataToSend(75),
      I1 => r_dataToSend(74),
      I2 => \r_bitCounter_reg_n_0_[1]\,
      I3 => r_dataToSend(73),
      I4 => \r_bitCounter_reg_n_0_[0]\,
      I5 => r_dataToSend(72),
      O => o_data_INST_0_i_11_n_0
    );
o_data_INST_0_i_12: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => r_dataToSend(79),
      I1 => \r_bitCounter_reg_n_0_[1]\,
      I2 => r_dataToSend(77),
      I3 => \r_bitCounter_reg_n_0_[0]\,
      I4 => r_dataToSend(76),
      O => o_data_INST_0_i_12_n_0
    );
o_data_INST_0_i_13: unisim.vcomponents.MUXF7
     port map (
      I0 => o_data_INST_0_i_21_n_0,
      I1 => o_data_INST_0_i_22_n_0,
      O => o_data_INST_0_i_13_n_0,
      S => \r_bitCounter_reg_n_0_[2]\
    );
o_data_INST_0_i_14: unisim.vcomponents.MUXF7
     port map (
      I0 => o_data_INST_0_i_23_n_0,
      I1 => o_data_INST_0_i_24_n_0,
      O => o_data_INST_0_i_14_n_0,
      S => \r_bitCounter_reg_n_0_[2]\
    );
o_data_INST_0_i_15: unisim.vcomponents.MUXF7
     port map (
      I0 => o_data_INST_0_i_25_n_0,
      I1 => o_data_INST_0_i_26_n_0,
      O => o_data_INST_0_i_15_n_0,
      S => \r_bitCounter_reg_n_0_[2]\
    );
o_data_INST_0_i_16: unisim.vcomponents.MUXF7
     port map (
      I0 => o_data_INST_0_i_27_n_0,
      I1 => o_data_INST_0_i_28_n_0,
      O => o_data_INST_0_i_16_n_0,
      S => \r_bitCounter_reg_n_0_[2]\
    );
o_data_INST_0_i_17: unisim.vcomponents.MUXF7
     port map (
      I0 => o_data_INST_0_i_29_n_0,
      I1 => o_data_INST_0_i_30_n_0,
      O => o_data_INST_0_i_17_n_0,
      S => \r_bitCounter_reg_n_0_[2]\
    );
o_data_INST_0_i_18: unisim.vcomponents.MUXF7
     port map (
      I0 => o_data_INST_0_i_31_n_0,
      I1 => o_data_INST_0_i_32_n_0,
      O => o_data_INST_0_i_18_n_0,
      S => \r_bitCounter_reg_n_0_[2]\
    );
o_data_INST_0_i_19: unisim.vcomponents.MUXF7
     port map (
      I0 => o_data_INST_0_i_33_n_0,
      I1 => o_data_INST_0_i_34_n_0,
      O => o_data_INST_0_i_19_n_0,
      S => \r_bitCounter_reg_n_0_[2]\
    );
o_data_INST_0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => o_data_INST_0_i_5_n_0,
      I1 => o_data_INST_0_i_6_n_0,
      I2 => \r_bitCounter_reg_n_0_[5]\,
      I3 => o_data_INST_0_i_7_n_0,
      I4 => \r_bitCounter_reg_n_0_[4]\,
      I5 => o_data_INST_0_i_8_n_0,
      O => o_data_INST_0_i_2_n_0
    );
o_data_INST_0_i_20: unisim.vcomponents.MUXF7
     port map (
      I0 => o_data_INST_0_i_35_n_0,
      I1 => o_data_INST_0_i_36_n_0,
      O => o_data_INST_0_i_20_n_0,
      S => \r_bitCounter_reg_n_0_[2]\
    );
o_data_INST_0_i_21: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => r_dataToSend(51),
      I1 => r_dataToSend(50),
      I2 => \r_bitCounter_reg_n_0_[1]\,
      I3 => r_dataToSend(49),
      I4 => \r_bitCounter_reg_n_0_[0]\,
      I5 => r_dataToSend(48),
      O => o_data_INST_0_i_21_n_0
    );
o_data_INST_0_i_22: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => r_dataToSend(55),
      I1 => r_dataToSend(6),
      I2 => \r_bitCounter_reg_n_0_[1]\,
      I3 => r_dataToSend(53),
      I4 => \r_bitCounter_reg_n_0_[0]\,
      I5 => r_dataToSend(52),
      O => o_data_INST_0_i_22_n_0
    );
o_data_INST_0_i_23: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => r_dataToSend(59),
      I1 => r_dataToSend(58),
      I2 => \r_bitCounter_reg_n_0_[1]\,
      I3 => r_dataToSend(57),
      I4 => \r_bitCounter_reg_n_0_[0]\,
      I5 => r_dataToSend(56),
      O => o_data_INST_0_i_23_n_0
    );
o_data_INST_0_i_24: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => r_dataToSend(63),
      I1 => r_dataToSend(14),
      I2 => \r_bitCounter_reg_n_0_[1]\,
      I3 => r_dataToSend(61),
      I4 => \r_bitCounter_reg_n_0_[0]\,
      I5 => r_dataToSend(60),
      O => o_data_INST_0_i_24_n_0
    );
o_data_INST_0_i_25: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => r_dataToSend(35),
      I1 => r_dataToSend(34),
      I2 => \r_bitCounter_reg_n_0_[1]\,
      I3 => r_dataToSend(33),
      I4 => \r_bitCounter_reg_n_0_[0]\,
      I5 => r_dataToSend(32),
      O => o_data_INST_0_i_25_n_0
    );
o_data_INST_0_i_26: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => r_dataToSend(39),
      I1 => r_dataToSend(14),
      I2 => \r_bitCounter_reg_n_0_[1]\,
      I3 => r_dataToSend(37),
      I4 => \r_bitCounter_reg_n_0_[0]\,
      I5 => r_dataToSend(36),
      O => o_data_INST_0_i_26_n_0
    );
o_data_INST_0_i_27: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => r_dataToSend(43),
      I1 => r_dataToSend(42),
      I2 => \r_bitCounter_reg_n_0_[1]\,
      I3 => r_dataToSend(41),
      I4 => \r_bitCounter_reg_n_0_[0]\,
      I5 => r_dataToSend(40),
      O => o_data_INST_0_i_27_n_0
    );
o_data_INST_0_i_28: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => r_dataToSend(47),
      I1 => \r_bitCounter_reg_n_0_[1]\,
      I2 => r_dataToSend(45),
      I3 => \r_bitCounter_reg_n_0_[0]\,
      I4 => r_dataToSend(44),
      O => o_data_INST_0_i_28_n_0
    );
o_data_INST_0_i_29: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => r_dataToSend(19),
      I1 => r_dataToSend(18),
      I2 => \r_bitCounter_reg_n_0_[1]\,
      I3 => r_dataToSend(17),
      I4 => \r_bitCounter_reg_n_0_[0]\,
      I5 => r_dataToSend(16),
      O => o_data_INST_0_i_29_n_0
    );
o_data_INST_0_i_3: unisim.vcomponents.MUXF7
     port map (
      I0 => o_data_INST_0_i_9_n_0,
      I1 => o_data_INST_0_i_10_n_0,
      O => o_data_INST_0_i_3_n_0,
      S => \r_bitCounter_reg_n_0_[2]\
    );
o_data_INST_0_i_30: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => r_dataToSend(23),
      I1 => \r_bitCounter_reg_n_0_[1]\,
      I2 => r_dataToSend(21),
      I3 => \r_bitCounter_reg_n_0_[0]\,
      I4 => r_dataToSend(20),
      O => o_data_INST_0_i_30_n_0
    );
o_data_INST_0_i_31: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => r_dataToSend(27),
      I1 => r_dataToSend(26),
      I2 => \r_bitCounter_reg_n_0_[1]\,
      I3 => r_dataToSend(25),
      I4 => \r_bitCounter_reg_n_0_[0]\,
      I5 => r_dataToSend(24),
      O => o_data_INST_0_i_31_n_0
    );
o_data_INST_0_i_32: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => r_dataToSend(31),
      I1 => r_dataToSend(6),
      I2 => \r_bitCounter_reg_n_0_[1]\,
      I3 => r_dataToSend(29),
      I4 => \r_bitCounter_reg_n_0_[0]\,
      I5 => r_dataToSend(28),
      O => o_data_INST_0_i_32_n_0
    );
o_data_INST_0_i_33: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => r_dataToSend(3),
      I1 => r_dataToSend(2),
      I2 => \r_bitCounter_reg_n_0_[1]\,
      I3 => r_dataToSend(1),
      I4 => \r_bitCounter_reg_n_0_[0]\,
      I5 => r_dataToSend(0),
      O => o_data_INST_0_i_33_n_0
    );
o_data_INST_0_i_34: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => r_dataToSend(7),
      I1 => r_dataToSend(6),
      I2 => \r_bitCounter_reg_n_0_[1]\,
      I3 => r_dataToSend(5),
      I4 => \r_bitCounter_reg_n_0_[0]\,
      I5 => r_dataToSend(4),
      O => o_data_INST_0_i_34_n_0
    );
o_data_INST_0_i_35: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => r_dataToSend(11),
      I1 => r_dataToSend(10),
      I2 => \r_bitCounter_reg_n_0_[1]\,
      I3 => r_dataToSend(9),
      I4 => \r_bitCounter_reg_n_0_[0]\,
      I5 => r_dataToSend(8),
      O => o_data_INST_0_i_35_n_0
    );
o_data_INST_0_i_36: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => r_dataToSend(15),
      I1 => r_dataToSend(14),
      I2 => \r_bitCounter_reg_n_0_[1]\,
      I3 => r_dataToSend(13),
      I4 => \r_bitCounter_reg_n_0_[0]\,
      I5 => r_dataToSend(12),
      O => o_data_INST_0_i_36_n_0
    );
o_data_INST_0_i_4: unisim.vcomponents.MUXF7
     port map (
      I0 => o_data_INST_0_i_11_n_0,
      I1 => o_data_INST_0_i_12_n_0,
      O => o_data_INST_0_i_4_n_0,
      S => \r_bitCounter_reg_n_0_[2]\
    );
o_data_INST_0_i_5: unisim.vcomponents.MUXF8
     port map (
      I0 => o_data_INST_0_i_13_n_0,
      I1 => o_data_INST_0_i_14_n_0,
      O => o_data_INST_0_i_5_n_0,
      S => \r_bitCounter_reg_n_0_[3]\
    );
o_data_INST_0_i_6: unisim.vcomponents.MUXF8
     port map (
      I0 => o_data_INST_0_i_15_n_0,
      I1 => o_data_INST_0_i_16_n_0,
      O => o_data_INST_0_i_6_n_0,
      S => \r_bitCounter_reg_n_0_[3]\
    );
o_data_INST_0_i_7: unisim.vcomponents.MUXF8
     port map (
      I0 => o_data_INST_0_i_17_n_0,
      I1 => o_data_INST_0_i_18_n_0,
      O => o_data_INST_0_i_7_n_0,
      S => \r_bitCounter_reg_n_0_[3]\
    );
o_data_INST_0_i_8: unisim.vcomponents.MUXF8
     port map (
      I0 => o_data_INST_0_i_19_n_0,
      I1 => o_data_INST_0_i_20_n_0,
      O => o_data_INST_0_i_8_n_0,
      S => \r_bitCounter_reg_n_0_[3]\
    );
o_data_INST_0_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => r_dataToSend(67),
      I1 => r_dataToSend(66),
      I2 => \r_bitCounter_reg_n_0_[1]\,
      I3 => r_dataToSend(65),
      I4 => \r_bitCounter_reg_n_0_[0]\,
      I5 => r_dataToSend(64),
      O => o_data_INST_0_i_9_n_0
    );
o_lat_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \r_state__0\(1),
      I1 => \r_state__0\(0),
      O => o_lat
    );
o_ledClk_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \r_state__0\(1),
      I1 => \r_state__0\(0),
      I2 => w_slowClock,
      O => o_ledClk
    );
\r_bitCounter[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00F6FFF6"
    )
        port map (
      I0 => r_oldMode,
      I1 => i_mode,
      I2 => \r_state1_inferred__0/i__carry__2_n_2\,
      I3 => \r_state__0\(0),
      I4 => \r_bitCounter_reg_n_0_[0]\,
      O => r_bitCounter(0)
    );
\r_bitCounter[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF600F600F6FFF6"
    )
        port map (
      I0 => r_oldMode,
      I1 => i_mode,
      I2 => \r_state1_inferred__0/i__carry__2_n_2\,
      I3 => \r_state__0\(0),
      I4 => \r_bitCounter_reg_n_0_[1]\,
      I5 => \r_bitCounter_reg_n_0_[0]\,
      O => r_bitCounter(1)
    );
\r_bitCounter[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF600F6"
    )
        port map (
      I0 => r_oldMode,
      I1 => i_mode,
      I2 => \r_state1_inferred__0/i__carry__2_n_2\,
      I3 => \r_state__0\(0),
      I4 => \r_bitCounter[2]_i_2_n_0\,
      O => r_bitCounter(2)
    );
\r_bitCounter[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => \r_bitCounter_reg_n_0_[1]\,
      I1 => \r_bitCounter_reg_n_0_[0]\,
      I2 => \r_bitCounter_reg_n_0_[2]\,
      O => \r_bitCounter[2]_i_2_n_0\
    );
\r_bitCounter[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF600F6"
    )
        port map (
      I0 => r_oldMode,
      I1 => i_mode,
      I2 => \r_state1_inferred__0/i__carry__2_n_2\,
      I3 => \r_state__0\(0),
      I4 => \r_bitCounter[3]_i_2_n_0\,
      O => r_bitCounter(3)
    );
\r_bitCounter[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE01"
    )
        port map (
      I0 => \r_bitCounter_reg_n_0_[2]\,
      I1 => \r_bitCounter_reg_n_0_[0]\,
      I2 => \r_bitCounter_reg_n_0_[1]\,
      I3 => \r_bitCounter_reg_n_0_[3]\,
      O => \r_bitCounter[3]_i_2_n_0\
    );
\r_bitCounter[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFE000000010000"
    )
        port map (
      I0 => \r_bitCounter_reg_n_0_[2]\,
      I1 => \r_bitCounter_reg_n_0_[0]\,
      I2 => \r_bitCounter_reg_n_0_[1]\,
      I3 => \r_bitCounter_reg_n_0_[3]\,
      I4 => \r_state__0\(0),
      I5 => \r_bitCounter_reg_n_0_[4]\,
      O => r_bitCounter(4)
    );
\r_bitCounter[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => \r_state__0\(0),
      I1 => \r_bitCounter[5]_i_2_n_0\,
      I2 => \r_bitCounter_reg_n_0_[5]\,
      O => r_bitCounter(5)
    );
\r_bitCounter[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \r_bitCounter_reg_n_0_[3]\,
      I1 => \r_bitCounter_reg_n_0_[1]\,
      I2 => \r_bitCounter_reg_n_0_[0]\,
      I3 => \r_bitCounter_reg_n_0_[2]\,
      I4 => \r_bitCounter_reg_n_0_[4]\,
      O => \r_bitCounter[5]_i_2_n_0\
    );
\r_bitCounter[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF600F600F6FFF6"
    )
        port map (
      I0 => r_oldMode,
      I1 => i_mode,
      I2 => \r_state1_inferred__0/i__carry__2_n_2\,
      I3 => \r_state__0\(0),
      I4 => \r_bitCounter_reg_n_0_[6]\,
      I5 => \r_bitCounter[7]_i_3_n_0\,
      O => r_bitCounter(6)
    );
\r_bitCounter[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"15"
    )
        port map (
      I0 => \r_state__0\(1),
      I1 => \r_state__6\,
      I2 => \r_state__0\(0),
      O => \r_bitCounter[7]_i_1_n_0\
    );
\r_bitCounter[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A802"
    )
        port map (
      I0 => \r_state__0\(0),
      I1 => \r_bitCounter_reg_n_0_[6]\,
      I2 => \r_bitCounter[7]_i_3_n_0\,
      I3 => \r_bitCounter_reg_n_0_[7]\,
      O => r_bitCounter(7)
    );
\r_bitCounter[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \r_bitCounter_reg_n_0_[4]\,
      I1 => \r_bitCounter_reg_n_0_[2]\,
      I2 => \r_bitCounter_reg_n_0_[0]\,
      I3 => \r_bitCounter_reg_n_0_[1]\,
      I4 => \r_bitCounter_reg_n_0_[3]\,
      I5 => \r_bitCounter_reg_n_0_[5]\,
      O => \r_bitCounter[7]_i_3_n_0\
    );
\r_bitCounter_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_bitCounter[7]_i_1_n_0\,
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => r_bitCounter(0),
      Q => \r_bitCounter_reg_n_0_[0]\
    );
\r_bitCounter_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_bitCounter[7]_i_1_n_0\,
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => r_bitCounter(1),
      Q => \r_bitCounter_reg_n_0_[1]\
    );
\r_bitCounter_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_bitCounter[7]_i_1_n_0\,
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => r_bitCounter(2),
      Q => \r_bitCounter_reg_n_0_[2]\
    );
\r_bitCounter_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_bitCounter[7]_i_1_n_0\,
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => r_bitCounter(3),
      Q => \r_bitCounter_reg_n_0_[3]\
    );
\r_bitCounter_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_bitCounter[7]_i_1_n_0\,
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => r_bitCounter(4),
      Q => \r_bitCounter_reg_n_0_[4]\
    );
\r_bitCounter_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_bitCounter[7]_i_1_n_0\,
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => r_bitCounter(5),
      Q => \r_bitCounter_reg_n_0_[5]\
    );
\r_bitCounter_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_bitCounter[7]_i_1_n_0\,
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => r_bitCounter(6),
      Q => \r_bitCounter_reg_n_0_[6]\
    );
\r_bitCounter_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_bitCounter[7]_i_1_n_0\,
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => r_bitCounter(7),
      Q => \r_bitCounter_reg_n_0_[7]\
    );
\r_clockCounter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_clockCounter_reg_n_0_[0]\,
      O => p_0_in(0)
    );
\r_clockCounter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \r_clockCounter_reg_n_0_[0]\,
      I1 => \r_clockCounter_reg_n_0_[1]\,
      O => p_0_in(1)
    );
\r_clockCounter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \r_clockCounter_reg_n_0_[0]\,
      I1 => \r_clockCounter_reg_n_0_[1]\,
      I2 => \r_clockCounter_reg_n_0_[2]\,
      O => p_0_in(2)
    );
\r_clockCounter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \r_clockCounter_reg_n_0_[1]\,
      I1 => \r_clockCounter_reg_n_0_[0]\,
      I2 => \r_clockCounter_reg_n_0_[2]\,
      I3 => \r_clockCounter_reg_n_0_[3]\,
      O => p_0_in(3)
    );
\r_clockCounter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \r_clockCounter_reg_n_0_[2]\,
      I1 => \r_clockCounter_reg_n_0_[0]\,
      I2 => \r_clockCounter_reg_n_0_[1]\,
      I3 => \r_clockCounter_reg_n_0_[3]\,
      I4 => \r_clockCounter_reg_n_0_[4]\,
      O => p_0_in(4)
    );
\r_clockCounter[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \r_clockCounter_reg_n_0_[3]\,
      I1 => \r_clockCounter_reg_n_0_[1]\,
      I2 => \r_clockCounter_reg_n_0_[0]\,
      I3 => \r_clockCounter_reg_n_0_[2]\,
      I4 => \r_clockCounter_reg_n_0_[4]\,
      I5 => \r_clockCounter_reg_n_0_[5]\,
      O => p_0_in(5)
    );
\r_clockCounter[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \r_clockCounter[7]_i_2_n_0\,
      I1 => \r_clockCounter_reg_n_0_[6]\,
      O => p_0_in(6)
    );
\r_clockCounter[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \r_clockCounter[7]_i_2_n_0\,
      I1 => \r_clockCounter_reg_n_0_[6]\,
      I2 => w_slowClock,
      O => p_0_in(7)
    );
\r_clockCounter[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \r_clockCounter_reg_n_0_[5]\,
      I1 => \r_clockCounter_reg_n_0_[3]\,
      I2 => \r_clockCounter_reg_n_0_[1]\,
      I3 => \r_clockCounter_reg_n_0_[0]\,
      I4 => \r_clockCounter_reg_n_0_[2]\,
      I5 => \r_clockCounter_reg_n_0_[4]\,
      O => \r_clockCounter[7]_i_2_n_0\
    );
\r_clockCounter_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => '1',
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => p_0_in(0),
      Q => \r_clockCounter_reg_n_0_[0]\
    );
\r_clockCounter_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => '1',
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => p_0_in(1),
      Q => \r_clockCounter_reg_n_0_[1]\
    );
\r_clockCounter_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => '1',
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => p_0_in(2),
      Q => \r_clockCounter_reg_n_0_[2]\
    );
\r_clockCounter_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => '1',
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => p_0_in(3),
      Q => \r_clockCounter_reg_n_0_[3]\
    );
\r_clockCounter_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => '1',
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => p_0_in(4),
      Q => \r_clockCounter_reg_n_0_[4]\
    );
\r_clockCounter_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => '1',
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => p_0_in(5),
      Q => \r_clockCounter_reg_n_0_[5]\
    );
\r_clockCounter_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => '1',
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => p_0_in(6),
      Q => \r_clockCounter_reg_n_0_[6]\
    );
\r_clockCounter_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => '1',
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => p_0_in(7),
      Q => w_slowClock
    );
\r_dataToSend[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"155A"
    )
        port map (
      I0 => i_bcdData(39),
      I1 => i_bcdData(36),
      I2 => i_bcdData(38),
      I3 => i_bcdData(37),
      O => p_0_in_0(0)
    );
\r_dataToSend[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1653"
    )
        port map (
      I0 => i_bcdData(35),
      I1 => i_bcdData(34),
      I2 => i_bcdData(33),
      I3 => i_bcdData(32),
      O => p_0_in_0(10)
    );
\r_dataToSend[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0647"
    )
        port map (
      I0 => i_bcdData(35),
      I1 => i_bcdData(34),
      I2 => i_bcdData(33),
      I3 => i_bcdData(32),
      O => p_0_in_0(11)
    );
\r_dataToSend[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5747"
    )
        port map (
      I0 => i_bcdData(35),
      I1 => i_bcdData(34),
      I2 => i_bcdData(33),
      I3 => i_bcdData(32),
      O => p_0_in_0(12)
    );
\r_dataToSend[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5653"
    )
        port map (
      I0 => i_bcdData(35),
      I1 => i_bcdData(34),
      I2 => i_bcdData(33),
      I3 => i_bcdData(32),
      O => p_0_in_0(13)
    );
\r_dataToSend[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4177"
    )
        port map (
      I0 => i_bcdData(35),
      I1 => i_bcdData(33),
      I2 => i_bcdData(32),
      I3 => i_bcdData(34),
      O => p_0_in_0(15)
    );
\r_dataToSend[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"155A"
    )
        port map (
      I0 => i_bcdData(31),
      I1 => i_bcdData(28),
      I2 => i_bcdData(30),
      I3 => i_bcdData(29),
      O => p_0_in_0(16)
    );
\r_dataToSend[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0047"
    )
        port map (
      I0 => i_bcdData(31),
      I1 => i_bcdData(29),
      I2 => i_bcdData(30),
      I3 => i_bcdData(28),
      O => p_0_in_0(17)
    );
\r_dataToSend[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0647"
    )
        port map (
      I0 => i_bcdData(31),
      I1 => i_bcdData(30),
      I2 => i_bcdData(29),
      I3 => i_bcdData(28),
      O => p_0_in_0(18)
    );
\r_dataToSend[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1653"
    )
        port map (
      I0 => i_bcdData(31),
      I1 => i_bcdData(30),
      I2 => i_bcdData(29),
      I3 => i_bcdData(28),
      O => p_0_in_0(19)
    );
\r_dataToSend[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0047"
    )
        port map (
      I0 => i_bcdData(39),
      I1 => i_bcdData(37),
      I2 => i_bcdData(38),
      I3 => i_bcdData(36),
      O => p_0_in_0(1)
    );
\r_dataToSend[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5747"
    )
        port map (
      I0 => i_bcdData(31),
      I1 => i_bcdData(30),
      I2 => i_bcdData(29),
      I3 => i_bcdData(28),
      O => p_0_in_0(20)
    );
\r_dataToSend[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5653"
    )
        port map (
      I0 => i_bcdData(31),
      I1 => i_bcdData(30),
      I2 => i_bcdData(29),
      I3 => i_bcdData(28),
      O => p_0_in_0(21)
    );
\r_dataToSend[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4177"
    )
        port map (
      I0 => i_bcdData(31),
      I1 => i_bcdData(29),
      I2 => i_bcdData(28),
      I3 => i_bcdData(30),
      O => p_0_in_0(23)
    );
\r_dataToSend[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0047"
    )
        port map (
      I0 => i_bcdData(27),
      I1 => i_bcdData(25),
      I2 => i_bcdData(26),
      I3 => i_bcdData(24),
      O => p_0_in_0(24)
    );
\r_dataToSend[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"155A"
    )
        port map (
      I0 => i_bcdData(27),
      I1 => i_bcdData(24),
      I2 => i_bcdData(26),
      I3 => i_bcdData(25),
      O => p_0_in_0(25)
    );
\r_dataToSend[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1653"
    )
        port map (
      I0 => i_bcdData(27),
      I1 => i_bcdData(26),
      I2 => i_bcdData(25),
      I3 => i_bcdData(24),
      O => p_0_in_0(26)
    );
\r_dataToSend[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0647"
    )
        port map (
      I0 => i_bcdData(27),
      I1 => i_bcdData(26),
      I2 => i_bcdData(25),
      I3 => i_bcdData(24),
      O => p_0_in_0(27)
    );
\r_dataToSend[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5747"
    )
        port map (
      I0 => i_bcdData(27),
      I1 => i_bcdData(26),
      I2 => i_bcdData(25),
      I3 => i_bcdData(24),
      O => p_0_in_0(28)
    );
\r_dataToSend[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5653"
    )
        port map (
      I0 => i_bcdData(27),
      I1 => i_bcdData(26),
      I2 => i_bcdData(25),
      I3 => i_bcdData(24),
      O => p_0_in_0(29)
    );
\r_dataToSend[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0647"
    )
        port map (
      I0 => i_bcdData(39),
      I1 => i_bcdData(38),
      I2 => i_bcdData(37),
      I3 => i_bcdData(36),
      O => p_0_in_0(2)
    );
\r_dataToSend[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4177"
    )
        port map (
      I0 => i_bcdData(27),
      I1 => i_bcdData(25),
      I2 => i_bcdData(24),
      I3 => i_bcdData(26),
      O => p_0_in_0(31)
    );
\r_dataToSend[32]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"155A"
    )
        port map (
      I0 => i_bcdData(23),
      I1 => i_bcdData(20),
      I2 => i_bcdData(22),
      I3 => i_bcdData(21),
      O => p_0_in_0(32)
    );
\r_dataToSend[33]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0047"
    )
        port map (
      I0 => i_bcdData(23),
      I1 => i_bcdData(21),
      I2 => i_bcdData(22),
      I3 => i_bcdData(20),
      O => p_0_in_0(33)
    );
\r_dataToSend[34]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0647"
    )
        port map (
      I0 => i_bcdData(23),
      I1 => i_bcdData(22),
      I2 => i_bcdData(21),
      I3 => i_bcdData(20),
      O => p_0_in_0(34)
    );
\r_dataToSend[35]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1653"
    )
        port map (
      I0 => i_bcdData(23),
      I1 => i_bcdData(22),
      I2 => i_bcdData(21),
      I3 => i_bcdData(20),
      O => p_0_in_0(35)
    );
\r_dataToSend[36]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5747"
    )
        port map (
      I0 => i_bcdData(23),
      I1 => i_bcdData(22),
      I2 => i_bcdData(21),
      I3 => i_bcdData(20),
      O => p_0_in_0(36)
    );
\r_dataToSend[37]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5653"
    )
        port map (
      I0 => i_bcdData(23),
      I1 => i_bcdData(22),
      I2 => i_bcdData(21),
      I3 => i_bcdData(20),
      O => p_0_in_0(37)
    );
\r_dataToSend[39]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4177"
    )
        port map (
      I0 => i_bcdData(23),
      I1 => i_bcdData(21),
      I2 => i_bcdData(20),
      I3 => i_bcdData(22),
      O => p_0_in_0(39)
    );
\r_dataToSend[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1653"
    )
        port map (
      I0 => i_bcdData(39),
      I1 => i_bcdData(38),
      I2 => i_bcdData(37),
      I3 => i_bcdData(36),
      O => p_0_in_0(3)
    );
\r_dataToSend[40]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0047"
    )
        port map (
      I0 => i_bcdData(19),
      I1 => i_bcdData(17),
      I2 => i_bcdData(18),
      I3 => i_bcdData(16),
      O => p_0_in_0(40)
    );
\r_dataToSend[41]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"155A"
    )
        port map (
      I0 => i_bcdData(19),
      I1 => i_bcdData(16),
      I2 => i_bcdData(18),
      I3 => i_bcdData(17),
      O => p_0_in_0(41)
    );
\r_dataToSend[42]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1653"
    )
        port map (
      I0 => i_bcdData(19),
      I1 => i_bcdData(18),
      I2 => i_bcdData(17),
      I3 => i_bcdData(16),
      O => p_0_in_0(42)
    );
\r_dataToSend[43]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0647"
    )
        port map (
      I0 => i_bcdData(19),
      I1 => i_bcdData(18),
      I2 => i_bcdData(17),
      I3 => i_bcdData(16),
      O => p_0_in_0(43)
    );
\r_dataToSend[44]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5747"
    )
        port map (
      I0 => i_bcdData(19),
      I1 => i_bcdData(18),
      I2 => i_bcdData(17),
      I3 => i_bcdData(16),
      O => p_0_in_0(44)
    );
\r_dataToSend[45]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5653"
    )
        port map (
      I0 => i_bcdData(19),
      I1 => i_bcdData(18),
      I2 => i_bcdData(17),
      I3 => i_bcdData(16),
      O => p_0_in_0(45)
    );
\r_dataToSend[47]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4177"
    )
        port map (
      I0 => i_bcdData(19),
      I1 => i_bcdData(17),
      I2 => i_bcdData(16),
      I3 => i_bcdData(18),
      O => p_0_in_0(47)
    );
\r_dataToSend[48]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"155A"
    )
        port map (
      I0 => i_bcdData(15),
      I1 => i_bcdData(12),
      I2 => i_bcdData(14),
      I3 => i_bcdData(13),
      O => p_0_in_0(48)
    );
\r_dataToSend[49]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0047"
    )
        port map (
      I0 => i_bcdData(15),
      I1 => i_bcdData(13),
      I2 => i_bcdData(14),
      I3 => i_bcdData(12),
      O => p_0_in_0(49)
    );
\r_dataToSend[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5747"
    )
        port map (
      I0 => i_bcdData(39),
      I1 => i_bcdData(38),
      I2 => i_bcdData(37),
      I3 => i_bcdData(36),
      O => p_0_in_0(4)
    );
\r_dataToSend[50]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0647"
    )
        port map (
      I0 => i_bcdData(15),
      I1 => i_bcdData(14),
      I2 => i_bcdData(13),
      I3 => i_bcdData(12),
      O => p_0_in_0(50)
    );
\r_dataToSend[51]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1653"
    )
        port map (
      I0 => i_bcdData(15),
      I1 => i_bcdData(14),
      I2 => i_bcdData(13),
      I3 => i_bcdData(12),
      O => p_0_in_0(51)
    );
\r_dataToSend[52]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5747"
    )
        port map (
      I0 => i_bcdData(15),
      I1 => i_bcdData(14),
      I2 => i_bcdData(13),
      I3 => i_bcdData(12),
      O => p_0_in_0(52)
    );
\r_dataToSend[53]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5653"
    )
        port map (
      I0 => i_bcdData(15),
      I1 => i_bcdData(14),
      I2 => i_bcdData(13),
      I3 => i_bcdData(12),
      O => p_0_in_0(53)
    );
\r_dataToSend[55]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4177"
    )
        port map (
      I0 => i_bcdData(15),
      I1 => i_bcdData(13),
      I2 => i_bcdData(12),
      I3 => i_bcdData(14),
      O => p_0_in_0(55)
    );
\r_dataToSend[56]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0047"
    )
        port map (
      I0 => i_bcdData(11),
      I1 => i_bcdData(9),
      I2 => i_bcdData(10),
      I3 => i_bcdData(8),
      O => p_0_in_0(56)
    );
\r_dataToSend[57]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"155A"
    )
        port map (
      I0 => i_bcdData(11),
      I1 => i_bcdData(8),
      I2 => i_bcdData(10),
      I3 => i_bcdData(9),
      O => p_0_in_0(57)
    );
\r_dataToSend[58]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1653"
    )
        port map (
      I0 => i_bcdData(11),
      I1 => i_bcdData(10),
      I2 => i_bcdData(9),
      I3 => i_bcdData(8),
      O => p_0_in_0(58)
    );
\r_dataToSend[59]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0647"
    )
        port map (
      I0 => i_bcdData(11),
      I1 => i_bcdData(10),
      I2 => i_bcdData(9),
      I3 => i_bcdData(8),
      O => p_0_in_0(59)
    );
\r_dataToSend[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5653"
    )
        port map (
      I0 => i_bcdData(39),
      I1 => i_bcdData(38),
      I2 => i_bcdData(37),
      I3 => i_bcdData(36),
      O => p_0_in_0(5)
    );
\r_dataToSend[60]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5747"
    )
        port map (
      I0 => i_bcdData(11),
      I1 => i_bcdData(10),
      I2 => i_bcdData(9),
      I3 => i_bcdData(8),
      O => p_0_in_0(60)
    );
\r_dataToSend[61]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5653"
    )
        port map (
      I0 => i_bcdData(11),
      I1 => i_bcdData(10),
      I2 => i_bcdData(9),
      I3 => i_bcdData(8),
      O => p_0_in_0(61)
    );
\r_dataToSend[63]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4177"
    )
        port map (
      I0 => i_bcdData(11),
      I1 => i_bcdData(9),
      I2 => i_bcdData(8),
      I3 => i_bcdData(10),
      O => p_0_in_0(63)
    );
\r_dataToSend[64]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"155A"
    )
        port map (
      I0 => i_bcdData(7),
      I1 => i_bcdData(4),
      I2 => i_bcdData(6),
      I3 => i_bcdData(5),
      O => p_0_in_0(64)
    );
\r_dataToSend[65]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0047"
    )
        port map (
      I0 => i_bcdData(7),
      I1 => i_bcdData(5),
      I2 => i_bcdData(6),
      I3 => i_bcdData(4),
      O => p_0_in_0(65)
    );
\r_dataToSend[66]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0647"
    )
        port map (
      I0 => i_bcdData(7),
      I1 => i_bcdData(6),
      I2 => i_bcdData(5),
      I3 => i_bcdData(4),
      O => p_0_in_0(66)
    );
\r_dataToSend[67]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1653"
    )
        port map (
      I0 => i_bcdData(7),
      I1 => i_bcdData(6),
      I2 => i_bcdData(5),
      I3 => i_bcdData(4),
      O => p_0_in_0(67)
    );
\r_dataToSend[68]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5747"
    )
        port map (
      I0 => i_bcdData(7),
      I1 => i_bcdData(6),
      I2 => i_bcdData(5),
      I3 => i_bcdData(4),
      O => p_0_in_0(68)
    );
\r_dataToSend[69]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5653"
    )
        port map (
      I0 => i_bcdData(7),
      I1 => i_bcdData(6),
      I2 => i_bcdData(5),
      I3 => i_bcdData(4),
      O => p_0_in_0(69)
    );
\r_dataToSend[6]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_mode,
      O => \r_dataToSend[6]_i_1_n_0\
    );
\r_dataToSend[71]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4177"
    )
        port map (
      I0 => i_bcdData(7),
      I1 => i_bcdData(5),
      I2 => i_bcdData(4),
      I3 => i_bcdData(6),
      O => p_0_in_0(71)
    );
\r_dataToSend[72]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0047"
    )
        port map (
      I0 => i_bcdData(3),
      I1 => i_bcdData(1),
      I2 => i_bcdData(2),
      I3 => i_bcdData(0),
      O => p_0_in_0(72)
    );
\r_dataToSend[73]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"155A"
    )
        port map (
      I0 => i_bcdData(3),
      I1 => i_bcdData(0),
      I2 => i_bcdData(2),
      I3 => i_bcdData(1),
      O => p_0_in_0(73)
    );
\r_dataToSend[74]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1653"
    )
        port map (
      I0 => i_bcdData(3),
      I1 => i_bcdData(2),
      I2 => i_bcdData(1),
      I3 => i_bcdData(0),
      O => p_0_in_0(74)
    );
\r_dataToSend[75]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0647"
    )
        port map (
      I0 => i_bcdData(3),
      I1 => i_bcdData(2),
      I2 => i_bcdData(1),
      I3 => i_bcdData(0),
      O => p_0_in_0(75)
    );
\r_dataToSend[76]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5747"
    )
        port map (
      I0 => i_bcdData(3),
      I1 => i_bcdData(2),
      I2 => i_bcdData(1),
      I3 => i_bcdData(0),
      O => p_0_in_0(76)
    );
\r_dataToSend[77]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5653"
    )
        port map (
      I0 => i_bcdData(3),
      I1 => i_bcdData(2),
      I2 => i_bcdData(1),
      I3 => i_bcdData(0),
      O => p_0_in_0(77)
    );
\r_dataToSend[79]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000F6"
    )
        port map (
      I0 => r_oldMode,
      I1 => i_mode,
      I2 => \r_state1_inferred__0/i__carry__2_n_2\,
      I3 => \r_state__0\(0),
      I4 => \r_state__0\(1),
      O => \r_state__1\(0)
    );
\r_dataToSend[79]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4177"
    )
        port map (
      I0 => i_bcdData(3),
      I1 => i_bcdData(1),
      I2 => i_bcdData(0),
      I3 => i_bcdData(2),
      O => p_0_in_0(79)
    );
\r_dataToSend[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4177"
    )
        port map (
      I0 => i_bcdData(39),
      I1 => i_bcdData(37),
      I2 => i_bcdData(36),
      I3 => i_bcdData(38),
      O => p_0_in_0(7)
    );
\r_dataToSend[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0047"
    )
        port map (
      I0 => i_bcdData(35),
      I1 => i_bcdData(33),
      I2 => i_bcdData(34),
      I3 => i_bcdData(32),
      O => p_0_in_0(8)
    );
\r_dataToSend[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"155A"
    )
        port map (
      I0 => i_bcdData(35),
      I1 => i_bcdData(32),
      I2 => i_bcdData(34),
      I3 => i_bcdData(33),
      O => p_0_in_0(9)
    );
\r_dataToSend_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => p_0_in_0(0),
      Q => r_dataToSend(0)
    );
\r_dataToSend_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => p_0_in_0(10),
      Q => r_dataToSend(10)
    );
\r_dataToSend_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => p_0_in_0(11),
      Q => r_dataToSend(11)
    );
\r_dataToSend_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => p_0_in_0(12),
      Q => r_dataToSend(12)
    );
\r_dataToSend_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => p_0_in_0(13),
      Q => r_dataToSend(13)
    );
\r_dataToSend_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => i_mode,
      Q => r_dataToSend(14)
    );
\r_dataToSend_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => p_0_in_0(15),
      Q => r_dataToSend(15)
    );
\r_dataToSend_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => p_0_in_0(16),
      Q => r_dataToSend(16)
    );
\r_dataToSend_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => p_0_in_0(17),
      Q => r_dataToSend(17)
    );
\r_dataToSend_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => p_0_in_0(18),
      Q => r_dataToSend(18)
    );
\r_dataToSend_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => p_0_in_0(19),
      Q => r_dataToSend(19)
    );
\r_dataToSend_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => p_0_in_0(1),
      Q => r_dataToSend(1)
    );
\r_dataToSend_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => p_0_in_0(20),
      Q => r_dataToSend(20)
    );
\r_dataToSend_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => p_0_in_0(21),
      Q => r_dataToSend(21)
    );
\r_dataToSend_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => p_0_in_0(23),
      Q => r_dataToSend(23)
    );
\r_dataToSend_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => p_0_in_0(24),
      Q => r_dataToSend(24)
    );
\r_dataToSend_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => p_0_in_0(25),
      Q => r_dataToSend(25)
    );
\r_dataToSend_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => p_0_in_0(26),
      Q => r_dataToSend(26)
    );
\r_dataToSend_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => p_0_in_0(27),
      Q => r_dataToSend(27)
    );
\r_dataToSend_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => p_0_in_0(28),
      Q => r_dataToSend(28)
    );
\r_dataToSend_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => p_0_in_0(29),
      Q => r_dataToSend(29)
    );
\r_dataToSend_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => p_0_in_0(2),
      Q => r_dataToSend(2)
    );
\r_dataToSend_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => p_0_in_0(31),
      Q => r_dataToSend(31)
    );
\r_dataToSend_reg[32]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => p_0_in_0(32),
      Q => r_dataToSend(32)
    );
\r_dataToSend_reg[33]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => p_0_in_0(33),
      Q => r_dataToSend(33)
    );
\r_dataToSend_reg[34]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => p_0_in_0(34),
      Q => r_dataToSend(34)
    );
\r_dataToSend_reg[35]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => p_0_in_0(35),
      Q => r_dataToSend(35)
    );
\r_dataToSend_reg[36]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => p_0_in_0(36),
      Q => r_dataToSend(36)
    );
\r_dataToSend_reg[37]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => p_0_in_0(37),
      Q => r_dataToSend(37)
    );
\r_dataToSend_reg[39]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => p_0_in_0(39),
      Q => r_dataToSend(39)
    );
\r_dataToSend_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => p_0_in_0(3),
      Q => r_dataToSend(3)
    );
\r_dataToSend_reg[40]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => p_0_in_0(40),
      Q => r_dataToSend(40)
    );
\r_dataToSend_reg[41]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => p_0_in_0(41),
      Q => r_dataToSend(41)
    );
\r_dataToSend_reg[42]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => p_0_in_0(42),
      Q => r_dataToSend(42)
    );
\r_dataToSend_reg[43]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => p_0_in_0(43),
      Q => r_dataToSend(43)
    );
\r_dataToSend_reg[44]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => p_0_in_0(44),
      Q => r_dataToSend(44)
    );
\r_dataToSend_reg[45]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => p_0_in_0(45),
      Q => r_dataToSend(45)
    );
\r_dataToSend_reg[47]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => p_0_in_0(47),
      Q => r_dataToSend(47)
    );
\r_dataToSend_reg[48]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => p_0_in_0(48),
      Q => r_dataToSend(48)
    );
\r_dataToSend_reg[49]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => p_0_in_0(49),
      Q => r_dataToSend(49)
    );
\r_dataToSend_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => p_0_in_0(4),
      Q => r_dataToSend(4)
    );
\r_dataToSend_reg[50]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => p_0_in_0(50),
      Q => r_dataToSend(50)
    );
\r_dataToSend_reg[51]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => p_0_in_0(51),
      Q => r_dataToSend(51)
    );
\r_dataToSend_reg[52]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => p_0_in_0(52),
      Q => r_dataToSend(52)
    );
\r_dataToSend_reg[53]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => p_0_in_0(53),
      Q => r_dataToSend(53)
    );
\r_dataToSend_reg[55]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => p_0_in_0(55),
      Q => r_dataToSend(55)
    );
\r_dataToSend_reg[56]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => p_0_in_0(56),
      Q => r_dataToSend(56)
    );
\r_dataToSend_reg[57]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => p_0_in_0(57),
      Q => r_dataToSend(57)
    );
\r_dataToSend_reg[58]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => p_0_in_0(58),
      Q => r_dataToSend(58)
    );
\r_dataToSend_reg[59]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => p_0_in_0(59),
      Q => r_dataToSend(59)
    );
\r_dataToSend_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => p_0_in_0(5),
      Q => r_dataToSend(5)
    );
\r_dataToSend_reg[60]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => p_0_in_0(60),
      Q => r_dataToSend(60)
    );
\r_dataToSend_reg[61]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => p_0_in_0(61),
      Q => r_dataToSend(61)
    );
\r_dataToSend_reg[63]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => p_0_in_0(63),
      Q => r_dataToSend(63)
    );
\r_dataToSend_reg[64]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => p_0_in_0(64),
      Q => r_dataToSend(64)
    );
\r_dataToSend_reg[65]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => p_0_in_0(65),
      Q => r_dataToSend(65)
    );
\r_dataToSend_reg[66]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => p_0_in_0(66),
      Q => r_dataToSend(66)
    );
\r_dataToSend_reg[67]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => p_0_in_0(67),
      Q => r_dataToSend(67)
    );
\r_dataToSend_reg[68]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => p_0_in_0(68),
      Q => r_dataToSend(68)
    );
\r_dataToSend_reg[69]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => p_0_in_0(69),
      Q => r_dataToSend(69)
    );
\r_dataToSend_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => \r_dataToSend[6]_i_1_n_0\,
      Q => r_dataToSend(6)
    );
\r_dataToSend_reg[71]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => p_0_in_0(71),
      Q => r_dataToSend(71)
    );
\r_dataToSend_reg[72]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => p_0_in_0(72),
      Q => r_dataToSend(72)
    );
\r_dataToSend_reg[73]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => p_0_in_0(73),
      Q => r_dataToSend(73)
    );
\r_dataToSend_reg[74]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => p_0_in_0(74),
      Q => r_dataToSend(74)
    );
\r_dataToSend_reg[75]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => p_0_in_0(75),
      Q => r_dataToSend(75)
    );
\r_dataToSend_reg[76]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => p_0_in_0(76),
      Q => r_dataToSend(76)
    );
\r_dataToSend_reg[77]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => p_0_in_0(77),
      Q => r_dataToSend(77)
    );
\r_dataToSend_reg[79]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => p_0_in_0(79),
      Q => r_dataToSend(79)
    );
\r_dataToSend_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => p_0_in_0(7),
      Q => r_dataToSend(7)
    );
\r_dataToSend_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => p_0_in_0(8),
      Q => r_dataToSend(8)
    );
\r_dataToSend_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => p_0_in_0(9),
      Q => r_dataToSend(9)
    );
\r_oldBcdData_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => i_bcdData(0),
      Q => r_oldBcdData(0)
    );
\r_oldBcdData_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => i_bcdData(10),
      Q => r_oldBcdData(10)
    );
\r_oldBcdData_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => i_bcdData(11),
      Q => r_oldBcdData(11)
    );
\r_oldBcdData_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => i_bcdData(12),
      Q => r_oldBcdData(12)
    );
\r_oldBcdData_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => i_bcdData(13),
      Q => r_oldBcdData(13)
    );
\r_oldBcdData_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => i_bcdData(14),
      Q => r_oldBcdData(14)
    );
\r_oldBcdData_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => i_bcdData(15),
      Q => r_oldBcdData(15)
    );
\r_oldBcdData_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => i_bcdData(16),
      Q => r_oldBcdData(16)
    );
\r_oldBcdData_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => i_bcdData(17),
      Q => r_oldBcdData(17)
    );
\r_oldBcdData_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => i_bcdData(18),
      Q => r_oldBcdData(18)
    );
\r_oldBcdData_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => i_bcdData(19),
      Q => r_oldBcdData(19)
    );
\r_oldBcdData_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => i_bcdData(1),
      Q => r_oldBcdData(1)
    );
\r_oldBcdData_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => i_bcdData(20),
      Q => r_oldBcdData(20)
    );
\r_oldBcdData_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => i_bcdData(21),
      Q => r_oldBcdData(21)
    );
\r_oldBcdData_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => i_bcdData(22),
      Q => r_oldBcdData(22)
    );
\r_oldBcdData_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => i_bcdData(23),
      Q => r_oldBcdData(23)
    );
\r_oldBcdData_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => i_bcdData(24),
      Q => r_oldBcdData(24)
    );
\r_oldBcdData_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => i_bcdData(25),
      Q => r_oldBcdData(25)
    );
\r_oldBcdData_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => i_bcdData(26),
      Q => r_oldBcdData(26)
    );
\r_oldBcdData_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => i_bcdData(27),
      Q => r_oldBcdData(27)
    );
\r_oldBcdData_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => i_bcdData(28),
      Q => r_oldBcdData(28)
    );
\r_oldBcdData_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => i_bcdData(29),
      Q => r_oldBcdData(29)
    );
\r_oldBcdData_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => i_bcdData(2),
      Q => r_oldBcdData(2)
    );
\r_oldBcdData_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => i_bcdData(30),
      Q => r_oldBcdData(30)
    );
\r_oldBcdData_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => i_bcdData(31),
      Q => r_oldBcdData(31)
    );
\r_oldBcdData_reg[32]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => i_bcdData(32),
      Q => r_oldBcdData(32)
    );
\r_oldBcdData_reg[33]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => i_bcdData(33),
      Q => r_oldBcdData(33)
    );
\r_oldBcdData_reg[34]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => i_bcdData(34),
      Q => r_oldBcdData(34)
    );
\r_oldBcdData_reg[35]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => i_bcdData(35),
      Q => r_oldBcdData(35)
    );
\r_oldBcdData_reg[36]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => i_bcdData(36),
      Q => r_oldBcdData(36)
    );
\r_oldBcdData_reg[37]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => i_bcdData(37),
      Q => r_oldBcdData(37)
    );
\r_oldBcdData_reg[38]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => i_bcdData(38),
      Q => r_oldBcdData(38)
    );
\r_oldBcdData_reg[39]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => i_bcdData(39),
      Q => r_oldBcdData(39)
    );
\r_oldBcdData_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => i_bcdData(3),
      Q => r_oldBcdData(3)
    );
\r_oldBcdData_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => i_bcdData(4),
      Q => r_oldBcdData(4)
    );
\r_oldBcdData_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => i_bcdData(5),
      Q => r_oldBcdData(5)
    );
\r_oldBcdData_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => i_bcdData(6),
      Q => r_oldBcdData(6)
    );
\r_oldBcdData_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => i_bcdData(7),
      Q => r_oldBcdData(7)
    );
\r_oldBcdData_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => i_bcdData(8),
      Q => r_oldBcdData(8)
    );
\r_oldBcdData_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => \r_state__1\(0),
      CLR => \FSM_sequential_r_state[1]_i_2_n_0\,
      D => i_bcdData(9),
      Q => r_oldBcdData(9)
    );
r_oldMode_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFD0200"
    )
        port map (
      I0 => i_resetn,
      I1 => \r_state__0\(1),
      I2 => \r_state__0\(0),
      I3 => i_mode,
      I4 => r_oldMode,
      O => r_oldMode_i_1_n_0
    );
r_oldMode_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => w_slowClock,
      CE => '1',
      D => r_oldMode_i_1_n_0,
      Q => r_oldMode,
      R => '0'
    );
\r_state1_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \r_state1_inferred__0/i__carry_n_0\,
      CO(2) => \r_state1_inferred__0/i__carry_n_1\,
      CO(1) => \r_state1_inferred__0/i__carry_n_2\,
      CO(0) => \r_state1_inferred__0/i__carry_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => \NLW_r_state1_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_1_n_0\,
      S(2) => \i__carry_i_2_n_0\,
      S(1) => \i__carry_i_3_n_0\,
      S(0) => \i__carry_i_4_n_0\
    );
\r_state1_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_state1_inferred__0/i__carry_n_0\,
      CO(3) => \r_state1_inferred__0/i__carry__0_n_0\,
      CO(2) => \r_state1_inferred__0/i__carry__0_n_1\,
      CO(1) => \r_state1_inferred__0/i__carry__0_n_2\,
      CO(0) => \r_state1_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => \NLW_r_state1_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__0_i_1_n_0\,
      S(2) => \i__carry__0_i_2_n_0\,
      S(1) => \i__carry__0_i_3_n_0\,
      S(0) => \i__carry__0_i_4_n_0\
    );
\r_state1_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_state1_inferred__0/i__carry__0_n_0\,
      CO(3) => \r_state1_inferred__0/i__carry__1_n_0\,
      CO(2) => \r_state1_inferred__0/i__carry__1_n_1\,
      CO(1) => \r_state1_inferred__0/i__carry__1_n_2\,
      CO(0) => \r_state1_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => \NLW_r_state1_inferred__0/i__carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__1_i_1_n_0\,
      S(2) => \i__carry__1_i_2_n_0\,
      S(1) => \i__carry__1_i_3_n_0\,
      S(0) => \i__carry__1_i_4_n_0\
    );
\r_state1_inferred__0/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_state1_inferred__0/i__carry__1_n_0\,
      CO(3 downto 2) => \NLW_r_state1_inferred__0/i__carry__2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \r_state1_inferred__0/i__carry__2_n_2\,
      CO(0) => \r_state1_inferred__0/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0011",
      O(3 downto 0) => \NLW_r_state1_inferred__0/i__carry__2_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \i__carry__2_i_1_n_0\,
      S(0) => \i__carry__2_i_2_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zsys_Segment_Driver_0_0 is
  port (
    i_clk : in STD_LOGIC;
    i_blank : in STD_LOGIC;
    i_bcdData : in STD_LOGIC_VECTOR ( 39 downto 0 );
    i_mode : in STD_LOGIC;
    i_resetn : in STD_LOGIC;
    o_ledClk : out STD_LOGIC;
    o_data : out STD_LOGIC;
    o_lat : out STD_LOGIC;
    o_blank : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of zsys_Segment_Driver_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of zsys_Segment_Driver_0_0 : entity is "zsys_Segment_Driver_0_0,Segment_Driver,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of zsys_Segment_Driver_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of zsys_Segment_Driver_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of zsys_Segment_Driver_0_0 : entity is "Segment_Driver,Vivado 2019.2";
end zsys_Segment_Driver_0_0;

architecture STRUCTURE of zsys_Segment_Driver_0_0 is
  signal \^i_blank\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of i_clk : signal is "xilinx.com:signal:clock:1.0 i_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of i_clk : signal is "XIL_INTERFACENAME i_clk, ASSOCIATED_RESET i_resetn, FREQ_HZ 80000000, PHASE 0.000, CLK_DOMAIN zsys_adc_clk_n, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of i_resetn : signal is "xilinx.com:signal:reset:1.0 i_resetn RST";
  attribute X_INTERFACE_PARAMETER of i_resetn : signal is "XIL_INTERFACENAME i_resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  \^i_blank\ <= i_blank;
  o_blank <= \^i_blank\;
inst: entity work.zsys_Segment_Driver_0_0_Segment_Driver
     port map (
      i_bcdData(39 downto 0) => i_bcdData(39 downto 0),
      i_clk => i_clk,
      i_mode => i_mode,
      i_resetn => i_resetn,
      o_data => o_data,
      o_lat => o_lat,
      o_ledClk => o_ledClk
    );
end STRUCTURE;
