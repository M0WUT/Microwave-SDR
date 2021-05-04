-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
-- Date        : Wed Apr 21 23:24:36 2021
-- Host        : dan-Desktop running 64-bit Ubuntu 18.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/dan/Microwave-SDR/Vivado/SDR_Full/test_board/vivado/test_board.srcs/sources_1/bd/zsys/ip/zsys_cordic_0_2/zsys_cordic_0_2_stub.vhdl
-- Design      : zsys_cordic_0_2
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity zsys_cordic_0_2 is
  Port ( 
    iS_xIn : in STD_LOGIC_VECTOR ( 15 downto 0 );
    i_xValid : in STD_LOGIC;
    iS_yIn : in STD_LOGIC_VECTOR ( 15 downto 0 );
    i_yValid : in STD_LOGIC;
    iS_angle : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_angleValid : in STD_LOGIC;
    oS_xOut : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_xValid : out STD_LOGIC;
    oS_yOut : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_yValid : out STD_LOGIC;
    i_clk : in STD_LOGIC;
    i_resetn : in STD_LOGIC;
    o_error : out STD_LOGIC
  );

end zsys_cordic_0_2;

architecture stub of zsys_cordic_0_2 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "iS_xIn[15:0],i_xValid,iS_yIn[15:0],i_yValid,iS_angle[31:0],i_angleValid,oS_xOut[15:0],o_xValid,oS_yOut[15:0],o_yValid,i_clk,i_resetn,o_error";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "cordic,Vivado 2019.2";
begin
end;
