-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
-- Date        : Wed Apr 21 23:23:52 2021
-- Host        : dan-Desktop running 64-bit Ubuntu 18.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/dan/Microwave-SDR/Vivado/SDR_Full/test_board/vivado/test_board.srcs/sources_1/bd/zsys/ip/zsys_SC0720_0_0/zsys_SC0720_0_0_stub.vhdl
-- Design      : zsys_SC0720_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity zsys_SC0720_0_0 is
  Port ( 
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

end zsys_SC0720_0_0;

architecture stub of zsys_SC0720_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "ext_sda_i,ext_sda_o,ext_sda_t,ext_scl_i,ext_scl_o,ext_scl_t,PHY_LED0,PHY_LED1,PHY_LED2,PL_pin_K16,PL_pin_K19,PL_pin_L16,PL_pin_M15,PL_pin_N15,PL_pin_P16,PL_pin_P22,PL_pin_K20,PL_pin_N22,sda_i,sda_o,sda_t,scl_i,scl_o,scl_t";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "SC0720,Vivado 2019.2";
begin
end;
