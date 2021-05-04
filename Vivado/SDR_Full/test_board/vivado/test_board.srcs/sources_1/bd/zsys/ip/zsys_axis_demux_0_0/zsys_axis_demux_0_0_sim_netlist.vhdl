-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
-- Date        : Thu Apr 22 21:55:43 2021
-- Host        : dan-Desktop running 64-bit Ubuntu 18.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/dan/Microwave-SDR/Vivado/SDR_Full/test_board/vivado/test_board.srcs/sources_1/bd/zsys/ip/zsys_axis_demux_0_0/zsys_axis_demux_0_0_sim_netlist.vhdl
-- Design      : zsys_axis_demux_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zsys_axis_demux_0_0_axis_demux is
  port (
    oS_data0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_valid0 : out STD_LOGIC;
    oS_data1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_valid1 : out STD_LOGIC;
    oS_data2 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_valid2 : out STD_LOGIC;
    oS_data3 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_valid3 : out STD_LOGIC;
    oS_data4 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_valid4 : out STD_LOGIC;
    oS_data5 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_valid5 : out STD_LOGIC;
    oS_data6 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_valid6 : out STD_LOGIC;
    oS_data7 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_valid7 : out STD_LOGIC;
    i_ctl : in STD_LOGIC_VECTOR ( 2 downto 0 );
    iS_data : in STD_LOGIC_VECTOR ( 15 downto 0 );
    i_clk : in STD_LOGIC;
    i_valid : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of zsys_axis_demux_0_0_axis_demux : entity is "axis_demux";
end zsys_axis_demux_0_0_axis_demux;

architecture STRUCTURE of zsys_axis_demux_0_0_axis_demux is
  signal \oS_data0[0]_i_1_n_0\ : STD_LOGIC;
  signal \oS_data0[10]_i_1_n_0\ : STD_LOGIC;
  signal \oS_data0[11]_i_1_n_0\ : STD_LOGIC;
  signal \oS_data0[12]_i_1_n_0\ : STD_LOGIC;
  signal \oS_data0[13]_i_1_n_0\ : STD_LOGIC;
  signal \oS_data0[14]_i_1_n_0\ : STD_LOGIC;
  signal \oS_data0[15]_i_1_n_0\ : STD_LOGIC;
  signal \oS_data0[15]_i_2_n_0\ : STD_LOGIC;
  signal \oS_data0[1]_i_1_n_0\ : STD_LOGIC;
  signal \oS_data0[2]_i_1_n_0\ : STD_LOGIC;
  signal \oS_data0[3]_i_1_n_0\ : STD_LOGIC;
  signal \oS_data0[4]_i_1_n_0\ : STD_LOGIC;
  signal \oS_data0[5]_i_1_n_0\ : STD_LOGIC;
  signal \oS_data0[6]_i_1_n_0\ : STD_LOGIC;
  signal \oS_data0[7]_i_1_n_0\ : STD_LOGIC;
  signal \oS_data0[8]_i_1_n_0\ : STD_LOGIC;
  signal \oS_data0[9]_i_1_n_0\ : STD_LOGIC;
  signal \oS_data1[0]_i_1_n_0\ : STD_LOGIC;
  signal \oS_data1[10]_i_1_n_0\ : STD_LOGIC;
  signal \oS_data1[11]_i_1_n_0\ : STD_LOGIC;
  signal \oS_data1[12]_i_1_n_0\ : STD_LOGIC;
  signal \oS_data1[13]_i_1_n_0\ : STD_LOGIC;
  signal \oS_data1[14]_i_1_n_0\ : STD_LOGIC;
  signal \oS_data1[15]_i_1_n_0\ : STD_LOGIC;
  signal \oS_data1[1]_i_1_n_0\ : STD_LOGIC;
  signal \oS_data1[2]_i_1_n_0\ : STD_LOGIC;
  signal \oS_data1[3]_i_1_n_0\ : STD_LOGIC;
  signal \oS_data1[4]_i_1_n_0\ : STD_LOGIC;
  signal \oS_data1[5]_i_1_n_0\ : STD_LOGIC;
  signal \oS_data1[6]_i_1_n_0\ : STD_LOGIC;
  signal \oS_data1[7]_i_1_n_0\ : STD_LOGIC;
  signal \oS_data1[8]_i_1_n_0\ : STD_LOGIC;
  signal \oS_data1[9]_i_1_n_0\ : STD_LOGIC;
  signal \oS_data2[0]_i_1_n_0\ : STD_LOGIC;
  signal \oS_data2[10]_i_1_n_0\ : STD_LOGIC;
  signal \oS_data2[11]_i_1_n_0\ : STD_LOGIC;
  signal \oS_data2[12]_i_1_n_0\ : STD_LOGIC;
  signal \oS_data2[13]_i_1_n_0\ : STD_LOGIC;
  signal \oS_data2[14]_i_1_n_0\ : STD_LOGIC;
  signal \oS_data2[15]_i_1_n_0\ : STD_LOGIC;
  signal \oS_data2[15]_i_2_n_0\ : STD_LOGIC;
  signal \oS_data2[1]_i_1_n_0\ : STD_LOGIC;
  signal \oS_data2[2]_i_1_n_0\ : STD_LOGIC;
  signal \oS_data2[3]_i_1_n_0\ : STD_LOGIC;
  signal \oS_data2[4]_i_1_n_0\ : STD_LOGIC;
  signal \oS_data2[5]_i_1_n_0\ : STD_LOGIC;
  signal \oS_data2[6]_i_1_n_0\ : STD_LOGIC;
  signal \oS_data2[7]_i_1_n_0\ : STD_LOGIC;
  signal \oS_data2[8]_i_1_n_0\ : STD_LOGIC;
  signal \oS_data2[9]_i_1_n_0\ : STD_LOGIC;
  signal \oS_data3[0]_i_1_n_0\ : STD_LOGIC;
  signal \oS_data3[10]_i_1_n_0\ : STD_LOGIC;
  signal \oS_data3[11]_i_1_n_0\ : STD_LOGIC;
  signal \oS_data3[12]_i_1_n_0\ : STD_LOGIC;
  signal \oS_data3[13]_i_1_n_0\ : STD_LOGIC;
  signal \oS_data3[14]_i_1_n_0\ : STD_LOGIC;
  signal \oS_data3[15]_i_1_n_0\ : STD_LOGIC;
  signal \oS_data3[15]_i_2_n_0\ : STD_LOGIC;
  signal \oS_data3[1]_i_1_n_0\ : STD_LOGIC;
  signal \oS_data3[2]_i_1_n_0\ : STD_LOGIC;
  signal \oS_data3[3]_i_1_n_0\ : STD_LOGIC;
  signal \oS_data3[4]_i_1_n_0\ : STD_LOGIC;
  signal \oS_data3[5]_i_1_n_0\ : STD_LOGIC;
  signal \oS_data3[6]_i_1_n_0\ : STD_LOGIC;
  signal \oS_data3[7]_i_1_n_0\ : STD_LOGIC;
  signal \oS_data3[8]_i_1_n_0\ : STD_LOGIC;
  signal \oS_data3[9]_i_1_n_0\ : STD_LOGIC;
  signal \oS_data4[0]_i_1_n_0\ : STD_LOGIC;
  signal \oS_data4[10]_i_1_n_0\ : STD_LOGIC;
  signal \oS_data4[11]_i_1_n_0\ : STD_LOGIC;
  signal \oS_data4[12]_i_1_n_0\ : STD_LOGIC;
  signal \oS_data4[13]_i_1_n_0\ : STD_LOGIC;
  signal \oS_data4[14]_i_1_n_0\ : STD_LOGIC;
  signal \oS_data4[15]_i_1_n_0\ : STD_LOGIC;
  signal \oS_data4[15]_i_2_n_0\ : STD_LOGIC;
  signal \oS_data4[1]_i_1_n_0\ : STD_LOGIC;
  signal \oS_data4[2]_i_1_n_0\ : STD_LOGIC;
  signal \oS_data4[3]_i_1_n_0\ : STD_LOGIC;
  signal \oS_data4[4]_i_1_n_0\ : STD_LOGIC;
  signal \oS_data4[5]_i_1_n_0\ : STD_LOGIC;
  signal \oS_data4[6]_i_1_n_0\ : STD_LOGIC;
  signal \oS_data4[7]_i_1_n_0\ : STD_LOGIC;
  signal \oS_data4[8]_i_1_n_0\ : STD_LOGIC;
  signal \oS_data4[9]_i_1_n_0\ : STD_LOGIC;
  signal \oS_data5[15]_i_1_n_0\ : STD_LOGIC;
  signal \oS_data6[15]_i_1_n_0\ : STD_LOGIC;
  signal o_valid0_i_1_n_0 : STD_LOGIC;
  signal o_valid1_i_1_n_0 : STD_LOGIC;
  signal \o_valid2__0_n_0\ : STD_LOGIC;
  signal o_valid3_i_1_n_0 : STD_LOGIC;
  signal o_valid4_i_1_n_0 : STD_LOGIC;
  signal o_valid5_i_1_n_0 : STD_LOGIC;
  signal \o_valid6__0_n_0\ : STD_LOGIC;
  signal o_valid7_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \oS_data0[0]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \oS_data0[10]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \oS_data0[11]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \oS_data0[12]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \oS_data0[13]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \oS_data0[14]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \oS_data0[15]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \oS_data0[1]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \oS_data0[2]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \oS_data0[3]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \oS_data0[4]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \oS_data0[5]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \oS_data0[6]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \oS_data0[7]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \oS_data0[8]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \oS_data0[9]_i_1\ : label is "soft_lutpair18";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of \oS_data0_reg[0]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT0 TDATA";
  attribute X_INTERFACE_INFO of \oS_data0_reg[10]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT0 TDATA";
  attribute X_INTERFACE_INFO of \oS_data0_reg[11]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT0 TDATA";
  attribute X_INTERFACE_INFO of \oS_data0_reg[12]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT0 TDATA";
  attribute X_INTERFACE_INFO of \oS_data0_reg[13]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT0 TDATA";
  attribute X_INTERFACE_INFO of \oS_data0_reg[14]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT0 TDATA";
  attribute X_INTERFACE_INFO of \oS_data0_reg[15]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT0 TDATA";
  attribute X_INTERFACE_INFO of \oS_data0_reg[1]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT0 TDATA";
  attribute X_INTERFACE_INFO of \oS_data0_reg[2]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT0 TDATA";
  attribute X_INTERFACE_INFO of \oS_data0_reg[3]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT0 TDATA";
  attribute X_INTERFACE_INFO of \oS_data0_reg[4]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT0 TDATA";
  attribute X_INTERFACE_INFO of \oS_data0_reg[5]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT0 TDATA";
  attribute X_INTERFACE_INFO of \oS_data0_reg[6]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT0 TDATA";
  attribute X_INTERFACE_INFO of \oS_data0_reg[7]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT0 TDATA";
  attribute X_INTERFACE_INFO of \oS_data0_reg[8]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT0 TDATA";
  attribute X_INTERFACE_INFO of \oS_data0_reg[9]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT0 TDATA";
  attribute SOFT_HLUTNM of \oS_data1[0]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \oS_data1[10]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \oS_data1[11]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \oS_data1[12]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \oS_data1[13]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \oS_data1[14]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \oS_data1[15]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \oS_data1[1]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \oS_data1[2]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \oS_data1[3]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \oS_data1[4]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \oS_data1[5]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \oS_data1[6]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \oS_data1[7]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \oS_data1[8]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \oS_data1[9]_i_1\ : label is "soft_lutpair18";
  attribute X_INTERFACE_INFO of \oS_data1_reg[0]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT1 TDATA";
  attribute X_INTERFACE_INFO of \oS_data1_reg[10]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT1 TDATA";
  attribute X_INTERFACE_INFO of \oS_data1_reg[11]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT1 TDATA";
  attribute X_INTERFACE_INFO of \oS_data1_reg[12]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT1 TDATA";
  attribute X_INTERFACE_INFO of \oS_data1_reg[13]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT1 TDATA";
  attribute X_INTERFACE_INFO of \oS_data1_reg[14]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT1 TDATA";
  attribute X_INTERFACE_INFO of \oS_data1_reg[15]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT1 TDATA";
  attribute X_INTERFACE_INFO of \oS_data1_reg[1]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT1 TDATA";
  attribute X_INTERFACE_INFO of \oS_data1_reg[2]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT1 TDATA";
  attribute X_INTERFACE_INFO of \oS_data1_reg[3]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT1 TDATA";
  attribute X_INTERFACE_INFO of \oS_data1_reg[4]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT1 TDATA";
  attribute X_INTERFACE_INFO of \oS_data1_reg[5]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT1 TDATA";
  attribute X_INTERFACE_INFO of \oS_data1_reg[6]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT1 TDATA";
  attribute X_INTERFACE_INFO of \oS_data1_reg[7]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT1 TDATA";
  attribute X_INTERFACE_INFO of \oS_data1_reg[8]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT1 TDATA";
  attribute X_INTERFACE_INFO of \oS_data1_reg[9]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT1 TDATA";
  attribute SOFT_HLUTNM of \oS_data2[0]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \oS_data2[10]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \oS_data2[11]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \oS_data2[12]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \oS_data2[13]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \oS_data2[14]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \oS_data2[15]_i_2\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \oS_data2[1]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \oS_data2[2]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \oS_data2[3]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \oS_data2[4]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \oS_data2[5]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \oS_data2[6]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \oS_data2[7]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \oS_data2[8]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \oS_data2[9]_i_1\ : label is "soft_lutpair23";
  attribute X_INTERFACE_INFO of \oS_data2_reg[0]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT2 TDATA";
  attribute X_INTERFACE_INFO of \oS_data2_reg[10]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT2 TDATA";
  attribute X_INTERFACE_INFO of \oS_data2_reg[11]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT2 TDATA";
  attribute X_INTERFACE_INFO of \oS_data2_reg[12]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT2 TDATA";
  attribute X_INTERFACE_INFO of \oS_data2_reg[13]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT2 TDATA";
  attribute X_INTERFACE_INFO of \oS_data2_reg[14]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT2 TDATA";
  attribute X_INTERFACE_INFO of \oS_data2_reg[15]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT2 TDATA";
  attribute X_INTERFACE_INFO of \oS_data2_reg[1]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT2 TDATA";
  attribute X_INTERFACE_INFO of \oS_data2_reg[2]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT2 TDATA";
  attribute X_INTERFACE_INFO of \oS_data2_reg[3]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT2 TDATA";
  attribute X_INTERFACE_INFO of \oS_data2_reg[4]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT2 TDATA";
  attribute X_INTERFACE_INFO of \oS_data2_reg[5]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT2 TDATA";
  attribute X_INTERFACE_INFO of \oS_data2_reg[6]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT2 TDATA";
  attribute X_INTERFACE_INFO of \oS_data2_reg[7]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT2 TDATA";
  attribute X_INTERFACE_INFO of \oS_data2_reg[8]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT2 TDATA";
  attribute X_INTERFACE_INFO of \oS_data2_reg[9]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT2 TDATA";
  attribute SOFT_HLUTNM of \oS_data3[0]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \oS_data3[10]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \oS_data3[11]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \oS_data3[12]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \oS_data3[13]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \oS_data3[14]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \oS_data3[15]_i_2\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \oS_data3[1]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \oS_data3[2]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \oS_data3[3]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \oS_data3[4]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \oS_data3[5]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \oS_data3[6]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \oS_data3[7]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \oS_data3[8]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \oS_data3[9]_i_1\ : label is "soft_lutpair34";
  attribute X_INTERFACE_INFO of \oS_data3_reg[0]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT3 TDATA";
  attribute X_INTERFACE_INFO of \oS_data3_reg[10]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT3 TDATA";
  attribute X_INTERFACE_INFO of \oS_data3_reg[11]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT3 TDATA";
  attribute X_INTERFACE_INFO of \oS_data3_reg[12]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT3 TDATA";
  attribute X_INTERFACE_INFO of \oS_data3_reg[13]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT3 TDATA";
  attribute X_INTERFACE_INFO of \oS_data3_reg[14]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT3 TDATA";
  attribute X_INTERFACE_INFO of \oS_data3_reg[15]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT3 TDATA";
  attribute X_INTERFACE_INFO of \oS_data3_reg[1]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT3 TDATA";
  attribute X_INTERFACE_INFO of \oS_data3_reg[2]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT3 TDATA";
  attribute X_INTERFACE_INFO of \oS_data3_reg[3]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT3 TDATA";
  attribute X_INTERFACE_INFO of \oS_data3_reg[4]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT3 TDATA";
  attribute X_INTERFACE_INFO of \oS_data3_reg[5]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT3 TDATA";
  attribute X_INTERFACE_INFO of \oS_data3_reg[6]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT3 TDATA";
  attribute X_INTERFACE_INFO of \oS_data3_reg[7]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT3 TDATA";
  attribute X_INTERFACE_INFO of \oS_data3_reg[8]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT3 TDATA";
  attribute X_INTERFACE_INFO of \oS_data3_reg[9]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT3 TDATA";
  attribute SOFT_HLUTNM of \oS_data4[0]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \oS_data4[10]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \oS_data4[11]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \oS_data4[12]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \oS_data4[13]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \oS_data4[14]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \oS_data4[15]_i_2\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \oS_data4[1]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \oS_data4[2]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \oS_data4[3]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \oS_data4[4]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \oS_data4[5]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \oS_data4[6]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \oS_data4[7]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \oS_data4[8]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \oS_data4[9]_i_1\ : label is "soft_lutpair34";
  attribute X_INTERFACE_INFO of \oS_data4_reg[0]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT4 TDATA";
  attribute X_INTERFACE_INFO of \oS_data4_reg[10]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT4 TDATA";
  attribute X_INTERFACE_INFO of \oS_data4_reg[11]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT4 TDATA";
  attribute X_INTERFACE_INFO of \oS_data4_reg[12]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT4 TDATA";
  attribute X_INTERFACE_INFO of \oS_data4_reg[13]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT4 TDATA";
  attribute X_INTERFACE_INFO of \oS_data4_reg[14]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT4 TDATA";
  attribute X_INTERFACE_INFO of \oS_data4_reg[15]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT4 TDATA";
  attribute X_INTERFACE_INFO of \oS_data4_reg[1]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT4 TDATA";
  attribute X_INTERFACE_INFO of \oS_data4_reg[2]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT4 TDATA";
  attribute X_INTERFACE_INFO of \oS_data4_reg[3]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT4 TDATA";
  attribute X_INTERFACE_INFO of \oS_data4_reg[4]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT4 TDATA";
  attribute X_INTERFACE_INFO of \oS_data4_reg[5]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT4 TDATA";
  attribute X_INTERFACE_INFO of \oS_data4_reg[6]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT4 TDATA";
  attribute X_INTERFACE_INFO of \oS_data4_reg[7]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT4 TDATA";
  attribute X_INTERFACE_INFO of \oS_data4_reg[8]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT4 TDATA";
  attribute X_INTERFACE_INFO of \oS_data4_reg[9]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT4 TDATA";
  attribute X_INTERFACE_INFO of \oS_data5_reg[0]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT5 TDATA";
  attribute X_INTERFACE_INFO of \oS_data5_reg[10]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT5 TDATA";
  attribute X_INTERFACE_INFO of \oS_data5_reg[11]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT5 TDATA";
  attribute X_INTERFACE_INFO of \oS_data5_reg[12]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT5 TDATA";
  attribute X_INTERFACE_INFO of \oS_data5_reg[13]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT5 TDATA";
  attribute X_INTERFACE_INFO of \oS_data5_reg[14]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT5 TDATA";
  attribute X_INTERFACE_INFO of \oS_data5_reg[15]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT5 TDATA";
  attribute X_INTERFACE_INFO of \oS_data5_reg[1]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT5 TDATA";
  attribute X_INTERFACE_INFO of \oS_data5_reg[2]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT5 TDATA";
  attribute X_INTERFACE_INFO of \oS_data5_reg[3]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT5 TDATA";
  attribute X_INTERFACE_INFO of \oS_data5_reg[4]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT5 TDATA";
  attribute X_INTERFACE_INFO of \oS_data5_reg[5]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT5 TDATA";
  attribute X_INTERFACE_INFO of \oS_data5_reg[6]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT5 TDATA";
  attribute X_INTERFACE_INFO of \oS_data5_reg[7]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT5 TDATA";
  attribute X_INTERFACE_INFO of \oS_data5_reg[8]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT5 TDATA";
  attribute X_INTERFACE_INFO of \oS_data5_reg[9]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT5 TDATA";
  attribute X_INTERFACE_INFO of \oS_data6_reg[0]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT6 TDATA";
  attribute X_INTERFACE_INFO of \oS_data6_reg[10]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT6 TDATA";
  attribute X_INTERFACE_INFO of \oS_data6_reg[11]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT6 TDATA";
  attribute X_INTERFACE_INFO of \oS_data6_reg[12]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT6 TDATA";
  attribute X_INTERFACE_INFO of \oS_data6_reg[13]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT6 TDATA";
  attribute X_INTERFACE_INFO of \oS_data6_reg[14]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT6 TDATA";
  attribute X_INTERFACE_INFO of \oS_data6_reg[15]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT6 TDATA";
  attribute X_INTERFACE_INFO of \oS_data6_reg[1]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT6 TDATA";
  attribute X_INTERFACE_INFO of \oS_data6_reg[2]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT6 TDATA";
  attribute X_INTERFACE_INFO of \oS_data6_reg[3]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT6 TDATA";
  attribute X_INTERFACE_INFO of \oS_data6_reg[4]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT6 TDATA";
  attribute X_INTERFACE_INFO of \oS_data6_reg[5]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT6 TDATA";
  attribute X_INTERFACE_INFO of \oS_data6_reg[6]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT6 TDATA";
  attribute X_INTERFACE_INFO of \oS_data6_reg[7]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT6 TDATA";
  attribute X_INTERFACE_INFO of \oS_data6_reg[8]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT6 TDATA";
  attribute X_INTERFACE_INFO of \oS_data6_reg[9]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT6 TDATA";
  attribute X_INTERFACE_INFO of \oS_data7_reg[0]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT7 TDATA";
  attribute X_INTERFACE_INFO of \oS_data7_reg[10]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT7 TDATA";
  attribute X_INTERFACE_INFO of \oS_data7_reg[11]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT7 TDATA";
  attribute X_INTERFACE_INFO of \oS_data7_reg[12]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT7 TDATA";
  attribute X_INTERFACE_INFO of \oS_data7_reg[13]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT7 TDATA";
  attribute X_INTERFACE_INFO of \oS_data7_reg[14]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT7 TDATA";
  attribute X_INTERFACE_INFO of \oS_data7_reg[15]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT7 TDATA";
  attribute X_INTERFACE_INFO of \oS_data7_reg[1]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT7 TDATA";
  attribute X_INTERFACE_INFO of \oS_data7_reg[2]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT7 TDATA";
  attribute X_INTERFACE_INFO of \oS_data7_reg[3]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT7 TDATA";
  attribute X_INTERFACE_INFO of \oS_data7_reg[4]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT7 TDATA";
  attribute X_INTERFACE_INFO of \oS_data7_reg[5]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT7 TDATA";
  attribute X_INTERFACE_INFO of \oS_data7_reg[6]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT7 TDATA";
  attribute X_INTERFACE_INFO of \oS_data7_reg[7]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT7 TDATA";
  attribute X_INTERFACE_INFO of \oS_data7_reg[8]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT7 TDATA";
  attribute X_INTERFACE_INFO of \oS_data7_reg[9]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT7 TDATA";
  attribute SOFT_HLUTNM of o_valid0_i_1 : label is "soft_lutpair3";
  attribute X_INTERFACE_INFO of o_valid0_reg : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT0 TVALID";
  attribute SOFT_HLUTNM of o_valid1_i_1 : label is "soft_lutpair3";
  attribute X_INTERFACE_INFO of o_valid1_reg : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT1 TVALID";
  attribute SOFT_HLUTNM of \o_valid2__0\ : label is "soft_lutpair0";
  attribute X_INTERFACE_INFO of o_valid2_reg : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT2 TVALID";
  attribute SOFT_HLUTNM of o_valid3_i_1 : label is "soft_lutpair1";
  attribute X_INTERFACE_INFO of o_valid3_reg : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT3 TVALID";
  attribute SOFT_HLUTNM of o_valid4_i_1 : label is "soft_lutpair0";
  attribute X_INTERFACE_INFO of o_valid4_reg : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT4 TVALID";
  attribute SOFT_HLUTNM of o_valid5_i_1 : label is "soft_lutpair2";
  attribute X_INTERFACE_INFO of o_valid5_reg : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT5 TVALID";
  attribute SOFT_HLUTNM of \o_valid6__0\ : label is "soft_lutpair1";
  attribute X_INTERFACE_INFO of o_valid6_reg : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT6 TVALID";
  attribute SOFT_HLUTNM of o_valid7_i_1 : label is "soft_lutpair2";
  attribute X_INTERFACE_INFO of o_valid7_reg : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT7 TVALID";
begin
\oS_data0[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => iS_data(0),
      I1 => i_ctl(0),
      O => \oS_data0[0]_i_1_n_0\
    );
\oS_data0[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => iS_data(10),
      I1 => i_ctl(0),
      O => \oS_data0[10]_i_1_n_0\
    );
\oS_data0[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => iS_data(11),
      I1 => i_ctl(0),
      O => \oS_data0[11]_i_1_n_0\
    );
\oS_data0[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => iS_data(12),
      I1 => i_ctl(0),
      O => \oS_data0[12]_i_1_n_0\
    );
\oS_data0[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => iS_data(13),
      I1 => i_ctl(0),
      O => \oS_data0[13]_i_1_n_0\
    );
\oS_data0[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => iS_data(14),
      I1 => i_ctl(0),
      O => \oS_data0[14]_i_1_n_0\
    );
\oS_data0[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => i_ctl(1),
      I1 => i_ctl(2),
      O => \oS_data0[15]_i_1_n_0\
    );
\oS_data0[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => iS_data(15),
      I1 => i_ctl(0),
      O => \oS_data0[15]_i_2_n_0\
    );
\oS_data0[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => iS_data(1),
      I1 => i_ctl(0),
      O => \oS_data0[1]_i_1_n_0\
    );
\oS_data0[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => iS_data(2),
      I1 => i_ctl(0),
      O => \oS_data0[2]_i_1_n_0\
    );
\oS_data0[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => iS_data(3),
      I1 => i_ctl(0),
      O => \oS_data0[3]_i_1_n_0\
    );
\oS_data0[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => iS_data(4),
      I1 => i_ctl(0),
      O => \oS_data0[4]_i_1_n_0\
    );
\oS_data0[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => iS_data(5),
      I1 => i_ctl(0),
      O => \oS_data0[5]_i_1_n_0\
    );
\oS_data0[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => iS_data(6),
      I1 => i_ctl(0),
      O => \oS_data0[6]_i_1_n_0\
    );
\oS_data0[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => iS_data(7),
      I1 => i_ctl(0),
      O => \oS_data0[7]_i_1_n_0\
    );
\oS_data0[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => iS_data(8),
      I1 => i_ctl(0),
      O => \oS_data0[8]_i_1_n_0\
    );
\oS_data0[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => iS_data(9),
      I1 => i_ctl(0),
      O => \oS_data0[9]_i_1_n_0\
    );
\oS_data0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data0[0]_i_1_n_0\,
      Q => oS_data0(0),
      R => \oS_data0[15]_i_1_n_0\
    );
\oS_data0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data0[10]_i_1_n_0\,
      Q => oS_data0(10),
      R => \oS_data0[15]_i_1_n_0\
    );
\oS_data0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data0[11]_i_1_n_0\,
      Q => oS_data0(11),
      R => \oS_data0[15]_i_1_n_0\
    );
\oS_data0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data0[12]_i_1_n_0\,
      Q => oS_data0(12),
      R => \oS_data0[15]_i_1_n_0\
    );
\oS_data0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data0[13]_i_1_n_0\,
      Q => oS_data0(13),
      R => \oS_data0[15]_i_1_n_0\
    );
\oS_data0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data0[14]_i_1_n_0\,
      Q => oS_data0(14),
      R => \oS_data0[15]_i_1_n_0\
    );
\oS_data0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data0[15]_i_2_n_0\,
      Q => oS_data0(15),
      R => \oS_data0[15]_i_1_n_0\
    );
\oS_data0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data0[1]_i_1_n_0\,
      Q => oS_data0(1),
      R => \oS_data0[15]_i_1_n_0\
    );
\oS_data0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data0[2]_i_1_n_0\,
      Q => oS_data0(2),
      R => \oS_data0[15]_i_1_n_0\
    );
\oS_data0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data0[3]_i_1_n_0\,
      Q => oS_data0(3),
      R => \oS_data0[15]_i_1_n_0\
    );
\oS_data0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data0[4]_i_1_n_0\,
      Q => oS_data0(4),
      R => \oS_data0[15]_i_1_n_0\
    );
\oS_data0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data0[5]_i_1_n_0\,
      Q => oS_data0(5),
      R => \oS_data0[15]_i_1_n_0\
    );
\oS_data0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data0[6]_i_1_n_0\,
      Q => oS_data0(6),
      R => \oS_data0[15]_i_1_n_0\
    );
\oS_data0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data0[7]_i_1_n_0\,
      Q => oS_data0(7),
      R => \oS_data0[15]_i_1_n_0\
    );
\oS_data0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data0[8]_i_1_n_0\,
      Q => oS_data0(8),
      R => \oS_data0[15]_i_1_n_0\
    );
\oS_data0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data0[9]_i_1_n_0\,
      Q => oS_data0(9),
      R => \oS_data0[15]_i_1_n_0\
    );
\oS_data1[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_ctl(0),
      I1 => iS_data(0),
      O => \oS_data1[0]_i_1_n_0\
    );
\oS_data1[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_ctl(0),
      I1 => iS_data(10),
      O => \oS_data1[10]_i_1_n_0\
    );
\oS_data1[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_ctl(0),
      I1 => iS_data(11),
      O => \oS_data1[11]_i_1_n_0\
    );
\oS_data1[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_ctl(0),
      I1 => iS_data(12),
      O => \oS_data1[12]_i_1_n_0\
    );
\oS_data1[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_ctl(0),
      I1 => iS_data(13),
      O => \oS_data1[13]_i_1_n_0\
    );
\oS_data1[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_ctl(0),
      I1 => iS_data(14),
      O => \oS_data1[14]_i_1_n_0\
    );
\oS_data1[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_ctl(0),
      I1 => iS_data(15),
      O => \oS_data1[15]_i_1_n_0\
    );
\oS_data1[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_ctl(0),
      I1 => iS_data(1),
      O => \oS_data1[1]_i_1_n_0\
    );
\oS_data1[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_ctl(0),
      I1 => iS_data(2),
      O => \oS_data1[2]_i_1_n_0\
    );
\oS_data1[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_ctl(0),
      I1 => iS_data(3),
      O => \oS_data1[3]_i_1_n_0\
    );
\oS_data1[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_ctl(0),
      I1 => iS_data(4),
      O => \oS_data1[4]_i_1_n_0\
    );
\oS_data1[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_ctl(0),
      I1 => iS_data(5),
      O => \oS_data1[5]_i_1_n_0\
    );
\oS_data1[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_ctl(0),
      I1 => iS_data(6),
      O => \oS_data1[6]_i_1_n_0\
    );
\oS_data1[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_ctl(0),
      I1 => iS_data(7),
      O => \oS_data1[7]_i_1_n_0\
    );
\oS_data1[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_ctl(0),
      I1 => iS_data(8),
      O => \oS_data1[8]_i_1_n_0\
    );
\oS_data1[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_ctl(0),
      I1 => iS_data(9),
      O => \oS_data1[9]_i_1_n_0\
    );
\oS_data1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data1[0]_i_1_n_0\,
      Q => oS_data1(0),
      R => \oS_data0[15]_i_1_n_0\
    );
\oS_data1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data1[10]_i_1_n_0\,
      Q => oS_data1(10),
      R => \oS_data0[15]_i_1_n_0\
    );
\oS_data1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data1[11]_i_1_n_0\,
      Q => oS_data1(11),
      R => \oS_data0[15]_i_1_n_0\
    );
\oS_data1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data1[12]_i_1_n_0\,
      Q => oS_data1(12),
      R => \oS_data0[15]_i_1_n_0\
    );
\oS_data1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data1[13]_i_1_n_0\,
      Q => oS_data1(13),
      R => \oS_data0[15]_i_1_n_0\
    );
\oS_data1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data1[14]_i_1_n_0\,
      Q => oS_data1(14),
      R => \oS_data0[15]_i_1_n_0\
    );
\oS_data1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data1[15]_i_1_n_0\,
      Q => oS_data1(15),
      R => \oS_data0[15]_i_1_n_0\
    );
\oS_data1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data1[1]_i_1_n_0\,
      Q => oS_data1(1),
      R => \oS_data0[15]_i_1_n_0\
    );
\oS_data1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data1[2]_i_1_n_0\,
      Q => oS_data1(2),
      R => \oS_data0[15]_i_1_n_0\
    );
\oS_data1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data1[3]_i_1_n_0\,
      Q => oS_data1(3),
      R => \oS_data0[15]_i_1_n_0\
    );
\oS_data1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data1[4]_i_1_n_0\,
      Q => oS_data1(4),
      R => \oS_data0[15]_i_1_n_0\
    );
\oS_data1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data1[5]_i_1_n_0\,
      Q => oS_data1(5),
      R => \oS_data0[15]_i_1_n_0\
    );
\oS_data1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data1[6]_i_1_n_0\,
      Q => oS_data1(6),
      R => \oS_data0[15]_i_1_n_0\
    );
\oS_data1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data1[7]_i_1_n_0\,
      Q => oS_data1(7),
      R => \oS_data0[15]_i_1_n_0\
    );
\oS_data1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data1[8]_i_1_n_0\,
      Q => oS_data1(8),
      R => \oS_data0[15]_i_1_n_0\
    );
\oS_data1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data1[9]_i_1_n_0\,
      Q => oS_data1(9),
      R => \oS_data0[15]_i_1_n_0\
    );
\oS_data2[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_ctl(1),
      I1 => iS_data(0),
      O => \oS_data2[0]_i_1_n_0\
    );
\oS_data2[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_ctl(1),
      I1 => iS_data(10),
      O => \oS_data2[10]_i_1_n_0\
    );
\oS_data2[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_ctl(1),
      I1 => iS_data(11),
      O => \oS_data2[11]_i_1_n_0\
    );
\oS_data2[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_ctl(1),
      I1 => iS_data(12),
      O => \oS_data2[12]_i_1_n_0\
    );
\oS_data2[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_ctl(1),
      I1 => iS_data(13),
      O => \oS_data2[13]_i_1_n_0\
    );
\oS_data2[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_ctl(1),
      I1 => iS_data(14),
      O => \oS_data2[14]_i_1_n_0\
    );
\oS_data2[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => i_ctl(2),
      I1 => i_ctl(0),
      O => \oS_data2[15]_i_1_n_0\
    );
\oS_data2[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_ctl(1),
      I1 => iS_data(15),
      O => \oS_data2[15]_i_2_n_0\
    );
\oS_data2[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_ctl(1),
      I1 => iS_data(1),
      O => \oS_data2[1]_i_1_n_0\
    );
\oS_data2[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_ctl(1),
      I1 => iS_data(2),
      O => \oS_data2[2]_i_1_n_0\
    );
\oS_data2[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_ctl(1),
      I1 => iS_data(3),
      O => \oS_data2[3]_i_1_n_0\
    );
\oS_data2[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_ctl(1),
      I1 => iS_data(4),
      O => \oS_data2[4]_i_1_n_0\
    );
\oS_data2[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_ctl(1),
      I1 => iS_data(5),
      O => \oS_data2[5]_i_1_n_0\
    );
\oS_data2[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_ctl(1),
      I1 => iS_data(6),
      O => \oS_data2[6]_i_1_n_0\
    );
\oS_data2[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_ctl(1),
      I1 => iS_data(7),
      O => \oS_data2[7]_i_1_n_0\
    );
\oS_data2[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_ctl(1),
      I1 => iS_data(8),
      O => \oS_data2[8]_i_1_n_0\
    );
\oS_data2[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_ctl(1),
      I1 => iS_data(9),
      O => \oS_data2[9]_i_1_n_0\
    );
\oS_data2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data2[0]_i_1_n_0\,
      Q => oS_data2(0),
      R => \oS_data2[15]_i_1_n_0\
    );
\oS_data2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data2[10]_i_1_n_0\,
      Q => oS_data2(10),
      R => \oS_data2[15]_i_1_n_0\
    );
\oS_data2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data2[11]_i_1_n_0\,
      Q => oS_data2(11),
      R => \oS_data2[15]_i_1_n_0\
    );
\oS_data2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data2[12]_i_1_n_0\,
      Q => oS_data2(12),
      R => \oS_data2[15]_i_1_n_0\
    );
\oS_data2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data2[13]_i_1_n_0\,
      Q => oS_data2(13),
      R => \oS_data2[15]_i_1_n_0\
    );
\oS_data2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data2[14]_i_1_n_0\,
      Q => oS_data2(14),
      R => \oS_data2[15]_i_1_n_0\
    );
\oS_data2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data2[15]_i_2_n_0\,
      Q => oS_data2(15),
      R => \oS_data2[15]_i_1_n_0\
    );
\oS_data2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data2[1]_i_1_n_0\,
      Q => oS_data2(1),
      R => \oS_data2[15]_i_1_n_0\
    );
\oS_data2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data2[2]_i_1_n_0\,
      Q => oS_data2(2),
      R => \oS_data2[15]_i_1_n_0\
    );
\oS_data2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data2[3]_i_1_n_0\,
      Q => oS_data2(3),
      R => \oS_data2[15]_i_1_n_0\
    );
\oS_data2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data2[4]_i_1_n_0\,
      Q => oS_data2(4),
      R => \oS_data2[15]_i_1_n_0\
    );
\oS_data2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data2[5]_i_1_n_0\,
      Q => oS_data2(5),
      R => \oS_data2[15]_i_1_n_0\
    );
\oS_data2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data2[6]_i_1_n_0\,
      Q => oS_data2(6),
      R => \oS_data2[15]_i_1_n_0\
    );
\oS_data2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data2[7]_i_1_n_0\,
      Q => oS_data2(7),
      R => \oS_data2[15]_i_1_n_0\
    );
\oS_data2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data2[8]_i_1_n_0\,
      Q => oS_data2(8),
      R => \oS_data2[15]_i_1_n_0\
    );
\oS_data2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data2[9]_i_1_n_0\,
      Q => oS_data2(9),
      R => \oS_data2[15]_i_1_n_0\
    );
\oS_data3[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => iS_data(0),
      I1 => i_ctl(2),
      O => \oS_data3[0]_i_1_n_0\
    );
\oS_data3[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => iS_data(10),
      I1 => i_ctl(2),
      O => \oS_data3[10]_i_1_n_0\
    );
\oS_data3[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => iS_data(11),
      I1 => i_ctl(2),
      O => \oS_data3[11]_i_1_n_0\
    );
\oS_data3[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => iS_data(12),
      I1 => i_ctl(2),
      O => \oS_data3[12]_i_1_n_0\
    );
\oS_data3[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => iS_data(13),
      I1 => i_ctl(2),
      O => \oS_data3[13]_i_1_n_0\
    );
\oS_data3[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => iS_data(14),
      I1 => i_ctl(2),
      O => \oS_data3[14]_i_1_n_0\
    );
\oS_data3[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => i_ctl(0),
      I1 => i_ctl(1),
      O => \oS_data3[15]_i_1_n_0\
    );
\oS_data3[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => iS_data(15),
      I1 => i_ctl(2),
      O => \oS_data3[15]_i_2_n_0\
    );
\oS_data3[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => iS_data(1),
      I1 => i_ctl(2),
      O => \oS_data3[1]_i_1_n_0\
    );
\oS_data3[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => iS_data(2),
      I1 => i_ctl(2),
      O => \oS_data3[2]_i_1_n_0\
    );
\oS_data3[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => iS_data(3),
      I1 => i_ctl(2),
      O => \oS_data3[3]_i_1_n_0\
    );
\oS_data3[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => iS_data(4),
      I1 => i_ctl(2),
      O => \oS_data3[4]_i_1_n_0\
    );
\oS_data3[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => iS_data(5),
      I1 => i_ctl(2),
      O => \oS_data3[5]_i_1_n_0\
    );
\oS_data3[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => iS_data(6),
      I1 => i_ctl(2),
      O => \oS_data3[6]_i_1_n_0\
    );
\oS_data3[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => iS_data(7),
      I1 => i_ctl(2),
      O => \oS_data3[7]_i_1_n_0\
    );
\oS_data3[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => iS_data(8),
      I1 => i_ctl(2),
      O => \oS_data3[8]_i_1_n_0\
    );
\oS_data3[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => iS_data(9),
      I1 => i_ctl(2),
      O => \oS_data3[9]_i_1_n_0\
    );
\oS_data3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data3[0]_i_1_n_0\,
      Q => oS_data3(0),
      R => \oS_data3[15]_i_1_n_0\
    );
\oS_data3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data3[10]_i_1_n_0\,
      Q => oS_data3(10),
      R => \oS_data3[15]_i_1_n_0\
    );
\oS_data3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data3[11]_i_1_n_0\,
      Q => oS_data3(11),
      R => \oS_data3[15]_i_1_n_0\
    );
\oS_data3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data3[12]_i_1_n_0\,
      Q => oS_data3(12),
      R => \oS_data3[15]_i_1_n_0\
    );
\oS_data3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data3[13]_i_1_n_0\,
      Q => oS_data3(13),
      R => \oS_data3[15]_i_1_n_0\
    );
\oS_data3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data3[14]_i_1_n_0\,
      Q => oS_data3(14),
      R => \oS_data3[15]_i_1_n_0\
    );
\oS_data3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data3[15]_i_2_n_0\,
      Q => oS_data3(15),
      R => \oS_data3[15]_i_1_n_0\
    );
\oS_data3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data3[1]_i_1_n_0\,
      Q => oS_data3(1),
      R => \oS_data3[15]_i_1_n_0\
    );
\oS_data3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data3[2]_i_1_n_0\,
      Q => oS_data3(2),
      R => \oS_data3[15]_i_1_n_0\
    );
\oS_data3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data3[3]_i_1_n_0\,
      Q => oS_data3(3),
      R => \oS_data3[15]_i_1_n_0\
    );
\oS_data3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data3[4]_i_1_n_0\,
      Q => oS_data3(4),
      R => \oS_data3[15]_i_1_n_0\
    );
\oS_data3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data3[5]_i_1_n_0\,
      Q => oS_data3(5),
      R => \oS_data3[15]_i_1_n_0\
    );
\oS_data3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data3[6]_i_1_n_0\,
      Q => oS_data3(6),
      R => \oS_data3[15]_i_1_n_0\
    );
\oS_data3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data3[7]_i_1_n_0\,
      Q => oS_data3(7),
      R => \oS_data3[15]_i_1_n_0\
    );
\oS_data3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data3[8]_i_1_n_0\,
      Q => oS_data3(8),
      R => \oS_data3[15]_i_1_n_0\
    );
\oS_data3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data3[9]_i_1_n_0\,
      Q => oS_data3(9),
      R => \oS_data3[15]_i_1_n_0\
    );
\oS_data4[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => iS_data(0),
      I1 => i_ctl(2),
      O => \oS_data4[0]_i_1_n_0\
    );
\oS_data4[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => iS_data(10),
      I1 => i_ctl(2),
      O => \oS_data4[10]_i_1_n_0\
    );
\oS_data4[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => iS_data(11),
      I1 => i_ctl(2),
      O => \oS_data4[11]_i_1_n_0\
    );
\oS_data4[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => iS_data(12),
      I1 => i_ctl(2),
      O => \oS_data4[12]_i_1_n_0\
    );
\oS_data4[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => iS_data(13),
      I1 => i_ctl(2),
      O => \oS_data4[13]_i_1_n_0\
    );
\oS_data4[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => iS_data(14),
      I1 => i_ctl(2),
      O => \oS_data4[14]_i_1_n_0\
    );
\oS_data4[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => i_ctl(0),
      I1 => i_ctl(1),
      O => \oS_data4[15]_i_1_n_0\
    );
\oS_data4[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => iS_data(15),
      I1 => i_ctl(2),
      O => \oS_data4[15]_i_2_n_0\
    );
\oS_data4[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => iS_data(1),
      I1 => i_ctl(2),
      O => \oS_data4[1]_i_1_n_0\
    );
\oS_data4[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => iS_data(2),
      I1 => i_ctl(2),
      O => \oS_data4[2]_i_1_n_0\
    );
\oS_data4[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => iS_data(3),
      I1 => i_ctl(2),
      O => \oS_data4[3]_i_1_n_0\
    );
\oS_data4[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => iS_data(4),
      I1 => i_ctl(2),
      O => \oS_data4[4]_i_1_n_0\
    );
\oS_data4[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => iS_data(5),
      I1 => i_ctl(2),
      O => \oS_data4[5]_i_1_n_0\
    );
\oS_data4[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => iS_data(6),
      I1 => i_ctl(2),
      O => \oS_data4[6]_i_1_n_0\
    );
\oS_data4[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => iS_data(7),
      I1 => i_ctl(2),
      O => \oS_data4[7]_i_1_n_0\
    );
\oS_data4[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => iS_data(8),
      I1 => i_ctl(2),
      O => \oS_data4[8]_i_1_n_0\
    );
\oS_data4[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => iS_data(9),
      I1 => i_ctl(2),
      O => \oS_data4[9]_i_1_n_0\
    );
\oS_data4_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data4[0]_i_1_n_0\,
      Q => oS_data4(0),
      R => \oS_data4[15]_i_1_n_0\
    );
\oS_data4_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data4[10]_i_1_n_0\,
      Q => oS_data4(10),
      R => \oS_data4[15]_i_1_n_0\
    );
\oS_data4_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data4[11]_i_1_n_0\,
      Q => oS_data4(11),
      R => \oS_data4[15]_i_1_n_0\
    );
\oS_data4_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data4[12]_i_1_n_0\,
      Q => oS_data4(12),
      R => \oS_data4[15]_i_1_n_0\
    );
\oS_data4_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data4[13]_i_1_n_0\,
      Q => oS_data4(13),
      R => \oS_data4[15]_i_1_n_0\
    );
\oS_data4_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data4[14]_i_1_n_0\,
      Q => oS_data4(14),
      R => \oS_data4[15]_i_1_n_0\
    );
\oS_data4_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data4[15]_i_2_n_0\,
      Q => oS_data4(15),
      R => \oS_data4[15]_i_1_n_0\
    );
\oS_data4_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data4[1]_i_1_n_0\,
      Q => oS_data4(1),
      R => \oS_data4[15]_i_1_n_0\
    );
\oS_data4_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data4[2]_i_1_n_0\,
      Q => oS_data4(2),
      R => \oS_data4[15]_i_1_n_0\
    );
\oS_data4_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data4[3]_i_1_n_0\,
      Q => oS_data4(3),
      R => \oS_data4[15]_i_1_n_0\
    );
\oS_data4_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data4[4]_i_1_n_0\,
      Q => oS_data4(4),
      R => \oS_data4[15]_i_1_n_0\
    );
\oS_data4_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data4[5]_i_1_n_0\,
      Q => oS_data4(5),
      R => \oS_data4[15]_i_1_n_0\
    );
\oS_data4_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data4[6]_i_1_n_0\,
      Q => oS_data4(6),
      R => \oS_data4[15]_i_1_n_0\
    );
\oS_data4_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data4[7]_i_1_n_0\,
      Q => oS_data4(7),
      R => \oS_data4[15]_i_1_n_0\
    );
\oS_data4_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data4[8]_i_1_n_0\,
      Q => oS_data4(8),
      R => \oS_data4[15]_i_1_n_0\
    );
\oS_data4_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data4[9]_i_1_n_0\,
      Q => oS_data4(9),
      R => \oS_data4[15]_i_1_n_0\
    );
\oS_data5[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => i_ctl(1),
      I1 => i_ctl(2),
      O => \oS_data5[15]_i_1_n_0\
    );
\oS_data5_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data1[0]_i_1_n_0\,
      Q => oS_data5(0),
      R => \oS_data5[15]_i_1_n_0\
    );
\oS_data5_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data1[10]_i_1_n_0\,
      Q => oS_data5(10),
      R => \oS_data5[15]_i_1_n_0\
    );
\oS_data5_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data1[11]_i_1_n_0\,
      Q => oS_data5(11),
      R => \oS_data5[15]_i_1_n_0\
    );
\oS_data5_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data1[12]_i_1_n_0\,
      Q => oS_data5(12),
      R => \oS_data5[15]_i_1_n_0\
    );
\oS_data5_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data1[13]_i_1_n_0\,
      Q => oS_data5(13),
      R => \oS_data5[15]_i_1_n_0\
    );
\oS_data5_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data1[14]_i_1_n_0\,
      Q => oS_data5(14),
      R => \oS_data5[15]_i_1_n_0\
    );
\oS_data5_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data1[15]_i_1_n_0\,
      Q => oS_data5(15),
      R => \oS_data5[15]_i_1_n_0\
    );
\oS_data5_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data1[1]_i_1_n_0\,
      Q => oS_data5(1),
      R => \oS_data5[15]_i_1_n_0\
    );
\oS_data5_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data1[2]_i_1_n_0\,
      Q => oS_data5(2),
      R => \oS_data5[15]_i_1_n_0\
    );
\oS_data5_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data1[3]_i_1_n_0\,
      Q => oS_data5(3),
      R => \oS_data5[15]_i_1_n_0\
    );
\oS_data5_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data1[4]_i_1_n_0\,
      Q => oS_data5(4),
      R => \oS_data5[15]_i_1_n_0\
    );
\oS_data5_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data1[5]_i_1_n_0\,
      Q => oS_data5(5),
      R => \oS_data5[15]_i_1_n_0\
    );
\oS_data5_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data1[6]_i_1_n_0\,
      Q => oS_data5(6),
      R => \oS_data5[15]_i_1_n_0\
    );
\oS_data5_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data1[7]_i_1_n_0\,
      Q => oS_data5(7),
      R => \oS_data5[15]_i_1_n_0\
    );
\oS_data5_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data1[8]_i_1_n_0\,
      Q => oS_data5(8),
      R => \oS_data5[15]_i_1_n_0\
    );
\oS_data5_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data1[9]_i_1_n_0\,
      Q => oS_data5(9),
      R => \oS_data5[15]_i_1_n_0\
    );
\oS_data6[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => i_ctl(0),
      I1 => i_ctl(2),
      O => \oS_data6[15]_i_1_n_0\
    );
\oS_data6_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data2[0]_i_1_n_0\,
      Q => oS_data6(0),
      R => \oS_data6[15]_i_1_n_0\
    );
\oS_data6_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data2[10]_i_1_n_0\,
      Q => oS_data6(10),
      R => \oS_data6[15]_i_1_n_0\
    );
\oS_data6_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data2[11]_i_1_n_0\,
      Q => oS_data6(11),
      R => \oS_data6[15]_i_1_n_0\
    );
\oS_data6_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data2[12]_i_1_n_0\,
      Q => oS_data6(12),
      R => \oS_data6[15]_i_1_n_0\
    );
\oS_data6_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data2[13]_i_1_n_0\,
      Q => oS_data6(13),
      R => \oS_data6[15]_i_1_n_0\
    );
\oS_data6_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data2[14]_i_1_n_0\,
      Q => oS_data6(14),
      R => \oS_data6[15]_i_1_n_0\
    );
\oS_data6_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data2[15]_i_2_n_0\,
      Q => oS_data6(15),
      R => \oS_data6[15]_i_1_n_0\
    );
\oS_data6_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data2[1]_i_1_n_0\,
      Q => oS_data6(1),
      R => \oS_data6[15]_i_1_n_0\
    );
\oS_data6_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data2[2]_i_1_n_0\,
      Q => oS_data6(2),
      R => \oS_data6[15]_i_1_n_0\
    );
\oS_data6_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data2[3]_i_1_n_0\,
      Q => oS_data6(3),
      R => \oS_data6[15]_i_1_n_0\
    );
\oS_data6_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data2[4]_i_1_n_0\,
      Q => oS_data6(4),
      R => \oS_data6[15]_i_1_n_0\
    );
\oS_data6_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data2[5]_i_1_n_0\,
      Q => oS_data6(5),
      R => \oS_data6[15]_i_1_n_0\
    );
\oS_data6_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data2[6]_i_1_n_0\,
      Q => oS_data6(6),
      R => \oS_data6[15]_i_1_n_0\
    );
\oS_data6_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data2[7]_i_1_n_0\,
      Q => oS_data6(7),
      R => \oS_data6[15]_i_1_n_0\
    );
\oS_data6_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data2[8]_i_1_n_0\,
      Q => oS_data6(8),
      R => \oS_data6[15]_i_1_n_0\
    );
\oS_data6_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data2[9]_i_1_n_0\,
      Q => oS_data6(9),
      R => \oS_data6[15]_i_1_n_0\
    );
\oS_data7_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data4[0]_i_1_n_0\,
      Q => oS_data7(0),
      R => \oS_data3[15]_i_1_n_0\
    );
\oS_data7_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data4[10]_i_1_n_0\,
      Q => oS_data7(10),
      R => \oS_data3[15]_i_1_n_0\
    );
\oS_data7_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data4[11]_i_1_n_0\,
      Q => oS_data7(11),
      R => \oS_data3[15]_i_1_n_0\
    );
\oS_data7_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data4[12]_i_1_n_0\,
      Q => oS_data7(12),
      R => \oS_data3[15]_i_1_n_0\
    );
\oS_data7_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data4[13]_i_1_n_0\,
      Q => oS_data7(13),
      R => \oS_data3[15]_i_1_n_0\
    );
\oS_data7_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data4[14]_i_1_n_0\,
      Q => oS_data7(14),
      R => \oS_data3[15]_i_1_n_0\
    );
\oS_data7_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data4[15]_i_2_n_0\,
      Q => oS_data7(15),
      R => \oS_data3[15]_i_1_n_0\
    );
\oS_data7_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data4[1]_i_1_n_0\,
      Q => oS_data7(1),
      R => \oS_data3[15]_i_1_n_0\
    );
\oS_data7_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data4[2]_i_1_n_0\,
      Q => oS_data7(2),
      R => \oS_data3[15]_i_1_n_0\
    );
\oS_data7_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data4[3]_i_1_n_0\,
      Q => oS_data7(3),
      R => \oS_data3[15]_i_1_n_0\
    );
\oS_data7_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data4[4]_i_1_n_0\,
      Q => oS_data7(4),
      R => \oS_data3[15]_i_1_n_0\
    );
\oS_data7_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data4[5]_i_1_n_0\,
      Q => oS_data7(5),
      R => \oS_data3[15]_i_1_n_0\
    );
\oS_data7_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data4[6]_i_1_n_0\,
      Q => oS_data7(6),
      R => \oS_data3[15]_i_1_n_0\
    );
\oS_data7_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data4[7]_i_1_n_0\,
      Q => oS_data7(7),
      R => \oS_data3[15]_i_1_n_0\
    );
\oS_data7_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data4[8]_i_1_n_0\,
      Q => oS_data7(8),
      R => \oS_data3[15]_i_1_n_0\
    );
\oS_data7_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_data4[9]_i_1_n_0\,
      Q => oS_data7(9),
      R => \oS_data3[15]_i_1_n_0\
    );
o_valid0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => i_ctl(0),
      I1 => i_ctl(2),
      I2 => i_valid,
      I3 => i_ctl(1),
      O => o_valid0_i_1_n_0
    );
o_valid0_reg: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => o_valid0_i_1_n_0,
      Q => o_valid0,
      R => '0'
    );
o_valid1_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => i_ctl(1),
      I1 => i_ctl(2),
      I2 => i_ctl(0),
      I3 => i_valid,
      O => o_valid1_i_1_n_0
    );
o_valid1_reg: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => o_valid1_i_1_n_0,
      Q => o_valid1,
      R => '0'
    );
\o_valid2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => i_ctl(0),
      I1 => i_ctl(2),
      I2 => i_ctl(1),
      I3 => i_valid,
      O => \o_valid2__0_n_0\
    );
o_valid2_reg: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \o_valid2__0_n_0\,
      Q => o_valid2,
      R => '0'
    );
o_valid3_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => i_valid,
      I1 => i_ctl(2),
      I2 => i_ctl(0),
      I3 => i_ctl(1),
      O => o_valid3_i_1_n_0
    );
o_valid3_reg: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => o_valid3_i_1_n_0,
      Q => o_valid3,
      R => '0'
    );
o_valid4_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => i_ctl(0),
      I1 => i_ctl(1),
      I2 => i_valid,
      I3 => i_ctl(2),
      O => o_valid4_i_1_n_0
    );
o_valid4_reg: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => o_valid4_i_1_n_0,
      Q => o_valid4,
      R => '0'
    );
o_valid5_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => i_ctl(2),
      I1 => i_ctl(1),
      I2 => i_ctl(0),
      I3 => i_valid,
      O => o_valid5_i_1_n_0
    );
o_valid5_reg: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => o_valid5_i_1_n_0,
      Q => o_valid5,
      R => '0'
    );
\o_valid6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => i_ctl(2),
      I1 => i_ctl(0),
      I2 => i_valid,
      I3 => i_ctl(1),
      O => \o_valid6__0_n_0\
    );
o_valid6_reg: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \o_valid6__0_n_0\,
      Q => o_valid6,
      R => '0'
    );
o_valid7_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => i_valid,
      I1 => i_ctl(2),
      I2 => i_ctl(0),
      I3 => i_ctl(1),
      O => o_valid7_i_1_n_0
    );
o_valid7_reg: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => o_valid7_i_1_n_0,
      Q => o_valid7,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zsys_axis_demux_0_0 is
  port (
    iS_data : in STD_LOGIC_VECTOR ( 15 downto 0 );
    i_valid : in STD_LOGIC;
    i_ctl : in STD_LOGIC_VECTOR ( 2 downto 0 );
    oS_data0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_valid0 : out STD_LOGIC;
    oS_data1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_valid1 : out STD_LOGIC;
    oS_data2 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_valid2 : out STD_LOGIC;
    oS_data3 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_valid3 : out STD_LOGIC;
    oS_data4 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_valid4 : out STD_LOGIC;
    oS_data5 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_valid5 : out STD_LOGIC;
    oS_data6 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_valid6 : out STD_LOGIC;
    oS_data7 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_valid7 : out STD_LOGIC;
    i_clk : in STD_LOGIC;
    i_resetn : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of zsys_axis_demux_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of zsys_axis_demux_0_0 : entity is "zsys_axis_demux_0_0,axis_demux,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of zsys_axis_demux_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of zsys_axis_demux_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of zsys_axis_demux_0_0 : entity is "axis_demux,Vivado 2019.2";
end zsys_axis_demux_0_0;

architecture STRUCTURE of zsys_axis_demux_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of i_clk : signal is "xilinx.com:signal:clock:1.0 i_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of i_clk : signal is "XIL_INTERFACENAME i_clk, ASSOCIATED_RESET i_resetn, ASSOCIATED_BUSIF S_AXIS_X:S_AXIS_DATA:M_AXIS_OUTPUT0:M_AXIS_OUTPUT1:M_AXIS_OUTPUT2:M_AXIS_OUTPUT3:M_AXIS_OUTPUT4:M_AXIS_OUTPUT5:M_AXIS_OUTPUT6:M_AXIS_OUTPUT7, FREQ_HZ 80000000, PHASE 0.000, CLK_DOMAIN zsys_adc_clk_n, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of i_resetn : signal is "xilinx.com:signal:reset:1.0 i_resetn RST";
  attribute X_INTERFACE_PARAMETER of i_resetn : signal is "XIL_INTERFACENAME i_resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of i_valid : signal is "xilinx.com:interface:axis:1.0 S_AXIS_DATA TVALID";
  attribute X_INTERFACE_PARAMETER of i_valid : signal is "XIL_INTERFACENAME S_AXIS_DATA, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 80000000, PHASE 0.000, CLK_DOMAIN zsys_adc_clk_n, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of o_valid0 : signal is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT0 TVALID";
  attribute X_INTERFACE_PARAMETER of o_valid0 : signal is "XIL_INTERFACENAME M_AXIS_OUTPUT0, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 80000000, PHASE 0.000, CLK_DOMAIN zsys_adc_clk_n, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of o_valid1 : signal is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT1 TVALID";
  attribute X_INTERFACE_PARAMETER of o_valid1 : signal is "XIL_INTERFACENAME M_AXIS_OUTPUT1, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 80000000, PHASE 0.000, CLK_DOMAIN zsys_adc_clk_n, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of o_valid2 : signal is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT2 TVALID";
  attribute X_INTERFACE_PARAMETER of o_valid2 : signal is "XIL_INTERFACENAME M_AXIS_OUTPUT2, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 80000000, PHASE 0.000, CLK_DOMAIN zsys_adc_clk_n, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of o_valid3 : signal is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT3 TVALID";
  attribute X_INTERFACE_PARAMETER of o_valid3 : signal is "XIL_INTERFACENAME M_AXIS_OUTPUT3, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 80000000, PHASE 0.000, CLK_DOMAIN zsys_adc_clk_n, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of o_valid4 : signal is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT4 TVALID";
  attribute X_INTERFACE_PARAMETER of o_valid4 : signal is "XIL_INTERFACENAME M_AXIS_OUTPUT4, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 80000000, PHASE 0.000, CLK_DOMAIN zsys_adc_clk_n, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of o_valid5 : signal is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT5 TVALID";
  attribute X_INTERFACE_PARAMETER of o_valid5 : signal is "XIL_INTERFACENAME M_AXIS_OUTPUT5, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 80000000, PHASE 0.000, CLK_DOMAIN zsys_adc_clk_n, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of o_valid6 : signal is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT6 TVALID";
  attribute X_INTERFACE_PARAMETER of o_valid6 : signal is "XIL_INTERFACENAME M_AXIS_OUTPUT6, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 80000000, PHASE 0.000, CLK_DOMAIN zsys_adc_clk_n, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of o_valid7 : signal is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT7 TVALID";
  attribute X_INTERFACE_PARAMETER of o_valid7 : signal is "XIL_INTERFACENAME M_AXIS_OUTPUT7, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 80000000, PHASE 0.000, CLK_DOMAIN zsys_adc_clk_n, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of iS_data : signal is "xilinx.com:interface:axis:1.0 S_AXIS_DATA TDATA";
  attribute X_INTERFACE_INFO of oS_data0 : signal is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT0 TDATA";
  attribute X_INTERFACE_INFO of oS_data1 : signal is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT1 TDATA";
  attribute X_INTERFACE_INFO of oS_data2 : signal is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT2 TDATA";
  attribute X_INTERFACE_INFO of oS_data3 : signal is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT3 TDATA";
  attribute X_INTERFACE_INFO of oS_data4 : signal is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT4 TDATA";
  attribute X_INTERFACE_INFO of oS_data5 : signal is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT5 TDATA";
  attribute X_INTERFACE_INFO of oS_data6 : signal is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT6 TDATA";
  attribute X_INTERFACE_INFO of oS_data7 : signal is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT7 TDATA";
begin
inst: entity work.zsys_axis_demux_0_0_axis_demux
     port map (
      iS_data(15 downto 0) => iS_data(15 downto 0),
      i_clk => i_clk,
      i_ctl(2 downto 0) => i_ctl(2 downto 0),
      i_valid => i_valid,
      oS_data0(15 downto 0) => oS_data0(15 downto 0),
      oS_data1(15 downto 0) => oS_data1(15 downto 0),
      oS_data2(15 downto 0) => oS_data2(15 downto 0),
      oS_data3(15 downto 0) => oS_data3(15 downto 0),
      oS_data4(15 downto 0) => oS_data4(15 downto 0),
      oS_data5(15 downto 0) => oS_data5(15 downto 0),
      oS_data6(15 downto 0) => oS_data6(15 downto 0),
      oS_data7(15 downto 0) => oS_data7(15 downto 0),
      o_valid0 => o_valid0,
      o_valid1 => o_valid1,
      o_valid2 => o_valid2,
      o_valid3 => o_valid3,
      o_valid4 => o_valid4,
      o_valid5 => o_valid5,
      o_valid6 => o_valid6,
      o_valid7 => o_valid7
    );
end STRUCTURE;
