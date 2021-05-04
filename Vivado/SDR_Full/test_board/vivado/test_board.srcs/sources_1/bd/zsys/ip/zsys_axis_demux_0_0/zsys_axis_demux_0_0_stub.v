// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Thu Apr 22 21:55:43 2021
// Host        : dan-Desktop running 64-bit Ubuntu 18.04.5 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/dan/Microwave-SDR/Vivado/SDR_Full/test_board/vivado/test_board.srcs/sources_1/bd/zsys/ip/zsys_axis_demux_0_0/zsys_axis_demux_0_0_stub.v
// Design      : zsys_axis_demux_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "axis_demux,Vivado 2019.2" *)
module zsys_axis_demux_0_0(iS_data, i_valid, i_ctl, oS_data0, o_valid0, 
  oS_data1, o_valid1, oS_data2, o_valid2, oS_data3, o_valid3, oS_data4, o_valid4, oS_data5, o_valid5, 
  oS_data6, o_valid6, oS_data7, o_valid7, i_clk, i_resetn)
/* synthesis syn_black_box black_box_pad_pin="iS_data[15:0],i_valid,i_ctl[2:0],oS_data0[15:0],o_valid0,oS_data1[15:0],o_valid1,oS_data2[15:0],o_valid2,oS_data3[15:0],o_valid3,oS_data4[15:0],o_valid4,oS_data5[15:0],o_valid5,oS_data6[15:0],o_valid6,oS_data7[15:0],o_valid7,i_clk,i_resetn" */;
  input [15:0]iS_data;
  input i_valid;
  input [2:0]i_ctl;
  output [15:0]oS_data0;
  output o_valid0;
  output [15:0]oS_data1;
  output o_valid1;
  output [15:0]oS_data2;
  output o_valid2;
  output [15:0]oS_data3;
  output o_valid3;
  output [15:0]oS_data4;
  output o_valid4;
  output [15:0]oS_data5;
  output o_valid5;
  output [15:0]oS_data6;
  output o_valid6;
  output [15:0]oS_data7;
  output o_valid7;
  input i_clk;
  input i_resetn;
endmodule
