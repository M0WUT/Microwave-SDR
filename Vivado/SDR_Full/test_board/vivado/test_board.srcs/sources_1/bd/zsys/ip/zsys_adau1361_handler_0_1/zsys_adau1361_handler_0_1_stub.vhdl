-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
-- Date        : Mon Jun 21 19:29:56 2021
-- Host        : dan-Desktop running 64-bit Ubuntu 18.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/dan/Microwave-SDR/Vivado/SDR_Full/test_board/vivado/test_board.srcs/sources_1/bd/zsys/ip/zsys_adau1361_handler_0_1/zsys_adau1361_handler_0_1_stub.vhdl
-- Design      : zsys_adau1361_handler_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity zsys_adau1361_handler_0_1 is
  Port ( 
    iS_left_dac_data : in STD_LOGIC_VECTOR ( 15 downto 0 );
    i_left_dac_valid : in STD_LOGIC;
    iS_right_dac_data : in STD_LOGIC_VECTOR ( 15 downto 0 );
    i_right_dac_valid : in STD_LOGIC;
    oS_left_adc_data : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_left_adc_valid : out STD_LOGIC;
    oS_right_adc_data : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_right_adc_valid : out STD_LOGIC;
    i_clk : in STD_LOGIC;
    i_resetn : in STD_LOGIC;
    o_mclk : out STD_LOGIC;
    o_bclk : out STD_LOGIC;
    o_lrclk : out STD_LOGIC;
    i_adcData : in STD_LOGIC;
    o_dacData : out STD_LOGIC;
    o_error : out STD_LOGIC
  );

end zsys_adau1361_handler_0_1;

architecture stub of zsys_adau1361_handler_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "iS_left_dac_data[15:0],i_left_dac_valid,iS_right_dac_data[15:0],i_right_dac_valid,oS_left_adc_data[15:0],o_left_adc_valid,oS_right_adc_data[15:0],o_right_adc_valid,i_clk,i_resetn,o_mclk,o_bclk,o_lrclk,i_adcData,o_dacData,o_error";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "adau1361_handler,Vivado 2019.2";
begin
end;
