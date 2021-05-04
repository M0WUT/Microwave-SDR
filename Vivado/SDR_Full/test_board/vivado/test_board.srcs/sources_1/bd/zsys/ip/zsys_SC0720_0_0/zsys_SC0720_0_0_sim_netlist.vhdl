-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
-- Date        : Wed Apr 21 23:23:52 2021
-- Host        : dan-Desktop running 64-bit Ubuntu 18.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/dan/Microwave-SDR/Vivado/SDR_Full/test_board/vivado/test_board.srcs/sources_1/bd/zsys/ip/zsys_SC0720_0_0/zsys_SC0720_0_0_sim_netlist.vhdl
-- Design      : zsys_SC0720_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zsys_SC0720_0_0 is
  port (
    ext_sda_i : in STD_LOGIC;
    ext_sda_o : out STD_LOGIC;
    ext_sda_t : out STD_LOGIC;
    ext_scl_i : in STD_LOGIC;
    ext_scl_o : out STD_LOGIC;
    ext_scl_t : out STD_LOGIC;
    PHY_LED0 : out STD_LOGIC;
    PHY_LED1 : out STD_LOGIC;
    PHY_LED2 : out STD_LOGIC;
    PL_pin_K16 : in STD_LOGIC;
    PL_pin_K19 : in STD_LOGIC;
    PL_pin_L16 : out STD_LOGIC;
    PL_pin_M15 : in STD_LOGIC;
    PL_pin_N15 : in STD_LOGIC;
    PL_pin_P16 : in STD_LOGIC;
    PL_pin_P22 : in STD_LOGIC;
    PL_pin_K20 : out STD_LOGIC;
    PL_pin_N22 : out STD_LOGIC;
    sda_i : out STD_LOGIC;
    sda_o : in STD_LOGIC;
    sda_t : in STD_LOGIC;
    scl_i : out STD_LOGIC;
    scl_o : in STD_LOGIC;
    scl_t : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of zsys_SC0720_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of zsys_SC0720_0_0 : entity is "zsys_SC0720_0_0,SC0720,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of zsys_SC0720_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of zsys_SC0720_0_0 : entity is "SC0720,Vivado 2019.2";
end zsys_SC0720_0_0;

architecture STRUCTURE of zsys_SC0720_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^pl_pin_l16\ : STD_LOGIC;
  signal \^pl_pin_m15\ : STD_LOGIC;
  signal \^pl_pin_n15\ : STD_LOGIC;
  signal \^pl_pin_p16\ : STD_LOGIC;
  signal \^scl_t\ : STD_LOGIC;
  signal \^sda_o\ : STD_LOGIC;
  signal \^sda_t\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of ext_scl_i : signal is "xilinx.com:interface:iic:1.0 EXT_I2C SCL_I";
  attribute x_interface_info of ext_scl_o : signal is "xilinx.com:interface:iic:1.0 EXT_I2C SCL_O";
  attribute x_interface_info of ext_scl_t : signal is "xilinx.com:interface:iic:1.0 EXT_I2C SCL_T";
  attribute x_interface_info of ext_sda_i : signal is "xilinx.com:interface:iic:1.0 EXT_I2C SDA_I";
  attribute x_interface_info of ext_sda_o : signal is "xilinx.com:interface:iic:1.0 EXT_I2C SDA_O";
  attribute x_interface_info of ext_sda_t : signal is "xilinx.com:interface:iic:1.0 EXT_I2C SDA_T";
  attribute x_interface_info of scl_i : signal is "xilinx.com:interface:iic:1.0 EMIO_I2C1 SCL_I";
  attribute x_interface_info of scl_o : signal is "xilinx.com:interface:iic:1.0 EMIO_I2C1 SCL_O";
  attribute x_interface_info of scl_t : signal is "xilinx.com:interface:iic:1.0 EMIO_I2C1 SCL_T";
  attribute x_interface_info of sda_i : signal is "xilinx.com:interface:iic:1.0 EMIO_I2C1 SDA_I";
  attribute x_interface_info of sda_o : signal is "xilinx.com:interface:iic:1.0 EMIO_I2C1 SDA_O";
  attribute x_interface_info of sda_t : signal is "xilinx.com:interface:iic:1.0 EMIO_I2C1 SDA_T";
begin
  PHY_LED0 <= \^pl_pin_m15\;
  PHY_LED1 <= \^pl_pin_n15\;
  PHY_LED2 <= \^pl_pin_p16\;
  PL_pin_K20 <= \<const0>\;
  PL_pin_L16 <= \^pl_pin_l16\;
  \^pl_pin_m15\ <= PL_pin_M15;
  \^pl_pin_n15\ <= PL_pin_N15;
  \^pl_pin_p16\ <= PL_pin_P16;
  \^scl_t\ <= scl_t;
  \^sda_o\ <= sda_o;
  \^sda_t\ <= sda_t;
  ext_scl_t <= \^scl_t\;
  ext_sda_o <= \^sda_o\;
  ext_sda_t <= \^sda_t\;
  scl_i <= \^pl_pin_l16\;
  ext_scl_o <= 'Z';
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
PL_pin_N22_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^sda_o\,
      I1 => \^sda_t\,
      O => PL_pin_N22
    );
scl_i_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => scl_o,
      I1 => \^scl_t\,
      O => \^pl_pin_l16\
    );
sda_i_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => PL_pin_P22,
      I1 => ext_sda_i,
      O => sda_i
    );
end STRUCTURE;
