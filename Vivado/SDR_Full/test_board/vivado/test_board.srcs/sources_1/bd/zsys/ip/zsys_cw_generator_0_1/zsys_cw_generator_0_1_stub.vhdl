-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
-- Date        : Fri Apr 23 22:45:46 2021
-- Host        : dan-Desktop running 64-bit Ubuntu 18.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/dan/Microwave-SDR/Vivado/SDR_Full/test_board/vivado/test_board.srcs/sources_1/bd/zsys/ip/zsys_cw_generator_0_1/zsys_cw_generator_0_1_stub.vhdl
-- Design      : zsys_cw_generator_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity zsys_cw_generator_0_1 is
  Port ( 
    i_clk : in STD_LOGIC;
    i_key_n : in STD_LOGIC;
    iS_amplitude : in STD_LOGIC_VECTOR ( 15 downto 0 );
    oS_output : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );

end zsys_cw_generator_0_1;

architecture stub of zsys_cw_generator_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "i_clk,i_key_n,iS_amplitude[15:0],oS_output[15:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "cw_generator,Vivado 2019.2";
begin
end;
