// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Wed Apr 21 23:24:36 2021
// Host        : dan-Desktop running 64-bit Ubuntu 18.04.5 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/dan/Microwave-SDR/Vivado/SDR_Full/test_board/vivado/test_board.srcs/sources_1/bd/zsys/ip/zsys_c_addsub_0_0/zsys_c_addsub_0_0_stub.v
// Design      : zsys_c_addsub_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "c_addsub_v12_0_14,Vivado 2019.2" *)
module zsys_c_addsub_0_0(A, B, CLK, ADD, S)
/* synthesis syn_black_box black_box_pad_pin="A[15:0],B[15:0],CLK,ADD,S[15:0]" */;
  input [15:0]A;
  input [15:0]B;
  input CLK;
  input ADD;
  output [15:0]S;
endmodule
