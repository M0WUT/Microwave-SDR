// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Fri Apr 23 22:45:46 2021
// Host        : dan-Desktop running 64-bit Ubuntu 18.04.5 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/dan/Microwave-SDR/Vivado/SDR_Full/test_board/vivado/test_board.srcs/sources_1/bd/zsys/ip/zsys_cw_generator_0_1/zsys_cw_generator_0_1_stub.v
// Design      : zsys_cw_generator_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "cw_generator,Vivado 2019.2" *)
module zsys_cw_generator_0_1(i_clk, i_key_n, iS_amplitude, oS_output)
/* synthesis syn_black_box black_box_pad_pin="i_clk,i_key_n,iS_amplitude[15:0],oS_output[15:0]" */;
  input i_clk;
  input i_key_n;
  input [15:0]iS_amplitude;
  output [15:0]oS_output;
endmodule
