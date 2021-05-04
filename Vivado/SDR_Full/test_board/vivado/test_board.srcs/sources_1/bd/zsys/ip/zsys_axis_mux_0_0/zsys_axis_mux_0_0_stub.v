// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Fri Apr 23 22:45:47 2021
// Host        : dan-Desktop running 64-bit Ubuntu 18.04.5 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/dan/Microwave-SDR/Vivado/SDR_Full/test_board/vivado/test_board.srcs/sources_1/bd/zsys/ip/zsys_axis_mux_0_0/zsys_axis_mux_0_0_stub.v
// Design      : zsys_axis_mux_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "axis_mux,Vivado 2019.2" *)
module zsys_axis_mux_0_0(oS_data, o_valid, i_ctl, i_en_n, o_enabled, 
  iS_data0, i_valid0, iS_data1, i_valid1, iS_data2, i_valid2, iS_data3, i_valid3, iS_data4, i_valid4, 
  iS_data5, i_valid5, iS_data6, i_valid6, iS_data7, i_valid7, i_clk, i_resetn)
/* synthesis syn_black_box black_box_pad_pin="oS_data[15:0],o_valid,i_ctl[2:0],i_en_n,o_enabled,iS_data0[15:0],i_valid0,iS_data1[15:0],i_valid1,iS_data2[15:0],i_valid2,iS_data3[15:0],i_valid3,iS_data4[15:0],i_valid4,iS_data5[15:0],i_valid5,iS_data6[15:0],i_valid6,iS_data7[15:0],i_valid7,i_clk,i_resetn" */;
  output [15:0]oS_data;
  output o_valid;
  input [2:0]i_ctl;
  input i_en_n;
  output o_enabled;
  input [15:0]iS_data0;
  input i_valid0;
  input [15:0]iS_data1;
  input i_valid1;
  input [15:0]iS_data2;
  input i_valid2;
  input [15:0]iS_data3;
  input i_valid3;
  input [15:0]iS_data4;
  input i_valid4;
  input [15:0]iS_data5;
  input i_valid5;
  input [15:0]iS_data6;
  input i_valid6;
  input [15:0]iS_data7;
  input i_valid7;
  input i_clk;
  input i_resetn;
endmodule
