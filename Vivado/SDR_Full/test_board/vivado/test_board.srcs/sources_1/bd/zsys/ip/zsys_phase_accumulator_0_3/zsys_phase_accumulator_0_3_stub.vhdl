-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
-- Date        : Mon Jun 21 19:29:56 2021
-- Host        : dan-Desktop running 64-bit Ubuntu 18.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/dan/Microwave-SDR/Vivado/SDR_Full/test_board/vivado/test_board.srcs/sources_1/bd/zsys/ip/zsys_phase_accumulator_0_3/zsys_phase_accumulator_0_3_stub.vhdl
-- Design      : zsys_phase_accumulator_0_3
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity zsys_phase_accumulator_0_3 is
  Port ( 
    iS_phaseDelta : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_valid : in STD_LOGIC;
    oS_phaseAngle : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_valid : out STD_LOGIC;
    i_clk : in STD_LOGIC;
    i_resetn : in STD_LOGIC
  );

end zsys_phase_accumulator_0_3;

architecture stub of zsys_phase_accumulator_0_3 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "iS_phaseDelta[31:0],i_valid,oS_phaseAngle[31:0],o_valid,i_clk,i_resetn";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "phase_accumulator,Vivado 2019.2";
begin
end;
