-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
-- Date        : Wed Apr 21 23:24:32 2021
-- Host        : dan-Desktop running 64-bit Ubuntu 18.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/dan/Microwave-SDR/Vivado/SDR_Full/test_board/vivado/test_board.srcs/sources_1/bd/zsys/ip/zsys_overdrive_warning_0_0/zsys_overdrive_warning_0_0_sim_netlist.vhdl
-- Design      : zsys_overdrive_warning_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zsys_overdrive_warning_0_0_overdrive_warning is
  port (
    oS_data : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_valid : out STD_LOGIC;
    o_positiveOverload : out STD_LOGIC;
    o_negativeOverload : out STD_LOGIC;
    iS_data : in STD_LOGIC_VECTOR ( 15 downto 0 );
    i_clk : in STD_LOGIC;
    i_valid : in STD_LOGIC;
    i_resetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of zsys_overdrive_warning_0_0_overdrive_warning : entity is "overdrive_warning";
end zsys_overdrive_warning_0_0_overdrive_warning;

architecture STRUCTURE of zsys_overdrive_warning_0_0_overdrive_warning is
  signal \o_negativeOverload0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \o_negativeOverload0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \o_negativeOverload0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \o_negativeOverload0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \o_negativeOverload0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \o_negativeOverload0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \o_negativeOverload0_carry__0_n_0\ : STD_LOGIC;
  signal \o_negativeOverload0_carry__0_n_1\ : STD_LOGIC;
  signal \o_negativeOverload0_carry__0_n_2\ : STD_LOGIC;
  signal \o_negativeOverload0_carry__0_n_3\ : STD_LOGIC;
  signal o_negativeOverload0_carry_i_1_n_0 : STD_LOGIC;
  signal o_negativeOverload0_carry_i_2_n_0 : STD_LOGIC;
  signal o_negativeOverload0_carry_i_3_n_0 : STD_LOGIC;
  signal o_negativeOverload0_carry_i_4_n_0 : STD_LOGIC;
  signal o_negativeOverload0_carry_i_5_n_0 : STD_LOGIC;
  signal o_negativeOverload0_carry_i_6_n_0 : STD_LOGIC;
  signal o_negativeOverload0_carry_i_7_n_0 : STD_LOGIC;
  signal o_negativeOverload0_carry_i_8_n_0 : STD_LOGIC;
  signal o_negativeOverload0_carry_n_0 : STD_LOGIC;
  signal o_negativeOverload0_carry_n_1 : STD_LOGIC;
  signal o_negativeOverload0_carry_n_2 : STD_LOGIC;
  signal o_negativeOverload0_carry_n_3 : STD_LOGIC;
  signal \o_positiveOverload0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \o_positiveOverload0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \o_positiveOverload0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \o_positiveOverload0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \o_positiveOverload0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \o_positiveOverload0_carry__0_n_1\ : STD_LOGIC;
  signal \o_positiveOverload0_carry__0_n_2\ : STD_LOGIC;
  signal \o_positiveOverload0_carry__0_n_3\ : STD_LOGIC;
  signal o_positiveOverload0_carry_i_1_n_0 : STD_LOGIC;
  signal o_positiveOverload0_carry_i_2_n_0 : STD_LOGIC;
  signal o_positiveOverload0_carry_i_3_n_0 : STD_LOGIC;
  signal o_positiveOverload0_carry_i_4_n_0 : STD_LOGIC;
  signal o_positiveOverload0_carry_i_5_n_0 : STD_LOGIC;
  signal o_positiveOverload0_carry_i_6_n_0 : STD_LOGIC;
  signal o_positiveOverload0_carry_n_0 : STD_LOGIC;
  signal o_positiveOverload0_carry_n_1 : STD_LOGIC;
  signal o_positiveOverload0_carry_n_2 : STD_LOGIC;
  signal o_positiveOverload0_carry_n_3 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal NLW_o_negativeOverload0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_o_negativeOverload0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_o_positiveOverload0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_o_positiveOverload0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of \oS_data_reg[0]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_DATA TDATA";
  attribute X_INTERFACE_INFO of \oS_data_reg[10]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_DATA TDATA";
  attribute X_INTERFACE_INFO of \oS_data_reg[11]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_DATA TDATA";
  attribute X_INTERFACE_INFO of \oS_data_reg[12]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_DATA TDATA";
  attribute X_INTERFACE_INFO of \oS_data_reg[13]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_DATA TDATA";
  attribute X_INTERFACE_INFO of \oS_data_reg[14]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_DATA TDATA";
  attribute X_INTERFACE_INFO of \oS_data_reg[15]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_DATA TDATA";
  attribute X_INTERFACE_INFO of \oS_data_reg[1]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_DATA TDATA";
  attribute X_INTERFACE_INFO of \oS_data_reg[2]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_DATA TDATA";
  attribute X_INTERFACE_INFO of \oS_data_reg[3]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_DATA TDATA";
  attribute X_INTERFACE_INFO of \oS_data_reg[4]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_DATA TDATA";
  attribute X_INTERFACE_INFO of \oS_data_reg[5]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_DATA TDATA";
  attribute X_INTERFACE_INFO of \oS_data_reg[6]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_DATA TDATA";
  attribute X_INTERFACE_INFO of \oS_data_reg[7]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_DATA TDATA";
  attribute X_INTERFACE_INFO of \oS_data_reg[8]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_DATA TDATA";
  attribute X_INTERFACE_INFO of \oS_data_reg[9]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_DATA TDATA";
  attribute X_INTERFACE_INFO of o_valid_reg : label is "xilinx.com:interface:axis:1.0 M_AXIS_DATA TVALID";
begin
\oS_data[15]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_resetn,
      O => p_0_in
    );
\oS_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => iS_data(0),
      Q => oS_data(0),
      R => p_0_in
    );
\oS_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => iS_data(10),
      Q => oS_data(10),
      R => p_0_in
    );
\oS_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => iS_data(11),
      Q => oS_data(11),
      R => p_0_in
    );
\oS_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => iS_data(12),
      Q => oS_data(12),
      R => p_0_in
    );
\oS_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => iS_data(13),
      Q => oS_data(13),
      R => p_0_in
    );
\oS_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => iS_data(14),
      Q => oS_data(14),
      R => p_0_in
    );
\oS_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => iS_data(15),
      Q => oS_data(15),
      R => p_0_in
    );
\oS_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => iS_data(1),
      Q => oS_data(1),
      R => p_0_in
    );
\oS_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => iS_data(2),
      Q => oS_data(2),
      R => p_0_in
    );
\oS_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => iS_data(3),
      Q => oS_data(3),
      R => p_0_in
    );
\oS_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => iS_data(4),
      Q => oS_data(4),
      R => p_0_in
    );
\oS_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => iS_data(5),
      Q => oS_data(5),
      R => p_0_in
    );
\oS_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => iS_data(6),
      Q => oS_data(6),
      R => p_0_in
    );
\oS_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => iS_data(7),
      Q => oS_data(7),
      R => p_0_in
    );
\oS_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => iS_data(8),
      Q => oS_data(8),
      R => p_0_in
    );
\oS_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => iS_data(9),
      Q => oS_data(9),
      R => p_0_in
    );
o_negativeOverload0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => o_negativeOverload0_carry_n_0,
      CO(2) => o_negativeOverload0_carry_n_1,
      CO(1) => o_negativeOverload0_carry_n_2,
      CO(0) => o_negativeOverload0_carry_n_3,
      CYINIT => '0',
      DI(3) => o_negativeOverload0_carry_i_1_n_0,
      DI(2) => o_negativeOverload0_carry_i_2_n_0,
      DI(1) => o_negativeOverload0_carry_i_3_n_0,
      DI(0) => o_negativeOverload0_carry_i_4_n_0,
      O(3 downto 0) => NLW_o_negativeOverload0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => o_negativeOverload0_carry_i_5_n_0,
      S(2) => o_negativeOverload0_carry_i_6_n_0,
      S(1) => o_negativeOverload0_carry_i_7_n_0,
      S(0) => o_negativeOverload0_carry_i_8_n_0
    );
\o_negativeOverload0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => o_negativeOverload0_carry_n_0,
      CO(3) => \o_negativeOverload0_carry__0_n_0\,
      CO(2) => \o_negativeOverload0_carry__0_n_1\,
      CO(1) => \o_negativeOverload0_carry__0_n_2\,
      CO(0) => \o_negativeOverload0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \o_negativeOverload0_carry__0_i_1_n_0\,
      DI(0) => \o_negativeOverload0_carry__0_i_2_n_0\,
      O(3 downto 0) => \NLW_o_negativeOverload0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \o_negativeOverload0_carry__0_i_3_n_0\,
      S(2) => \o_negativeOverload0_carry__0_i_4_n_0\,
      S(1) => \o_negativeOverload0_carry__0_i_5_n_0\,
      S(0) => \o_negativeOverload0_carry__0_i_6_n_0\
    );
\o_negativeOverload0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => iS_data(10),
      I1 => iS_data(11),
      O => \o_negativeOverload0_carry__0_i_1_n_0\
    );
\o_negativeOverload0_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => iS_data(9),
      O => \o_negativeOverload0_carry__0_i_2_n_0\
    );
\o_negativeOverload0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => iS_data(15),
      I1 => iS_data(14),
      O => \o_negativeOverload0_carry__0_i_3_n_0\
    );
\o_negativeOverload0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => iS_data(12),
      I1 => iS_data(13),
      O => \o_negativeOverload0_carry__0_i_4_n_0\
    );
\o_negativeOverload0_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => iS_data(10),
      I1 => iS_data(11),
      O => \o_negativeOverload0_carry__0_i_5_n_0\
    );
\o_negativeOverload0_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => iS_data(9),
      I1 => iS_data(8),
      O => \o_negativeOverload0_carry__0_i_6_n_0\
    );
o_negativeOverload0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => iS_data(6),
      I1 => iS_data(7),
      O => o_negativeOverload0_carry_i_1_n_0
    );
o_negativeOverload0_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => iS_data(5),
      O => o_negativeOverload0_carry_i_2_n_0
    );
o_negativeOverload0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => iS_data(2),
      I1 => iS_data(3),
      O => o_negativeOverload0_carry_i_3_n_0
    );
o_negativeOverload0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => iS_data(0),
      I1 => iS_data(1),
      O => o_negativeOverload0_carry_i_4_n_0
    );
o_negativeOverload0_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => iS_data(6),
      I1 => iS_data(7),
      O => o_negativeOverload0_carry_i_5_n_0
    );
o_negativeOverload0_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => iS_data(5),
      I1 => iS_data(4),
      O => o_negativeOverload0_carry_i_6_n_0
    );
o_negativeOverload0_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => iS_data(2),
      I1 => iS_data(3),
      O => o_negativeOverload0_carry_i_7_n_0
    );
o_negativeOverload0_carry_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => iS_data(0),
      I1 => iS_data(1),
      O => o_negativeOverload0_carry_i_8_n_0
    );
o_negativeOverload_reg: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \o_negativeOverload0_carry__0_n_0\,
      Q => o_negativeOverload,
      R => p_0_in
    );
o_positiveOverload0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => o_positiveOverload0_carry_n_0,
      CO(2) => o_positiveOverload0_carry_n_1,
      CO(1) => o_positiveOverload0_carry_n_2,
      CO(0) => o_positiveOverload0_carry_n_3,
      CYINIT => '0',
      DI(3) => o_positiveOverload0_carry_i_1_n_0,
      DI(2) => iS_data(5),
      DI(1) => o_positiveOverload0_carry_i_2_n_0,
      DI(0) => iS_data(1),
      O(3 downto 0) => NLW_o_positiveOverload0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => o_positiveOverload0_carry_i_3_n_0,
      S(2) => o_positiveOverload0_carry_i_4_n_0,
      S(1) => o_positiveOverload0_carry_i_5_n_0,
      S(0) => o_positiveOverload0_carry_i_6_n_0
    );
\o_positiveOverload0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => o_positiveOverload0_carry_n_0,
      CO(3) => p_1_in,
      CO(2) => \o_positiveOverload0_carry__0_n_1\,
      CO(1) => \o_positiveOverload0_carry__0_n_2\,
      CO(0) => \o_positiveOverload0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \o_positiveOverload0_carry__0_i_1_n_0\,
      DI(0) => iS_data(9),
      O(3 downto 0) => \NLW_o_positiveOverload0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \o_positiveOverload0_carry__0_i_2_n_0\,
      S(2) => \o_positiveOverload0_carry__0_i_3_n_0\,
      S(1) => \o_positiveOverload0_carry__0_i_4_n_0\,
      S(0) => \o_positiveOverload0_carry__0_i_5_n_0\
    );
\o_positiveOverload0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => iS_data(10),
      I1 => iS_data(11),
      O => \o_positiveOverload0_carry__0_i_1_n_0\
    );
\o_positiveOverload0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => iS_data(14),
      I1 => iS_data(15),
      O => \o_positiveOverload0_carry__0_i_2_n_0\
    );
\o_positiveOverload0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => iS_data(12),
      I1 => iS_data(13),
      O => \o_positiveOverload0_carry__0_i_3_n_0\
    );
\o_positiveOverload0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => iS_data(11),
      I1 => iS_data(10),
      O => \o_positiveOverload0_carry__0_i_4_n_0\
    );
\o_positiveOverload0_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => iS_data(8),
      I1 => iS_data(9),
      O => \o_positiveOverload0_carry__0_i_5_n_0\
    );
o_positiveOverload0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => iS_data(6),
      I1 => iS_data(7),
      O => o_positiveOverload0_carry_i_1_n_0
    );
o_positiveOverload0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => iS_data(2),
      I1 => iS_data(3),
      O => o_positiveOverload0_carry_i_2_n_0
    );
o_positiveOverload0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => iS_data(7),
      I1 => iS_data(6),
      O => o_positiveOverload0_carry_i_3_n_0
    );
o_positiveOverload0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => iS_data(4),
      I1 => iS_data(5),
      O => o_positiveOverload0_carry_i_4_n_0
    );
o_positiveOverload0_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => iS_data(3),
      I1 => iS_data(2),
      O => o_positiveOverload0_carry_i_5_n_0
    );
o_positiveOverload0_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => iS_data(0),
      I1 => iS_data(1),
      O => o_positiveOverload0_carry_i_6_n_0
    );
o_positiveOverload_reg: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => p_1_in,
      Q => o_positiveOverload,
      R => p_0_in
    );
o_valid_reg: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => i_valid,
      Q => o_valid,
      R => p_0_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zsys_overdrive_warning_0_0 is
  port (
    iS_data : in STD_LOGIC_VECTOR ( 15 downto 0 );
    i_valid : in STD_LOGIC;
    oS_data : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_valid : out STD_LOGIC;
    i_clk : in STD_LOGIC;
    i_resetn : in STD_LOGIC;
    o_positiveOverload : out STD_LOGIC;
    o_negativeOverload : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of zsys_overdrive_warning_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of zsys_overdrive_warning_0_0 : entity is "zsys_overdrive_warning_0_0,overdrive_warning,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of zsys_overdrive_warning_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of zsys_overdrive_warning_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of zsys_overdrive_warning_0_0 : entity is "overdrive_warning,Vivado 2019.2";
end zsys_overdrive_warning_0_0;

architecture STRUCTURE of zsys_overdrive_warning_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of i_clk : signal is "xilinx.com:signal:clock:1.0 i_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of i_clk : signal is "XIL_INTERFACENAME i_clk, ASSOCIATED_RESET i_resetn, ASSOCIATED_BUSIF S_AXIS_DATA:M_AXIS_DATA, FREQ_HZ 80000000, PHASE 0.000, CLK_DOMAIN zsys_adc_clk_n, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of i_resetn : signal is "xilinx.com:signal:reset:1.0 i_resetn RST";
  attribute X_INTERFACE_PARAMETER of i_resetn : signal is "XIL_INTERFACENAME i_resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of i_valid : signal is "xilinx.com:interface:axis:1.0 S_AXIS_DATA TVALID";
  attribute X_INTERFACE_PARAMETER of i_valid : signal is "XIL_INTERFACENAME S_AXIS_DATA, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 80000000, PHASE 0.000, CLK_DOMAIN zsys_adc_clk_n, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of o_valid : signal is "xilinx.com:interface:axis:1.0 M_AXIS_DATA TVALID";
  attribute X_INTERFACE_PARAMETER of o_valid : signal is "XIL_INTERFACENAME M_AXIS_DATA, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 80000000, PHASE 0.000, CLK_DOMAIN zsys_adc_clk_n, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of iS_data : signal is "xilinx.com:interface:axis:1.0 S_AXIS_DATA TDATA";
  attribute X_INTERFACE_INFO of oS_data : signal is "xilinx.com:interface:axis:1.0 M_AXIS_DATA TDATA";
begin
inst: entity work.zsys_overdrive_warning_0_0_overdrive_warning
     port map (
      iS_data(15 downto 0) => iS_data(15 downto 0),
      i_clk => i_clk,
      i_resetn => i_resetn,
      i_valid => i_valid,
      oS_data(15 downto 0) => oS_data(15 downto 0),
      o_negativeOverload => o_negativeOverload,
      o_positiveOverload => o_positiveOverload,
      o_valid => o_valid
    );
end STRUCTURE;
