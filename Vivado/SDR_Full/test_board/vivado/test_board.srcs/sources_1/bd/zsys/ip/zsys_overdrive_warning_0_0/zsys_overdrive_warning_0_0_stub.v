// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Wed Apr 21 23:24:31 2021
// Host        : dan-Desktop running 64-bit Ubuntu 18.04.5 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/dan/Microwave-SDR/Vivado/SDR_Full/test_board/vivado/test_board.srcs/sources_1/bd/zsys/ip/zsys_overdrive_warning_0_0/zsys_overdrive_warning_0_0_stub.v
// Design      : zsys_overdrive_warning_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "overdrive_warning,Vivado 2019.2" *)
module zsys_overdrive_warning_0_0(iS_data, i_valid, oS_data, o_valid, i_clk, 
  i_resetn, o_positiveOverload, o_negativeOverload)
/* synthesis syn_black_box black_box_pad_pin="iS_data[15:0],i_valid,oS_data[15:0],o_valid,i_clk,i_resetn,o_positiveOverload,o_negativeOverload" */;
  input [15:0]iS_data;
  input i_valid;
  output [15:0]oS_data;
  output o_valid;
  input i_clk;
  input i_resetn;
  output o_positiveOverload;
  output o_negativeOverload;
endmodule
