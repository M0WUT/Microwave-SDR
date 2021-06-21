-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
-- Date        : Mon Jun 21 19:29:56 2021
-- Host        : dan-Desktop running 64-bit Ubuntu 18.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/dan/Microwave-SDR/Vivado/SDR_Full/test_board/vivado/test_board.srcs/sources_1/bd/zsys/ip/zsys_phase_accumulator_0_2/zsys_phase_accumulator_0_2_sim_netlist.vhdl
-- Design      : zsys_phase_accumulator_0_2
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zsys_phase_accumulator_0_2_phase_accumulator is
  port (
    o_valid : out STD_LOGIC;
    oS_phaseAngle : out STD_LOGIC_VECTOR ( 31 downto 0 );
    i_valid : in STD_LOGIC;
    iS_phaseDelta : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_clk : in STD_LOGIC;
    i_resetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of zsys_phase_accumulator_0_2_phase_accumulator : entity is "phase_accumulator";
end zsys_phase_accumulator_0_2_phase_accumulator;

architecture STRUCTURE of zsys_phase_accumulator_0_2_phase_accumulator is
  signal clear : STD_LOGIC;
  signal \^os_phaseangle\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \oS_phaseAngle[11]_i_2_n_0\ : STD_LOGIC;
  signal \oS_phaseAngle[11]_i_3_n_0\ : STD_LOGIC;
  signal \oS_phaseAngle[11]_i_4_n_0\ : STD_LOGIC;
  signal \oS_phaseAngle[11]_i_5_n_0\ : STD_LOGIC;
  signal \oS_phaseAngle[15]_i_2_n_0\ : STD_LOGIC;
  signal \oS_phaseAngle[15]_i_3_n_0\ : STD_LOGIC;
  signal \oS_phaseAngle[15]_i_4_n_0\ : STD_LOGIC;
  signal \oS_phaseAngle[15]_i_5_n_0\ : STD_LOGIC;
  signal \oS_phaseAngle[19]_i_2_n_0\ : STD_LOGIC;
  signal \oS_phaseAngle[19]_i_3_n_0\ : STD_LOGIC;
  signal \oS_phaseAngle[19]_i_4_n_0\ : STD_LOGIC;
  signal \oS_phaseAngle[19]_i_5_n_0\ : STD_LOGIC;
  signal \oS_phaseAngle[23]_i_2_n_0\ : STD_LOGIC;
  signal \oS_phaseAngle[23]_i_3_n_0\ : STD_LOGIC;
  signal \oS_phaseAngle[23]_i_4_n_0\ : STD_LOGIC;
  signal \oS_phaseAngle[23]_i_5_n_0\ : STD_LOGIC;
  signal \oS_phaseAngle[27]_i_2_n_0\ : STD_LOGIC;
  signal \oS_phaseAngle[27]_i_3_n_0\ : STD_LOGIC;
  signal \oS_phaseAngle[27]_i_4_n_0\ : STD_LOGIC;
  signal \oS_phaseAngle[27]_i_5_n_0\ : STD_LOGIC;
  signal \oS_phaseAngle[31]_i_3_n_0\ : STD_LOGIC;
  signal \oS_phaseAngle[31]_i_4_n_0\ : STD_LOGIC;
  signal \oS_phaseAngle[31]_i_5_n_0\ : STD_LOGIC;
  signal \oS_phaseAngle[31]_i_6_n_0\ : STD_LOGIC;
  signal \oS_phaseAngle[3]_i_2_n_0\ : STD_LOGIC;
  signal \oS_phaseAngle[3]_i_3_n_0\ : STD_LOGIC;
  signal \oS_phaseAngle[3]_i_4_n_0\ : STD_LOGIC;
  signal \oS_phaseAngle[3]_i_5_n_0\ : STD_LOGIC;
  signal \oS_phaseAngle[7]_i_2_n_0\ : STD_LOGIC;
  signal \oS_phaseAngle[7]_i_3_n_0\ : STD_LOGIC;
  signal \oS_phaseAngle[7]_i_4_n_0\ : STD_LOGIC;
  signal \oS_phaseAngle[7]_i_5_n_0\ : STD_LOGIC;
  signal \oS_phaseAngle_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \oS_phaseAngle_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \oS_phaseAngle_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \oS_phaseAngle_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \oS_phaseAngle_reg[11]_i_1_n_4\ : STD_LOGIC;
  signal \oS_phaseAngle_reg[11]_i_1_n_5\ : STD_LOGIC;
  signal \oS_phaseAngle_reg[11]_i_1_n_6\ : STD_LOGIC;
  signal \oS_phaseAngle_reg[11]_i_1_n_7\ : STD_LOGIC;
  signal \oS_phaseAngle_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \oS_phaseAngle_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \oS_phaseAngle_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \oS_phaseAngle_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \oS_phaseAngle_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \oS_phaseAngle_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \oS_phaseAngle_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \oS_phaseAngle_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \oS_phaseAngle_reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \oS_phaseAngle_reg[19]_i_1_n_1\ : STD_LOGIC;
  signal \oS_phaseAngle_reg[19]_i_1_n_2\ : STD_LOGIC;
  signal \oS_phaseAngle_reg[19]_i_1_n_3\ : STD_LOGIC;
  signal \oS_phaseAngle_reg[19]_i_1_n_4\ : STD_LOGIC;
  signal \oS_phaseAngle_reg[19]_i_1_n_5\ : STD_LOGIC;
  signal \oS_phaseAngle_reg[19]_i_1_n_6\ : STD_LOGIC;
  signal \oS_phaseAngle_reg[19]_i_1_n_7\ : STD_LOGIC;
  signal \oS_phaseAngle_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \oS_phaseAngle_reg[23]_i_1_n_1\ : STD_LOGIC;
  signal \oS_phaseAngle_reg[23]_i_1_n_2\ : STD_LOGIC;
  signal \oS_phaseAngle_reg[23]_i_1_n_3\ : STD_LOGIC;
  signal \oS_phaseAngle_reg[23]_i_1_n_4\ : STD_LOGIC;
  signal \oS_phaseAngle_reg[23]_i_1_n_5\ : STD_LOGIC;
  signal \oS_phaseAngle_reg[23]_i_1_n_6\ : STD_LOGIC;
  signal \oS_phaseAngle_reg[23]_i_1_n_7\ : STD_LOGIC;
  signal \oS_phaseAngle_reg[27]_i_1_n_0\ : STD_LOGIC;
  signal \oS_phaseAngle_reg[27]_i_1_n_1\ : STD_LOGIC;
  signal \oS_phaseAngle_reg[27]_i_1_n_2\ : STD_LOGIC;
  signal \oS_phaseAngle_reg[27]_i_1_n_3\ : STD_LOGIC;
  signal \oS_phaseAngle_reg[27]_i_1_n_4\ : STD_LOGIC;
  signal \oS_phaseAngle_reg[27]_i_1_n_5\ : STD_LOGIC;
  signal \oS_phaseAngle_reg[27]_i_1_n_6\ : STD_LOGIC;
  signal \oS_phaseAngle_reg[27]_i_1_n_7\ : STD_LOGIC;
  signal \oS_phaseAngle_reg[31]_i_2_n_1\ : STD_LOGIC;
  signal \oS_phaseAngle_reg[31]_i_2_n_2\ : STD_LOGIC;
  signal \oS_phaseAngle_reg[31]_i_2_n_3\ : STD_LOGIC;
  signal \oS_phaseAngle_reg[31]_i_2_n_4\ : STD_LOGIC;
  signal \oS_phaseAngle_reg[31]_i_2_n_5\ : STD_LOGIC;
  signal \oS_phaseAngle_reg[31]_i_2_n_6\ : STD_LOGIC;
  signal \oS_phaseAngle_reg[31]_i_2_n_7\ : STD_LOGIC;
  signal \oS_phaseAngle_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \oS_phaseAngle_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \oS_phaseAngle_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \oS_phaseAngle_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \oS_phaseAngle_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \oS_phaseAngle_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \oS_phaseAngle_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \oS_phaseAngle_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \oS_phaseAngle_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \oS_phaseAngle_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \oS_phaseAngle_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \oS_phaseAngle_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \oS_phaseAngle_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \oS_phaseAngle_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \oS_phaseAngle_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \oS_phaseAngle_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal r_phaseDelta : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_oS_phaseAngle_reg[31]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of \oS_phaseAngle_reg[0]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_ANGLE TDATA";
  attribute X_INTERFACE_INFO of \oS_phaseAngle_reg[10]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_ANGLE TDATA";
  attribute X_INTERFACE_INFO of \oS_phaseAngle_reg[11]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_ANGLE TDATA";
  attribute X_INTERFACE_INFO of \oS_phaseAngle_reg[12]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_ANGLE TDATA";
  attribute X_INTERFACE_INFO of \oS_phaseAngle_reg[13]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_ANGLE TDATA";
  attribute X_INTERFACE_INFO of \oS_phaseAngle_reg[14]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_ANGLE TDATA";
  attribute X_INTERFACE_INFO of \oS_phaseAngle_reg[15]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_ANGLE TDATA";
  attribute X_INTERFACE_INFO of \oS_phaseAngle_reg[16]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_ANGLE TDATA";
  attribute X_INTERFACE_INFO of \oS_phaseAngle_reg[17]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_ANGLE TDATA";
  attribute X_INTERFACE_INFO of \oS_phaseAngle_reg[18]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_ANGLE TDATA";
  attribute X_INTERFACE_INFO of \oS_phaseAngle_reg[19]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_ANGLE TDATA";
  attribute X_INTERFACE_INFO of \oS_phaseAngle_reg[1]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_ANGLE TDATA";
  attribute X_INTERFACE_INFO of \oS_phaseAngle_reg[20]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_ANGLE TDATA";
  attribute X_INTERFACE_INFO of \oS_phaseAngle_reg[21]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_ANGLE TDATA";
  attribute X_INTERFACE_INFO of \oS_phaseAngle_reg[22]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_ANGLE TDATA";
  attribute X_INTERFACE_INFO of \oS_phaseAngle_reg[23]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_ANGLE TDATA";
  attribute X_INTERFACE_INFO of \oS_phaseAngle_reg[24]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_ANGLE TDATA";
  attribute X_INTERFACE_INFO of \oS_phaseAngle_reg[25]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_ANGLE TDATA";
  attribute X_INTERFACE_INFO of \oS_phaseAngle_reg[26]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_ANGLE TDATA";
  attribute X_INTERFACE_INFO of \oS_phaseAngle_reg[27]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_ANGLE TDATA";
  attribute X_INTERFACE_INFO of \oS_phaseAngle_reg[28]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_ANGLE TDATA";
  attribute X_INTERFACE_INFO of \oS_phaseAngle_reg[29]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_ANGLE TDATA";
  attribute X_INTERFACE_INFO of \oS_phaseAngle_reg[2]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_ANGLE TDATA";
  attribute X_INTERFACE_INFO of \oS_phaseAngle_reg[30]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_ANGLE TDATA";
  attribute X_INTERFACE_INFO of \oS_phaseAngle_reg[31]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_ANGLE TDATA";
  attribute X_INTERFACE_INFO of \oS_phaseAngle_reg[3]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_ANGLE TDATA";
  attribute X_INTERFACE_INFO of \oS_phaseAngle_reg[4]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_ANGLE TDATA";
  attribute X_INTERFACE_INFO of \oS_phaseAngle_reg[5]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_ANGLE TDATA";
  attribute X_INTERFACE_INFO of \oS_phaseAngle_reg[6]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_ANGLE TDATA";
  attribute X_INTERFACE_INFO of \oS_phaseAngle_reg[7]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_ANGLE TDATA";
  attribute X_INTERFACE_INFO of \oS_phaseAngle_reg[8]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_ANGLE TDATA";
  attribute X_INTERFACE_INFO of \oS_phaseAngle_reg[9]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_ANGLE TDATA";
  attribute X_INTERFACE_INFO of o_valid_reg : label is "xilinx.com:interface:axis:1.0 M_AXIS_ANGLE TVALID";
begin
  oS_phaseAngle(31 downto 0) <= \^os_phaseangle\(31 downto 0);
\oS_phaseAngle[11]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1BE4"
    )
        port map (
      I0 => i_valid,
      I1 => r_phaseDelta(11),
      I2 => iS_phaseDelta(11),
      I3 => \^os_phaseangle\(11),
      O => \oS_phaseAngle[11]_i_2_n_0\
    );
\oS_phaseAngle[11]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1BE4"
    )
        port map (
      I0 => i_valid,
      I1 => r_phaseDelta(10),
      I2 => iS_phaseDelta(10),
      I3 => \^os_phaseangle\(10),
      O => \oS_phaseAngle[11]_i_3_n_0\
    );
\oS_phaseAngle[11]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1BE4"
    )
        port map (
      I0 => i_valid,
      I1 => r_phaseDelta(9),
      I2 => iS_phaseDelta(9),
      I3 => \^os_phaseangle\(9),
      O => \oS_phaseAngle[11]_i_4_n_0\
    );
\oS_phaseAngle[11]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1BE4"
    )
        port map (
      I0 => i_valid,
      I1 => r_phaseDelta(8),
      I2 => iS_phaseDelta(8),
      I3 => \^os_phaseangle\(8),
      O => \oS_phaseAngle[11]_i_5_n_0\
    );
\oS_phaseAngle[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1BE4"
    )
        port map (
      I0 => i_valid,
      I1 => r_phaseDelta(15),
      I2 => iS_phaseDelta(15),
      I3 => \^os_phaseangle\(15),
      O => \oS_phaseAngle[15]_i_2_n_0\
    );
\oS_phaseAngle[15]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1BE4"
    )
        port map (
      I0 => i_valid,
      I1 => r_phaseDelta(14),
      I2 => iS_phaseDelta(14),
      I3 => \^os_phaseangle\(14),
      O => \oS_phaseAngle[15]_i_3_n_0\
    );
\oS_phaseAngle[15]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1BE4"
    )
        port map (
      I0 => i_valid,
      I1 => r_phaseDelta(13),
      I2 => iS_phaseDelta(13),
      I3 => \^os_phaseangle\(13),
      O => \oS_phaseAngle[15]_i_4_n_0\
    );
\oS_phaseAngle[15]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1BE4"
    )
        port map (
      I0 => i_valid,
      I1 => r_phaseDelta(12),
      I2 => iS_phaseDelta(12),
      I3 => \^os_phaseangle\(12),
      O => \oS_phaseAngle[15]_i_5_n_0\
    );
\oS_phaseAngle[19]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1BE4"
    )
        port map (
      I0 => i_valid,
      I1 => r_phaseDelta(19),
      I2 => iS_phaseDelta(19),
      I3 => \^os_phaseangle\(19),
      O => \oS_phaseAngle[19]_i_2_n_0\
    );
\oS_phaseAngle[19]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1BE4"
    )
        port map (
      I0 => i_valid,
      I1 => r_phaseDelta(18),
      I2 => iS_phaseDelta(18),
      I3 => \^os_phaseangle\(18),
      O => \oS_phaseAngle[19]_i_3_n_0\
    );
\oS_phaseAngle[19]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1BE4"
    )
        port map (
      I0 => i_valid,
      I1 => r_phaseDelta(17),
      I2 => iS_phaseDelta(17),
      I3 => \^os_phaseangle\(17),
      O => \oS_phaseAngle[19]_i_4_n_0\
    );
\oS_phaseAngle[19]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1BE4"
    )
        port map (
      I0 => i_valid,
      I1 => r_phaseDelta(16),
      I2 => iS_phaseDelta(16),
      I3 => \^os_phaseangle\(16),
      O => \oS_phaseAngle[19]_i_5_n_0\
    );
\oS_phaseAngle[23]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1BE4"
    )
        port map (
      I0 => i_valid,
      I1 => r_phaseDelta(23),
      I2 => iS_phaseDelta(23),
      I3 => \^os_phaseangle\(23),
      O => \oS_phaseAngle[23]_i_2_n_0\
    );
\oS_phaseAngle[23]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1BE4"
    )
        port map (
      I0 => i_valid,
      I1 => r_phaseDelta(22),
      I2 => iS_phaseDelta(22),
      I3 => \^os_phaseangle\(22),
      O => \oS_phaseAngle[23]_i_3_n_0\
    );
\oS_phaseAngle[23]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1BE4"
    )
        port map (
      I0 => i_valid,
      I1 => r_phaseDelta(21),
      I2 => iS_phaseDelta(21),
      I3 => \^os_phaseangle\(21),
      O => \oS_phaseAngle[23]_i_4_n_0\
    );
\oS_phaseAngle[23]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1BE4"
    )
        port map (
      I0 => i_valid,
      I1 => r_phaseDelta(20),
      I2 => iS_phaseDelta(20),
      I3 => \^os_phaseangle\(20),
      O => \oS_phaseAngle[23]_i_5_n_0\
    );
\oS_phaseAngle[27]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1BE4"
    )
        port map (
      I0 => i_valid,
      I1 => r_phaseDelta(27),
      I2 => iS_phaseDelta(27),
      I3 => \^os_phaseangle\(27),
      O => \oS_phaseAngle[27]_i_2_n_0\
    );
\oS_phaseAngle[27]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1BE4"
    )
        port map (
      I0 => i_valid,
      I1 => r_phaseDelta(26),
      I2 => iS_phaseDelta(26),
      I3 => \^os_phaseangle\(26),
      O => \oS_phaseAngle[27]_i_3_n_0\
    );
\oS_phaseAngle[27]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1BE4"
    )
        port map (
      I0 => i_valid,
      I1 => r_phaseDelta(25),
      I2 => iS_phaseDelta(25),
      I3 => \^os_phaseangle\(25),
      O => \oS_phaseAngle[27]_i_4_n_0\
    );
\oS_phaseAngle[27]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1BE4"
    )
        port map (
      I0 => i_valid,
      I1 => r_phaseDelta(24),
      I2 => iS_phaseDelta(24),
      I3 => \^os_phaseangle\(24),
      O => \oS_phaseAngle[27]_i_5_n_0\
    );
\oS_phaseAngle[31]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_resetn,
      O => clear
    );
\oS_phaseAngle[31]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1BE4"
    )
        port map (
      I0 => i_valid,
      I1 => r_phaseDelta(31),
      I2 => iS_phaseDelta(31),
      I3 => \^os_phaseangle\(31),
      O => \oS_phaseAngle[31]_i_3_n_0\
    );
\oS_phaseAngle[31]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1BE4"
    )
        port map (
      I0 => i_valid,
      I1 => r_phaseDelta(30),
      I2 => iS_phaseDelta(30),
      I3 => \^os_phaseangle\(30),
      O => \oS_phaseAngle[31]_i_4_n_0\
    );
\oS_phaseAngle[31]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1BE4"
    )
        port map (
      I0 => i_valid,
      I1 => r_phaseDelta(29),
      I2 => iS_phaseDelta(29),
      I3 => \^os_phaseangle\(29),
      O => \oS_phaseAngle[31]_i_5_n_0\
    );
\oS_phaseAngle[31]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1BE4"
    )
        port map (
      I0 => i_valid,
      I1 => r_phaseDelta(28),
      I2 => iS_phaseDelta(28),
      I3 => \^os_phaseangle\(28),
      O => \oS_phaseAngle[31]_i_6_n_0\
    );
\oS_phaseAngle[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1BE4"
    )
        port map (
      I0 => i_valid,
      I1 => r_phaseDelta(3),
      I2 => iS_phaseDelta(3),
      I3 => \^os_phaseangle\(3),
      O => \oS_phaseAngle[3]_i_2_n_0\
    );
\oS_phaseAngle[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1BE4"
    )
        port map (
      I0 => i_valid,
      I1 => r_phaseDelta(2),
      I2 => iS_phaseDelta(2),
      I3 => \^os_phaseangle\(2),
      O => \oS_phaseAngle[3]_i_3_n_0\
    );
\oS_phaseAngle[3]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1BE4"
    )
        port map (
      I0 => i_valid,
      I1 => r_phaseDelta(1),
      I2 => iS_phaseDelta(1),
      I3 => \^os_phaseangle\(1),
      O => \oS_phaseAngle[3]_i_4_n_0\
    );
\oS_phaseAngle[3]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1BE4"
    )
        port map (
      I0 => i_valid,
      I1 => r_phaseDelta(0),
      I2 => iS_phaseDelta(0),
      I3 => \^os_phaseangle\(0),
      O => \oS_phaseAngle[3]_i_5_n_0\
    );
\oS_phaseAngle[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1BE4"
    )
        port map (
      I0 => i_valid,
      I1 => r_phaseDelta(7),
      I2 => iS_phaseDelta(7),
      I3 => \^os_phaseangle\(7),
      O => \oS_phaseAngle[7]_i_2_n_0\
    );
\oS_phaseAngle[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1BE4"
    )
        port map (
      I0 => i_valid,
      I1 => r_phaseDelta(6),
      I2 => iS_phaseDelta(6),
      I3 => \^os_phaseangle\(6),
      O => \oS_phaseAngle[7]_i_3_n_0\
    );
\oS_phaseAngle[7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1BE4"
    )
        port map (
      I0 => i_valid,
      I1 => r_phaseDelta(5),
      I2 => iS_phaseDelta(5),
      I3 => \^os_phaseangle\(5),
      O => \oS_phaseAngle[7]_i_4_n_0\
    );
\oS_phaseAngle[7]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1BE4"
    )
        port map (
      I0 => i_valid,
      I1 => r_phaseDelta(4),
      I2 => iS_phaseDelta(4),
      I3 => \^os_phaseangle\(4),
      O => \oS_phaseAngle[7]_i_5_n_0\
    );
\oS_phaseAngle_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_phaseAngle_reg[3]_i_1_n_7\,
      Q => \^os_phaseangle\(0),
      R => clear
    );
\oS_phaseAngle_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_phaseAngle_reg[11]_i_1_n_5\,
      Q => \^os_phaseangle\(10),
      R => clear
    );
\oS_phaseAngle_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_phaseAngle_reg[11]_i_1_n_4\,
      Q => \^os_phaseangle\(11),
      R => clear
    );
\oS_phaseAngle_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \oS_phaseAngle_reg[7]_i_1_n_0\,
      CO(3) => \oS_phaseAngle_reg[11]_i_1_n_0\,
      CO(2) => \oS_phaseAngle_reg[11]_i_1_n_1\,
      CO(1) => \oS_phaseAngle_reg[11]_i_1_n_2\,
      CO(0) => \oS_phaseAngle_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^os_phaseangle\(11 downto 8),
      O(3) => \oS_phaseAngle_reg[11]_i_1_n_4\,
      O(2) => \oS_phaseAngle_reg[11]_i_1_n_5\,
      O(1) => \oS_phaseAngle_reg[11]_i_1_n_6\,
      O(0) => \oS_phaseAngle_reg[11]_i_1_n_7\,
      S(3) => \oS_phaseAngle[11]_i_2_n_0\,
      S(2) => \oS_phaseAngle[11]_i_3_n_0\,
      S(1) => \oS_phaseAngle[11]_i_4_n_0\,
      S(0) => \oS_phaseAngle[11]_i_5_n_0\
    );
\oS_phaseAngle_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_phaseAngle_reg[15]_i_1_n_7\,
      Q => \^os_phaseangle\(12),
      R => clear
    );
\oS_phaseAngle_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_phaseAngle_reg[15]_i_1_n_6\,
      Q => \^os_phaseangle\(13),
      R => clear
    );
\oS_phaseAngle_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_phaseAngle_reg[15]_i_1_n_5\,
      Q => \^os_phaseangle\(14),
      R => clear
    );
\oS_phaseAngle_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_phaseAngle_reg[15]_i_1_n_4\,
      Q => \^os_phaseangle\(15),
      R => clear
    );
\oS_phaseAngle_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \oS_phaseAngle_reg[11]_i_1_n_0\,
      CO(3) => \oS_phaseAngle_reg[15]_i_1_n_0\,
      CO(2) => \oS_phaseAngle_reg[15]_i_1_n_1\,
      CO(1) => \oS_phaseAngle_reg[15]_i_1_n_2\,
      CO(0) => \oS_phaseAngle_reg[15]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^os_phaseangle\(15 downto 12),
      O(3) => \oS_phaseAngle_reg[15]_i_1_n_4\,
      O(2) => \oS_phaseAngle_reg[15]_i_1_n_5\,
      O(1) => \oS_phaseAngle_reg[15]_i_1_n_6\,
      O(0) => \oS_phaseAngle_reg[15]_i_1_n_7\,
      S(3) => \oS_phaseAngle[15]_i_2_n_0\,
      S(2) => \oS_phaseAngle[15]_i_3_n_0\,
      S(1) => \oS_phaseAngle[15]_i_4_n_0\,
      S(0) => \oS_phaseAngle[15]_i_5_n_0\
    );
\oS_phaseAngle_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_phaseAngle_reg[19]_i_1_n_7\,
      Q => \^os_phaseangle\(16),
      R => clear
    );
\oS_phaseAngle_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_phaseAngle_reg[19]_i_1_n_6\,
      Q => \^os_phaseangle\(17),
      R => clear
    );
\oS_phaseAngle_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_phaseAngle_reg[19]_i_1_n_5\,
      Q => \^os_phaseangle\(18),
      R => clear
    );
\oS_phaseAngle_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_phaseAngle_reg[19]_i_1_n_4\,
      Q => \^os_phaseangle\(19),
      R => clear
    );
\oS_phaseAngle_reg[19]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \oS_phaseAngle_reg[15]_i_1_n_0\,
      CO(3) => \oS_phaseAngle_reg[19]_i_1_n_0\,
      CO(2) => \oS_phaseAngle_reg[19]_i_1_n_1\,
      CO(1) => \oS_phaseAngle_reg[19]_i_1_n_2\,
      CO(0) => \oS_phaseAngle_reg[19]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^os_phaseangle\(19 downto 16),
      O(3) => \oS_phaseAngle_reg[19]_i_1_n_4\,
      O(2) => \oS_phaseAngle_reg[19]_i_1_n_5\,
      O(1) => \oS_phaseAngle_reg[19]_i_1_n_6\,
      O(0) => \oS_phaseAngle_reg[19]_i_1_n_7\,
      S(3) => \oS_phaseAngle[19]_i_2_n_0\,
      S(2) => \oS_phaseAngle[19]_i_3_n_0\,
      S(1) => \oS_phaseAngle[19]_i_4_n_0\,
      S(0) => \oS_phaseAngle[19]_i_5_n_0\
    );
\oS_phaseAngle_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_phaseAngle_reg[3]_i_1_n_6\,
      Q => \^os_phaseangle\(1),
      R => clear
    );
\oS_phaseAngle_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_phaseAngle_reg[23]_i_1_n_7\,
      Q => \^os_phaseangle\(20),
      R => clear
    );
\oS_phaseAngle_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_phaseAngle_reg[23]_i_1_n_6\,
      Q => \^os_phaseangle\(21),
      R => clear
    );
\oS_phaseAngle_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_phaseAngle_reg[23]_i_1_n_5\,
      Q => \^os_phaseangle\(22),
      R => clear
    );
\oS_phaseAngle_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_phaseAngle_reg[23]_i_1_n_4\,
      Q => \^os_phaseangle\(23),
      R => clear
    );
\oS_phaseAngle_reg[23]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \oS_phaseAngle_reg[19]_i_1_n_0\,
      CO(3) => \oS_phaseAngle_reg[23]_i_1_n_0\,
      CO(2) => \oS_phaseAngle_reg[23]_i_1_n_1\,
      CO(1) => \oS_phaseAngle_reg[23]_i_1_n_2\,
      CO(0) => \oS_phaseAngle_reg[23]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^os_phaseangle\(23 downto 20),
      O(3) => \oS_phaseAngle_reg[23]_i_1_n_4\,
      O(2) => \oS_phaseAngle_reg[23]_i_1_n_5\,
      O(1) => \oS_phaseAngle_reg[23]_i_1_n_6\,
      O(0) => \oS_phaseAngle_reg[23]_i_1_n_7\,
      S(3) => \oS_phaseAngle[23]_i_2_n_0\,
      S(2) => \oS_phaseAngle[23]_i_3_n_0\,
      S(1) => \oS_phaseAngle[23]_i_4_n_0\,
      S(0) => \oS_phaseAngle[23]_i_5_n_0\
    );
\oS_phaseAngle_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_phaseAngle_reg[27]_i_1_n_7\,
      Q => \^os_phaseangle\(24),
      R => clear
    );
\oS_phaseAngle_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_phaseAngle_reg[27]_i_1_n_6\,
      Q => \^os_phaseangle\(25),
      R => clear
    );
\oS_phaseAngle_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_phaseAngle_reg[27]_i_1_n_5\,
      Q => \^os_phaseangle\(26),
      R => clear
    );
\oS_phaseAngle_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_phaseAngle_reg[27]_i_1_n_4\,
      Q => \^os_phaseangle\(27),
      R => clear
    );
\oS_phaseAngle_reg[27]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \oS_phaseAngle_reg[23]_i_1_n_0\,
      CO(3) => \oS_phaseAngle_reg[27]_i_1_n_0\,
      CO(2) => \oS_phaseAngle_reg[27]_i_1_n_1\,
      CO(1) => \oS_phaseAngle_reg[27]_i_1_n_2\,
      CO(0) => \oS_phaseAngle_reg[27]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^os_phaseangle\(27 downto 24),
      O(3) => \oS_phaseAngle_reg[27]_i_1_n_4\,
      O(2) => \oS_phaseAngle_reg[27]_i_1_n_5\,
      O(1) => \oS_phaseAngle_reg[27]_i_1_n_6\,
      O(0) => \oS_phaseAngle_reg[27]_i_1_n_7\,
      S(3) => \oS_phaseAngle[27]_i_2_n_0\,
      S(2) => \oS_phaseAngle[27]_i_3_n_0\,
      S(1) => \oS_phaseAngle[27]_i_4_n_0\,
      S(0) => \oS_phaseAngle[27]_i_5_n_0\
    );
\oS_phaseAngle_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_phaseAngle_reg[31]_i_2_n_7\,
      Q => \^os_phaseangle\(28),
      R => clear
    );
\oS_phaseAngle_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_phaseAngle_reg[31]_i_2_n_6\,
      Q => \^os_phaseangle\(29),
      R => clear
    );
\oS_phaseAngle_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_phaseAngle_reg[3]_i_1_n_5\,
      Q => \^os_phaseangle\(2),
      R => clear
    );
\oS_phaseAngle_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_phaseAngle_reg[31]_i_2_n_5\,
      Q => \^os_phaseangle\(30),
      R => clear
    );
\oS_phaseAngle_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_phaseAngle_reg[31]_i_2_n_4\,
      Q => \^os_phaseangle\(31),
      R => clear
    );
\oS_phaseAngle_reg[31]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \oS_phaseAngle_reg[27]_i_1_n_0\,
      CO(3) => \NLW_oS_phaseAngle_reg[31]_i_2_CO_UNCONNECTED\(3),
      CO(2) => \oS_phaseAngle_reg[31]_i_2_n_1\,
      CO(1) => \oS_phaseAngle_reg[31]_i_2_n_2\,
      CO(0) => \oS_phaseAngle_reg[31]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => \^os_phaseangle\(30 downto 28),
      O(3) => \oS_phaseAngle_reg[31]_i_2_n_4\,
      O(2) => \oS_phaseAngle_reg[31]_i_2_n_5\,
      O(1) => \oS_phaseAngle_reg[31]_i_2_n_6\,
      O(0) => \oS_phaseAngle_reg[31]_i_2_n_7\,
      S(3) => \oS_phaseAngle[31]_i_3_n_0\,
      S(2) => \oS_phaseAngle[31]_i_4_n_0\,
      S(1) => \oS_phaseAngle[31]_i_5_n_0\,
      S(0) => \oS_phaseAngle[31]_i_6_n_0\
    );
\oS_phaseAngle_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_phaseAngle_reg[3]_i_1_n_4\,
      Q => \^os_phaseangle\(3),
      R => clear
    );
\oS_phaseAngle_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \oS_phaseAngle_reg[3]_i_1_n_0\,
      CO(2) => \oS_phaseAngle_reg[3]_i_1_n_1\,
      CO(1) => \oS_phaseAngle_reg[3]_i_1_n_2\,
      CO(0) => \oS_phaseAngle_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^os_phaseangle\(3 downto 0),
      O(3) => \oS_phaseAngle_reg[3]_i_1_n_4\,
      O(2) => \oS_phaseAngle_reg[3]_i_1_n_5\,
      O(1) => \oS_phaseAngle_reg[3]_i_1_n_6\,
      O(0) => \oS_phaseAngle_reg[3]_i_1_n_7\,
      S(3) => \oS_phaseAngle[3]_i_2_n_0\,
      S(2) => \oS_phaseAngle[3]_i_3_n_0\,
      S(1) => \oS_phaseAngle[3]_i_4_n_0\,
      S(0) => \oS_phaseAngle[3]_i_5_n_0\
    );
\oS_phaseAngle_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_phaseAngle_reg[7]_i_1_n_7\,
      Q => \^os_phaseangle\(4),
      R => clear
    );
\oS_phaseAngle_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_phaseAngle_reg[7]_i_1_n_6\,
      Q => \^os_phaseangle\(5),
      R => clear
    );
\oS_phaseAngle_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_phaseAngle_reg[7]_i_1_n_5\,
      Q => \^os_phaseangle\(6),
      R => clear
    );
\oS_phaseAngle_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_phaseAngle_reg[7]_i_1_n_4\,
      Q => \^os_phaseangle\(7),
      R => clear
    );
\oS_phaseAngle_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \oS_phaseAngle_reg[3]_i_1_n_0\,
      CO(3) => \oS_phaseAngle_reg[7]_i_1_n_0\,
      CO(2) => \oS_phaseAngle_reg[7]_i_1_n_1\,
      CO(1) => \oS_phaseAngle_reg[7]_i_1_n_2\,
      CO(0) => \oS_phaseAngle_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^os_phaseangle\(7 downto 4),
      O(3) => \oS_phaseAngle_reg[7]_i_1_n_4\,
      O(2) => \oS_phaseAngle_reg[7]_i_1_n_5\,
      O(1) => \oS_phaseAngle_reg[7]_i_1_n_6\,
      O(0) => \oS_phaseAngle_reg[7]_i_1_n_7\,
      S(3) => \oS_phaseAngle[7]_i_2_n_0\,
      S(2) => \oS_phaseAngle[7]_i_3_n_0\,
      S(1) => \oS_phaseAngle[7]_i_4_n_0\,
      S(0) => \oS_phaseAngle[7]_i_5_n_0\
    );
\oS_phaseAngle_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_phaseAngle_reg[11]_i_1_n_7\,
      Q => \^os_phaseangle\(8),
      R => clear
    );
\oS_phaseAngle_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \oS_phaseAngle_reg[11]_i_1_n_6\,
      Q => \^os_phaseangle\(9),
      R => clear
    );
o_valid_reg: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => i_valid,
      Q => o_valid,
      R => clear
    );
\r_phaseDelta_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => i_valid,
      D => iS_phaseDelta(0),
      Q => r_phaseDelta(0),
      R => clear
    );
\r_phaseDelta_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => i_valid,
      D => iS_phaseDelta(10),
      Q => r_phaseDelta(10),
      R => clear
    );
\r_phaseDelta_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => i_valid,
      D => iS_phaseDelta(11),
      Q => r_phaseDelta(11),
      R => clear
    );
\r_phaseDelta_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => i_valid,
      D => iS_phaseDelta(12),
      Q => r_phaseDelta(12),
      R => clear
    );
\r_phaseDelta_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => i_valid,
      D => iS_phaseDelta(13),
      Q => r_phaseDelta(13),
      R => clear
    );
\r_phaseDelta_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => i_valid,
      D => iS_phaseDelta(14),
      Q => r_phaseDelta(14),
      R => clear
    );
\r_phaseDelta_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => i_valid,
      D => iS_phaseDelta(15),
      Q => r_phaseDelta(15),
      R => clear
    );
\r_phaseDelta_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => i_valid,
      D => iS_phaseDelta(16),
      Q => r_phaseDelta(16),
      R => clear
    );
\r_phaseDelta_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => i_valid,
      D => iS_phaseDelta(17),
      Q => r_phaseDelta(17),
      R => clear
    );
\r_phaseDelta_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => i_valid,
      D => iS_phaseDelta(18),
      Q => r_phaseDelta(18),
      R => clear
    );
\r_phaseDelta_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => i_valid,
      D => iS_phaseDelta(19),
      Q => r_phaseDelta(19),
      R => clear
    );
\r_phaseDelta_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => i_valid,
      D => iS_phaseDelta(1),
      Q => r_phaseDelta(1),
      R => clear
    );
\r_phaseDelta_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => i_valid,
      D => iS_phaseDelta(20),
      Q => r_phaseDelta(20),
      R => clear
    );
\r_phaseDelta_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => i_valid,
      D => iS_phaseDelta(21),
      Q => r_phaseDelta(21),
      R => clear
    );
\r_phaseDelta_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => i_valid,
      D => iS_phaseDelta(22),
      Q => r_phaseDelta(22),
      R => clear
    );
\r_phaseDelta_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => i_valid,
      D => iS_phaseDelta(23),
      Q => r_phaseDelta(23),
      R => clear
    );
\r_phaseDelta_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => i_valid,
      D => iS_phaseDelta(24),
      Q => r_phaseDelta(24),
      R => clear
    );
\r_phaseDelta_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => i_valid,
      D => iS_phaseDelta(25),
      Q => r_phaseDelta(25),
      R => clear
    );
\r_phaseDelta_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => i_valid,
      D => iS_phaseDelta(26),
      Q => r_phaseDelta(26),
      R => clear
    );
\r_phaseDelta_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => i_valid,
      D => iS_phaseDelta(27),
      Q => r_phaseDelta(27),
      R => clear
    );
\r_phaseDelta_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => i_valid,
      D => iS_phaseDelta(28),
      Q => r_phaseDelta(28),
      R => clear
    );
\r_phaseDelta_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => i_valid,
      D => iS_phaseDelta(29),
      Q => r_phaseDelta(29),
      R => clear
    );
\r_phaseDelta_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => i_valid,
      D => iS_phaseDelta(2),
      Q => r_phaseDelta(2),
      R => clear
    );
\r_phaseDelta_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => i_valid,
      D => iS_phaseDelta(30),
      Q => r_phaseDelta(30),
      R => clear
    );
\r_phaseDelta_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => i_valid,
      D => iS_phaseDelta(31),
      Q => r_phaseDelta(31),
      R => clear
    );
\r_phaseDelta_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => i_valid,
      D => iS_phaseDelta(3),
      Q => r_phaseDelta(3),
      R => clear
    );
\r_phaseDelta_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => i_valid,
      D => iS_phaseDelta(4),
      Q => r_phaseDelta(4),
      R => clear
    );
\r_phaseDelta_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => i_valid,
      D => iS_phaseDelta(5),
      Q => r_phaseDelta(5),
      R => clear
    );
\r_phaseDelta_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => i_valid,
      D => iS_phaseDelta(6),
      Q => r_phaseDelta(6),
      R => clear
    );
\r_phaseDelta_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => i_valid,
      D => iS_phaseDelta(7),
      Q => r_phaseDelta(7),
      R => clear
    );
\r_phaseDelta_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => i_valid,
      D => iS_phaseDelta(8),
      Q => r_phaseDelta(8),
      R => clear
    );
\r_phaseDelta_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => i_valid,
      D => iS_phaseDelta(9),
      Q => r_phaseDelta(9),
      R => clear
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zsys_phase_accumulator_0_2 is
  port (
    iS_phaseDelta : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_valid : in STD_LOGIC;
    oS_phaseAngle : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_valid : out STD_LOGIC;
    i_clk : in STD_LOGIC;
    i_resetn : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of zsys_phase_accumulator_0_2 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of zsys_phase_accumulator_0_2 : entity is "zsys_phase_accumulator_0_2,phase_accumulator,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of zsys_phase_accumulator_0_2 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of zsys_phase_accumulator_0_2 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of zsys_phase_accumulator_0_2 : entity is "phase_accumulator,Vivado 2019.2";
end zsys_phase_accumulator_0_2;

architecture STRUCTURE of zsys_phase_accumulator_0_2 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of i_clk : signal is "xilinx.com:signal:clock:1.0 i_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of i_clk : signal is "XIL_INTERFACENAME i_clk, ASSOCIATED_RESET i_resetn, ASSOCIATED_BUSIF S_AXIS_X:S_AXIS_ANGLE_DELTA:M_AXIS_ANGLE, FREQ_HZ 80000000, PHASE 0.000, CLK_DOMAIN zsys_adc_clk_n, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of i_resetn : signal is "xilinx.com:signal:reset:1.0 i_resetn RST";
  attribute X_INTERFACE_PARAMETER of i_resetn : signal is "XIL_INTERFACENAME i_resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of i_valid : signal is "xilinx.com:interface:axis:1.0 S_AXIS_ANGLE_DELTA TVALID";
  attribute X_INTERFACE_PARAMETER of i_valid : signal is "XIL_INTERFACENAME S_AXIS_ANGLE_DELTA, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 80000000, PHASE 0.000, CLK_DOMAIN zsys_adc_clk_n, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of o_valid : signal is "xilinx.com:interface:axis:1.0 M_AXIS_ANGLE TVALID";
  attribute X_INTERFACE_PARAMETER of o_valid : signal is "XIL_INTERFACENAME M_AXIS_ANGLE, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 80000000, PHASE 0.000, CLK_DOMAIN zsys_adc_clk_n, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of iS_phaseDelta : signal is "xilinx.com:interface:axis:1.0 S_AXIS_ANGLE_DELTA TDATA";
  attribute X_INTERFACE_INFO of oS_phaseAngle : signal is "xilinx.com:interface:axis:1.0 M_AXIS_ANGLE TDATA";
begin
inst: entity work.zsys_phase_accumulator_0_2_phase_accumulator
     port map (
      iS_phaseDelta(31 downto 0) => iS_phaseDelta(31 downto 0),
      i_clk => i_clk,
      i_resetn => i_resetn,
      i_valid => i_valid,
      oS_phaseAngle(31 downto 0) => oS_phaseAngle(31 downto 0),
      o_valid => o_valid
    );
end STRUCTURE;
