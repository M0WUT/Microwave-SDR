-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
-- Date        : Wed Apr 21 23:23:54 2021
-- Host        : dan-Desktop running 64-bit Ubuntu 18.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/dan/Microwave-SDR/Vivado/SDR_Full/test_board/vivado/test_board.srcs/sources_1/bd/zsys/ip/zsys_binary_to_bcd_0_0/zsys_binary_to_bcd_0_0_stub.vhdl
-- Design      : zsys_binary_to_bcd_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity zsys_binary_to_bcd_0_0 is
  Port ( 
    i_clk : in STD_LOGIC;
    i_resetn : in STD_LOGIC;
    i_binary : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_bcd : out STD_LOGIC_VECTOR ( 39 downto 0 )
  );

end zsys_binary_to_bcd_0_0;

architecture stub of zsys_binary_to_bcd_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "i_clk,i_resetn,i_binary[31:0],o_bcd[39:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "binary_to_bcd,Vivado 2019.2";
begin
end;
