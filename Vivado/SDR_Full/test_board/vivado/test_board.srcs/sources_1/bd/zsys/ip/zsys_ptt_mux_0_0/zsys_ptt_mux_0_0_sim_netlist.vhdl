-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
-- Date        : Fri Apr 23 23:40:00 2021
-- Host        : dan-Desktop running 64-bit Ubuntu 18.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/dan/Microwave-SDR/Vivado/SDR_Full/test_board/vivado/test_board.srcs/sources_1/bd/zsys/ip/zsys_ptt_mux_0_0/zsys_ptt_mux_0_0_sim_netlist.vhdl
-- Design      : zsys_ptt_mux_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zsys_ptt_mux_0_0_ptt_mux is
  port (
    o_ptt : out STD_LOGIC;
    i_ptt_cw_n : in STD_LOGIC;
    i_mode : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_ptt_n : in STD_LOGIC;
    i_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of zsys_ptt_mux_0_0_ptt_mux : entity is "ptt_mux";
end zsys_ptt_mux_0_0_ptt_mux;

architecture STRUCTURE of zsys_ptt_mux_0_0_ptt_mux is
  signal \o_ptt__0_n_0\ : STD_LOGIC;
begin
\o_ptt__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFF02000000"
    )
        port map (
      I0 => i_ptt_cw_n,
      I1 => i_mode(3),
      I2 => i_mode(2),
      I3 => i_mode(1),
      I4 => i_mode(0),
      I5 => i_ptt_n,
      O => \o_ptt__0_n_0\
    );
o_ptt_reg: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \o_ptt__0_n_0\,
      Q => o_ptt,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zsys_ptt_mux_0_0 is
  port (
    i_clk : in STD_LOGIC;
    i_ptt_n : in STD_LOGIC;
    i_ptt_cw_n : in STD_LOGIC;
    i_mode : in STD_LOGIC_VECTOR ( 3 downto 0 );
    o_ptt : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of zsys_ptt_mux_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of zsys_ptt_mux_0_0 : entity is "zsys_ptt_mux_0_0,ptt_mux,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of zsys_ptt_mux_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of zsys_ptt_mux_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of zsys_ptt_mux_0_0 : entity is "ptt_mux,Vivado 2019.2";
end zsys_ptt_mux_0_0;

architecture STRUCTURE of zsys_ptt_mux_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of i_clk : signal is "xilinx.com:signal:clock:1.0 i_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of i_clk : signal is "XIL_INTERFACENAME i_clk, FREQ_HZ 80000000, PHASE 0.000, CLK_DOMAIN zsys_adc_clk_n, INSERT_VIP 0";
begin
inst: entity work.zsys_ptt_mux_0_0_ptt_mux
     port map (
      i_clk => i_clk,
      i_mode(3 downto 0) => i_mode(3 downto 0),
      i_ptt_cw_n => i_ptt_cw_n,
      i_ptt_n => i_ptt_n,
      o_ptt => o_ptt
    );
end STRUCTURE;
