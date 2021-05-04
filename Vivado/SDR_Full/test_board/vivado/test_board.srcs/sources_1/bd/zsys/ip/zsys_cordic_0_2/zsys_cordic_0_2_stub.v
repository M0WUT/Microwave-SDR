// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Wed Apr 21 23:24:36 2021
// Host        : dan-Desktop running 64-bit Ubuntu 18.04.5 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/dan/Microwave-SDR/Vivado/SDR_Full/test_board/vivado/test_board.srcs/sources_1/bd/zsys/ip/zsys_cordic_0_2/zsys_cordic_0_2_stub.v
// Design      : zsys_cordic_0_2
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "cordic,Vivado 2019.2" *)
module zsys_cordic_0_2(iS_xIn, i_xValid, iS_yIn, i_yValid, iS_angle, 
  i_angleValid, oS_xOut, o_xValid, oS_yOut, o_yValid, i_clk, i_resetn, o_error)
/* synthesis syn_black_box black_box_pad_pin="iS_xIn[15:0],i_xValid,iS_yIn[15:0],i_yValid,iS_angle[31:0],i_angleValid,oS_xOut[15:0],o_xValid,oS_yOut[15:0],o_yValid,i_clk,i_resetn,o_error" */;
  input [15:0]iS_xIn;
  input i_xValid;
  input [15:0]iS_yIn;
  input i_yValid;
  input [31:0]iS_angle;
  input i_angleValid;
  output [15:0]oS_xOut;
  output o_xValid;
  output [15:0]oS_yOut;
  output o_yValid;
  input i_clk;
  input i_resetn;
  output o_error;
endmodule
