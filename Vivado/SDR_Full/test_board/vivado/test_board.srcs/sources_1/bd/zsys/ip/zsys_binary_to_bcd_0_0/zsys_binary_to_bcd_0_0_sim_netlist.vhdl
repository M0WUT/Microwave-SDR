-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
-- Date        : Wed Apr 21 23:23:54 2021
-- Host        : dan-Desktop running 64-bit Ubuntu 18.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/dan/Microwave-SDR/Vivado/SDR_Full/test_board/vivado/test_board.srcs/sources_1/bd/zsys/ip/zsys_binary_to_bcd_0_0/zsys_binary_to_bcd_0_0_sim_netlist.vhdl
-- Design      : zsys_binary_to_bcd_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zsys_binary_to_bcd_0_0_binary_to_bcd is
  port (
    o_bcd : out STD_LOGIC_VECTOR ( 39 downto 0 );
    i_binary : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_clk : in STD_LOGIC;
    i_resetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of zsys_binary_to_bcd_0_0_binary_to_bcd : entity is "binary_to_bcd";
end zsys_binary_to_bcd_0_0_binary_to_bcd;

architecture STRUCTURE of zsys_binary_to_bcd_0_0_binary_to_bcd is
  signal data0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal data1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal data10 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal data2 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal data3 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal data4 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal data5 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal data6 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal data7 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal data8 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal data9 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \o_bcd[39]_i_1_n_0\ : STD_LOGIC;
  signal \o_bcd[39]_i_2_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 71 downto 3 );
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal r_bitsToShift0 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \r_bitsToShift0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \r_bitsToShift0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \r_bitsToShift0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \r_bitsToShift0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \r_bitsToShift0_carry__0_n_0\ : STD_LOGIC;
  signal \r_bitsToShift0_carry__0_n_1\ : STD_LOGIC;
  signal \r_bitsToShift0_carry__0_n_2\ : STD_LOGIC;
  signal \r_bitsToShift0_carry__0_n_3\ : STD_LOGIC;
  signal \r_bitsToShift0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \r_bitsToShift0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \r_bitsToShift0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \r_bitsToShift0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \r_bitsToShift0_carry__1_n_0\ : STD_LOGIC;
  signal \r_bitsToShift0_carry__1_n_1\ : STD_LOGIC;
  signal \r_bitsToShift0_carry__1_n_2\ : STD_LOGIC;
  signal \r_bitsToShift0_carry__1_n_3\ : STD_LOGIC;
  signal \r_bitsToShift0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \r_bitsToShift0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \r_bitsToShift0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \r_bitsToShift0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \r_bitsToShift0_carry__2_n_0\ : STD_LOGIC;
  signal \r_bitsToShift0_carry__2_n_1\ : STD_LOGIC;
  signal \r_bitsToShift0_carry__2_n_2\ : STD_LOGIC;
  signal \r_bitsToShift0_carry__2_n_3\ : STD_LOGIC;
  signal \r_bitsToShift0_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \r_bitsToShift0_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \r_bitsToShift0_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \r_bitsToShift0_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \r_bitsToShift0_carry__3_n_0\ : STD_LOGIC;
  signal \r_bitsToShift0_carry__3_n_1\ : STD_LOGIC;
  signal \r_bitsToShift0_carry__3_n_2\ : STD_LOGIC;
  signal \r_bitsToShift0_carry__3_n_3\ : STD_LOGIC;
  signal \r_bitsToShift0_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \r_bitsToShift0_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \r_bitsToShift0_carry__4_i_3_n_0\ : STD_LOGIC;
  signal \r_bitsToShift0_carry__4_i_4_n_0\ : STD_LOGIC;
  signal \r_bitsToShift0_carry__4_n_0\ : STD_LOGIC;
  signal \r_bitsToShift0_carry__4_n_1\ : STD_LOGIC;
  signal \r_bitsToShift0_carry__4_n_2\ : STD_LOGIC;
  signal \r_bitsToShift0_carry__4_n_3\ : STD_LOGIC;
  signal \r_bitsToShift0_carry__5_i_1_n_0\ : STD_LOGIC;
  signal \r_bitsToShift0_carry__5_i_2_n_0\ : STD_LOGIC;
  signal \r_bitsToShift0_carry__5_i_3_n_0\ : STD_LOGIC;
  signal \r_bitsToShift0_carry__5_i_4_n_0\ : STD_LOGIC;
  signal \r_bitsToShift0_carry__5_n_0\ : STD_LOGIC;
  signal \r_bitsToShift0_carry__5_n_1\ : STD_LOGIC;
  signal \r_bitsToShift0_carry__5_n_2\ : STD_LOGIC;
  signal \r_bitsToShift0_carry__5_n_3\ : STD_LOGIC;
  signal \r_bitsToShift0_carry__6_i_1_n_0\ : STD_LOGIC;
  signal \r_bitsToShift0_carry__6_i_2_n_0\ : STD_LOGIC;
  signal \r_bitsToShift0_carry__6_i_3_n_0\ : STD_LOGIC;
  signal \r_bitsToShift0_carry__6_n_2\ : STD_LOGIC;
  signal \r_bitsToShift0_carry__6_n_3\ : STD_LOGIC;
  signal r_bitsToShift0_carry_i_1_n_0 : STD_LOGIC;
  signal r_bitsToShift0_carry_i_2_n_0 : STD_LOGIC;
  signal r_bitsToShift0_carry_i_3_n_0 : STD_LOGIC;
  signal r_bitsToShift0_carry_i_4_n_0 : STD_LOGIC;
  signal r_bitsToShift0_carry_n_0 : STD_LOGIC;
  signal r_bitsToShift0_carry_n_1 : STD_LOGIC;
  signal r_bitsToShift0_carry_n_2 : STD_LOGIC;
  signal r_bitsToShift0_carry_n_3 : STD_LOGIC;
  signal \r_bitsToShift[31]_i_10_n_0\ : STD_LOGIC;
  signal \r_bitsToShift[31]_i_11_n_0\ : STD_LOGIC;
  signal \r_bitsToShift[31]_i_1_n_0\ : STD_LOGIC;
  signal \r_bitsToShift[31]_i_3_n_0\ : STD_LOGIC;
  signal \r_bitsToShift[31]_i_4_n_0\ : STD_LOGIC;
  signal \r_bitsToShift[31]_i_5_n_0\ : STD_LOGIC;
  signal \r_bitsToShift[31]_i_6_n_0\ : STD_LOGIC;
  signal \r_bitsToShift[31]_i_7_n_0\ : STD_LOGIC;
  signal \r_bitsToShift[31]_i_8_n_0\ : STD_LOGIC;
  signal \r_bitsToShift[31]_i_9_n_0\ : STD_LOGIC;
  signal \r_digitsToCheck[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_digitsToCheck[1]_i_1_n_0\ : STD_LOGIC;
  signal \r_digitsToCheck[2]_i_1_n_0\ : STD_LOGIC;
  signal \r_digitsToCheck[3]_i_1_n_0\ : STD_LOGIC;
  signal \r_digitsToCheck[4]_i_1_n_0\ : STD_LOGIC;
  signal \r_digitsToCheck[4]_i_2_n_0\ : STD_LOGIC;
  signal \r_digitsToCheck[4]_i_3_n_0\ : STD_LOGIC;
  signal r_oldBinary : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \r_oldBinary[31]_i_1_n_0\ : STD_LOGIC;
  signal r_shifter3 : STD_LOGIC_VECTOR ( 31 downto 4 );
  signal r_shifter5 : STD_LOGIC_VECTOR ( 4 downto 3 );
  signal \r_shifter[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_shifter[10]_i_1_n_0\ : STD_LOGIC;
  signal \r_shifter[10]_i_2_n_0\ : STD_LOGIC;
  signal \r_shifter[11]_i_2_n_0\ : STD_LOGIC;
  signal \r_shifter[11]_i_3_n_0\ : STD_LOGIC;
  signal \r_shifter[12]_i_1_n_0\ : STD_LOGIC;
  signal \r_shifter[12]_i_2_n_0\ : STD_LOGIC;
  signal \r_shifter[13]_i_1_n_0\ : STD_LOGIC;
  signal \r_shifter[13]_i_2_n_0\ : STD_LOGIC;
  signal \r_shifter[14]_i_1_n_0\ : STD_LOGIC;
  signal \r_shifter[14]_i_2_n_0\ : STD_LOGIC;
  signal \r_shifter[15]_i_2_n_0\ : STD_LOGIC;
  signal \r_shifter[15]_i_3_n_0\ : STD_LOGIC;
  signal \r_shifter[16]_i_1_n_0\ : STD_LOGIC;
  signal \r_shifter[16]_i_2_n_0\ : STD_LOGIC;
  signal \r_shifter[17]_i_1_n_0\ : STD_LOGIC;
  signal \r_shifter[17]_i_2_n_0\ : STD_LOGIC;
  signal \r_shifter[18]_i_1_n_0\ : STD_LOGIC;
  signal \r_shifter[18]_i_2_n_0\ : STD_LOGIC;
  signal \r_shifter[19]_i_2_n_0\ : STD_LOGIC;
  signal \r_shifter[19]_i_3_n_0\ : STD_LOGIC;
  signal \r_shifter[1]_i_1_n_0\ : STD_LOGIC;
  signal \r_shifter[1]_i_2_n_0\ : STD_LOGIC;
  signal \r_shifter[20]_i_1_n_0\ : STD_LOGIC;
  signal \r_shifter[20]_i_2_n_0\ : STD_LOGIC;
  signal \r_shifter[21]_i_1_n_0\ : STD_LOGIC;
  signal \r_shifter[21]_i_2_n_0\ : STD_LOGIC;
  signal \r_shifter[22]_i_1_n_0\ : STD_LOGIC;
  signal \r_shifter[22]_i_2_n_0\ : STD_LOGIC;
  signal \r_shifter[23]_i_2_n_0\ : STD_LOGIC;
  signal \r_shifter[23]_i_3_n_0\ : STD_LOGIC;
  signal \r_shifter[24]_i_1_n_0\ : STD_LOGIC;
  signal \r_shifter[24]_i_2_n_0\ : STD_LOGIC;
  signal \r_shifter[25]_i_1_n_0\ : STD_LOGIC;
  signal \r_shifter[25]_i_2_n_0\ : STD_LOGIC;
  signal \r_shifter[26]_i_1_n_0\ : STD_LOGIC;
  signal \r_shifter[26]_i_2_n_0\ : STD_LOGIC;
  signal \r_shifter[27]_i_2_n_0\ : STD_LOGIC;
  signal \r_shifter[27]_i_3_n_0\ : STD_LOGIC;
  signal \r_shifter[28]_i_1_n_0\ : STD_LOGIC;
  signal \r_shifter[28]_i_2_n_0\ : STD_LOGIC;
  signal \r_shifter[29]_i_1_n_0\ : STD_LOGIC;
  signal \r_shifter[29]_i_2_n_0\ : STD_LOGIC;
  signal \r_shifter[2]_i_1_n_0\ : STD_LOGIC;
  signal \r_shifter[2]_i_2_n_0\ : STD_LOGIC;
  signal \r_shifter[30]_i_1_n_0\ : STD_LOGIC;
  signal \r_shifter[30]_i_2_n_0\ : STD_LOGIC;
  signal \r_shifter[31]_i_2_n_0\ : STD_LOGIC;
  signal \r_shifter[31]_i_3_n_0\ : STD_LOGIC;
  signal \r_shifter[31]_i_4_n_0\ : STD_LOGIC;
  signal \r_shifter[31]_i_5_n_0\ : STD_LOGIC;
  signal \r_shifter[32]_i_1_n_0\ : STD_LOGIC;
  signal \r_shifter[33]_i_1_n_0\ : STD_LOGIC;
  signal \r_shifter[34]_i_1_n_0\ : STD_LOGIC;
  signal \r_shifter[35]_i_2_n_0\ : STD_LOGIC;
  signal \r_shifter[35]_i_3_n_0\ : STD_LOGIC;
  signal \r_shifter[36]_i_1_n_0\ : STD_LOGIC;
  signal \r_shifter[37]_i_1_n_0\ : STD_LOGIC;
  signal \r_shifter[38]_i_1_n_0\ : STD_LOGIC;
  signal \r_shifter[39]_i_2_n_0\ : STD_LOGIC;
  signal \r_shifter[39]_i_3_n_0\ : STD_LOGIC;
  signal \r_shifter[39]_i_4_n_0\ : STD_LOGIC;
  signal \r_shifter[3]_i_2_n_0\ : STD_LOGIC;
  signal \r_shifter[3]_i_3_n_0\ : STD_LOGIC;
  signal \r_shifter[40]_i_1_n_0\ : STD_LOGIC;
  signal \r_shifter[41]_i_1_n_0\ : STD_LOGIC;
  signal \r_shifter[42]_i_1_n_0\ : STD_LOGIC;
  signal \r_shifter[43]_i_2_n_0\ : STD_LOGIC;
  signal \r_shifter[43]_i_3_n_0\ : STD_LOGIC;
  signal \r_shifter[44]_i_1_n_0\ : STD_LOGIC;
  signal \r_shifter[45]_i_1_n_0\ : STD_LOGIC;
  signal \r_shifter[46]_i_1_n_0\ : STD_LOGIC;
  signal \r_shifter[47]_i_2_n_0\ : STD_LOGIC;
  signal \r_shifter[47]_i_3_n_0\ : STD_LOGIC;
  signal \r_shifter[48]_i_1_n_0\ : STD_LOGIC;
  signal \r_shifter[49]_i_1_n_0\ : STD_LOGIC;
  signal \r_shifter[4]_i_1_n_0\ : STD_LOGIC;
  signal \r_shifter[4]_i_2_n_0\ : STD_LOGIC;
  signal \r_shifter[50]_i_1_n_0\ : STD_LOGIC;
  signal \r_shifter[51]_i_2_n_0\ : STD_LOGIC;
  signal \r_shifter[51]_i_3_n_0\ : STD_LOGIC;
  signal \r_shifter[52]_i_1_n_0\ : STD_LOGIC;
  signal \r_shifter[53]_i_1_n_0\ : STD_LOGIC;
  signal \r_shifter[54]_i_1_n_0\ : STD_LOGIC;
  signal \r_shifter[55]_i_2_n_0\ : STD_LOGIC;
  signal \r_shifter[55]_i_3_n_0\ : STD_LOGIC;
  signal \r_shifter[56]_i_1_n_0\ : STD_LOGIC;
  signal \r_shifter[57]_i_1_n_0\ : STD_LOGIC;
  signal \r_shifter[58]_i_1_n_0\ : STD_LOGIC;
  signal \r_shifter[59]_i_2_n_0\ : STD_LOGIC;
  signal \r_shifter[59]_i_3_n_0\ : STD_LOGIC;
  signal \r_shifter[59]_i_4_n_0\ : STD_LOGIC;
  signal \r_shifter[5]_i_1_n_0\ : STD_LOGIC;
  signal \r_shifter[5]_i_2_n_0\ : STD_LOGIC;
  signal \r_shifter[60]_i_1_n_0\ : STD_LOGIC;
  signal \r_shifter[61]_i_1_n_0\ : STD_LOGIC;
  signal \r_shifter[62]_i_1_n_0\ : STD_LOGIC;
  signal \r_shifter[63]_i_2_n_0\ : STD_LOGIC;
  signal \r_shifter[63]_i_3_n_0\ : STD_LOGIC;
  signal \r_shifter[63]_i_4_n_0\ : STD_LOGIC;
  signal \r_shifter[63]_i_5_n_0\ : STD_LOGIC;
  signal \r_shifter[63]_i_6_n_0\ : STD_LOGIC;
  signal \r_shifter[63]_i_7_n_0\ : STD_LOGIC;
  signal \r_shifter[63]_i_8_n_0\ : STD_LOGIC;
  signal \r_shifter[64]_i_1_n_0\ : STD_LOGIC;
  signal \r_shifter[65]_i_1_n_0\ : STD_LOGIC;
  signal \r_shifter[66]_i_1_n_0\ : STD_LOGIC;
  signal \r_shifter[67]_i_2_n_0\ : STD_LOGIC;
  signal \r_shifter[67]_i_3_n_0\ : STD_LOGIC;
  signal \r_shifter[67]_i_4_n_0\ : STD_LOGIC;
  signal \r_shifter[68]_i_1_n_0\ : STD_LOGIC;
  signal \r_shifter[68]_i_2_n_0\ : STD_LOGIC;
  signal \r_shifter[69]_i_1_n_0\ : STD_LOGIC;
  signal \r_shifter[69]_i_2_n_0\ : STD_LOGIC;
  signal \r_shifter[6]_i_1_n_0\ : STD_LOGIC;
  signal \r_shifter[6]_i_2_n_0\ : STD_LOGIC;
  signal \r_shifter[70]_i_10_n_0\ : STD_LOGIC;
  signal \r_shifter[70]_i_11_n_0\ : STD_LOGIC;
  signal \r_shifter[70]_i_12_n_0\ : STD_LOGIC;
  signal \r_shifter[70]_i_13_n_0\ : STD_LOGIC;
  signal \r_shifter[70]_i_14_n_0\ : STD_LOGIC;
  signal \r_shifter[70]_i_1_n_0\ : STD_LOGIC;
  signal \r_shifter[70]_i_2_n_0\ : STD_LOGIC;
  signal \r_shifter[70]_i_3_n_0\ : STD_LOGIC;
  signal \r_shifter[70]_i_4_n_0\ : STD_LOGIC;
  signal \r_shifter[70]_i_5_n_0\ : STD_LOGIC;
  signal \r_shifter[70]_i_6_n_0\ : STD_LOGIC;
  signal \r_shifter[70]_i_7_n_0\ : STD_LOGIC;
  signal \r_shifter[70]_i_8_n_0\ : STD_LOGIC;
  signal \r_shifter[70]_i_9_n_0\ : STD_LOGIC;
  signal \r_shifter[71]_i_11_n_0\ : STD_LOGIC;
  signal \r_shifter[71]_i_13_n_0\ : STD_LOGIC;
  signal \r_shifter[71]_i_14_n_0\ : STD_LOGIC;
  signal \r_shifter[71]_i_15_n_0\ : STD_LOGIC;
  signal \r_shifter[71]_i_16_n_0\ : STD_LOGIC;
  signal \r_shifter[71]_i_17_n_0\ : STD_LOGIC;
  signal \r_shifter[71]_i_18_n_0\ : STD_LOGIC;
  signal \r_shifter[71]_i_19_n_0\ : STD_LOGIC;
  signal \r_shifter[71]_i_20_n_0\ : STD_LOGIC;
  signal \r_shifter[71]_i_21_n_0\ : STD_LOGIC;
  signal \r_shifter[71]_i_22_n_0\ : STD_LOGIC;
  signal \r_shifter[71]_i_23_n_0\ : STD_LOGIC;
  signal \r_shifter[71]_i_24_n_0\ : STD_LOGIC;
  signal \r_shifter[71]_i_25_n_0\ : STD_LOGIC;
  signal \r_shifter[71]_i_2_n_0\ : STD_LOGIC;
  signal \r_shifter[71]_i_32_n_0\ : STD_LOGIC;
  signal \r_shifter[71]_i_33_n_0\ : STD_LOGIC;
  signal \r_shifter[71]_i_34_n_0\ : STD_LOGIC;
  signal \r_shifter[71]_i_35_n_0\ : STD_LOGIC;
  signal \r_shifter[71]_i_36_n_0\ : STD_LOGIC;
  signal \r_shifter[71]_i_37_n_0\ : STD_LOGIC;
  signal \r_shifter[71]_i_38_n_0\ : STD_LOGIC;
  signal \r_shifter[71]_i_39_n_0\ : STD_LOGIC;
  signal \r_shifter[71]_i_3_n_0\ : STD_LOGIC;
  signal \r_shifter[71]_i_40_n_0\ : STD_LOGIC;
  signal \r_shifter[71]_i_41_n_0\ : STD_LOGIC;
  signal \r_shifter[71]_i_42_n_0\ : STD_LOGIC;
  signal \r_shifter[71]_i_43_n_0\ : STD_LOGIC;
  signal \r_shifter[71]_i_44_n_0\ : STD_LOGIC;
  signal \r_shifter[71]_i_45_n_0\ : STD_LOGIC;
  signal \r_shifter[71]_i_46_n_0\ : STD_LOGIC;
  signal \r_shifter[71]_i_47_n_0\ : STD_LOGIC;
  signal \r_shifter[71]_i_48_n_0\ : STD_LOGIC;
  signal \r_shifter[71]_i_49_n_0\ : STD_LOGIC;
  signal \r_shifter[71]_i_4_n_0\ : STD_LOGIC;
  signal \r_shifter[71]_i_50_n_0\ : STD_LOGIC;
  signal \r_shifter[71]_i_51_n_0\ : STD_LOGIC;
  signal \r_shifter[71]_i_52_n_0\ : STD_LOGIC;
  signal \r_shifter[71]_i_53_n_0\ : STD_LOGIC;
  signal \r_shifter[71]_i_54_n_0\ : STD_LOGIC;
  signal \r_shifter[71]_i_55_n_0\ : STD_LOGIC;
  signal \r_shifter[71]_i_5_n_0\ : STD_LOGIC;
  signal \r_shifter[71]_i_7_n_0\ : STD_LOGIC;
  signal \r_shifter[71]_i_8_n_0\ : STD_LOGIC;
  signal \r_shifter[71]_i_9_n_0\ : STD_LOGIC;
  signal \r_shifter[7]_i_2_n_0\ : STD_LOGIC;
  signal \r_shifter[7]_i_3_n_0\ : STD_LOGIC;
  signal \r_shifter[8]_i_1_n_0\ : STD_LOGIC;
  signal \r_shifter[8]_i_2_n_0\ : STD_LOGIC;
  signal \r_shifter[9]_i_1_n_0\ : STD_LOGIC;
  signal \r_shifter[9]_i_2_n_0\ : STD_LOGIC;
  signal \r_shifter_reg[71]_i_26_n_0\ : STD_LOGIC;
  signal \r_shifter_reg[71]_i_26_n_1\ : STD_LOGIC;
  signal \r_shifter_reg[71]_i_26_n_2\ : STD_LOGIC;
  signal \r_shifter_reg[71]_i_26_n_3\ : STD_LOGIC;
  signal \r_shifter_reg[71]_i_27_n_1\ : STD_LOGIC;
  signal \r_shifter_reg[71]_i_27_n_2\ : STD_LOGIC;
  signal \r_shifter_reg[71]_i_27_n_3\ : STD_LOGIC;
  signal \r_shifter_reg[71]_i_28_n_0\ : STD_LOGIC;
  signal \r_shifter_reg[71]_i_28_n_1\ : STD_LOGIC;
  signal \r_shifter_reg[71]_i_28_n_2\ : STD_LOGIC;
  signal \r_shifter_reg[71]_i_28_n_3\ : STD_LOGIC;
  signal \r_shifter_reg[71]_i_29_n_0\ : STD_LOGIC;
  signal \r_shifter_reg[71]_i_29_n_1\ : STD_LOGIC;
  signal \r_shifter_reg[71]_i_29_n_2\ : STD_LOGIC;
  signal \r_shifter_reg[71]_i_29_n_3\ : STD_LOGIC;
  signal \r_shifter_reg[71]_i_30_n_0\ : STD_LOGIC;
  signal \r_shifter_reg[71]_i_30_n_1\ : STD_LOGIC;
  signal \r_shifter_reg[71]_i_30_n_2\ : STD_LOGIC;
  signal \r_shifter_reg[71]_i_30_n_3\ : STD_LOGIC;
  signal \r_shifter_reg[71]_i_31_n_0\ : STD_LOGIC;
  signal \r_shifter_reg[71]_i_31_n_1\ : STD_LOGIC;
  signal \r_shifter_reg[71]_i_31_n_2\ : STD_LOGIC;
  signal \r_shifter_reg[71]_i_31_n_3\ : STD_LOGIC;
  signal \r_shifter_reg[71]_i_6_n_0\ : STD_LOGIC;
  signal \r_shifter_reg[71]_i_6_n_1\ : STD_LOGIC;
  signal \r_shifter_reg[71]_i_6_n_2\ : STD_LOGIC;
  signal \r_shifter_reg[71]_i_6_n_3\ : STD_LOGIC;
  signal \r_shifter_reg_n_0_[0]\ : STD_LOGIC;
  signal \r_shifter_reg_n_0_[10]\ : STD_LOGIC;
  signal \r_shifter_reg_n_0_[11]\ : STD_LOGIC;
  signal \r_shifter_reg_n_0_[12]\ : STD_LOGIC;
  signal \r_shifter_reg_n_0_[13]\ : STD_LOGIC;
  signal \r_shifter_reg_n_0_[14]\ : STD_LOGIC;
  signal \r_shifter_reg_n_0_[15]\ : STD_LOGIC;
  signal \r_shifter_reg_n_0_[16]\ : STD_LOGIC;
  signal \r_shifter_reg_n_0_[17]\ : STD_LOGIC;
  signal \r_shifter_reg_n_0_[18]\ : STD_LOGIC;
  signal \r_shifter_reg_n_0_[19]\ : STD_LOGIC;
  signal \r_shifter_reg_n_0_[1]\ : STD_LOGIC;
  signal \r_shifter_reg_n_0_[20]\ : STD_LOGIC;
  signal \r_shifter_reg_n_0_[21]\ : STD_LOGIC;
  signal \r_shifter_reg_n_0_[22]\ : STD_LOGIC;
  signal \r_shifter_reg_n_0_[23]\ : STD_LOGIC;
  signal \r_shifter_reg_n_0_[24]\ : STD_LOGIC;
  signal \r_shifter_reg_n_0_[25]\ : STD_LOGIC;
  signal \r_shifter_reg_n_0_[26]\ : STD_LOGIC;
  signal \r_shifter_reg_n_0_[27]\ : STD_LOGIC;
  signal \r_shifter_reg_n_0_[2]\ : STD_LOGIC;
  signal \r_shifter_reg_n_0_[3]\ : STD_LOGIC;
  signal \r_shifter_reg_n_0_[4]\ : STD_LOGIC;
  signal \r_shifter_reg_n_0_[5]\ : STD_LOGIC;
  signal \r_shifter_reg_n_0_[6]\ : STD_LOGIC;
  signal \r_shifter_reg_n_0_[7]\ : STD_LOGIC;
  signal \r_shifter_reg_n_0_[8]\ : STD_LOGIC;
  signal \r_shifter_reg_n_0_[9]\ : STD_LOGIC;
  signal r_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal r_state0 : STD_LOGIC;
  signal \r_state0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \r_state0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \r_state0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \r_state0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \r_state0_carry__0_n_0\ : STD_LOGIC;
  signal \r_state0_carry__0_n_1\ : STD_LOGIC;
  signal \r_state0_carry__0_n_2\ : STD_LOGIC;
  signal \r_state0_carry__0_n_3\ : STD_LOGIC;
  signal \r_state0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \r_state0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \r_state0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \r_state0_carry__1_n_1\ : STD_LOGIC;
  signal \r_state0_carry__1_n_2\ : STD_LOGIC;
  signal \r_state0_carry__1_n_3\ : STD_LOGIC;
  signal r_state0_carry_i_1_n_0 : STD_LOGIC;
  signal r_state0_carry_i_2_n_0 : STD_LOGIC;
  signal r_state0_carry_i_3_n_0 : STD_LOGIC;
  signal r_state0_carry_i_4_n_0 : STD_LOGIC;
  signal r_state0_carry_n_0 : STD_LOGIC;
  signal r_state0_carry_n_1 : STD_LOGIC;
  signal r_state0_carry_n_2 : STD_LOGIC;
  signal r_state0_carry_n_3 : STD_LOGIC;
  signal \r_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_state[1]_i_2_n_0\ : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \sel0__0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_r_bitsToShift0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_r_bitsToShift0_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_r_shifter_reg[71]_i_27_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_r_state0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_r_state0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_r_state0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_r_state0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \r_bitsToShift[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \r_bitsToShift[10]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \r_bitsToShift[11]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \r_bitsToShift[12]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \r_bitsToShift[13]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \r_bitsToShift[14]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \r_bitsToShift[15]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \r_bitsToShift[16]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \r_bitsToShift[17]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \r_bitsToShift[18]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \r_bitsToShift[19]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \r_bitsToShift[1]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \r_bitsToShift[20]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \r_bitsToShift[21]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \r_bitsToShift[22]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \r_bitsToShift[23]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \r_bitsToShift[24]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \r_bitsToShift[25]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \r_bitsToShift[26]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \r_bitsToShift[27]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \r_bitsToShift[28]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \r_bitsToShift[29]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \r_bitsToShift[2]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \r_bitsToShift[30]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \r_bitsToShift[31]_i_10\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \r_bitsToShift[31]_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \r_bitsToShift[3]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \r_bitsToShift[4]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \r_bitsToShift[5]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \r_bitsToShift[6]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \r_bitsToShift[7]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \r_bitsToShift[8]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \r_bitsToShift[9]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \r_digitsToCheck[0]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \r_digitsToCheck[1]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \r_digitsToCheck[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \r_digitsToCheck[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \r_digitsToCheck[4]_i_3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \r_shifter[10]_i_2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \r_shifter[11]_i_3\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \r_shifter[12]_i_2\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \r_shifter[13]_i_2\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \r_shifter[14]_i_2\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \r_shifter[15]_i_3\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \r_shifter[16]_i_2\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \r_shifter[17]_i_2\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \r_shifter[18]_i_2\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \r_shifter[19]_i_3\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \r_shifter[20]_i_2\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \r_shifter[21]_i_2\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \r_shifter[22]_i_2\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \r_shifter[23]_i_3\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \r_shifter[24]_i_2\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \r_shifter[25]_i_2\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \r_shifter[26]_i_2\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \r_shifter[27]_i_3\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \r_shifter[28]_i_2\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \r_shifter[29]_i_2\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \r_shifter[2]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \r_shifter[30]_i_2\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \r_shifter[31]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \r_shifter[31]_i_4\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \r_shifter[31]_i_5\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \r_shifter[35]_i_3\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \r_shifter[39]_i_3\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \r_shifter[39]_i_4\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \r_shifter[43]_i_3\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \r_shifter[47]_i_3\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \r_shifter[51]_i_3\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \r_shifter[55]_i_3\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \r_shifter[59]_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \r_shifter[63]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \r_shifter[63]_i_4\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \r_shifter[63]_i_5\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \r_shifter[63]_i_6\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \r_shifter[63]_i_8\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \r_shifter[67]_i_3\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \r_shifter[67]_i_4\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \r_shifter[68]_i_2\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \r_shifter[69]_i_2\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \r_shifter[6]_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \r_shifter[70]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \r_shifter[71]_i_15\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \r_shifter[71]_i_3\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \r_shifter[71]_i_4\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \r_shifter[71]_i_5\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \r_shifter[71]_i_7\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \r_shifter[71]_i_8\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \r_shifter[8]_i_2\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \r_shifter[9]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \r_state[0]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \r_state[1]_i_2\ : label is "soft_lutpair13";
begin
\o_bcd[39]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => r_state(1),
      I1 => r_state(0),
      O => \o_bcd[39]_i_1_n_0\
    );
\o_bcd[39]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_resetn,
      O => \o_bcd[39]_i_2_n_0\
    );
\o_bcd_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => \o_bcd[39]_i_1_n_0\,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => data1(0),
      Q => o_bcd(0)
    );
\o_bcd_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => \o_bcd[39]_i_1_n_0\,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => data3(2),
      Q => o_bcd(10)
    );
\o_bcd_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => \o_bcd[39]_i_1_n_0\,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => data3(3),
      Q => o_bcd(11)
    );
\o_bcd_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => \o_bcd[39]_i_1_n_0\,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => data4(0),
      Q => o_bcd(12)
    );
\o_bcd_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => \o_bcd[39]_i_1_n_0\,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => data4(1),
      Q => o_bcd(13)
    );
\o_bcd_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => \o_bcd[39]_i_1_n_0\,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => data4(2),
      Q => o_bcd(14)
    );
\o_bcd_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => \o_bcd[39]_i_1_n_0\,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => data4(3),
      Q => o_bcd(15)
    );
\o_bcd_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => \o_bcd[39]_i_1_n_0\,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => data5(0),
      Q => o_bcd(16)
    );
\o_bcd_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => \o_bcd[39]_i_1_n_0\,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => data5(1),
      Q => o_bcd(17)
    );
\o_bcd_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => \o_bcd[39]_i_1_n_0\,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => data5(2),
      Q => o_bcd(18)
    );
\o_bcd_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => \o_bcd[39]_i_1_n_0\,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => data5(3),
      Q => o_bcd(19)
    );
\o_bcd_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => \o_bcd[39]_i_1_n_0\,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => data1(1),
      Q => o_bcd(1)
    );
\o_bcd_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => \o_bcd[39]_i_1_n_0\,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => data6(0),
      Q => o_bcd(20)
    );
\o_bcd_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => \o_bcd[39]_i_1_n_0\,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => data6(1),
      Q => o_bcd(21)
    );
\o_bcd_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => \o_bcd[39]_i_1_n_0\,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => data6(2),
      Q => o_bcd(22)
    );
\o_bcd_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => \o_bcd[39]_i_1_n_0\,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => data6(3),
      Q => o_bcd(23)
    );
\o_bcd_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => \o_bcd[39]_i_1_n_0\,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => data7(0),
      Q => o_bcd(24)
    );
\o_bcd_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => \o_bcd[39]_i_1_n_0\,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => data7(1),
      Q => o_bcd(25)
    );
\o_bcd_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => \o_bcd[39]_i_1_n_0\,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => data7(2),
      Q => o_bcd(26)
    );
\o_bcd_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => \o_bcd[39]_i_1_n_0\,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => data7(3),
      Q => o_bcd(27)
    );
\o_bcd_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => \o_bcd[39]_i_1_n_0\,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => data8(0),
      Q => o_bcd(28)
    );
\o_bcd_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => \o_bcd[39]_i_1_n_0\,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => data8(1),
      Q => o_bcd(29)
    );
\o_bcd_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => \o_bcd[39]_i_1_n_0\,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => data1(2),
      Q => o_bcd(2)
    );
\o_bcd_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => \o_bcd[39]_i_1_n_0\,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => data8(2),
      Q => o_bcd(30)
    );
\o_bcd_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => \o_bcd[39]_i_1_n_0\,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => data8(3),
      Q => o_bcd(31)
    );
\o_bcd_reg[32]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => \o_bcd[39]_i_1_n_0\,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => data9(0),
      Q => o_bcd(32)
    );
\o_bcd_reg[33]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => \o_bcd[39]_i_1_n_0\,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => data9(1),
      Q => o_bcd(33)
    );
\o_bcd_reg[34]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => \o_bcd[39]_i_1_n_0\,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => data9(2),
      Q => o_bcd(34)
    );
\o_bcd_reg[35]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => \o_bcd[39]_i_1_n_0\,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => data9(3),
      Q => o_bcd(35)
    );
\o_bcd_reg[36]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => \o_bcd[39]_i_1_n_0\,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => data10(0),
      Q => o_bcd(36)
    );
\o_bcd_reg[37]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => \o_bcd[39]_i_1_n_0\,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => data10(1),
      Q => o_bcd(37)
    );
\o_bcd_reg[38]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => \o_bcd[39]_i_1_n_0\,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => data10(2),
      Q => o_bcd(38)
    );
\o_bcd_reg[39]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => \o_bcd[39]_i_1_n_0\,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => data10(3),
      Q => o_bcd(39)
    );
\o_bcd_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => \o_bcd[39]_i_1_n_0\,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => data1(3),
      Q => o_bcd(3)
    );
\o_bcd_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => \o_bcd[39]_i_1_n_0\,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => data2(0),
      Q => o_bcd(4)
    );
\o_bcd_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => \o_bcd[39]_i_1_n_0\,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => data2(1),
      Q => o_bcd(5)
    );
\o_bcd_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => \o_bcd[39]_i_1_n_0\,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => data2(2),
      Q => o_bcd(6)
    );
\o_bcd_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => \o_bcd[39]_i_1_n_0\,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => data2(3),
      Q => o_bcd(7)
    );
\o_bcd_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => \o_bcd[39]_i_1_n_0\,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => data3(0),
      Q => o_bcd(8)
    );
\o_bcd_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => \o_bcd[39]_i_1_n_0\,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => data3(1),
      Q => o_bcd(9)
    );
r_bitsToShift0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => r_bitsToShift0_carry_n_0,
      CO(2) => r_bitsToShift0_carry_n_1,
      CO(1) => r_bitsToShift0_carry_n_2,
      CO(0) => r_bitsToShift0_carry_n_3,
      CYINIT => \sel0__0\(0),
      DI(3 downto 0) => \sel0__0\(4 downto 1),
      O(3 downto 0) => r_bitsToShift0(4 downto 1),
      S(3) => r_bitsToShift0_carry_i_1_n_0,
      S(2) => r_bitsToShift0_carry_i_2_n_0,
      S(1) => r_bitsToShift0_carry_i_3_n_0,
      S(0) => r_bitsToShift0_carry_i_4_n_0
    );
\r_bitsToShift0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => r_bitsToShift0_carry_n_0,
      CO(3) => \r_bitsToShift0_carry__0_n_0\,
      CO(2) => \r_bitsToShift0_carry__0_n_1\,
      CO(1) => \r_bitsToShift0_carry__0_n_2\,
      CO(0) => \r_bitsToShift0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \sel0__0\(8 downto 5),
      O(3 downto 0) => r_bitsToShift0(8 downto 5),
      S(3) => \r_bitsToShift0_carry__0_i_1_n_0\,
      S(2) => \r_bitsToShift0_carry__0_i_2_n_0\,
      S(1) => \r_bitsToShift0_carry__0_i_3_n_0\,
      S(0) => \r_bitsToShift0_carry__0_i_4_n_0\
    );
\r_bitsToShift0_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sel0__0\(8),
      O => \r_bitsToShift0_carry__0_i_1_n_0\
    );
\r_bitsToShift0_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sel0__0\(7),
      O => \r_bitsToShift0_carry__0_i_2_n_0\
    );
\r_bitsToShift0_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sel0__0\(6),
      O => \r_bitsToShift0_carry__0_i_3_n_0\
    );
\r_bitsToShift0_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sel0__0\(5),
      O => \r_bitsToShift0_carry__0_i_4_n_0\
    );
\r_bitsToShift0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_bitsToShift0_carry__0_n_0\,
      CO(3) => \r_bitsToShift0_carry__1_n_0\,
      CO(2) => \r_bitsToShift0_carry__1_n_1\,
      CO(1) => \r_bitsToShift0_carry__1_n_2\,
      CO(0) => \r_bitsToShift0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \sel0__0\(12 downto 9),
      O(3 downto 0) => r_bitsToShift0(12 downto 9),
      S(3) => \r_bitsToShift0_carry__1_i_1_n_0\,
      S(2) => \r_bitsToShift0_carry__1_i_2_n_0\,
      S(1) => \r_bitsToShift0_carry__1_i_3_n_0\,
      S(0) => \r_bitsToShift0_carry__1_i_4_n_0\
    );
\r_bitsToShift0_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sel0__0\(12),
      O => \r_bitsToShift0_carry__1_i_1_n_0\
    );
\r_bitsToShift0_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sel0__0\(11),
      O => \r_bitsToShift0_carry__1_i_2_n_0\
    );
\r_bitsToShift0_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sel0__0\(10),
      O => \r_bitsToShift0_carry__1_i_3_n_0\
    );
\r_bitsToShift0_carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sel0__0\(9),
      O => \r_bitsToShift0_carry__1_i_4_n_0\
    );
\r_bitsToShift0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_bitsToShift0_carry__1_n_0\,
      CO(3) => \r_bitsToShift0_carry__2_n_0\,
      CO(2) => \r_bitsToShift0_carry__2_n_1\,
      CO(1) => \r_bitsToShift0_carry__2_n_2\,
      CO(0) => \r_bitsToShift0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \sel0__0\(16 downto 13),
      O(3 downto 0) => r_bitsToShift0(16 downto 13),
      S(3) => \r_bitsToShift0_carry__2_i_1_n_0\,
      S(2) => \r_bitsToShift0_carry__2_i_2_n_0\,
      S(1) => \r_bitsToShift0_carry__2_i_3_n_0\,
      S(0) => \r_bitsToShift0_carry__2_i_4_n_0\
    );
\r_bitsToShift0_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sel0__0\(16),
      O => \r_bitsToShift0_carry__2_i_1_n_0\
    );
\r_bitsToShift0_carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sel0__0\(15),
      O => \r_bitsToShift0_carry__2_i_2_n_0\
    );
\r_bitsToShift0_carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sel0__0\(14),
      O => \r_bitsToShift0_carry__2_i_3_n_0\
    );
\r_bitsToShift0_carry__2_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sel0__0\(13),
      O => \r_bitsToShift0_carry__2_i_4_n_0\
    );
\r_bitsToShift0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_bitsToShift0_carry__2_n_0\,
      CO(3) => \r_bitsToShift0_carry__3_n_0\,
      CO(2) => \r_bitsToShift0_carry__3_n_1\,
      CO(1) => \r_bitsToShift0_carry__3_n_2\,
      CO(0) => \r_bitsToShift0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \sel0__0\(20 downto 17),
      O(3 downto 0) => r_bitsToShift0(20 downto 17),
      S(3) => \r_bitsToShift0_carry__3_i_1_n_0\,
      S(2) => \r_bitsToShift0_carry__3_i_2_n_0\,
      S(1) => \r_bitsToShift0_carry__3_i_3_n_0\,
      S(0) => \r_bitsToShift0_carry__3_i_4_n_0\
    );
\r_bitsToShift0_carry__3_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sel0__0\(20),
      O => \r_bitsToShift0_carry__3_i_1_n_0\
    );
\r_bitsToShift0_carry__3_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sel0__0\(19),
      O => \r_bitsToShift0_carry__3_i_2_n_0\
    );
\r_bitsToShift0_carry__3_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sel0__0\(18),
      O => \r_bitsToShift0_carry__3_i_3_n_0\
    );
\r_bitsToShift0_carry__3_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sel0__0\(17),
      O => \r_bitsToShift0_carry__3_i_4_n_0\
    );
\r_bitsToShift0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_bitsToShift0_carry__3_n_0\,
      CO(3) => \r_bitsToShift0_carry__4_n_0\,
      CO(2) => \r_bitsToShift0_carry__4_n_1\,
      CO(1) => \r_bitsToShift0_carry__4_n_2\,
      CO(0) => \r_bitsToShift0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \sel0__0\(24 downto 21),
      O(3 downto 0) => r_bitsToShift0(24 downto 21),
      S(3) => \r_bitsToShift0_carry__4_i_1_n_0\,
      S(2) => \r_bitsToShift0_carry__4_i_2_n_0\,
      S(1) => \r_bitsToShift0_carry__4_i_3_n_0\,
      S(0) => \r_bitsToShift0_carry__4_i_4_n_0\
    );
\r_bitsToShift0_carry__4_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sel0__0\(24),
      O => \r_bitsToShift0_carry__4_i_1_n_0\
    );
\r_bitsToShift0_carry__4_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sel0__0\(23),
      O => \r_bitsToShift0_carry__4_i_2_n_0\
    );
\r_bitsToShift0_carry__4_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sel0__0\(22),
      O => \r_bitsToShift0_carry__4_i_3_n_0\
    );
\r_bitsToShift0_carry__4_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sel0__0\(21),
      O => \r_bitsToShift0_carry__4_i_4_n_0\
    );
\r_bitsToShift0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_bitsToShift0_carry__4_n_0\,
      CO(3) => \r_bitsToShift0_carry__5_n_0\,
      CO(2) => \r_bitsToShift0_carry__5_n_1\,
      CO(1) => \r_bitsToShift0_carry__5_n_2\,
      CO(0) => \r_bitsToShift0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \sel0__0\(28 downto 25),
      O(3 downto 0) => r_bitsToShift0(28 downto 25),
      S(3) => \r_bitsToShift0_carry__5_i_1_n_0\,
      S(2) => \r_bitsToShift0_carry__5_i_2_n_0\,
      S(1) => \r_bitsToShift0_carry__5_i_3_n_0\,
      S(0) => \r_bitsToShift0_carry__5_i_4_n_0\
    );
\r_bitsToShift0_carry__5_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sel0__0\(28),
      O => \r_bitsToShift0_carry__5_i_1_n_0\
    );
\r_bitsToShift0_carry__5_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sel0__0\(27),
      O => \r_bitsToShift0_carry__5_i_2_n_0\
    );
\r_bitsToShift0_carry__5_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sel0__0\(26),
      O => \r_bitsToShift0_carry__5_i_3_n_0\
    );
\r_bitsToShift0_carry__5_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sel0__0\(25),
      O => \r_bitsToShift0_carry__5_i_4_n_0\
    );
\r_bitsToShift0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_bitsToShift0_carry__5_n_0\,
      CO(3 downto 2) => \NLW_r_bitsToShift0_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \r_bitsToShift0_carry__6_n_2\,
      CO(0) => \r_bitsToShift0_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => \sel0__0\(30 downto 29),
      O(3) => \NLW_r_bitsToShift0_carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => r_bitsToShift0(31 downto 29),
      S(3) => '0',
      S(2) => \r_bitsToShift0_carry__6_i_1_n_0\,
      S(1) => \r_bitsToShift0_carry__6_i_2_n_0\,
      S(0) => \r_bitsToShift0_carry__6_i_3_n_0\
    );
\r_bitsToShift0_carry__6_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sel0__0\(31),
      O => \r_bitsToShift0_carry__6_i_1_n_0\
    );
\r_bitsToShift0_carry__6_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sel0__0\(30),
      O => \r_bitsToShift0_carry__6_i_2_n_0\
    );
\r_bitsToShift0_carry__6_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sel0__0\(29),
      O => \r_bitsToShift0_carry__6_i_3_n_0\
    );
r_bitsToShift0_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sel0__0\(4),
      O => r_bitsToShift0_carry_i_1_n_0
    );
r_bitsToShift0_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sel0__0\(3),
      O => r_bitsToShift0_carry_i_2_n_0
    );
r_bitsToShift0_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sel0__0\(2),
      O => r_bitsToShift0_carry_i_3_n_0
    );
r_bitsToShift0_carry_i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sel0__0\(1),
      O => r_bitsToShift0_carry_i_4_n_0
    );
\r_bitsToShift[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => r_state(0),
      I1 => \sel0__0\(0),
      O => p_1_in(0)
    );
\r_bitsToShift[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => r_state(0),
      I1 => r_bitsToShift0(10),
      O => p_1_in(10)
    );
\r_bitsToShift[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => r_state(0),
      I1 => r_bitsToShift0(11),
      O => p_1_in(11)
    );
\r_bitsToShift[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => r_state(0),
      I1 => r_bitsToShift0(12),
      O => p_1_in(12)
    );
\r_bitsToShift[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => r_state(0),
      I1 => r_bitsToShift0(13),
      O => p_1_in(13)
    );
\r_bitsToShift[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => r_state(0),
      I1 => r_bitsToShift0(14),
      O => p_1_in(14)
    );
\r_bitsToShift[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => r_state(0),
      I1 => r_bitsToShift0(15),
      O => p_1_in(15)
    );
\r_bitsToShift[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => r_state(0),
      I1 => r_bitsToShift0(16),
      O => p_1_in(16)
    );
\r_bitsToShift[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => r_state(0),
      I1 => r_bitsToShift0(17),
      O => p_1_in(17)
    );
\r_bitsToShift[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => r_state(0),
      I1 => r_bitsToShift0(18),
      O => p_1_in(18)
    );
\r_bitsToShift[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => r_state(0),
      I1 => r_bitsToShift0(19),
      O => p_1_in(19)
    );
\r_bitsToShift[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => r_bitsToShift0(1),
      I1 => r_state(0),
      O => p_1_in(1)
    );
\r_bitsToShift[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => r_state(0),
      I1 => r_bitsToShift0(20),
      O => p_1_in(20)
    );
\r_bitsToShift[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => r_state(0),
      I1 => r_bitsToShift0(21),
      O => p_1_in(21)
    );
\r_bitsToShift[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => r_state(0),
      I1 => r_bitsToShift0(22),
      O => p_1_in(22)
    );
\r_bitsToShift[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => r_state(0),
      I1 => r_bitsToShift0(23),
      O => p_1_in(23)
    );
\r_bitsToShift[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => r_state(0),
      I1 => r_bitsToShift0(24),
      O => p_1_in(24)
    );
\r_bitsToShift[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => r_state(0),
      I1 => r_bitsToShift0(25),
      O => p_1_in(25)
    );
\r_bitsToShift[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => r_state(0),
      I1 => r_bitsToShift0(26),
      O => p_1_in(26)
    );
\r_bitsToShift[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => r_state(0),
      I1 => r_bitsToShift0(27),
      O => p_1_in(27)
    );
\r_bitsToShift[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => r_state(0),
      I1 => r_bitsToShift0(28),
      O => p_1_in(28)
    );
\r_bitsToShift[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => r_state(0),
      I1 => r_bitsToShift0(29),
      O => p_1_in(29)
    );
\r_bitsToShift[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => r_bitsToShift0(2),
      I1 => r_state(0),
      O => p_1_in(2)
    );
\r_bitsToShift[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => r_state(0),
      I1 => r_bitsToShift0(30),
      O => p_1_in(30)
    );
\r_bitsToShift[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1504"
    )
        port map (
      I0 => r_state(1),
      I1 => r_state(0),
      I2 => \r_bitsToShift[31]_i_3_n_0\,
      I3 => \r_state0_carry__1_n_1\,
      O => \r_bitsToShift[31]_i_1_n_0\
    );
\r_bitsToShift[31]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \sel0__0\(8),
      I1 => \sel0__0\(0),
      I2 => \sel0__0\(13),
      I3 => \sel0__0\(9),
      O => \r_bitsToShift[31]_i_10_n_0\
    );
\r_bitsToShift[31]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \sel0__0\(16),
      I1 => \sel0__0\(7),
      I2 => \sel0__0\(1),
      I3 => \sel0__0\(17),
      O => \r_bitsToShift[31]_i_11_n_0\
    );
\r_bitsToShift[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => r_state(0),
      I1 => r_bitsToShift0(31),
      O => p_1_in(31)
    );
\r_bitsToShift[31]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \r_bitsToShift[31]_i_4_n_0\,
      I1 => \r_bitsToShift[31]_i_5_n_0\,
      I2 => \r_bitsToShift[31]_i_6_n_0\,
      I3 => \r_bitsToShift[31]_i_7_n_0\,
      O => \r_bitsToShift[31]_i_3_n_0\
    );
\r_bitsToShift[31]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \sel0__0\(25),
      I1 => \sel0__0\(28),
      I2 => \sel0__0\(21),
      I3 => \sel0__0\(29),
      I4 => \r_bitsToShift[31]_i_8_n_0\,
      O => \r_bitsToShift[31]_i_4_n_0\
    );
\r_bitsToShift[31]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \sel0__0\(18),
      I1 => \sel0__0\(24),
      I2 => \sel0__0\(14),
      I3 => \sel0__0\(10),
      I4 => \r_bitsToShift[31]_i_9_n_0\,
      O => \r_bitsToShift[31]_i_5_n_0\
    );
\r_bitsToShift[31]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \sel0__0\(20),
      I1 => \sel0__0\(27),
      I2 => \sel0__0\(2),
      I3 => \sel0__0\(3),
      I4 => \r_bitsToShift[31]_i_10_n_0\,
      O => \r_bitsToShift[31]_i_6_n_0\
    );
\r_bitsToShift[31]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \sel0__0\(11),
      I1 => \sel0__0\(15),
      I2 => \sel0__0\(23),
      I3 => \sel0__0\(31),
      I4 => \r_bitsToShift[31]_i_11_n_0\,
      O => \r_bitsToShift[31]_i_7_n_0\
    );
\r_bitsToShift[31]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \sel0__0\(19),
      I1 => \sel0__0\(6),
      I2 => \sel0__0\(22),
      I3 => \sel0__0\(26),
      O => \r_bitsToShift[31]_i_8_n_0\
    );
\r_bitsToShift[31]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \sel0__0\(4),
      I1 => \sel0__0\(5),
      I2 => \sel0__0\(30),
      I3 => \sel0__0\(12),
      O => \r_bitsToShift[31]_i_9_n_0\
    );
\r_bitsToShift[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => r_bitsToShift0(3),
      I1 => r_state(0),
      O => p_1_in(3)
    );
\r_bitsToShift[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => r_bitsToShift0(4),
      I1 => r_state(0),
      O => p_1_in(4)
    );
\r_bitsToShift[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => r_state(0),
      I1 => r_bitsToShift0(5),
      O => p_1_in(5)
    );
\r_bitsToShift[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => r_state(0),
      I1 => r_bitsToShift0(6),
      O => p_1_in(6)
    );
\r_bitsToShift[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => r_state(0),
      I1 => r_bitsToShift0(7),
      O => p_1_in(7)
    );
\r_bitsToShift[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => r_state(0),
      I1 => r_bitsToShift0(8),
      O => p_1_in(8)
    );
\r_bitsToShift[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => r_state(0),
      I1 => r_bitsToShift0(9),
      O => p_1_in(9)
    );
\r_bitsToShift_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_bitsToShift[31]_i_1_n_0\,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => p_1_in(0),
      Q => \sel0__0\(0)
    );
\r_bitsToShift_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_bitsToShift[31]_i_1_n_0\,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => p_1_in(10),
      Q => \sel0__0\(10)
    );
\r_bitsToShift_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_bitsToShift[31]_i_1_n_0\,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => p_1_in(11),
      Q => \sel0__0\(11)
    );
\r_bitsToShift_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_bitsToShift[31]_i_1_n_0\,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => p_1_in(12),
      Q => \sel0__0\(12)
    );
\r_bitsToShift_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_bitsToShift[31]_i_1_n_0\,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => p_1_in(13),
      Q => \sel0__0\(13)
    );
\r_bitsToShift_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_bitsToShift[31]_i_1_n_0\,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => p_1_in(14),
      Q => \sel0__0\(14)
    );
\r_bitsToShift_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_bitsToShift[31]_i_1_n_0\,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => p_1_in(15),
      Q => \sel0__0\(15)
    );
\r_bitsToShift_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_bitsToShift[31]_i_1_n_0\,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => p_1_in(16),
      Q => \sel0__0\(16)
    );
\r_bitsToShift_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_bitsToShift[31]_i_1_n_0\,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => p_1_in(17),
      Q => \sel0__0\(17)
    );
\r_bitsToShift_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_bitsToShift[31]_i_1_n_0\,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => p_1_in(18),
      Q => \sel0__0\(18)
    );
\r_bitsToShift_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_bitsToShift[31]_i_1_n_0\,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => p_1_in(19),
      Q => \sel0__0\(19)
    );
\r_bitsToShift_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_bitsToShift[31]_i_1_n_0\,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => p_1_in(1),
      Q => \sel0__0\(1)
    );
\r_bitsToShift_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_bitsToShift[31]_i_1_n_0\,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => p_1_in(20),
      Q => \sel0__0\(20)
    );
\r_bitsToShift_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_bitsToShift[31]_i_1_n_0\,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => p_1_in(21),
      Q => \sel0__0\(21)
    );
\r_bitsToShift_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_bitsToShift[31]_i_1_n_0\,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => p_1_in(22),
      Q => \sel0__0\(22)
    );
\r_bitsToShift_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_bitsToShift[31]_i_1_n_0\,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => p_1_in(23),
      Q => \sel0__0\(23)
    );
\r_bitsToShift_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_bitsToShift[31]_i_1_n_0\,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => p_1_in(24),
      Q => \sel0__0\(24)
    );
\r_bitsToShift_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_bitsToShift[31]_i_1_n_0\,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => p_1_in(25),
      Q => \sel0__0\(25)
    );
\r_bitsToShift_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_bitsToShift[31]_i_1_n_0\,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => p_1_in(26),
      Q => \sel0__0\(26)
    );
\r_bitsToShift_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_bitsToShift[31]_i_1_n_0\,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => p_1_in(27),
      Q => \sel0__0\(27)
    );
\r_bitsToShift_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_bitsToShift[31]_i_1_n_0\,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => p_1_in(28),
      Q => \sel0__0\(28)
    );
\r_bitsToShift_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_bitsToShift[31]_i_1_n_0\,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => p_1_in(29),
      Q => \sel0__0\(29)
    );
\r_bitsToShift_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_bitsToShift[31]_i_1_n_0\,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => p_1_in(2),
      Q => \sel0__0\(2)
    );
\r_bitsToShift_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_bitsToShift[31]_i_1_n_0\,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => p_1_in(30),
      Q => \sel0__0\(30)
    );
\r_bitsToShift_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_bitsToShift[31]_i_1_n_0\,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => p_1_in(31),
      Q => \sel0__0\(31)
    );
\r_bitsToShift_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_bitsToShift[31]_i_1_n_0\,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => p_1_in(3),
      Q => \sel0__0\(3)
    );
\r_bitsToShift_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_bitsToShift[31]_i_1_n_0\,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => p_1_in(4),
      Q => \sel0__0\(4)
    );
\r_bitsToShift_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_bitsToShift[31]_i_1_n_0\,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => p_1_in(5),
      Q => \sel0__0\(5)
    );
\r_bitsToShift_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_bitsToShift[31]_i_1_n_0\,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => p_1_in(6),
      Q => \sel0__0\(6)
    );
\r_bitsToShift_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_bitsToShift[31]_i_1_n_0\,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => p_1_in(7),
      Q => \sel0__0\(7)
    );
\r_bitsToShift_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_bitsToShift[31]_i_1_n_0\,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => p_1_in(8),
      Q => \sel0__0\(8)
    );
\r_bitsToShift_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_bitsToShift[31]_i_1_n_0\,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => p_1_in(9),
      Q => \sel0__0\(9)
    );
\r_digitsToCheck[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => r_state(1),
      I1 => sel0(0),
      O => \r_digitsToCheck[0]_i_1_n_0\
    );
\r_digitsToCheck[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => r_state(1),
      I1 => sel0(1),
      I2 => sel0(0),
      O => \r_digitsToCheck[1]_i_1_n_0\
    );
\r_digitsToCheck[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A802"
    )
        port map (
      I0 => r_state(1),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => sel0(2),
      O => \r_digitsToCheck[2]_i_1_n_0\
    );
\r_digitsToCheck[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DDDDDDD7"
    )
        port map (
      I0 => r_state(1),
      I1 => sel0(3),
      I2 => sel0(2),
      I3 => sel0(1),
      I4 => sel0(0),
      O => \r_digitsToCheck[3]_i_1_n_0\
    );
\r_digitsToCheck[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0426"
    )
        port map (
      I0 => r_state(1),
      I1 => r_state(0),
      I2 => \r_bitsToShift[31]_i_3_n_0\,
      I3 => \r_digitsToCheck[4]_i_3_n_0\,
      O => \r_digitsToCheck[4]_i_1_n_0\
    );
\r_digitsToCheck[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA800000002"
    )
        port map (
      I0 => r_state(1),
      I1 => sel0(3),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => sel0(2),
      I5 => sel0(4),
      O => \r_digitsToCheck[4]_i_2_n_0\
    );
\r_digitsToCheck[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => sel0(4),
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => sel0(3),
      O => \r_digitsToCheck[4]_i_3_n_0\
    );
\r_digitsToCheck_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_digitsToCheck[4]_i_1_n_0\,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => \r_digitsToCheck[0]_i_1_n_0\,
      Q => sel0(0)
    );
\r_digitsToCheck_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_digitsToCheck[4]_i_1_n_0\,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => \r_digitsToCheck[1]_i_1_n_0\,
      Q => sel0(1)
    );
\r_digitsToCheck_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_digitsToCheck[4]_i_1_n_0\,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => \r_digitsToCheck[2]_i_1_n_0\,
      Q => sel0(2)
    );
\r_digitsToCheck_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_digitsToCheck[4]_i_1_n_0\,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => \r_digitsToCheck[3]_i_1_n_0\,
      Q => sel0(3)
    );
\r_digitsToCheck_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_digitsToCheck[4]_i_1_n_0\,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => \r_digitsToCheck[4]_i_2_n_0\,
      Q => sel0(4)
    );
\r_oldBinary[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => r_state(0),
      I1 => \r_state0_carry__1_n_1\,
      I2 => r_state(1),
      O => \r_oldBinary[31]_i_1_n_0\
    );
\r_oldBinary_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_oldBinary[31]_i_1_n_0\,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => i_binary(0),
      Q => r_oldBinary(0)
    );
\r_oldBinary_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_oldBinary[31]_i_1_n_0\,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => i_binary(10),
      Q => r_oldBinary(10)
    );
\r_oldBinary_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_oldBinary[31]_i_1_n_0\,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => i_binary(11),
      Q => r_oldBinary(11)
    );
\r_oldBinary_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_oldBinary[31]_i_1_n_0\,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => i_binary(12),
      Q => r_oldBinary(12)
    );
\r_oldBinary_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_oldBinary[31]_i_1_n_0\,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => i_binary(13),
      Q => r_oldBinary(13)
    );
\r_oldBinary_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_oldBinary[31]_i_1_n_0\,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => i_binary(14),
      Q => r_oldBinary(14)
    );
\r_oldBinary_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_oldBinary[31]_i_1_n_0\,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => i_binary(15),
      Q => r_oldBinary(15)
    );
\r_oldBinary_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_oldBinary[31]_i_1_n_0\,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => i_binary(16),
      Q => r_oldBinary(16)
    );
\r_oldBinary_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_oldBinary[31]_i_1_n_0\,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => i_binary(17),
      Q => r_oldBinary(17)
    );
\r_oldBinary_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_oldBinary[31]_i_1_n_0\,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => i_binary(18),
      Q => r_oldBinary(18)
    );
\r_oldBinary_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_oldBinary[31]_i_1_n_0\,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => i_binary(19),
      Q => r_oldBinary(19)
    );
\r_oldBinary_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_oldBinary[31]_i_1_n_0\,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => i_binary(1),
      Q => r_oldBinary(1)
    );
\r_oldBinary_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_oldBinary[31]_i_1_n_0\,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => i_binary(20),
      Q => r_oldBinary(20)
    );
\r_oldBinary_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_oldBinary[31]_i_1_n_0\,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => i_binary(21),
      Q => r_oldBinary(21)
    );
\r_oldBinary_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_oldBinary[31]_i_1_n_0\,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => i_binary(22),
      Q => r_oldBinary(22)
    );
\r_oldBinary_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_oldBinary[31]_i_1_n_0\,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => i_binary(23),
      Q => r_oldBinary(23)
    );
\r_oldBinary_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_oldBinary[31]_i_1_n_0\,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => i_binary(24),
      Q => r_oldBinary(24)
    );
\r_oldBinary_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_oldBinary[31]_i_1_n_0\,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => i_binary(25),
      Q => r_oldBinary(25)
    );
\r_oldBinary_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_oldBinary[31]_i_1_n_0\,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => i_binary(26),
      Q => r_oldBinary(26)
    );
\r_oldBinary_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_oldBinary[31]_i_1_n_0\,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => i_binary(27),
      Q => r_oldBinary(27)
    );
\r_oldBinary_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_oldBinary[31]_i_1_n_0\,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => i_binary(28),
      Q => r_oldBinary(28)
    );
\r_oldBinary_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_oldBinary[31]_i_1_n_0\,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => i_binary(29),
      Q => r_oldBinary(29)
    );
\r_oldBinary_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_oldBinary[31]_i_1_n_0\,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => i_binary(2),
      Q => r_oldBinary(2)
    );
\r_oldBinary_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_oldBinary[31]_i_1_n_0\,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => i_binary(30),
      Q => r_oldBinary(30)
    );
\r_oldBinary_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_oldBinary[31]_i_1_n_0\,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => i_binary(31),
      Q => r_oldBinary(31)
    );
\r_oldBinary_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_oldBinary[31]_i_1_n_0\,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => i_binary(3),
      Q => r_oldBinary(3)
    );
\r_oldBinary_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_oldBinary[31]_i_1_n_0\,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => i_binary(4),
      Q => r_oldBinary(4)
    );
\r_oldBinary_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_oldBinary[31]_i_1_n_0\,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => i_binary(5),
      Q => r_oldBinary(5)
    );
\r_oldBinary_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_oldBinary[31]_i_1_n_0\,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => i_binary(6),
      Q => r_oldBinary(6)
    );
\r_oldBinary_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_oldBinary[31]_i_1_n_0\,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => i_binary(7),
      Q => r_oldBinary(7)
    );
\r_oldBinary_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_oldBinary[31]_i_1_n_0\,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => i_binary(8),
      Q => r_oldBinary(8)
    );
\r_oldBinary_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_oldBinary[31]_i_1_n_0\,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => i_binary(9),
      Q => r_oldBinary(9)
    );
\r_shifter[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000004444444E"
    )
        port map (
      I0 => r_state(1),
      I1 => i_binary(0),
      I2 => \r_shifter[67]_i_3_n_0\,
      I3 => \r_shifter[68]_i_2_n_0\,
      I4 => r_shifter3(6),
      I5 => r_state(0),
      O => \r_shifter[0]_i_1_n_0\
    );
\r_shifter[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAABAAAAAAAAAAAA"
    )
        port map (
      I0 => \r_shifter[10]_i_2_n_0\,
      I1 => \r_shifter[31]_i_5_n_0\,
      I2 => r_shifter3(4),
      I3 => \r_shifter[70]_i_2_n_0\,
      I4 => sel0(0),
      I5 => sel0(1),
      O => \r_shifter[10]_i_1_n_0\
    );
\r_shifter[10]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => i_binary(10),
      I1 => r_state(0),
      I2 => \r_shifter_reg_n_0_[9]\,
      I3 => r_state(1),
      O => \r_shifter[10]_i_2_n_0\
    );
\r_shifter[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0002AAAA"
    )
        port map (
      I0 => i_resetn,
      I1 => \r_shifter[43]_i_3_n_0\,
      I2 => \r_shifter[63]_i_5_n_0\,
      I3 => \r_shifter[31]_i_3_n_0\,
      I4 => \r_shifter[63]_i_6_n_0\,
      O => p_0_in(11)
    );
\r_shifter[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAABAAAAAAAAAAAA"
    )
        port map (
      I0 => \r_shifter[11]_i_3_n_0\,
      I1 => \r_shifter[31]_i_5_n_0\,
      I2 => r_shifter3(4),
      I3 => \r_shifter[71]_i_7_n_0\,
      I4 => sel0(0),
      I5 => sel0(1),
      O => \r_shifter[11]_i_2_n_0\
    );
\r_shifter[11]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => i_binary(11),
      I1 => r_state(0),
      I2 => \r_shifter_reg_n_0_[10]\,
      I3 => r_state(1),
      O => \r_shifter[11]_i_3_n_0\
    );
\r_shifter[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAABA"
    )
        port map (
      I0 => \r_shifter[12]_i_2_n_0\,
      I1 => r_shifter3(5),
      I2 => r_state(1),
      I3 => r_shifter3(6),
      I4 => \r_shifter[68]_i_2_n_0\,
      I5 => \r_shifter[47]_i_3_n_0\,
      O => \r_shifter[12]_i_1_n_0\
    );
\r_shifter[12]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => i_binary(12),
      I1 => r_state(0),
      I2 => \r_shifter_reg_n_0_[11]\,
      I3 => r_state(1),
      O => \r_shifter[12]_i_2_n_0\
    );
\r_shifter[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAABA"
    )
        port map (
      I0 => \r_shifter[13]_i_2_n_0\,
      I1 => r_shifter3(5),
      I2 => r_state(1),
      I3 => r_shifter3(6),
      I4 => \r_shifter[47]_i_3_n_0\,
      I5 => \r_shifter[69]_i_2_n_0\,
      O => \r_shifter[13]_i_1_n_0\
    );
\r_shifter[13]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => i_binary(13),
      I1 => r_state(0),
      I2 => \r_shifter_reg_n_0_[12]\,
      I3 => r_state(1),
      O => \r_shifter[13]_i_2_n_0\
    );
\r_shifter[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAAB"
    )
        port map (
      I0 => \r_shifter[14]_i_2_n_0\,
      I1 => \r_shifter[31]_i_5_n_0\,
      I2 => r_shifter3(4),
      I3 => \r_shifter[70]_i_2_n_0\,
      I4 => sel0(0),
      I5 => sel0(1),
      O => \r_shifter[14]_i_1_n_0\
    );
\r_shifter[14]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => i_binary(14),
      I1 => r_state(0),
      I2 => \r_shifter_reg_n_0_[13]\,
      I3 => r_state(1),
      O => \r_shifter[14]_i_2_n_0\
    );
\r_shifter[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0002AAAA"
    )
        port map (
      I0 => i_resetn,
      I1 => \r_shifter[47]_i_3_n_0\,
      I2 => \r_shifter[63]_i_5_n_0\,
      I3 => \r_shifter[31]_i_3_n_0\,
      I4 => \r_shifter[63]_i_6_n_0\,
      O => p_0_in(15)
    );
\r_shifter[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAAB"
    )
        port map (
      I0 => \r_shifter[15]_i_3_n_0\,
      I1 => \r_shifter[31]_i_5_n_0\,
      I2 => r_shifter3(4),
      I3 => \r_shifter[71]_i_7_n_0\,
      I4 => sel0(0),
      I5 => sel0(1),
      O => \r_shifter[15]_i_2_n_0\
    );
\r_shifter[15]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => i_binary(15),
      I1 => r_state(0),
      I2 => \r_shifter_reg_n_0_[14]\,
      I3 => r_state(1),
      O => \r_shifter[15]_i_3_n_0\
    );
\r_shifter[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAABA"
    )
        port map (
      I0 => \r_shifter[16]_i_2_n_0\,
      I1 => r_shifter3(5),
      I2 => r_state(1),
      I3 => r_shifter3(6),
      I4 => \r_shifter[68]_i_2_n_0\,
      I5 => \r_shifter[51]_i_3_n_0\,
      O => \r_shifter[16]_i_1_n_0\
    );
\r_shifter[16]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => i_binary(16),
      I1 => r_state(0),
      I2 => \r_shifter_reg_n_0_[15]\,
      I3 => r_state(1),
      O => \r_shifter[16]_i_2_n_0\
    );
\r_shifter[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAABA"
    )
        port map (
      I0 => \r_shifter[17]_i_2_n_0\,
      I1 => r_shifter3(5),
      I2 => r_state(1),
      I3 => r_shifter3(6),
      I4 => \r_shifter[51]_i_3_n_0\,
      I5 => \r_shifter[69]_i_2_n_0\,
      O => \r_shifter[17]_i_1_n_0\
    );
\r_shifter[17]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => i_binary(17),
      I1 => r_state(0),
      I2 => \r_shifter_reg_n_0_[16]\,
      I3 => r_state(1),
      O => \r_shifter[17]_i_2_n_0\
    );
\r_shifter[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAABAAAAAAAAA"
    )
        port map (
      I0 => \r_shifter[18]_i_2_n_0\,
      I1 => \r_shifter[31]_i_5_n_0\,
      I2 => r_shifter3(4),
      I3 => \r_shifter[70]_i_2_n_0\,
      I4 => sel0(1),
      I5 => sel0(0),
      O => \r_shifter[18]_i_1_n_0\
    );
\r_shifter[18]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => i_binary(18),
      I1 => r_state(0),
      I2 => \r_shifter_reg_n_0_[17]\,
      I3 => r_state(1),
      O => \r_shifter[18]_i_2_n_0\
    );
\r_shifter[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0002AAAA"
    )
        port map (
      I0 => i_resetn,
      I1 => \r_shifter[51]_i_3_n_0\,
      I2 => \r_shifter[63]_i_5_n_0\,
      I3 => \r_shifter[31]_i_3_n_0\,
      I4 => \r_shifter[63]_i_6_n_0\,
      O => p_0_in(19)
    );
\r_shifter[19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAABAAAAAAAAA"
    )
        port map (
      I0 => \r_shifter[19]_i_3_n_0\,
      I1 => \r_shifter[31]_i_5_n_0\,
      I2 => r_shifter3(4),
      I3 => \r_shifter[71]_i_7_n_0\,
      I4 => sel0(1),
      I5 => sel0(0),
      O => \r_shifter[19]_i_2_n_0\
    );
\r_shifter[19]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => i_binary(19),
      I1 => r_state(0),
      I2 => \r_shifter_reg_n_0_[18]\,
      I3 => r_state(1),
      O => \r_shifter[19]_i_3_n_0\
    );
\r_shifter[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FFB8B80000B8B8"
    )
        port map (
      I0 => \r_shifter_reg_n_0_[0]\,
      I1 => r_state(0),
      I2 => i_binary(1),
      I3 => r_shifter3(6),
      I4 => r_state(1),
      I5 => \r_shifter[1]_i_2_n_0\,
      O => \r_shifter[1]_i_1_n_0\
    );
\r_shifter[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => r_shifter3(4),
      I1 => \r_shifter[71]_i_9_n_0\,
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => r_shifter3(5),
      I5 => \r_shifter[69]_i_2_n_0\,
      O => \r_shifter[1]_i_2_n_0\
    );
\r_shifter[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAABA"
    )
        port map (
      I0 => \r_shifter[20]_i_2_n_0\,
      I1 => r_shifter3(5),
      I2 => r_state(1),
      I3 => r_shifter3(6),
      I4 => \r_shifter[68]_i_2_n_0\,
      I5 => \r_shifter[55]_i_3_n_0\,
      O => \r_shifter[20]_i_1_n_0\
    );
\r_shifter[20]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => i_binary(20),
      I1 => r_state(0),
      I2 => \r_shifter_reg_n_0_[19]\,
      I3 => r_state(1),
      O => \r_shifter[20]_i_2_n_0\
    );
\r_shifter[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAABA"
    )
        port map (
      I0 => \r_shifter[21]_i_2_n_0\,
      I1 => r_shifter3(5),
      I2 => r_state(1),
      I3 => r_shifter3(6),
      I4 => \r_shifter[55]_i_3_n_0\,
      I5 => \r_shifter[69]_i_2_n_0\,
      O => \r_shifter[21]_i_1_n_0\
    );
\r_shifter[21]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => i_binary(21),
      I1 => r_state(0),
      I2 => \r_shifter_reg_n_0_[20]\,
      I3 => r_state(1),
      O => \r_shifter[21]_i_2_n_0\
    );
\r_shifter[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAABAAAAAAAAA"
    )
        port map (
      I0 => \r_shifter[22]_i_2_n_0\,
      I1 => \r_shifter[31]_i_5_n_0\,
      I2 => r_shifter3(4),
      I3 => \r_shifter[70]_i_2_n_0\,
      I4 => sel0(0),
      I5 => sel0(1),
      O => \r_shifter[22]_i_1_n_0\
    );
\r_shifter[22]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => i_binary(22),
      I1 => r_state(0),
      I2 => \r_shifter_reg_n_0_[21]\,
      I3 => r_state(1),
      O => \r_shifter[22]_i_2_n_0\
    );
\r_shifter[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0002AAAA"
    )
        port map (
      I0 => i_resetn,
      I1 => \r_shifter[55]_i_3_n_0\,
      I2 => \r_shifter[63]_i_5_n_0\,
      I3 => \r_shifter[31]_i_3_n_0\,
      I4 => \r_shifter[63]_i_6_n_0\,
      O => p_0_in(23)
    );
\r_shifter[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAABAAAAAAAAA"
    )
        port map (
      I0 => \r_shifter[23]_i_3_n_0\,
      I1 => \r_shifter[31]_i_5_n_0\,
      I2 => r_shifter3(4),
      I3 => \r_shifter[71]_i_7_n_0\,
      I4 => sel0(0),
      I5 => sel0(1),
      O => \r_shifter[23]_i_2_n_0\
    );
\r_shifter[23]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => i_binary(23),
      I1 => r_state(0),
      I2 => \r_shifter_reg_n_0_[22]\,
      I3 => r_state(1),
      O => \r_shifter[23]_i_3_n_0\
    );
\r_shifter[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAABA"
    )
        port map (
      I0 => \r_shifter[24]_i_2_n_0\,
      I1 => r_shifter3(5),
      I2 => r_state(1),
      I3 => r_shifter3(6),
      I4 => \r_shifter[68]_i_2_n_0\,
      I5 => \r_shifter[59]_i_3_n_0\,
      O => \r_shifter[24]_i_1_n_0\
    );
\r_shifter[24]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => i_binary(24),
      I1 => r_state(0),
      I2 => \r_shifter_reg_n_0_[23]\,
      I3 => r_state(1),
      O => \r_shifter[24]_i_2_n_0\
    );
\r_shifter[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAABA"
    )
        port map (
      I0 => \r_shifter[25]_i_2_n_0\,
      I1 => r_shifter3(5),
      I2 => r_state(1),
      I3 => r_shifter3(6),
      I4 => \r_shifter[59]_i_3_n_0\,
      I5 => \r_shifter[69]_i_2_n_0\,
      O => \r_shifter[25]_i_1_n_0\
    );
\r_shifter[25]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => i_binary(25),
      I1 => r_state(0),
      I2 => \r_shifter_reg_n_0_[24]\,
      I3 => r_state(1),
      O => \r_shifter[25]_i_2_n_0\
    );
\r_shifter[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AABAAAAAAAAAAAAA"
    )
        port map (
      I0 => \r_shifter[26]_i_2_n_0\,
      I1 => \r_shifter[31]_i_5_n_0\,
      I2 => r_shifter3(4),
      I3 => \r_shifter[70]_i_2_n_0\,
      I4 => sel0(0),
      I5 => sel0(1),
      O => \r_shifter[26]_i_1_n_0\
    );
\r_shifter[26]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => i_binary(26),
      I1 => r_state(0),
      I2 => \r_shifter_reg_n_0_[25]\,
      I3 => r_state(1),
      O => \r_shifter[26]_i_2_n_0\
    );
\r_shifter[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0002AAAA"
    )
        port map (
      I0 => i_resetn,
      I1 => \r_shifter[59]_i_3_n_0\,
      I2 => \r_shifter[63]_i_5_n_0\,
      I3 => \r_shifter[31]_i_3_n_0\,
      I4 => \r_shifter[63]_i_6_n_0\,
      O => p_0_in(27)
    );
\r_shifter[27]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AABAAAAAAAAAAAAA"
    )
        port map (
      I0 => \r_shifter[27]_i_3_n_0\,
      I1 => \r_shifter[31]_i_5_n_0\,
      I2 => r_shifter3(4),
      I3 => \r_shifter[71]_i_7_n_0\,
      I4 => sel0(0),
      I5 => sel0(1),
      O => \r_shifter[27]_i_2_n_0\
    );
\r_shifter[27]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => i_binary(27),
      I1 => r_state(0),
      I2 => \r_shifter_reg_n_0_[26]\,
      I3 => r_state(1),
      O => \r_shifter[27]_i_3_n_0\
    );
\r_shifter[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAABA"
    )
        port map (
      I0 => \r_shifter[28]_i_2_n_0\,
      I1 => r_shifter3(5),
      I2 => r_state(1),
      I3 => r_shifter3(6),
      I4 => \r_shifter[68]_i_2_n_0\,
      I5 => \r_shifter[63]_i_4_n_0\,
      O => \r_shifter[28]_i_1_n_0\
    );
\r_shifter[28]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => i_binary(28),
      I1 => r_state(0),
      I2 => \r_shifter_reg_n_0_[27]\,
      I3 => r_state(1),
      O => \r_shifter[28]_i_2_n_0\
    );
\r_shifter[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAABA"
    )
        port map (
      I0 => \r_shifter[29]_i_2_n_0\,
      I1 => r_shifter3(5),
      I2 => r_state(1),
      I3 => r_shifter3(6),
      I4 => \r_shifter[63]_i_4_n_0\,
      I5 => \r_shifter[69]_i_2_n_0\,
      O => \r_shifter[29]_i_1_n_0\
    );
\r_shifter[29]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => i_binary(29),
      I1 => r_state(0),
      I2 => data0(0),
      I3 => r_state(1),
      O => \r_shifter[29]_i_2_n_0\
    );
\r_shifter[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAAAAAAA"
    )
        port map (
      I0 => \r_shifter[2]_i_2_n_0\,
      I1 => \r_shifter[31]_i_5_n_0\,
      I2 => r_shifter3(4),
      I3 => \r_shifter[70]_i_2_n_0\,
      I4 => sel0(1),
      I5 => sel0(0),
      O => \r_shifter[2]_i_1_n_0\
    );
\r_shifter[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => i_binary(2),
      I1 => r_state(0),
      I2 => \r_shifter_reg_n_0_[1]\,
      I3 => r_state(1),
      O => \r_shifter[2]_i_2_n_0\
    );
\r_shifter[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAABA"
    )
        port map (
      I0 => \r_shifter[30]_i_2_n_0\,
      I1 => \r_shifter[31]_i_5_n_0\,
      I2 => r_shifter3(4),
      I3 => \r_shifter[70]_i_2_n_0\,
      I4 => sel0(0),
      I5 => sel0(1),
      O => \r_shifter[30]_i_1_n_0\
    );
\r_shifter[30]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => i_binary(30),
      I1 => r_state(0),
      I2 => data0(1),
      I3 => r_state(1),
      O => \r_shifter[30]_i_2_n_0\
    );
\r_shifter[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0002AAAA"
    )
        port map (
      I0 => i_resetn,
      I1 => \r_shifter[63]_i_4_n_0\,
      I2 => \r_shifter[63]_i_5_n_0\,
      I3 => \r_shifter[31]_i_3_n_0\,
      I4 => \r_shifter[63]_i_6_n_0\,
      O => p_0_in(28)
    );
\r_shifter[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAABA"
    )
        port map (
      I0 => \r_shifter[31]_i_4_n_0\,
      I1 => \r_shifter[31]_i_5_n_0\,
      I2 => r_shifter3(4),
      I3 => \r_shifter[71]_i_7_n_0\,
      I4 => sel0(0),
      I5 => sel0(1),
      O => \r_shifter[31]_i_2_n_0\
    );
\r_shifter[31]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEFF"
    )
        port map (
      I0 => r_shifter3(5),
      I1 => \r_digitsToCheck[4]_i_3_n_0\,
      I2 => r_state(0),
      I3 => r_state(1),
      I4 => r_shifter3(6),
      O => \r_shifter[31]_i_3_n_0\
    );
\r_shifter[31]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => i_binary(31),
      I1 => r_state(0),
      I2 => data0(2),
      I3 => r_state(1),
      O => \r_shifter[31]_i_4_n_0\
    );
\r_shifter[31]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => r_shifter3(5),
      I1 => r_state(1),
      I2 => r_shifter3(6),
      O => \r_shifter[31]_i_5_n_0\
    );
\r_shifter[32]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F888888"
    )
        port map (
      I0 => data0(3),
      I1 => r_state(0),
      I2 => \r_shifter[68]_i_2_n_0\,
      I3 => \r_shifter[63]_i_7_n_0\,
      I4 => \r_shifter[35]_i_3_n_0\,
      O => \r_shifter[32]_i_1_n_0\
    );
\r_shifter[33]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F888888"
    )
        port map (
      I0 => data1(0),
      I1 => r_state(0),
      I2 => \r_shifter[69]_i_2_n_0\,
      I3 => \r_shifter[63]_i_7_n_0\,
      I4 => \r_shifter[35]_i_3_n_0\,
      O => \r_shifter[33]_i_1_n_0\
    );
\r_shifter[34]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888888888F8"
    )
        port map (
      I0 => data1(1),
      I1 => r_state(0),
      I2 => \r_shifter[63]_i_7_n_0\,
      I3 => r_shifter3(4),
      I4 => \r_shifter[70]_i_2_n_0\,
      I5 => \r_shifter[67]_i_4_n_0\,
      O => \r_shifter[34]_i_1_n_0\
    );
\r_shifter[35]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0080AAAA"
    )
        port map (
      I0 => i_resetn,
      I1 => \r_shifter[35]_i_3_n_0\,
      I2 => r_shifter3(5),
      I3 => \r_shifter[39]_i_4_n_0\,
      I4 => \r_shifter[63]_i_6_n_0\,
      O => p_0_in(35)
    );
\r_shifter[35]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888888888F8"
    )
        port map (
      I0 => data1(2),
      I1 => r_state(0),
      I2 => \r_shifter[63]_i_7_n_0\,
      I3 => r_shifter3(4),
      I4 => \r_shifter[71]_i_7_n_0\,
      I5 => \r_shifter[67]_i_4_n_0\,
      O => \r_shifter[35]_i_2_n_0\
    );
\r_shifter[35]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => r_shifter3(4),
      I1 => \r_shifter[71]_i_9_n_0\,
      I2 => sel0(1),
      I3 => sel0(0),
      O => \r_shifter[35]_i_3_n_0\
    );
\r_shifter[36]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F888888"
    )
        port map (
      I0 => data1(3),
      I1 => r_state(0),
      I2 => \r_shifter[68]_i_2_n_0\,
      I3 => \r_shifter[63]_i_7_n_0\,
      I4 => \r_shifter[39]_i_3_n_0\,
      O => \r_shifter[36]_i_1_n_0\
    );
\r_shifter[37]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F888888"
    )
        port map (
      I0 => data2(0),
      I1 => r_state(0),
      I2 => \r_shifter[69]_i_2_n_0\,
      I3 => \r_shifter[63]_i_7_n_0\,
      I4 => \r_shifter[39]_i_3_n_0\,
      O => \r_shifter[37]_i_1_n_0\
    );
\r_shifter[38]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888888888F8"
    )
        port map (
      I0 => data2(1),
      I1 => r_state(0),
      I2 => \r_shifter[63]_i_7_n_0\,
      I3 => r_shifter3(4),
      I4 => \r_shifter[70]_i_2_n_0\,
      I5 => \r_shifter[71]_i_8_n_0\,
      O => \r_shifter[38]_i_1_n_0\
    );
\r_shifter[39]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0080AAAA"
    )
        port map (
      I0 => i_resetn,
      I1 => \r_shifter[39]_i_3_n_0\,
      I2 => r_shifter3(5),
      I3 => \r_shifter[39]_i_4_n_0\,
      I4 => \r_shifter[63]_i_6_n_0\,
      O => p_0_in(39)
    );
\r_shifter[39]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888888888F8"
    )
        port map (
      I0 => data2(2),
      I1 => r_state(0),
      I2 => \r_shifter[63]_i_7_n_0\,
      I3 => r_shifter3(4),
      I4 => \r_shifter[71]_i_7_n_0\,
      I5 => \r_shifter[71]_i_8_n_0\,
      O => \r_shifter[39]_i_2_n_0\
    );
\r_shifter[39]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => r_shifter3(4),
      I1 => \r_shifter[71]_i_9_n_0\,
      I2 => sel0(0),
      I3 => sel0(1),
      O => \r_shifter[39]_i_3_n_0\
    );
\r_shifter[39]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEFF"
    )
        port map (
      I0 => \r_shifter[63]_i_5_n_0\,
      I1 => \r_digitsToCheck[4]_i_3_n_0\,
      I2 => r_state(0),
      I3 => r_state(1),
      I4 => r_shifter3(6),
      O => \r_shifter[39]_i_4_n_0\
    );
\r_shifter[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02AA02AA02AA0202"
    )
        port map (
      I0 => i_resetn,
      I1 => \r_shifter[67]_i_3_n_0\,
      I2 => \r_shifter[39]_i_4_n_0\,
      I3 => r_state(1),
      I4 => \r_state0_carry__1_n_1\,
      I5 => r_state(0),
      O => p_0_in(3)
    );
\r_shifter[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4540FFFF45404540"
    )
        port map (
      I0 => r_state(1),
      I1 => \r_shifter_reg_n_0_[2]\,
      I2 => r_state(0),
      I3 => i_binary(3),
      I4 => \r_shifter[31]_i_5_n_0\,
      I5 => \r_shifter[3]_i_3_n_0\,
      O => \r_shifter[3]_i_2_n_0\
    );
\r_shifter[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000510"
    )
        port map (
      I0 => r_shifter3(4),
      I1 => sel0(4),
      I2 => \r_shifter[71]_i_15_n_0\,
      I3 => \r_shifter[71]_i_16_n_0\,
      I4 => \r_shifter[71]_i_9_n_0\,
      I5 => \r_shifter[67]_i_4_n_0\,
      O => \r_shifter[3]_i_3_n_0\
    );
\r_shifter[40]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"888888F8"
    )
        port map (
      I0 => data2(3),
      I1 => r_state(0),
      I2 => \r_shifter[63]_i_7_n_0\,
      I3 => \r_shifter[68]_i_2_n_0\,
      I4 => \r_shifter[43]_i_3_n_0\,
      O => \r_shifter[40]_i_1_n_0\
    );
\r_shifter[41]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"888888F8"
    )
        port map (
      I0 => data3(0),
      I1 => r_state(0),
      I2 => \r_shifter[63]_i_7_n_0\,
      I3 => \r_shifter[43]_i_3_n_0\,
      I4 => \r_shifter[69]_i_2_n_0\,
      O => \r_shifter[41]_i_1_n_0\
    );
\r_shifter[42]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888888888F8"
    )
        port map (
      I0 => data3(1),
      I1 => r_state(0),
      I2 => \r_shifter[63]_i_7_n_0\,
      I3 => r_shifter3(4),
      I4 => \r_shifter[70]_i_2_n_0\,
      I5 => \r_shifter[59]_i_4_n_0\,
      O => \r_shifter[42]_i_1_n_0\
    );
\r_shifter[43]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0008AAAA"
    )
        port map (
      I0 => i_resetn,
      I1 => \r_shifter[63]_i_3_n_0\,
      I2 => \r_shifter[43]_i_3_n_0\,
      I3 => \r_shifter[63]_i_5_n_0\,
      I4 => \r_shifter[63]_i_6_n_0\,
      O => p_0_in(43)
    );
\r_shifter[43]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888888888F8"
    )
        port map (
      I0 => data3(2),
      I1 => r_state(0),
      I2 => \r_shifter[63]_i_7_n_0\,
      I3 => r_shifter3(4),
      I4 => \r_shifter[71]_i_7_n_0\,
      I5 => \r_shifter[59]_i_4_n_0\,
      O => \r_shifter[43]_i_2_n_0\
    );
\r_shifter[43]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFBF"
    )
        port map (
      I0 => r_shifter3(4),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => \r_shifter[71]_i_9_n_0\,
      O => \r_shifter[43]_i_3_n_0\
    );
\r_shifter[44]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"888888F8"
    )
        port map (
      I0 => data3(3),
      I1 => r_state(0),
      I2 => \r_shifter[63]_i_7_n_0\,
      I3 => \r_shifter[68]_i_2_n_0\,
      I4 => \r_shifter[47]_i_3_n_0\,
      O => \r_shifter[44]_i_1_n_0\
    );
\r_shifter[45]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"888888F8"
    )
        port map (
      I0 => data4(0),
      I1 => r_state(0),
      I2 => \r_shifter[63]_i_7_n_0\,
      I3 => \r_shifter[47]_i_3_n_0\,
      I4 => \r_shifter[69]_i_2_n_0\,
      O => \r_shifter[45]_i_1_n_0\
    );
\r_shifter[46]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888888888F8"
    )
        port map (
      I0 => data4(1),
      I1 => r_state(0),
      I2 => \r_shifter[63]_i_7_n_0\,
      I3 => r_shifter3(4),
      I4 => \r_shifter[70]_i_2_n_0\,
      I5 => \r_shifter[63]_i_8_n_0\,
      O => \r_shifter[46]_i_1_n_0\
    );
\r_shifter[47]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0008AAAA"
    )
        port map (
      I0 => i_resetn,
      I1 => \r_shifter[63]_i_3_n_0\,
      I2 => \r_shifter[47]_i_3_n_0\,
      I3 => \r_shifter[63]_i_5_n_0\,
      I4 => \r_shifter[63]_i_6_n_0\,
      O => p_0_in(47)
    );
\r_shifter[47]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888888888F8"
    )
        port map (
      I0 => data4(2),
      I1 => r_state(0),
      I2 => \r_shifter[63]_i_7_n_0\,
      I3 => r_shifter3(4),
      I4 => \r_shifter[71]_i_7_n_0\,
      I5 => \r_shifter[63]_i_8_n_0\,
      O => \r_shifter[47]_i_2_n_0\
    );
\r_shifter[47]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => r_shifter3(4),
      I1 => \r_shifter[71]_i_9_n_0\,
      I2 => sel0(0),
      I3 => sel0(1),
      O => \r_shifter[47]_i_3_n_0\
    );
\r_shifter[48]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"888888F8"
    )
        port map (
      I0 => data4(3),
      I1 => r_state(0),
      I2 => \r_shifter[63]_i_7_n_0\,
      I3 => \r_shifter[68]_i_2_n_0\,
      I4 => \r_shifter[51]_i_3_n_0\,
      O => \r_shifter[48]_i_1_n_0\
    );
\r_shifter[49]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"888888F8"
    )
        port map (
      I0 => data5(0),
      I1 => r_state(0),
      I2 => \r_shifter[63]_i_7_n_0\,
      I3 => \r_shifter[51]_i_3_n_0\,
      I4 => \r_shifter[69]_i_2_n_0\,
      O => \r_shifter[49]_i_1_n_0\
    );
\r_shifter[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FFB8B80000B8B8"
    )
        port map (
      I0 => \r_shifter_reg_n_0_[3]\,
      I1 => r_state(0),
      I2 => i_binary(4),
      I3 => r_shifter3(6),
      I4 => r_state(1),
      I5 => \r_shifter[4]_i_2_n_0\,
      O => \r_shifter[4]_i_1_n_0\
    );
\r_shifter[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => r_shifter3(5),
      I1 => r_shifter3(4),
      I2 => \r_shifter[71]_i_9_n_0\,
      I3 => sel0(0),
      I4 => sel0(1),
      I5 => \r_shifter[68]_i_2_n_0\,
      O => \r_shifter[4]_i_2_n_0\
    );
\r_shifter[50]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888888888888F888"
    )
        port map (
      I0 => data5(1),
      I1 => r_state(0),
      I2 => \r_shifter[63]_i_7_n_0\,
      I3 => r_shifter3(4),
      I4 => \r_shifter[70]_i_2_n_0\,
      I5 => \r_shifter[67]_i_4_n_0\,
      O => \r_shifter[50]_i_1_n_0\
    );
\r_shifter[51]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0008AAAA"
    )
        port map (
      I0 => i_resetn,
      I1 => \r_shifter[63]_i_3_n_0\,
      I2 => \r_shifter[51]_i_3_n_0\,
      I3 => \r_shifter[63]_i_5_n_0\,
      I4 => \r_shifter[63]_i_6_n_0\,
      O => p_0_in(51)
    );
\r_shifter[51]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888888888888F888"
    )
        port map (
      I0 => data5(2),
      I1 => r_state(0),
      I2 => \r_shifter[63]_i_7_n_0\,
      I3 => r_shifter3(4),
      I4 => \r_shifter[71]_i_7_n_0\,
      I5 => \r_shifter[67]_i_4_n_0\,
      O => \r_shifter[51]_i_2_n_0\
    );
\r_shifter[51]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => \r_shifter[71]_i_9_n_0\,
      I1 => sel0(1),
      I2 => sel0(0),
      I3 => r_shifter3(4),
      O => \r_shifter[51]_i_3_n_0\
    );
\r_shifter[52]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"888888F8"
    )
        port map (
      I0 => data5(3),
      I1 => r_state(0),
      I2 => \r_shifter[63]_i_7_n_0\,
      I3 => \r_shifter[68]_i_2_n_0\,
      I4 => \r_shifter[55]_i_3_n_0\,
      O => \r_shifter[52]_i_1_n_0\
    );
\r_shifter[53]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"888888F8"
    )
        port map (
      I0 => data6(0),
      I1 => r_state(0),
      I2 => \r_shifter[63]_i_7_n_0\,
      I3 => \r_shifter[55]_i_3_n_0\,
      I4 => \r_shifter[69]_i_2_n_0\,
      O => \r_shifter[53]_i_1_n_0\
    );
\r_shifter[54]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888888888888F888"
    )
        port map (
      I0 => data6(1),
      I1 => r_state(0),
      I2 => \r_shifter[63]_i_7_n_0\,
      I3 => r_shifter3(4),
      I4 => \r_shifter[70]_i_2_n_0\,
      I5 => \r_shifter[71]_i_8_n_0\,
      O => \r_shifter[54]_i_1_n_0\
    );
\r_shifter[55]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0008AAAA"
    )
        port map (
      I0 => i_resetn,
      I1 => \r_shifter[63]_i_3_n_0\,
      I2 => \r_shifter[55]_i_3_n_0\,
      I3 => \r_shifter[63]_i_5_n_0\,
      I4 => \r_shifter[63]_i_6_n_0\,
      O => p_0_in(55)
    );
\r_shifter[55]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888888888888F888"
    )
        port map (
      I0 => data6(2),
      I1 => r_state(0),
      I2 => \r_shifter[63]_i_7_n_0\,
      I3 => r_shifter3(4),
      I4 => \r_shifter[71]_i_7_n_0\,
      I5 => \r_shifter[71]_i_8_n_0\,
      O => \r_shifter[55]_i_2_n_0\
    );
\r_shifter[55]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => \r_shifter[71]_i_9_n_0\,
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => r_shifter3(4),
      O => \r_shifter[55]_i_3_n_0\
    );
\r_shifter[56]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"888888F8"
    )
        port map (
      I0 => data6(3),
      I1 => r_state(0),
      I2 => \r_shifter[63]_i_7_n_0\,
      I3 => \r_shifter[68]_i_2_n_0\,
      I4 => \r_shifter[59]_i_3_n_0\,
      O => \r_shifter[56]_i_1_n_0\
    );
\r_shifter[57]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"888888F8"
    )
        port map (
      I0 => data7(0),
      I1 => r_state(0),
      I2 => \r_shifter[63]_i_7_n_0\,
      I3 => \r_shifter[59]_i_3_n_0\,
      I4 => \r_shifter[69]_i_2_n_0\,
      O => \r_shifter[57]_i_1_n_0\
    );
\r_shifter[58]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888888888888F888"
    )
        port map (
      I0 => data7(1),
      I1 => r_state(0),
      I2 => \r_shifter[63]_i_7_n_0\,
      I3 => r_shifter3(4),
      I4 => \r_shifter[70]_i_2_n_0\,
      I5 => \r_shifter[59]_i_4_n_0\,
      O => \r_shifter[58]_i_1_n_0\
    );
\r_shifter[59]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0008AAAA"
    )
        port map (
      I0 => i_resetn,
      I1 => \r_shifter[63]_i_3_n_0\,
      I2 => \r_shifter[59]_i_3_n_0\,
      I3 => \r_shifter[63]_i_5_n_0\,
      I4 => \r_shifter[63]_i_6_n_0\,
      O => p_0_in(59)
    );
\r_shifter[59]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888888888888F888"
    )
        port map (
      I0 => data7(2),
      I1 => r_state(0),
      I2 => \r_shifter[63]_i_7_n_0\,
      I3 => r_shifter3(4),
      I4 => \r_shifter[71]_i_7_n_0\,
      I5 => \r_shifter[59]_i_4_n_0\,
      O => \r_shifter[59]_i_2_n_0\
    );
\r_shifter[59]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F7FF"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(1),
      I2 => \r_shifter[71]_i_9_n_0\,
      I3 => r_shifter3(4),
      O => \r_shifter[59]_i_3_n_0\
    );
\r_shifter[59]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(1),
      O => \r_shifter[59]_i_4_n_0\
    );
\r_shifter[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FFB8B80000B8B8"
    )
        port map (
      I0 => \r_shifter_reg_n_0_[4]\,
      I1 => r_state(0),
      I2 => i_binary(5),
      I3 => r_shifter3(6),
      I4 => r_state(1),
      I5 => \r_shifter[5]_i_2_n_0\,
      O => \r_shifter[5]_i_1_n_0\
    );
\r_shifter[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => r_shifter3(5),
      I1 => r_shifter3(4),
      I2 => \r_shifter[71]_i_9_n_0\,
      I3 => sel0(0),
      I4 => sel0(1),
      I5 => \r_shifter[69]_i_2_n_0\,
      O => \r_shifter[5]_i_2_n_0\
    );
\r_shifter[60]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"888888F8"
    )
        port map (
      I0 => data7(3),
      I1 => r_state(0),
      I2 => \r_shifter[63]_i_7_n_0\,
      I3 => \r_shifter[68]_i_2_n_0\,
      I4 => \r_shifter[63]_i_4_n_0\,
      O => \r_shifter[60]_i_1_n_0\
    );
\r_shifter[61]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"888888F8"
    )
        port map (
      I0 => data8(0),
      I1 => r_state(0),
      I2 => \r_shifter[63]_i_7_n_0\,
      I3 => \r_shifter[63]_i_4_n_0\,
      I4 => \r_shifter[69]_i_2_n_0\,
      O => \r_shifter[61]_i_1_n_0\
    );
\r_shifter[62]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888888888888F888"
    )
        port map (
      I0 => data8(1),
      I1 => r_state(0),
      I2 => \r_shifter[63]_i_7_n_0\,
      I3 => r_shifter3(4),
      I4 => \r_shifter[70]_i_2_n_0\,
      I5 => \r_shifter[63]_i_8_n_0\,
      O => \r_shifter[62]_i_1_n_0\
    );
\r_shifter[63]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0008AAAA"
    )
        port map (
      I0 => i_resetn,
      I1 => \r_shifter[63]_i_3_n_0\,
      I2 => \r_shifter[63]_i_4_n_0\,
      I3 => \r_shifter[63]_i_5_n_0\,
      I4 => \r_shifter[63]_i_6_n_0\,
      O => p_0_in(63)
    );
\r_shifter[63]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888888888888F888"
    )
        port map (
      I0 => data8(2),
      I1 => r_state(0),
      I2 => \r_shifter[63]_i_7_n_0\,
      I3 => r_shifter3(4),
      I4 => \r_shifter[71]_i_7_n_0\,
      I5 => \r_shifter[63]_i_8_n_0\,
      O => \r_shifter[63]_i_2_n_0\
    );
\r_shifter[63]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000200"
    )
        port map (
      I0 => r_shifter3(5),
      I1 => \r_digitsToCheck[4]_i_3_n_0\,
      I2 => r_state(0),
      I3 => r_state(1),
      I4 => r_shifter3(6),
      O => \r_shifter[63]_i_3_n_0\
    );
\r_shifter[63]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => \r_shifter[71]_i_9_n_0\,
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => r_shifter3(4),
      O => \r_shifter[63]_i_4_n_0\
    );
\r_shifter[63]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \r_shifter[71]_i_15_n_0\,
      I1 => \r_shifter[71]_i_16_n_0\,
      I2 => sel0(4),
      O => \r_shifter[63]_i_5_n_0\
    );
\r_shifter[63]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AB"
    )
        port map (
      I0 => r_state(1),
      I1 => \r_state0_carry__1_n_1\,
      I2 => r_state(0),
      O => \r_shifter[63]_i_6_n_0\
    );
\r_shifter[63]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => r_shifter3(5),
      I1 => r_state(1),
      I2 => r_shifter3(6),
      O => \r_shifter[63]_i_7_n_0\
    );
\r_shifter[63]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(1),
      O => \r_shifter[63]_i_8_n_0\
    );
\r_shifter[64]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888F888888888888"
    )
        port map (
      I0 => data8(3),
      I1 => r_state(0),
      I2 => \r_shifter[68]_i_2_n_0\,
      I3 => \r_shifter[67]_i_3_n_0\,
      I4 => r_state(1),
      I5 => r_shifter3(6),
      O => \r_shifter[64]_i_1_n_0\
    );
\r_shifter[65]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888F888888888888"
    )
        port map (
      I0 => data9(0),
      I1 => r_state(0),
      I2 => \r_shifter[67]_i_3_n_0\,
      I3 => \r_shifter[69]_i_2_n_0\,
      I4 => r_state(1),
      I5 => r_shifter3(6),
      O => \r_shifter[65]_i_1_n_0\
    );
\r_shifter[66]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888F88888888"
    )
        port map (
      I0 => data9(1),
      I1 => r_state(0),
      I2 => r_shifter3(4),
      I3 => \r_shifter[70]_i_2_n_0\,
      I4 => \r_shifter[67]_i_4_n_0\,
      I5 => \r_shifter[71]_i_5_n_0\,
      O => \r_shifter[66]_i_1_n_0\
    );
\r_shifter[67]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08AA08AA08AA0808"
    )
        port map (
      I0 => i_resetn,
      I1 => \r_shifter[71]_i_4_n_0\,
      I2 => \r_shifter[67]_i_3_n_0\,
      I3 => r_state(1),
      I4 => \r_state0_carry__1_n_1\,
      I5 => r_state(0),
      O => p_0_in(67)
    );
\r_shifter[67]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888F88888888"
    )
        port map (
      I0 => data9(2),
      I1 => r_state(0),
      I2 => r_shifter3(4),
      I3 => \r_shifter[71]_i_7_n_0\,
      I4 => \r_shifter[67]_i_4_n_0\,
      I5 => \r_shifter[71]_i_5_n_0\,
      O => \r_shifter[67]_i_2_n_0\
    );
\r_shifter[67]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFB"
    )
        port map (
      I0 => r_shifter3(5),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => \r_shifter[71]_i_9_n_0\,
      I4 => r_shifter3(4),
      O => \r_shifter[67]_i_3_n_0\
    );
\r_shifter[67]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(0),
      O => \r_shifter[67]_i_4_n_0\
    );
\r_shifter[68]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F8888888888888"
    )
        port map (
      I0 => data9(3),
      I1 => r_state(0),
      I2 => \r_shifter[71]_i_3_n_0\,
      I3 => \r_shifter[68]_i_2_n_0\,
      I4 => r_state(1),
      I5 => r_shifter3(6),
      O => \r_shifter[68]_i_1_n_0\
    );
\r_shifter[68]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \r_shifter[70]_i_5_n_0\,
      I1 => sel0(4),
      O => \r_shifter[68]_i_2_n_0\
    );
\r_shifter[69]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F8888888888888"
    )
        port map (
      I0 => data10(0),
      I1 => r_state(0),
      I2 => \r_shifter[71]_i_3_n_0\,
      I3 => \r_shifter[69]_i_2_n_0\,
      I4 => r_state(1),
      I5 => r_shifter3(6),
      O => \r_shifter[69]_i_1_n_0\
    );
\r_shifter[69]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => \r_shifter[70]_i_4_n_0\,
      I1 => sel0(4),
      I2 => \r_shifter[68]_i_2_n_0\,
      O => \r_shifter[69]_i_2_n_0\
    );
\r_shifter[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAAAAAAA"
    )
        port map (
      I0 => \r_shifter[6]_i_2_n_0\,
      I1 => \r_shifter[31]_i_5_n_0\,
      I2 => r_shifter3(4),
      I3 => \r_shifter[70]_i_2_n_0\,
      I4 => sel0(0),
      I5 => sel0(1),
      O => \r_shifter[6]_i_1_n_0\
    );
\r_shifter[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => i_binary(6),
      I1 => r_state(0),
      I2 => \r_shifter_reg_n_0_[5]\,
      I3 => r_state(1),
      O => \r_shifter[6]_i_2_n_0\
    );
\r_shifter[70]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888F88888888"
    )
        port map (
      I0 => data10(1),
      I1 => r_state(0),
      I2 => r_shifter3(4),
      I3 => \r_shifter[70]_i_2_n_0\,
      I4 => \r_shifter[71]_i_8_n_0\,
      I5 => \r_shifter[71]_i_5_n_0\,
      O => \r_shifter[70]_i_1_n_0\
    );
\r_shifter[70]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data7(1),
      I1 => data6(1),
      I2 => sel0(1),
      I3 => data5(1),
      I4 => sel0(0),
      I5 => data4(1),
      O => \r_shifter[70]_i_10_n_0\
    );
\r_shifter[70]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data3(1),
      I1 => data2(1),
      I2 => sel0(1),
      I3 => data1(1),
      I4 => sel0(0),
      I5 => data0(1),
      O => \r_shifter[70]_i_11_n_0\
    );
\r_shifter[70]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => data8(0),
      I1 => sel0(0),
      I2 => data9(0),
      I3 => sel0(1),
      I4 => data10(0),
      I5 => sel0(2),
      O => \r_shifter[70]_i_12_n_0\
    );
\r_shifter[70]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data7(0),
      I1 => data6(0),
      I2 => sel0(1),
      I3 => data5(0),
      I4 => sel0(0),
      I5 => data4(0),
      O => \r_shifter[70]_i_13_n_0\
    );
\r_shifter[70]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data3(0),
      I1 => data2(0),
      I2 => sel0(1),
      I3 => data1(0),
      I4 => sel0(0),
      I5 => data0(0),
      O => \r_shifter[70]_i_14_n_0\
    );
\r_shifter[70]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFBBBC"
    )
        port map (
      I0 => sel0(4),
      I1 => \r_shifter[70]_i_3_n_0\,
      I2 => \r_shifter[70]_i_4_n_0\,
      I3 => \r_shifter[70]_i_5_n_0\,
      I4 => \r_shifter[71]_i_9_n_0\,
      O => \r_shifter[70]_i_2_n_0\
    );
\r_shifter[70]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAABFBFFFFABFB"
    )
        port map (
      I0 => sel0(4),
      I1 => \r_shifter[70]_i_6_n_0\,
      I2 => sel0(2),
      I3 => \r_shifter[70]_i_7_n_0\,
      I4 => sel0(3),
      I5 => \r_shifter[70]_i_8_n_0\,
      O => \r_shifter[70]_i_3_n_0\
    );
\r_shifter[70]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \r_shifter[70]_i_9_n_0\,
      I1 => sel0(3),
      I2 => \r_shifter[70]_i_10_n_0\,
      I3 => sel0(2),
      I4 => \r_shifter[70]_i_11_n_0\,
      O => \r_shifter[70]_i_4_n_0\
    );
\r_shifter[70]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \r_shifter[70]_i_12_n_0\,
      I1 => sel0(3),
      I2 => \r_shifter[70]_i_13_n_0\,
      I3 => sel0(2),
      I4 => \r_shifter[70]_i_14_n_0\,
      O => \r_shifter[70]_i_5_n_0\
    );
\r_shifter[70]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data3(2),
      I1 => data2(2),
      I2 => sel0(1),
      I3 => data1(2),
      I4 => sel0(0),
      I5 => data0(2),
      O => \r_shifter[70]_i_6_n_0\
    );
\r_shifter[70]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data7(2),
      I1 => data6(2),
      I2 => sel0(1),
      I3 => data5(2),
      I4 => sel0(0),
      I5 => data4(2),
      O => \r_shifter[70]_i_7_n_0\
    );
\r_shifter[70]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => data8(2),
      I1 => sel0(0),
      I2 => data9(2),
      I3 => sel0(1),
      I4 => data10(2),
      I5 => sel0(2),
      O => \r_shifter[70]_i_8_n_0\
    );
\r_shifter[70]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => data8(1),
      I1 => sel0(0),
      I2 => data9(1),
      I3 => sel0(1),
      I4 => data10(1),
      I5 => sel0(2),
      O => \r_shifter[70]_i_9_n_0\
    );
\r_shifter[71]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80AA80AA80AA8080"
    )
        port map (
      I0 => i_resetn,
      I1 => \r_shifter[71]_i_3_n_0\,
      I2 => \r_shifter[71]_i_4_n_0\,
      I3 => r_state(1),
      I4 => \r_state0_carry__1_n_1\,
      I5 => r_state(0),
      O => p_0_in(71)
    );
\r_shifter[71]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA9"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => sel0(0),
      O => r_shifter5(3)
    );
\r_shifter[71]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => sel0(4),
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => sel0(3),
      O => \r_shifter[71]_i_11_n_0\
    );
\r_shifter[71]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0001"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => sel0(4),
      O => r_shifter5(4)
    );
\r_shifter[71]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01FE"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => sel0(3),
      O => \r_shifter[71]_i_13_n_0\
    );
\r_shifter[71]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(1),
      I2 => sel0(2),
      O => \r_shifter[71]_i_14_n_0\
    );
\r_shifter[71]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AB"
    )
        port map (
      I0 => \r_shifter[70]_i_3_n_0\,
      I1 => \r_shifter[70]_i_4_n_0\,
      I2 => \r_shifter[70]_i_5_n_0\,
      O => \r_shifter[71]_i_15_n_0\
    );
\r_shifter[71]_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88BB8B8B"
    )
        port map (
      I0 => \r_shifter[71]_i_23_n_0\,
      I1 => sel0(3),
      I2 => \r_shifter[71]_i_24_n_0\,
      I3 => \r_shifter[71]_i_25_n_0\,
      I4 => sel0(2),
      O => \r_shifter[71]_i_16_n_0\
    );
\r_shifter[71]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => r_shifter3(13),
      I1 => r_shifter3(29),
      I2 => r_shifter3(19),
      I3 => r_shifter3(24),
      O => \r_shifter[71]_i_17_n_0\
    );
\r_shifter[71]_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => r_shifter3(9),
      I1 => r_shifter3(14),
      I2 => r_shifter3(8),
      I3 => r_shifter3(15),
      O => \r_shifter[71]_i_18_n_0\
    );
\r_shifter[71]_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => r_shifter3(31),
      I1 => r_shifter3(26),
      I2 => r_shifter3(30),
      O => \r_shifter[71]_i_19_n_0\
    );
\r_shifter[71]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888888888F8"
    )
        port map (
      I0 => data10(2),
      I1 => r_state(0),
      I2 => \r_shifter[71]_i_5_n_0\,
      I3 => r_shifter3(4),
      I4 => \r_shifter[71]_i_7_n_0\,
      I5 => \r_shifter[71]_i_8_n_0\,
      O => \r_shifter[71]_i_2_n_0\
    );
\r_shifter[71]_i_20\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => r_shifter3(10),
      I1 => r_shifter3(28),
      I2 => r_shifter3(11),
      I3 => r_shifter3(16),
      O => \r_shifter[71]_i_20_n_0\
    );
\r_shifter[71]_i_21\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => r_shifter3(21),
      I1 => r_shifter3(23),
      I2 => r_shifter3(17),
      I3 => r_shifter3(27),
      O => \r_shifter[71]_i_21_n_0\
    );
\r_shifter[71]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => r_shifter3(12),
      I1 => r_shifter3(25),
      I2 => r_shifter3(22),
      I3 => r_shifter3(7),
      I4 => r_shifter3(20),
      I5 => r_shifter3(18),
      O => \r_shifter[71]_i_22_n_0\
    );
\r_shifter[71]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFAABFBFFFFABFB"
    )
        port map (
      I0 => sel0(2),
      I1 => data8(3),
      I2 => sel0(0),
      I3 => data9(3),
      I4 => sel0(1),
      I5 => data10(3),
      O => \r_shifter[71]_i_23_n_0\
    );
\r_shifter[71]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data3(3),
      I1 => data2(3),
      I2 => sel0(1),
      I3 => data1(3),
      I4 => sel0(0),
      I5 => data0(3),
      O => \r_shifter[71]_i_24_n_0\
    );
\r_shifter[71]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data7(3),
      I1 => data6(3),
      I2 => sel0(1),
      I3 => data5(3),
      I4 => sel0(0),
      I5 => data4(3),
      O => \r_shifter[71]_i_25_n_0\
    );
\r_shifter[71]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(0),
      I2 => \r_shifter[71]_i_9_n_0\,
      I3 => r_shifter3(4),
      I4 => r_shifter3(5),
      O => \r_shifter[71]_i_3_n_0\
    );
\r_shifter[71]_i_32\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => sel0(4),
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => sel0(3),
      O => \r_shifter[71]_i_32_n_0\
    );
\r_shifter[71]_i_33\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => sel0(4),
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => sel0(3),
      O => \r_shifter[71]_i_33_n_0\
    );
\r_shifter[71]_i_34\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => sel0(4),
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => sel0(3),
      O => \r_shifter[71]_i_34_n_0\
    );
\r_shifter[71]_i_35\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => sel0(4),
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => sel0(3),
      O => \r_shifter[71]_i_35_n_0\
    );
\r_shifter[71]_i_36\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => sel0(4),
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => sel0(3),
      O => \r_shifter[71]_i_36_n_0\
    );
\r_shifter[71]_i_37\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => sel0(4),
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => sel0(3),
      O => \r_shifter[71]_i_37_n_0\
    );
\r_shifter[71]_i_38\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => sel0(4),
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => sel0(3),
      O => \r_shifter[71]_i_38_n_0\
    );
\r_shifter[71]_i_39\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => sel0(4),
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => sel0(3),
      O => \r_shifter[71]_i_39_n_0\
    );
\r_shifter[71]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00040000"
    )
        port map (
      I0 => \r_shifter[63]_i_5_n_0\,
      I1 => r_shifter3(6),
      I2 => \r_digitsToCheck[4]_i_3_n_0\,
      I3 => r_state(0),
      I4 => r_state(1),
      O => \r_shifter[71]_i_4_n_0\
    );
\r_shifter[71]_i_40\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => sel0(4),
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => sel0(3),
      O => \r_shifter[71]_i_40_n_0\
    );
\r_shifter[71]_i_41\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => sel0(4),
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => sel0(3),
      O => \r_shifter[71]_i_41_n_0\
    );
\r_shifter[71]_i_42\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => sel0(4),
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => sel0(3),
      O => \r_shifter[71]_i_42_n_0\
    );
\r_shifter[71]_i_43\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => sel0(4),
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => sel0(3),
      O => \r_shifter[71]_i_43_n_0\
    );
\r_shifter[71]_i_44\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => sel0(4),
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => sel0(3),
      O => \r_shifter[71]_i_44_n_0\
    );
\r_shifter[71]_i_45\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => sel0(4),
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => sel0(3),
      O => \r_shifter[71]_i_45_n_0\
    );
\r_shifter[71]_i_46\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => sel0(4),
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => sel0(3),
      O => \r_shifter[71]_i_46_n_0\
    );
\r_shifter[71]_i_47\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => sel0(4),
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => sel0(3),
      O => \r_shifter[71]_i_47_n_0\
    );
\r_shifter[71]_i_48\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => sel0(4),
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => sel0(3),
      O => \r_shifter[71]_i_48_n_0\
    );
\r_shifter[71]_i_49\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => sel0(4),
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => sel0(3),
      O => \r_shifter[71]_i_49_n_0\
    );
\r_shifter[71]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => r_shifter3(6),
      I1 => r_state(1),
      I2 => r_shifter3(5),
      O => \r_shifter[71]_i_5_n_0\
    );
\r_shifter[71]_i_50\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => sel0(4),
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => sel0(3),
      O => \r_shifter[71]_i_50_n_0\
    );
\r_shifter[71]_i_51\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => sel0(4),
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => sel0(3),
      O => \r_shifter[71]_i_51_n_0\
    );
\r_shifter[71]_i_52\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => sel0(4),
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => sel0(3),
      O => \r_shifter[71]_i_52_n_0\
    );
\r_shifter[71]_i_53\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => sel0(4),
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => sel0(3),
      O => \r_shifter[71]_i_53_n_0\
    );
\r_shifter[71]_i_54\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => sel0(4),
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => sel0(3),
      O => \r_shifter[71]_i_54_n_0\
    );
\r_shifter[71]_i_55\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => sel0(4),
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => sel0(3),
      O => \r_shifter[71]_i_55_n_0\
    );
\r_shifter[71]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFCB"
    )
        port map (
      I0 => sel0(4),
      I1 => \r_shifter[71]_i_15_n_0\,
      I2 => \r_shifter[71]_i_16_n_0\,
      I3 => \r_shifter[71]_i_9_n_0\,
      O => \r_shifter[71]_i_7_n_0\
    );
\r_shifter[71]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(1),
      O => \r_shifter[71]_i_8_n_0\
    );
\r_shifter[71]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \r_shifter[71]_i_17_n_0\,
      I1 => \r_shifter[71]_i_18_n_0\,
      I2 => \r_shifter[71]_i_19_n_0\,
      I3 => \r_shifter[71]_i_20_n_0\,
      I4 => \r_shifter[71]_i_21_n_0\,
      I5 => \r_shifter[71]_i_22_n_0\,
      O => \r_shifter[71]_i_9_n_0\
    );
\r_shifter[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08AA08AA08AA0808"
    )
        port map (
      I0 => i_resetn,
      I1 => \r_shifter[71]_i_3_n_0\,
      I2 => \r_shifter[39]_i_4_n_0\,
      I3 => r_state(1),
      I4 => \r_state0_carry__1_n_1\,
      I5 => r_state(0),
      O => p_0_in(7)
    );
\r_shifter[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4540FFFF45404540"
    )
        port map (
      I0 => r_state(1),
      I1 => \r_shifter_reg_n_0_[6]\,
      I2 => r_state(0),
      I3 => i_binary(7),
      I4 => \r_shifter[31]_i_5_n_0\,
      I5 => \r_shifter[7]_i_3_n_0\,
      O => \r_shifter[7]_i_2_n_0\
    );
\r_shifter[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000510"
    )
        port map (
      I0 => r_shifter3(4),
      I1 => sel0(4),
      I2 => \r_shifter[71]_i_15_n_0\,
      I3 => \r_shifter[71]_i_16_n_0\,
      I4 => \r_shifter[71]_i_9_n_0\,
      I5 => \r_shifter[71]_i_8_n_0\,
      O => \r_shifter[7]_i_3_n_0\
    );
\r_shifter[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAABA"
    )
        port map (
      I0 => \r_shifter[8]_i_2_n_0\,
      I1 => r_shifter3(5),
      I2 => r_state(1),
      I3 => r_shifter3(6),
      I4 => \r_shifter[68]_i_2_n_0\,
      I5 => \r_shifter[43]_i_3_n_0\,
      O => \r_shifter[8]_i_1_n_0\
    );
\r_shifter[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => i_binary(8),
      I1 => r_state(0),
      I2 => \r_shifter_reg_n_0_[7]\,
      I3 => r_state(1),
      O => \r_shifter[8]_i_2_n_0\
    );
\r_shifter[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAABA"
    )
        port map (
      I0 => \r_shifter[9]_i_2_n_0\,
      I1 => r_shifter3(5),
      I2 => r_state(1),
      I3 => r_shifter3(6),
      I4 => \r_shifter[43]_i_3_n_0\,
      I5 => \r_shifter[69]_i_2_n_0\,
      O => \r_shifter[9]_i_1_n_0\
    );
\r_shifter[9]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => i_binary(9),
      I1 => r_state(0),
      I2 => \r_shifter_reg_n_0_[8]\,
      I3 => r_state(1),
      O => \r_shifter[9]_i_2_n_0\
    );
\r_shifter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => p_0_in(3),
      D => \r_shifter[0]_i_1_n_0\,
      Q => \r_shifter_reg_n_0_[0]\,
      R => '0'
    );
\r_shifter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => p_0_in(11),
      D => \r_shifter[10]_i_1_n_0\,
      Q => \r_shifter_reg_n_0_[10]\,
      R => '0'
    );
\r_shifter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => p_0_in(11),
      D => \r_shifter[11]_i_2_n_0\,
      Q => \r_shifter_reg_n_0_[11]\,
      R => '0'
    );
\r_shifter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => p_0_in(15),
      D => \r_shifter[12]_i_1_n_0\,
      Q => \r_shifter_reg_n_0_[12]\,
      R => '0'
    );
\r_shifter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => p_0_in(15),
      D => \r_shifter[13]_i_1_n_0\,
      Q => \r_shifter_reg_n_0_[13]\,
      R => '0'
    );
\r_shifter_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => p_0_in(15),
      D => \r_shifter[14]_i_1_n_0\,
      Q => \r_shifter_reg_n_0_[14]\,
      R => '0'
    );
\r_shifter_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => p_0_in(15),
      D => \r_shifter[15]_i_2_n_0\,
      Q => \r_shifter_reg_n_0_[15]\,
      R => '0'
    );
\r_shifter_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => p_0_in(19),
      D => \r_shifter[16]_i_1_n_0\,
      Q => \r_shifter_reg_n_0_[16]\,
      R => '0'
    );
\r_shifter_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => p_0_in(19),
      D => \r_shifter[17]_i_1_n_0\,
      Q => \r_shifter_reg_n_0_[17]\,
      R => '0'
    );
\r_shifter_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => p_0_in(19),
      D => \r_shifter[18]_i_1_n_0\,
      Q => \r_shifter_reg_n_0_[18]\,
      R => '0'
    );
\r_shifter_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => p_0_in(19),
      D => \r_shifter[19]_i_2_n_0\,
      Q => \r_shifter_reg_n_0_[19]\,
      R => '0'
    );
\r_shifter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => p_0_in(3),
      D => \r_shifter[1]_i_1_n_0\,
      Q => \r_shifter_reg_n_0_[1]\,
      R => '0'
    );
\r_shifter_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => p_0_in(23),
      D => \r_shifter[20]_i_1_n_0\,
      Q => \r_shifter_reg_n_0_[20]\,
      R => '0'
    );
\r_shifter_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => p_0_in(23),
      D => \r_shifter[21]_i_1_n_0\,
      Q => \r_shifter_reg_n_0_[21]\,
      R => '0'
    );
\r_shifter_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => p_0_in(23),
      D => \r_shifter[22]_i_1_n_0\,
      Q => \r_shifter_reg_n_0_[22]\,
      R => '0'
    );
\r_shifter_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => p_0_in(23),
      D => \r_shifter[23]_i_2_n_0\,
      Q => \r_shifter_reg_n_0_[23]\,
      R => '0'
    );
\r_shifter_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => p_0_in(27),
      D => \r_shifter[24]_i_1_n_0\,
      Q => \r_shifter_reg_n_0_[24]\,
      R => '0'
    );
\r_shifter_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => p_0_in(27),
      D => \r_shifter[25]_i_1_n_0\,
      Q => \r_shifter_reg_n_0_[25]\,
      R => '0'
    );
\r_shifter_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => p_0_in(27),
      D => \r_shifter[26]_i_1_n_0\,
      Q => \r_shifter_reg_n_0_[26]\,
      R => '0'
    );
\r_shifter_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => p_0_in(27),
      D => \r_shifter[27]_i_2_n_0\,
      Q => \r_shifter_reg_n_0_[27]\,
      R => '0'
    );
\r_shifter_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => p_0_in(28),
      D => \r_shifter[28]_i_1_n_0\,
      Q => data0(0),
      R => '0'
    );
\r_shifter_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => p_0_in(28),
      D => \r_shifter[29]_i_1_n_0\,
      Q => data0(1),
      R => '0'
    );
\r_shifter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => p_0_in(3),
      D => \r_shifter[2]_i_1_n_0\,
      Q => \r_shifter_reg_n_0_[2]\,
      R => '0'
    );
\r_shifter_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => p_0_in(28),
      D => \r_shifter[30]_i_1_n_0\,
      Q => data0(2),
      R => '0'
    );
\r_shifter_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => p_0_in(28),
      D => \r_shifter[31]_i_2_n_0\,
      Q => data0(3),
      R => '0'
    );
\r_shifter_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => p_0_in(35),
      D => \r_shifter[32]_i_1_n_0\,
      Q => data1(0),
      R => '0'
    );
\r_shifter_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => p_0_in(35),
      D => \r_shifter[33]_i_1_n_0\,
      Q => data1(1),
      R => '0'
    );
\r_shifter_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => p_0_in(35),
      D => \r_shifter[34]_i_1_n_0\,
      Q => data1(2),
      R => '0'
    );
\r_shifter_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => p_0_in(35),
      D => \r_shifter[35]_i_2_n_0\,
      Q => data1(3),
      R => '0'
    );
\r_shifter_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => p_0_in(39),
      D => \r_shifter[36]_i_1_n_0\,
      Q => data2(0),
      R => '0'
    );
\r_shifter_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => p_0_in(39),
      D => \r_shifter[37]_i_1_n_0\,
      Q => data2(1),
      R => '0'
    );
\r_shifter_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => p_0_in(39),
      D => \r_shifter[38]_i_1_n_0\,
      Q => data2(2),
      R => '0'
    );
\r_shifter_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => p_0_in(39),
      D => \r_shifter[39]_i_2_n_0\,
      Q => data2(3),
      R => '0'
    );
\r_shifter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => p_0_in(3),
      D => \r_shifter[3]_i_2_n_0\,
      Q => \r_shifter_reg_n_0_[3]\,
      R => '0'
    );
\r_shifter_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => p_0_in(43),
      D => \r_shifter[40]_i_1_n_0\,
      Q => data3(0),
      R => '0'
    );
\r_shifter_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => p_0_in(43),
      D => \r_shifter[41]_i_1_n_0\,
      Q => data3(1),
      R => '0'
    );
\r_shifter_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => p_0_in(43),
      D => \r_shifter[42]_i_1_n_0\,
      Q => data3(2),
      R => '0'
    );
\r_shifter_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => p_0_in(43),
      D => \r_shifter[43]_i_2_n_0\,
      Q => data3(3),
      R => '0'
    );
\r_shifter_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => p_0_in(47),
      D => \r_shifter[44]_i_1_n_0\,
      Q => data4(0),
      R => '0'
    );
\r_shifter_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => p_0_in(47),
      D => \r_shifter[45]_i_1_n_0\,
      Q => data4(1),
      R => '0'
    );
\r_shifter_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => p_0_in(47),
      D => \r_shifter[46]_i_1_n_0\,
      Q => data4(2),
      R => '0'
    );
\r_shifter_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => p_0_in(47),
      D => \r_shifter[47]_i_2_n_0\,
      Q => data4(3),
      R => '0'
    );
\r_shifter_reg[48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => p_0_in(51),
      D => \r_shifter[48]_i_1_n_0\,
      Q => data5(0),
      R => '0'
    );
\r_shifter_reg[49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => p_0_in(51),
      D => \r_shifter[49]_i_1_n_0\,
      Q => data5(1),
      R => '0'
    );
\r_shifter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => p_0_in(7),
      D => \r_shifter[4]_i_1_n_0\,
      Q => \r_shifter_reg_n_0_[4]\,
      R => '0'
    );
\r_shifter_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => p_0_in(51),
      D => \r_shifter[50]_i_1_n_0\,
      Q => data5(2),
      R => '0'
    );
\r_shifter_reg[51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => p_0_in(51),
      D => \r_shifter[51]_i_2_n_0\,
      Q => data5(3),
      R => '0'
    );
\r_shifter_reg[52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => p_0_in(55),
      D => \r_shifter[52]_i_1_n_0\,
      Q => data6(0),
      R => '0'
    );
\r_shifter_reg[53]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => p_0_in(55),
      D => \r_shifter[53]_i_1_n_0\,
      Q => data6(1),
      R => '0'
    );
\r_shifter_reg[54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => p_0_in(55),
      D => \r_shifter[54]_i_1_n_0\,
      Q => data6(2),
      R => '0'
    );
\r_shifter_reg[55]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => p_0_in(55),
      D => \r_shifter[55]_i_2_n_0\,
      Q => data6(3),
      R => '0'
    );
\r_shifter_reg[56]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => p_0_in(59),
      D => \r_shifter[56]_i_1_n_0\,
      Q => data7(0),
      R => '0'
    );
\r_shifter_reg[57]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => p_0_in(59),
      D => \r_shifter[57]_i_1_n_0\,
      Q => data7(1),
      R => '0'
    );
\r_shifter_reg[58]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => p_0_in(59),
      D => \r_shifter[58]_i_1_n_0\,
      Q => data7(2),
      R => '0'
    );
\r_shifter_reg[59]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => p_0_in(59),
      D => \r_shifter[59]_i_2_n_0\,
      Q => data7(3),
      R => '0'
    );
\r_shifter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => p_0_in(7),
      D => \r_shifter[5]_i_1_n_0\,
      Q => \r_shifter_reg_n_0_[5]\,
      R => '0'
    );
\r_shifter_reg[60]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => p_0_in(63),
      D => \r_shifter[60]_i_1_n_0\,
      Q => data8(0),
      R => '0'
    );
\r_shifter_reg[61]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => p_0_in(63),
      D => \r_shifter[61]_i_1_n_0\,
      Q => data8(1),
      R => '0'
    );
\r_shifter_reg[62]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => p_0_in(63),
      D => \r_shifter[62]_i_1_n_0\,
      Q => data8(2),
      R => '0'
    );
\r_shifter_reg[63]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => p_0_in(63),
      D => \r_shifter[63]_i_2_n_0\,
      Q => data8(3),
      R => '0'
    );
\r_shifter_reg[64]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => p_0_in(67),
      D => \r_shifter[64]_i_1_n_0\,
      Q => data9(0),
      R => '0'
    );
\r_shifter_reg[65]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => p_0_in(67),
      D => \r_shifter[65]_i_1_n_0\,
      Q => data9(1),
      R => '0'
    );
\r_shifter_reg[66]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => p_0_in(67),
      D => \r_shifter[66]_i_1_n_0\,
      Q => data9(2),
      R => '0'
    );
\r_shifter_reg[67]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => p_0_in(67),
      D => \r_shifter[67]_i_2_n_0\,
      Q => data9(3),
      R => '0'
    );
\r_shifter_reg[68]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => p_0_in(71),
      D => \r_shifter[68]_i_1_n_0\,
      Q => data10(0),
      R => '0'
    );
\r_shifter_reg[69]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => p_0_in(71),
      D => \r_shifter[69]_i_1_n_0\,
      Q => data10(1),
      R => '0'
    );
\r_shifter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => p_0_in(7),
      D => \r_shifter[6]_i_1_n_0\,
      Q => \r_shifter_reg_n_0_[6]\,
      R => '0'
    );
\r_shifter_reg[70]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => p_0_in(71),
      D => \r_shifter[70]_i_1_n_0\,
      Q => data10(2),
      R => '0'
    );
\r_shifter_reg[71]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => p_0_in(71),
      D => \r_shifter[71]_i_2_n_0\,
      Q => data10(3),
      R => '0'
    );
\r_shifter_reg[71]_i_26\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_shifter_reg[71]_i_30_n_0\,
      CO(3) => \r_shifter_reg[71]_i_26_n_0\,
      CO(2) => \r_shifter_reg[71]_i_26_n_1\,
      CO(1) => \r_shifter_reg[71]_i_26_n_2\,
      CO(0) => \r_shifter_reg[71]_i_26_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => r_shifter3(15 downto 12),
      S(3) => \r_shifter[71]_i_32_n_0\,
      S(2) => \r_shifter[71]_i_33_n_0\,
      S(1) => \r_shifter[71]_i_34_n_0\,
      S(0) => \r_shifter[71]_i_35_n_0\
    );
\r_shifter_reg[71]_i_27\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_shifter_reg[71]_i_29_n_0\,
      CO(3) => \NLW_r_shifter_reg[71]_i_27_CO_UNCONNECTED\(3),
      CO(2) => \r_shifter_reg[71]_i_27_n_1\,
      CO(1) => \r_shifter_reg[71]_i_27_n_2\,
      CO(0) => \r_shifter_reg[71]_i_27_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => r_shifter3(31 downto 28),
      S(3) => \r_shifter[71]_i_36_n_0\,
      S(2) => \r_shifter[71]_i_37_n_0\,
      S(1) => \r_shifter[71]_i_38_n_0\,
      S(0) => \r_shifter[71]_i_39_n_0\
    );
\r_shifter_reg[71]_i_28\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_shifter_reg[71]_i_26_n_0\,
      CO(3) => \r_shifter_reg[71]_i_28_n_0\,
      CO(2) => \r_shifter_reg[71]_i_28_n_1\,
      CO(1) => \r_shifter_reg[71]_i_28_n_2\,
      CO(0) => \r_shifter_reg[71]_i_28_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => r_shifter3(19 downto 16),
      S(3) => \r_shifter[71]_i_40_n_0\,
      S(2) => \r_shifter[71]_i_41_n_0\,
      S(1) => \r_shifter[71]_i_42_n_0\,
      S(0) => \r_shifter[71]_i_43_n_0\
    );
\r_shifter_reg[71]_i_29\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_shifter_reg[71]_i_31_n_0\,
      CO(3) => \r_shifter_reg[71]_i_29_n_0\,
      CO(2) => \r_shifter_reg[71]_i_29_n_1\,
      CO(1) => \r_shifter_reg[71]_i_29_n_2\,
      CO(0) => \r_shifter_reg[71]_i_29_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => r_shifter3(27 downto 24),
      S(3) => \r_shifter[71]_i_44_n_0\,
      S(2) => \r_shifter[71]_i_45_n_0\,
      S(1) => \r_shifter[71]_i_46_n_0\,
      S(0) => \r_shifter[71]_i_47_n_0\
    );
\r_shifter_reg[71]_i_30\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_shifter_reg[71]_i_6_n_0\,
      CO(3) => \r_shifter_reg[71]_i_30_n_0\,
      CO(2) => \r_shifter_reg[71]_i_30_n_1\,
      CO(1) => \r_shifter_reg[71]_i_30_n_2\,
      CO(0) => \r_shifter_reg[71]_i_30_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => r_shifter3(11 downto 8),
      S(3) => \r_shifter[71]_i_48_n_0\,
      S(2) => \r_shifter[71]_i_49_n_0\,
      S(1) => \r_shifter[71]_i_50_n_0\,
      S(0) => \r_shifter[71]_i_51_n_0\
    );
\r_shifter_reg[71]_i_31\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_shifter_reg[71]_i_28_n_0\,
      CO(3) => \r_shifter_reg[71]_i_31_n_0\,
      CO(2) => \r_shifter_reg[71]_i_31_n_1\,
      CO(1) => \r_shifter_reg[71]_i_31_n_2\,
      CO(0) => \r_shifter_reg[71]_i_31_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => r_shifter3(23 downto 20),
      S(3) => \r_shifter[71]_i_52_n_0\,
      S(2) => \r_shifter[71]_i_53_n_0\,
      S(1) => \r_shifter[71]_i_54_n_0\,
      S(0) => \r_shifter[71]_i_55_n_0\
    );
\r_shifter_reg[71]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \r_shifter_reg[71]_i_6_n_0\,
      CO(2) => \r_shifter_reg[71]_i_6_n_1\,
      CO(1) => \r_shifter_reg[71]_i_6_n_2\,
      CO(0) => \r_shifter_reg[71]_i_6_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => r_shifter5(3),
      DI(0) => '0',
      O(3 downto 0) => r_shifter3(7 downto 4),
      S(3) => \r_shifter[71]_i_11_n_0\,
      S(2) => r_shifter5(4),
      S(1) => \r_shifter[71]_i_13_n_0\,
      S(0) => \r_shifter[71]_i_14_n_0\
    );
\r_shifter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => p_0_in(7),
      D => \r_shifter[7]_i_2_n_0\,
      Q => \r_shifter_reg_n_0_[7]\,
      R => '0'
    );
\r_shifter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => p_0_in(11),
      D => \r_shifter[8]_i_1_n_0\,
      Q => \r_shifter_reg_n_0_[8]\,
      R => '0'
    );
\r_shifter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => p_0_in(11),
      D => \r_shifter[9]_i_1_n_0\,
      Q => \r_shifter_reg_n_0_[9]\,
      R => '0'
    );
r_state0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => r_state0_carry_n_0,
      CO(2) => r_state0_carry_n_1,
      CO(1) => r_state0_carry_n_2,
      CO(0) => r_state0_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => NLW_r_state0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => r_state0_carry_i_1_n_0,
      S(2) => r_state0_carry_i_2_n_0,
      S(1) => r_state0_carry_i_3_n_0,
      S(0) => r_state0_carry_i_4_n_0
    );
\r_state0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => r_state0_carry_n_0,
      CO(3) => \r_state0_carry__0_n_0\,
      CO(2) => \r_state0_carry__0_n_1\,
      CO(1) => \r_state0_carry__0_n_2\,
      CO(0) => \r_state0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => \NLW_r_state0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \r_state0_carry__0_i_1_n_0\,
      S(2) => \r_state0_carry__0_i_2_n_0\,
      S(1) => \r_state0_carry__0_i_3_n_0\,
      S(0) => \r_state0_carry__0_i_4_n_0\
    );
\r_state0_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => i_binary(21),
      I1 => r_oldBinary(21),
      I2 => i_binary(22),
      I3 => r_oldBinary(22),
      I4 => r_oldBinary(23),
      I5 => i_binary(23),
      O => \r_state0_carry__0_i_1_n_0\
    );
\r_state0_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => i_binary(18),
      I1 => r_oldBinary(18),
      I2 => i_binary(19),
      I3 => r_oldBinary(19),
      I4 => r_oldBinary(20),
      I5 => i_binary(20),
      O => \r_state0_carry__0_i_2_n_0\
    );
\r_state0_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => i_binary(15),
      I1 => r_oldBinary(15),
      I2 => i_binary(16),
      I3 => r_oldBinary(16),
      I4 => r_oldBinary(17),
      I5 => i_binary(17),
      O => \r_state0_carry__0_i_3_n_0\
    );
\r_state0_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => i_binary(12),
      I1 => r_oldBinary(12),
      I2 => i_binary(13),
      I3 => r_oldBinary(13),
      I4 => r_oldBinary(14),
      I5 => i_binary(14),
      O => \r_state0_carry__0_i_4_n_0\
    );
\r_state0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_state0_carry__0_n_0\,
      CO(3) => \NLW_r_state0_carry__1_CO_UNCONNECTED\(3),
      CO(2) => \r_state0_carry__1_n_1\,
      CO(1) => \r_state0_carry__1_n_2\,
      CO(0) => \r_state0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0111",
      O(3 downto 0) => \NLW_r_state0_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \r_state0_carry__1_i_1_n_0\,
      S(1) => \r_state0_carry__1_i_2_n_0\,
      S(0) => \r_state0_carry__1_i_3_n_0\
    );
\r_state0_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => r_oldBinary(31),
      I1 => i_binary(31),
      I2 => r_oldBinary(30),
      I3 => i_binary(30),
      O => \r_state0_carry__1_i_1_n_0\
    );
\r_state0_carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => i_binary(27),
      I1 => r_oldBinary(27),
      I2 => i_binary(28),
      I3 => r_oldBinary(28),
      I4 => r_oldBinary(29),
      I5 => i_binary(29),
      O => \r_state0_carry__1_i_2_n_0\
    );
\r_state0_carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => i_binary(26),
      I1 => r_oldBinary(26),
      I2 => i_binary(24),
      I3 => r_oldBinary(24),
      I4 => r_oldBinary(25),
      I5 => i_binary(25),
      O => \r_state0_carry__1_i_3_n_0\
    );
r_state0_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => i_binary(11),
      I1 => r_oldBinary(11),
      I2 => i_binary(9),
      I3 => r_oldBinary(9),
      I4 => r_oldBinary(10),
      I5 => i_binary(10),
      O => r_state0_carry_i_1_n_0
    );
r_state0_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => i_binary(6),
      I1 => r_oldBinary(6),
      I2 => i_binary(7),
      I3 => r_oldBinary(7),
      I4 => r_oldBinary(8),
      I5 => i_binary(8),
      O => r_state0_carry_i_2_n_0
    );
r_state0_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => i_binary(4),
      I1 => r_oldBinary(4),
      I2 => i_binary(3),
      I3 => r_oldBinary(3),
      I4 => r_oldBinary(5),
      I5 => i_binary(5),
      O => r_state0_carry_i_3_n_0
    );
r_state0_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => i_binary(0),
      I1 => r_oldBinary(0),
      I2 => i_binary(1),
      I3 => r_oldBinary(1),
      I4 => r_oldBinary(2),
      I5 => i_binary(2),
      O => r_state0_carry_i_4_n_0
    );
\r_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F2C"
    )
        port map (
      I0 => \r_bitsToShift[31]_i_3_n_0\,
      I1 => r_state(1),
      I2 => r_state(0),
      I3 => \r_state0_carry__1_n_1\,
      O => \r_state[0]_i_1_n_0\
    );
\r_state[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \r_digitsToCheck[4]_i_3_n_0\,
      I1 => r_state(0),
      I2 => r_state(1),
      O => r_state0
    );
\r_state[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => r_state(0),
      I1 => r_state(1),
      O => \r_state[1]_i_2_n_0\
    );
\r_state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => r_state0,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => \r_state[0]_i_1_n_0\,
      Q => r_state(0)
    );
\r_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => r_state0,
      CLR => \o_bcd[39]_i_2_n_0\,
      D => \r_state[1]_i_2_n_0\,
      Q => r_state(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zsys_binary_to_bcd_0_0 is
  port (
    i_clk : in STD_LOGIC;
    i_resetn : in STD_LOGIC;
    i_binary : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_bcd : out STD_LOGIC_VECTOR ( 39 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of zsys_binary_to_bcd_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of zsys_binary_to_bcd_0_0 : entity is "zsys_binary_to_bcd_0_0,binary_to_bcd,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of zsys_binary_to_bcd_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of zsys_binary_to_bcd_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of zsys_binary_to_bcd_0_0 : entity is "binary_to_bcd,Vivado 2019.2";
end zsys_binary_to_bcd_0_0;

architecture STRUCTURE of zsys_binary_to_bcd_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of i_clk : signal is "xilinx.com:signal:clock:1.0 i_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of i_clk : signal is "XIL_INTERFACENAME i_clk, ASSOCIATED_RESET i_resetn, FREQ_HZ 80000000, PHASE 0.000, CLK_DOMAIN zsys_adc_clk_n, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of i_resetn : signal is "xilinx.com:signal:reset:1.0 i_resetn RST";
  attribute X_INTERFACE_PARAMETER of i_resetn : signal is "XIL_INTERFACENAME i_resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.zsys_binary_to_bcd_0_0_binary_to_bcd
     port map (
      i_binary(31 downto 0) => i_binary(31 downto 0),
      i_clk => i_clk,
      i_resetn => i_resetn,
      o_bcd(39 downto 0) => o_bcd(39 downto 0)
    );
end STRUCTURE;
