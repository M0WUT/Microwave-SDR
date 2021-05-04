-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
-- Date        : Wed Apr 21 23:23:52 2021
-- Host        : dan-Desktop running 64-bit Ubuntu 18.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/dan/Microwave-SDR/Vivado/SDR_Full/test_board/vivado/test_board.srcs/sources_1/bd/zsys/ip/zsys_overdrive_warning_1_0/zsys_overdrive_warning_1_0_stub.vhdl
-- Design      : zsys_overdrive_warning_1_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity zsys_overdrive_warning_1_0 is
  Port ( 
    iS_data : in STD_LOGIC_VECTOR ( 15 downto 0 );
    i_valid : in STD_LOGIC;
    oS_data : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_valid : out STD_LOGIC;
    i_clk : in STD_LOGIC;
    i_resetn : in STD_LOGIC;
    o_positiveOverload : out STD_LOGIC;
    o_negativeOverload : out STD_LOGIC
  );

end zsys_overdrive_warning_1_0;

architecture stub of zsys_overdrive_warning_1_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "iS_data[15:0],i_valid,oS_data[15:0],o_valid,i_clk,i_resetn,o_positiveOverload,o_negativeOverload";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "overdrive_warning,Vivado 2019.2";
begin
end;
