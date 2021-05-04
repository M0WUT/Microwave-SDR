// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Wed Apr 21 23:25:03 2021
// Host        : dan-Desktop running 64-bit Ubuntu 18.04.5 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/dan/Microwave-SDR/Vivado/SDR_Full/test_board/vivado/test_board.srcs/sources_1/bd/zsys/ip/zsys_Segment_Driver_0_0/zsys_Segment_Driver_0_0_stub.v
// Design      : zsys_Segment_Driver_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "Segment_Driver,Vivado 2019.2" *)
module zsys_Segment_Driver_0_0(i_clk, i_blank, i_bcdData, i_mode, i_resetn, 
  o_ledClk, o_data, o_lat, o_blank)
/* synthesis syn_black_box black_box_pad_pin="i_clk,i_blank,i_bcdData[39:0],i_mode,i_resetn,o_ledClk,o_data,o_lat,o_blank" */;
  input i_clk;
  input i_blank;
  input [39:0]i_bcdData;
  input i_mode;
  input i_resetn;
  output o_ledClk;
  output o_data;
  output o_lat;
  output o_blank;
endmodule
