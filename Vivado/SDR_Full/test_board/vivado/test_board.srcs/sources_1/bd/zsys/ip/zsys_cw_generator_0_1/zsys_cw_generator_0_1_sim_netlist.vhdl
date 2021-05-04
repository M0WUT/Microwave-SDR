-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
-- Date        : Fri Apr 23 22:45:47 2021
-- Host        : dan-Desktop running 64-bit Ubuntu 18.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/dan/Microwave-SDR/Vivado/SDR_Full/test_board/vivado/test_board.srcs/sources_1/bd/zsys/ip/zsys_cw_generator_0_1/zsys_cw_generator_0_1_sim_netlist.vhdl
-- Design      : zsys_cw_generator_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zsys_cw_generator_0_1_cw_generator is
  port (
    oS_output : out STD_LOGIC_VECTOR ( 15 downto 0 );
    i_key_n : in STD_LOGIC;
    iS_amplitude : in STD_LOGIC_VECTOR ( 15 downto 0 );
    i_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of zsys_cw_generator_0_1_cw_generator : entity is "cw_generator";
end zsys_cw_generator_0_1_cw_generator;

architecture STRUCTURE of zsys_cw_generator_0_1_cw_generator is
begin
\oS_output_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => iS_amplitude(0),
      Q => oS_output(0),
      R => i_key_n
    );
\oS_output_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => iS_amplitude(10),
      Q => oS_output(10),
      R => i_key_n
    );
\oS_output_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => iS_amplitude(11),
      Q => oS_output(11),
      R => i_key_n
    );
\oS_output_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => iS_amplitude(12),
      Q => oS_output(12),
      R => i_key_n
    );
\oS_output_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => iS_amplitude(13),
      Q => oS_output(13),
      R => i_key_n
    );
\oS_output_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => iS_amplitude(14),
      Q => oS_output(14),
      R => i_key_n
    );
\oS_output_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => iS_amplitude(15),
      Q => oS_output(15),
      R => i_key_n
    );
\oS_output_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => iS_amplitude(1),
      Q => oS_output(1),
      R => i_key_n
    );
\oS_output_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => iS_amplitude(2),
      Q => oS_output(2),
      R => i_key_n
    );
\oS_output_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => iS_amplitude(3),
      Q => oS_output(3),
      R => i_key_n
    );
\oS_output_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => iS_amplitude(4),
      Q => oS_output(4),
      R => i_key_n
    );
\oS_output_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => iS_amplitude(5),
      Q => oS_output(5),
      R => i_key_n
    );
\oS_output_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => iS_amplitude(6),
      Q => oS_output(6),
      R => i_key_n
    );
\oS_output_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => iS_amplitude(7),
      Q => oS_output(7),
      R => i_key_n
    );
\oS_output_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => iS_amplitude(8),
      Q => oS_output(8),
      R => i_key_n
    );
\oS_output_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => iS_amplitude(9),
      Q => oS_output(9),
      R => i_key_n
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zsys_cw_generator_0_1 is
  port (
    i_clk : in STD_LOGIC;
    i_key_n : in STD_LOGIC;
    iS_amplitude : in STD_LOGIC_VECTOR ( 15 downto 0 );
    oS_output : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of zsys_cw_generator_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of zsys_cw_generator_0_1 : entity is "zsys_cw_generator_0_1,cw_generator,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of zsys_cw_generator_0_1 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of zsys_cw_generator_0_1 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of zsys_cw_generator_0_1 : entity is "cw_generator,Vivado 2019.2";
end zsys_cw_generator_0_1;

architecture STRUCTURE of zsys_cw_generator_0_1 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of i_clk : signal is "xilinx.com:signal:clock:1.0 i_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of i_clk : signal is "XIL_INTERFACENAME i_clk, FREQ_HZ 80000000, PHASE 0.000, CLK_DOMAIN zsys_adc_clk_n, INSERT_VIP 0";
begin
inst: entity work.zsys_cw_generator_0_1_cw_generator
     port map (
      iS_amplitude(15 downto 0) => iS_amplitude(15 downto 0),
      i_clk => i_clk,
      i_key_n => i_key_n,
      oS_output(15 downto 0) => oS_output(15 downto 0)
    );
end STRUCTURE;
