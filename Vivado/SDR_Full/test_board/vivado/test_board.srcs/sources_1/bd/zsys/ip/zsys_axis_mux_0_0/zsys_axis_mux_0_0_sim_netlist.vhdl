-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
-- Date        : Fri Apr 23 22:45:47 2021
-- Host        : dan-Desktop running 64-bit Ubuntu 18.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/dan/Microwave-SDR/Vivado/SDR_Full/test_board/vivado/test_board.srcs/sources_1/bd/zsys/ip/zsys_axis_mux_0_0/zsys_axis_mux_0_0_sim_netlist.vhdl
-- Design      : zsys_axis_mux_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zsys_axis_mux_0_0_axis_mux is
  port (
    oS_data : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_valid : out STD_LOGIC;
    o_enabled : out STD_LOGIC;
    i_en_n : in STD_LOGIC;
    i_clk : in STD_LOGIC;
    i_ctl : in STD_LOGIC_VECTOR ( 2 downto 0 );
    iS_data3 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    iS_data2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    iS_data1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    iS_data0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    iS_data7 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    iS_data6 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    iS_data5 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    iS_data4 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    i_valid3 : in STD_LOGIC;
    i_valid2 : in STD_LOGIC;
    i_valid1 : in STD_LOGIC;
    i_valid0 : in STD_LOGIC;
    i_valid7 : in STD_LOGIC;
    i_valid6 : in STD_LOGIC;
    i_valid5 : in STD_LOGIC;
    i_valid4 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of zsys_axis_mux_0_0_axis_mux : entity is "axis_mux";
end zsys_axis_mux_0_0_axis_mux;

architecture STRUCTURE of zsys_axis_mux_0_0_axis_mux is
  signal \oS_data[0]_i_2_n_0\ : STD_LOGIC;
  signal \oS_data[0]_i_3_n_0\ : STD_LOGIC;
  signal \oS_data[10]_i_2_n_0\ : STD_LOGIC;
  signal \oS_data[10]_i_3_n_0\ : STD_LOGIC;
  signal \oS_data[11]_i_2_n_0\ : STD_LOGIC;
  signal \oS_data[11]_i_3_n_0\ : STD_LOGIC;
  signal \oS_data[12]_i_2_n_0\ : STD_LOGIC;
  signal \oS_data[12]_i_3_n_0\ : STD_LOGIC;
  signal \oS_data[13]_i_2_n_0\ : STD_LOGIC;
  signal \oS_data[13]_i_3_n_0\ : STD_LOGIC;
  signal \oS_data[14]_i_2_n_0\ : STD_LOGIC;
  signal \oS_data[14]_i_3_n_0\ : STD_LOGIC;
  signal \oS_data[15]_i_2_n_0\ : STD_LOGIC;
  signal \oS_data[15]_i_3_n_0\ : STD_LOGIC;
  signal \oS_data[1]_i_2_n_0\ : STD_LOGIC;
  signal \oS_data[1]_i_3_n_0\ : STD_LOGIC;
  signal \oS_data[2]_i_2_n_0\ : STD_LOGIC;
  signal \oS_data[2]_i_3_n_0\ : STD_LOGIC;
  signal \oS_data[3]_i_2_n_0\ : STD_LOGIC;
  signal \oS_data[3]_i_3_n_0\ : STD_LOGIC;
  signal \oS_data[4]_i_2_n_0\ : STD_LOGIC;
  signal \oS_data[4]_i_3_n_0\ : STD_LOGIC;
  signal \oS_data[5]_i_2_n_0\ : STD_LOGIC;
  signal \oS_data[5]_i_3_n_0\ : STD_LOGIC;
  signal \oS_data[6]_i_2_n_0\ : STD_LOGIC;
  signal \oS_data[6]_i_3_n_0\ : STD_LOGIC;
  signal \oS_data[7]_i_2_n_0\ : STD_LOGIC;
  signal \oS_data[7]_i_3_n_0\ : STD_LOGIC;
  signal \oS_data[8]_i_2_n_0\ : STD_LOGIC;
  signal \oS_data[8]_i_3_n_0\ : STD_LOGIC;
  signal \oS_data[9]_i_2_n_0\ : STD_LOGIC;
  signal \oS_data[9]_i_3_n_0\ : STD_LOGIC;
  signal oS_data_0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal o_valid_1 : STD_LOGIC;
  signal o_valid_i_2_n_0 : STD_LOGIC;
  signal o_valid_i_3_n_0 : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of \oS_data_reg[0]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT TDATA";
  attribute X_INTERFACE_INFO of \oS_data_reg[10]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT TDATA";
  attribute X_INTERFACE_INFO of \oS_data_reg[11]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT TDATA";
  attribute X_INTERFACE_INFO of \oS_data_reg[12]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT TDATA";
  attribute X_INTERFACE_INFO of \oS_data_reg[13]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT TDATA";
  attribute X_INTERFACE_INFO of \oS_data_reg[14]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT TDATA";
  attribute X_INTERFACE_INFO of \oS_data_reg[15]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT TDATA";
  attribute X_INTERFACE_INFO of \oS_data_reg[1]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT TDATA";
  attribute X_INTERFACE_INFO of \oS_data_reg[2]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT TDATA";
  attribute X_INTERFACE_INFO of \oS_data_reg[3]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT TDATA";
  attribute X_INTERFACE_INFO of \oS_data_reg[4]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT TDATA";
  attribute X_INTERFACE_INFO of \oS_data_reg[5]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT TDATA";
  attribute X_INTERFACE_INFO of \oS_data_reg[6]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT TDATA";
  attribute X_INTERFACE_INFO of \oS_data_reg[7]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT TDATA";
  attribute X_INTERFACE_INFO of \oS_data_reg[8]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT TDATA";
  attribute X_INTERFACE_INFO of \oS_data_reg[9]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT TDATA";
  attribute X_INTERFACE_INFO of o_valid_reg : label is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT TVALID";
begin
\oS_data[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => iS_data3(0),
      I1 => iS_data2(0),
      I2 => i_ctl(1),
      I3 => iS_data1(0),
      I4 => i_ctl(0),
      I5 => iS_data0(0),
      O => \oS_data[0]_i_2_n_0\
    );
\oS_data[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => iS_data7(0),
      I1 => iS_data6(0),
      I2 => i_ctl(1),
      I3 => iS_data5(0),
      I4 => i_ctl(0),
      I5 => iS_data4(0),
      O => \oS_data[0]_i_3_n_0\
    );
\oS_data[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => iS_data3(10),
      I1 => iS_data2(10),
      I2 => i_ctl(1),
      I3 => iS_data1(10),
      I4 => i_ctl(0),
      I5 => iS_data0(10),
      O => \oS_data[10]_i_2_n_0\
    );
\oS_data[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => iS_data7(10),
      I1 => iS_data6(10),
      I2 => i_ctl(1),
      I3 => iS_data5(10),
      I4 => i_ctl(0),
      I5 => iS_data4(10),
      O => \oS_data[10]_i_3_n_0\
    );
\oS_data[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => iS_data3(11),
      I1 => iS_data2(11),
      I2 => i_ctl(1),
      I3 => iS_data1(11),
      I4 => i_ctl(0),
      I5 => iS_data0(11),
      O => \oS_data[11]_i_2_n_0\
    );
\oS_data[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => iS_data7(11),
      I1 => iS_data6(11),
      I2 => i_ctl(1),
      I3 => iS_data5(11),
      I4 => i_ctl(0),
      I5 => iS_data4(11),
      O => \oS_data[11]_i_3_n_0\
    );
\oS_data[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => iS_data3(12),
      I1 => iS_data2(12),
      I2 => i_ctl(1),
      I3 => iS_data1(12),
      I4 => i_ctl(0),
      I5 => iS_data0(12),
      O => \oS_data[12]_i_2_n_0\
    );
\oS_data[12]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => iS_data7(12),
      I1 => iS_data6(12),
      I2 => i_ctl(1),
      I3 => iS_data5(12),
      I4 => i_ctl(0),
      I5 => iS_data4(12),
      O => \oS_data[12]_i_3_n_0\
    );
\oS_data[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => iS_data3(13),
      I1 => iS_data2(13),
      I2 => i_ctl(1),
      I3 => iS_data1(13),
      I4 => i_ctl(0),
      I5 => iS_data0(13),
      O => \oS_data[13]_i_2_n_0\
    );
\oS_data[13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => iS_data7(13),
      I1 => iS_data6(13),
      I2 => i_ctl(1),
      I3 => iS_data5(13),
      I4 => i_ctl(0),
      I5 => iS_data4(13),
      O => \oS_data[13]_i_3_n_0\
    );
\oS_data[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => iS_data3(14),
      I1 => iS_data2(14),
      I2 => i_ctl(1),
      I3 => iS_data1(14),
      I4 => i_ctl(0),
      I5 => iS_data0(14),
      O => \oS_data[14]_i_2_n_0\
    );
\oS_data[14]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => iS_data7(14),
      I1 => iS_data6(14),
      I2 => i_ctl(1),
      I3 => iS_data5(14),
      I4 => i_ctl(0),
      I5 => iS_data4(14),
      O => \oS_data[14]_i_3_n_0\
    );
\oS_data[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => iS_data3(15),
      I1 => iS_data2(15),
      I2 => i_ctl(1),
      I3 => iS_data1(15),
      I4 => i_ctl(0),
      I5 => iS_data0(15),
      O => \oS_data[15]_i_2_n_0\
    );
\oS_data[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => iS_data7(15),
      I1 => iS_data6(15),
      I2 => i_ctl(1),
      I3 => iS_data5(15),
      I4 => i_ctl(0),
      I5 => iS_data4(15),
      O => \oS_data[15]_i_3_n_0\
    );
\oS_data[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => iS_data3(1),
      I1 => iS_data2(1),
      I2 => i_ctl(1),
      I3 => iS_data1(1),
      I4 => i_ctl(0),
      I5 => iS_data0(1),
      O => \oS_data[1]_i_2_n_0\
    );
\oS_data[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => iS_data7(1),
      I1 => iS_data6(1),
      I2 => i_ctl(1),
      I3 => iS_data5(1),
      I4 => i_ctl(0),
      I5 => iS_data4(1),
      O => \oS_data[1]_i_3_n_0\
    );
\oS_data[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => iS_data3(2),
      I1 => iS_data2(2),
      I2 => i_ctl(1),
      I3 => iS_data1(2),
      I4 => i_ctl(0),
      I5 => iS_data0(2),
      O => \oS_data[2]_i_2_n_0\
    );
\oS_data[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => iS_data7(2),
      I1 => iS_data6(2),
      I2 => i_ctl(1),
      I3 => iS_data5(2),
      I4 => i_ctl(0),
      I5 => iS_data4(2),
      O => \oS_data[2]_i_3_n_0\
    );
\oS_data[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => iS_data3(3),
      I1 => iS_data2(3),
      I2 => i_ctl(1),
      I3 => iS_data1(3),
      I4 => i_ctl(0),
      I5 => iS_data0(3),
      O => \oS_data[3]_i_2_n_0\
    );
\oS_data[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => iS_data7(3),
      I1 => iS_data6(3),
      I2 => i_ctl(1),
      I3 => iS_data5(3),
      I4 => i_ctl(0),
      I5 => iS_data4(3),
      O => \oS_data[3]_i_3_n_0\
    );
\oS_data[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => iS_data3(4),
      I1 => iS_data2(4),
      I2 => i_ctl(1),
      I3 => iS_data1(4),
      I4 => i_ctl(0),
      I5 => iS_data0(4),
      O => \oS_data[4]_i_2_n_0\
    );
\oS_data[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => iS_data7(4),
      I1 => iS_data6(4),
      I2 => i_ctl(1),
      I3 => iS_data5(4),
      I4 => i_ctl(0),
      I5 => iS_data4(4),
      O => \oS_data[4]_i_3_n_0\
    );
\oS_data[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => iS_data3(5),
      I1 => iS_data2(5),
      I2 => i_ctl(1),
      I3 => iS_data1(5),
      I4 => i_ctl(0),
      I5 => iS_data0(5),
      O => \oS_data[5]_i_2_n_0\
    );
\oS_data[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => iS_data7(5),
      I1 => iS_data6(5),
      I2 => i_ctl(1),
      I3 => iS_data5(5),
      I4 => i_ctl(0),
      I5 => iS_data4(5),
      O => \oS_data[5]_i_3_n_0\
    );
\oS_data[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => iS_data3(6),
      I1 => iS_data2(6),
      I2 => i_ctl(1),
      I3 => iS_data1(6),
      I4 => i_ctl(0),
      I5 => iS_data0(6),
      O => \oS_data[6]_i_2_n_0\
    );
\oS_data[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => iS_data7(6),
      I1 => iS_data6(6),
      I2 => i_ctl(1),
      I3 => iS_data5(6),
      I4 => i_ctl(0),
      I5 => iS_data4(6),
      O => \oS_data[6]_i_3_n_0\
    );
\oS_data[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => iS_data3(7),
      I1 => iS_data2(7),
      I2 => i_ctl(1),
      I3 => iS_data1(7),
      I4 => i_ctl(0),
      I5 => iS_data0(7),
      O => \oS_data[7]_i_2_n_0\
    );
\oS_data[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => iS_data7(7),
      I1 => iS_data6(7),
      I2 => i_ctl(1),
      I3 => iS_data5(7),
      I4 => i_ctl(0),
      I5 => iS_data4(7),
      O => \oS_data[7]_i_3_n_0\
    );
\oS_data[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => iS_data3(8),
      I1 => iS_data2(8),
      I2 => i_ctl(1),
      I3 => iS_data1(8),
      I4 => i_ctl(0),
      I5 => iS_data0(8),
      O => \oS_data[8]_i_2_n_0\
    );
\oS_data[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => iS_data7(8),
      I1 => iS_data6(8),
      I2 => i_ctl(1),
      I3 => iS_data5(8),
      I4 => i_ctl(0),
      I5 => iS_data4(8),
      O => \oS_data[8]_i_3_n_0\
    );
\oS_data[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => iS_data3(9),
      I1 => iS_data2(9),
      I2 => i_ctl(1),
      I3 => iS_data1(9),
      I4 => i_ctl(0),
      I5 => iS_data0(9),
      O => \oS_data[9]_i_2_n_0\
    );
\oS_data[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => iS_data7(9),
      I1 => iS_data6(9),
      I2 => i_ctl(1),
      I3 => iS_data5(9),
      I4 => i_ctl(0),
      I5 => iS_data4(9),
      O => \oS_data[9]_i_3_n_0\
    );
\oS_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => oS_data_0(0),
      Q => oS_data(0),
      R => i_en_n
    );
\oS_data_reg[0]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \oS_data[0]_i_2_n_0\,
      I1 => \oS_data[0]_i_3_n_0\,
      O => oS_data_0(0),
      S => i_ctl(2)
    );
\oS_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => oS_data_0(10),
      Q => oS_data(10),
      R => i_en_n
    );
\oS_data_reg[10]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \oS_data[10]_i_2_n_0\,
      I1 => \oS_data[10]_i_3_n_0\,
      O => oS_data_0(10),
      S => i_ctl(2)
    );
\oS_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => oS_data_0(11),
      Q => oS_data(11),
      R => i_en_n
    );
\oS_data_reg[11]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \oS_data[11]_i_2_n_0\,
      I1 => \oS_data[11]_i_3_n_0\,
      O => oS_data_0(11),
      S => i_ctl(2)
    );
\oS_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => oS_data_0(12),
      Q => oS_data(12),
      R => i_en_n
    );
\oS_data_reg[12]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \oS_data[12]_i_2_n_0\,
      I1 => \oS_data[12]_i_3_n_0\,
      O => oS_data_0(12),
      S => i_ctl(2)
    );
\oS_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => oS_data_0(13),
      Q => oS_data(13),
      R => i_en_n
    );
\oS_data_reg[13]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \oS_data[13]_i_2_n_0\,
      I1 => \oS_data[13]_i_3_n_0\,
      O => oS_data_0(13),
      S => i_ctl(2)
    );
\oS_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => oS_data_0(14),
      Q => oS_data(14),
      R => i_en_n
    );
\oS_data_reg[14]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \oS_data[14]_i_2_n_0\,
      I1 => \oS_data[14]_i_3_n_0\,
      O => oS_data_0(14),
      S => i_ctl(2)
    );
\oS_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => oS_data_0(15),
      Q => oS_data(15),
      R => i_en_n
    );
\oS_data_reg[15]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \oS_data[15]_i_2_n_0\,
      I1 => \oS_data[15]_i_3_n_0\,
      O => oS_data_0(15),
      S => i_ctl(2)
    );
\oS_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => oS_data_0(1),
      Q => oS_data(1),
      R => i_en_n
    );
\oS_data_reg[1]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \oS_data[1]_i_2_n_0\,
      I1 => \oS_data[1]_i_3_n_0\,
      O => oS_data_0(1),
      S => i_ctl(2)
    );
\oS_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => oS_data_0(2),
      Q => oS_data(2),
      R => i_en_n
    );
\oS_data_reg[2]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \oS_data[2]_i_2_n_0\,
      I1 => \oS_data[2]_i_3_n_0\,
      O => oS_data_0(2),
      S => i_ctl(2)
    );
\oS_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => oS_data_0(3),
      Q => oS_data(3),
      R => i_en_n
    );
\oS_data_reg[3]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \oS_data[3]_i_2_n_0\,
      I1 => \oS_data[3]_i_3_n_0\,
      O => oS_data_0(3),
      S => i_ctl(2)
    );
\oS_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => oS_data_0(4),
      Q => oS_data(4),
      R => i_en_n
    );
\oS_data_reg[4]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \oS_data[4]_i_2_n_0\,
      I1 => \oS_data[4]_i_3_n_0\,
      O => oS_data_0(4),
      S => i_ctl(2)
    );
\oS_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => oS_data_0(5),
      Q => oS_data(5),
      R => i_en_n
    );
\oS_data_reg[5]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \oS_data[5]_i_2_n_0\,
      I1 => \oS_data[5]_i_3_n_0\,
      O => oS_data_0(5),
      S => i_ctl(2)
    );
\oS_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => oS_data_0(6),
      Q => oS_data(6),
      R => i_en_n
    );
\oS_data_reg[6]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \oS_data[6]_i_2_n_0\,
      I1 => \oS_data[6]_i_3_n_0\,
      O => oS_data_0(6),
      S => i_ctl(2)
    );
\oS_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => oS_data_0(7),
      Q => oS_data(7),
      R => i_en_n
    );
\oS_data_reg[7]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \oS_data[7]_i_2_n_0\,
      I1 => \oS_data[7]_i_3_n_0\,
      O => oS_data_0(7),
      S => i_ctl(2)
    );
\oS_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => oS_data_0(8),
      Q => oS_data(8),
      R => i_en_n
    );
\oS_data_reg[8]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \oS_data[8]_i_2_n_0\,
      I1 => \oS_data[8]_i_3_n_0\,
      O => oS_data_0(8),
      S => i_ctl(2)
    );
\oS_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => oS_data_0(9),
      Q => oS_data(9),
      R => i_en_n
    );
\oS_data_reg[9]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \oS_data[9]_i_2_n_0\,
      I1 => \oS_data[9]_i_3_n_0\,
      O => oS_data_0(9),
      S => i_ctl(2)
    );
o_enabled_reg: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => '1',
      Q => o_enabled,
      R => i_en_n
    );
o_valid_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i_valid3,
      I1 => i_valid2,
      I2 => i_ctl(1),
      I3 => i_valid1,
      I4 => i_ctl(0),
      I5 => i_valid0,
      O => o_valid_i_2_n_0
    );
o_valid_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i_valid7,
      I1 => i_valid6,
      I2 => i_ctl(1),
      I3 => i_valid5,
      I4 => i_ctl(0),
      I5 => i_valid4,
      O => o_valid_i_3_n_0
    );
o_valid_reg: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => o_valid_1,
      Q => o_valid,
      R => i_en_n
    );
o_valid_reg_i_1: unisim.vcomponents.MUXF7
     port map (
      I0 => o_valid_i_2_n_0,
      I1 => o_valid_i_3_n_0,
      O => o_valid_1,
      S => i_ctl(2)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zsys_axis_mux_0_0 is
  port (
    oS_data : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_valid : out STD_LOGIC;
    i_ctl : in STD_LOGIC_VECTOR ( 2 downto 0 );
    i_en_n : in STD_LOGIC;
    o_enabled : out STD_LOGIC;
    iS_data0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    i_valid0 : in STD_LOGIC;
    iS_data1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    i_valid1 : in STD_LOGIC;
    iS_data2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    i_valid2 : in STD_LOGIC;
    iS_data3 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    i_valid3 : in STD_LOGIC;
    iS_data4 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    i_valid4 : in STD_LOGIC;
    iS_data5 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    i_valid5 : in STD_LOGIC;
    iS_data6 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    i_valid6 : in STD_LOGIC;
    iS_data7 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    i_valid7 : in STD_LOGIC;
    i_clk : in STD_LOGIC;
    i_resetn : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of zsys_axis_mux_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of zsys_axis_mux_0_0 : entity is "zsys_axis_mux_0_0,axis_mux,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of zsys_axis_mux_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of zsys_axis_mux_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of zsys_axis_mux_0_0 : entity is "axis_mux,Vivado 2019.2";
end zsys_axis_mux_0_0;

architecture STRUCTURE of zsys_axis_mux_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of i_clk : signal is "xilinx.com:signal:clock:1.0 i_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of i_clk : signal is "XIL_INTERFACENAME i_clk, ASSOCIATED_RESET i_resetn, ASSOCIATED_BUSIF M_AXIS_OUTPUT:S_AXIS_INPUT0:S_AXIS_INPUT1:S_AXIS_INPUT2:S_AXIS_INPUT3:S_AXIS_INPUT4:S_AXIS_INPUT5:S_AXIS_INPUT6:S_AXIS_INPUT7, FREQ_HZ 80000000, PHASE 0.000, CLK_DOMAIN zsys_adc_clk_n, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of i_resetn : signal is "xilinx.com:signal:reset:1.0 i_resetn RST";
  attribute X_INTERFACE_PARAMETER of i_resetn : signal is "XIL_INTERFACENAME i_resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of i_valid0 : signal is "xilinx.com:interface:axis:1.0 S_AXIS_INPUT0 TVALID";
  attribute X_INTERFACE_PARAMETER of i_valid0 : signal is "XIL_INTERFACENAME S_AXIS_INPUT0, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 80000000, PHASE 0.000, CLK_DOMAIN zsys_adc_clk_n, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of i_valid1 : signal is "xilinx.com:interface:axis:1.0 S_AXIS_INPUT1 TVALID";
  attribute X_INTERFACE_PARAMETER of i_valid1 : signal is "XIL_INTERFACENAME S_AXIS_INPUT1, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 80000000, PHASE 0.000, CLK_DOMAIN zsys_adc_clk_n, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of i_valid2 : signal is "xilinx.com:interface:axis:1.0 S_AXIS_INPUT2 TVALID";
  attribute X_INTERFACE_PARAMETER of i_valid2 : signal is "XIL_INTERFACENAME S_AXIS_INPUT2, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 80000000, PHASE 0.000, CLK_DOMAIN zsys_adc_clk_n, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of i_valid3 : signal is "xilinx.com:interface:axis:1.0 S_AXIS_INPUT3 TVALID";
  attribute X_INTERFACE_PARAMETER of i_valid3 : signal is "XIL_INTERFACENAME S_AXIS_INPUT3, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 80000000, PHASE 0.000, CLK_DOMAIN zsys_adc_clk_n, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of i_valid4 : signal is "xilinx.com:interface:axis:1.0 S_AXIS_INPUT4 TVALID";
  attribute X_INTERFACE_PARAMETER of i_valid4 : signal is "XIL_INTERFACENAME S_AXIS_INPUT4, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 80000000, PHASE 0.000, CLK_DOMAIN zsys_adc_clk_n, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of i_valid5 : signal is "xilinx.com:interface:axis:1.0 S_AXIS_INPUT5 TVALID";
  attribute X_INTERFACE_PARAMETER of i_valid5 : signal is "XIL_INTERFACENAME S_AXIS_INPUT5, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 80000000, PHASE 0.000, CLK_DOMAIN zsys_adc_clk_n, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of i_valid6 : signal is "xilinx.com:interface:axis:1.0 S_AXIS_INPUT6 TVALID";
  attribute X_INTERFACE_PARAMETER of i_valid6 : signal is "XIL_INTERFACENAME S_AXIS_INPUT6, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 80000000, PHASE 0.000, CLK_DOMAIN zsys_adc_clk_n, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of i_valid7 : signal is "xilinx.com:interface:axis:1.0 S_AXIS_INPUT7 TVALID";
  attribute X_INTERFACE_PARAMETER of i_valid7 : signal is "XIL_INTERFACENAME S_AXIS_INPUT7, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 80000000, PHASE 0.000, CLK_DOMAIN zsys_adc_clk_n, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of o_valid : signal is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT TVALID";
  attribute X_INTERFACE_PARAMETER of o_valid : signal is "XIL_INTERFACENAME M_AXIS_OUTPUT, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 80000000, PHASE 0.000, CLK_DOMAIN zsys_adc_clk_n, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of iS_data0 : signal is "xilinx.com:interface:axis:1.0 S_AXIS_INPUT0 TDATA";
  attribute X_INTERFACE_INFO of iS_data1 : signal is "xilinx.com:interface:axis:1.0 S_AXIS_INPUT1 TDATA";
  attribute X_INTERFACE_INFO of iS_data2 : signal is "xilinx.com:interface:axis:1.0 S_AXIS_INPUT2 TDATA";
  attribute X_INTERFACE_INFO of iS_data3 : signal is "xilinx.com:interface:axis:1.0 S_AXIS_INPUT3 TDATA";
  attribute X_INTERFACE_INFO of iS_data4 : signal is "xilinx.com:interface:axis:1.0 S_AXIS_INPUT4 TDATA";
  attribute X_INTERFACE_INFO of iS_data5 : signal is "xilinx.com:interface:axis:1.0 S_AXIS_INPUT5 TDATA";
  attribute X_INTERFACE_INFO of iS_data6 : signal is "xilinx.com:interface:axis:1.0 S_AXIS_INPUT6 TDATA";
  attribute X_INTERFACE_INFO of iS_data7 : signal is "xilinx.com:interface:axis:1.0 S_AXIS_INPUT7 TDATA";
  attribute X_INTERFACE_INFO of oS_data : signal is "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT TDATA";
begin
inst: entity work.zsys_axis_mux_0_0_axis_mux
     port map (
      iS_data0(15 downto 0) => iS_data0(15 downto 0),
      iS_data1(15 downto 0) => iS_data1(15 downto 0),
      iS_data2(15 downto 0) => iS_data2(15 downto 0),
      iS_data3(15 downto 0) => iS_data3(15 downto 0),
      iS_data4(15 downto 0) => iS_data4(15 downto 0),
      iS_data5(15 downto 0) => iS_data5(15 downto 0),
      iS_data6(15 downto 0) => iS_data6(15 downto 0),
      iS_data7(15 downto 0) => iS_data7(15 downto 0),
      i_clk => i_clk,
      i_ctl(2 downto 0) => i_ctl(2 downto 0),
      i_en_n => i_en_n,
      i_valid0 => i_valid0,
      i_valid1 => i_valid1,
      i_valid2 => i_valid2,
      i_valid3 => i_valid3,
      i_valid4 => i_valid4,
      i_valid5 => i_valid5,
      i_valid6 => i_valid6,
      i_valid7 => i_valid7,
      oS_data(15 downto 0) => oS_data(15 downto 0),
      o_enabled => o_enabled,
      o_valid => o_valid
    );
end STRUCTURE;
