-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
-- Date        : Sat May 16 19:26:29 2020
-- Host        : dan-Desktop running 64-bit Ubuntu 18.04.4 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/dan/Trenz_Provided_Files/test_board/vivado/test_board.srcs/sources_1/bd/zsys/ip/zsys_Hann_Filter_0_0/zsys_Hann_Filter_0_0_stub.vhdl
-- Design      : zsys_Hann_Filter_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity zsys_Hann_Filter_0_0 is
  Port ( 
    M_AXIS_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXIS_tlast : out STD_LOGIC;
    M_AXIS_tvalid : out STD_LOGIC;
    S_AXIS_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXIS_tvalid : in STD_LOGIC;
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    o_error : out STD_LOGIC
  );

end zsys_Hann_Filter_0_0;

architecture stub of zsys_Hann_Filter_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "M_AXIS_tdata[31:0],M_AXIS_tlast,M_AXIS_tvalid,S_AXIS_tdata[31:0],S_AXIS_tvalid,aclk,aresetn,o_error";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "design_1,Vivado 2019.2";
begin
end;
