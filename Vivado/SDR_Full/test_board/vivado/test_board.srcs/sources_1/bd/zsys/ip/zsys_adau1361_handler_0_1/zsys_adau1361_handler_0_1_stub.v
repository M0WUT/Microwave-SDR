// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Mon Jun 21 19:29:56 2021
// Host        : dan-Desktop running 64-bit Ubuntu 18.04.5 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/dan/Microwave-SDR/Vivado/SDR_Full/test_board/vivado/test_board.srcs/sources_1/bd/zsys/ip/zsys_adau1361_handler_0_1/zsys_adau1361_handler_0_1_stub.v
// Design      : zsys_adau1361_handler_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "adau1361_handler,Vivado 2019.2" *)
module zsys_adau1361_handler_0_1(iS_left_dac_data, i_left_dac_valid, 
  iS_right_dac_data, i_right_dac_valid, oS_left_adc_data, o_left_adc_valid, 
  oS_right_adc_data, o_right_adc_valid, i_clk, i_resetn, o_mclk, o_bclk, o_lrclk, i_adcData, 
  o_dacData, o_error)
/* synthesis syn_black_box black_box_pad_pin="iS_left_dac_data[15:0],i_left_dac_valid,iS_right_dac_data[15:0],i_right_dac_valid,oS_left_adc_data[15:0],o_left_adc_valid,oS_right_adc_data[15:0],o_right_adc_valid,i_clk,i_resetn,o_mclk,o_bclk,o_lrclk,i_adcData,o_dacData,o_error" */;
  input [15:0]iS_left_dac_data;
  input i_left_dac_valid;
  input [15:0]iS_right_dac_data;
  input i_right_dac_valid;
  output [15:0]oS_left_adc_data;
  output o_left_adc_valid;
  output [15:0]oS_right_adc_data;
  output o_right_adc_valid;
  input i_clk;
  input i_resetn;
  output o_mclk;
  output o_bclk;
  output o_lrclk;
  input i_adcData;
  output o_dacData;
  output o_error;
endmodule
