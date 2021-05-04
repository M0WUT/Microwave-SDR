-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
-- Date        : Thu Apr 22 21:55:43 2021
-- Host        : dan-Desktop running 64-bit Ubuntu 18.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/dan/Microwave-SDR/Vivado/SDR_Full/test_board/vivado/test_board.srcs/sources_1/bd/zsys/ip/zsys_axis_demux_0_0/zsys_axis_demux_0_0_stub.vhdl
-- Design      : zsys_axis_demux_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity zsys_axis_demux_0_0 is
  Port ( 
    iS_data : in STD_LOGIC_VECTOR ( 15 downto 0 );
    i_valid : in STD_LOGIC;
    i_ctl : in STD_LOGIC_VECTOR ( 2 downto 0 );
    oS_data0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_valid0 : out STD_LOGIC;
    oS_data1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_valid1 : out STD_LOGIC;
    oS_data2 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_valid2 : out STD_LOGIC;
    oS_data3 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_valid3 : out STD_LOGIC;
    oS_data4 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_valid4 : out STD_LOGIC;
    oS_data5 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_valid5 : out STD_LOGIC;
    oS_data6 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_valid6 : out STD_LOGIC;
    oS_data7 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_valid7 : out STD_LOGIC;
    i_clk : in STD_LOGIC;
    i_resetn : in STD_LOGIC
  );

end zsys_axis_demux_0_0;

architecture stub of zsys_axis_demux_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "iS_data[15:0],i_valid,i_ctl[2:0],oS_data0[15:0],o_valid0,oS_data1[15:0],o_valid1,oS_data2[15:0],o_valid2,oS_data3[15:0],o_valid3,oS_data4[15:0],o_valid4,oS_data5[15:0],o_valid5,oS_data6[15:0],o_valid6,oS_data7[15:0],o_valid7,i_clk,i_resetn";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "axis_demux,Vivado 2019.2";
begin
end;
