-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
-- Date        : Fri Apr 23 22:45:47 2021
-- Host        : dan-Desktop running 64-bit Ubuntu 18.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/dan/Microwave-SDR/Vivado/SDR_Full/test_board/vivado/test_board.srcs/sources_1/bd/zsys/ip/zsys_axis_mux_0_0/zsys_axis_mux_0_0_stub.vhdl
-- Design      : zsys_axis_mux_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity zsys_axis_mux_0_0 is
  Port ( 
    oS_data : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_valid : out STD_LOGIC;
    i_ctl : in STD_LOGIC_VECTOR ( 2 downto 0 );
    i_en_n : in STD_LOGIC;
    o_enabled : out STD_LOGIC;
    iS_data0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    i_valid0 : in STD_LOGIC;
    iS_data1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    i_valid1 : in STD_LOGIC;
    iS_data2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    i_valid2 : in STD_LOGIC;
    iS_data3 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    i_valid3 : in STD_LOGIC;
    iS_data4 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    i_valid4 : in STD_LOGIC;
    iS_data5 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    i_valid5 : in STD_LOGIC;
    iS_data6 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    i_valid6 : in STD_LOGIC;
    iS_data7 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    i_valid7 : in STD_LOGIC;
    i_clk : in STD_LOGIC;
    i_resetn : in STD_LOGIC
  );

end zsys_axis_mux_0_0;

architecture stub of zsys_axis_mux_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "oS_data[15:0],o_valid,i_ctl[2:0],i_en_n,o_enabled,iS_data0[15:0],i_valid0,iS_data1[15:0],i_valid1,iS_data2[15:0],i_valid2,iS_data3[15:0],i_valid3,iS_data4[15:0],i_valid4,iS_data5[15:0],i_valid5,iS_data6[15:0],i_valid6,iS_data7[15:0],i_valid7,i_clk,i_resetn";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "axis_mux,Vivado 2019.2";
begin
end;
