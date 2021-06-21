// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Mon Jun 21 19:29:55 2021
// Host        : dan-Desktop running 64-bit Ubuntu 18.04.5 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/dan/Microwave-SDR/Vivado/SDR_Full/test_board/vivado/test_board.srcs/sources_1/bd/zsys/ip/zsys_phase_accumulator_1_0/zsys_phase_accumulator_1_0_stub.v
// Design      : zsys_phase_accumulator_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "phase_accumulator,Vivado 2019.2" *)
module zsys_phase_accumulator_1_0(iS_phaseDelta, i_valid, oS_phaseAngle, o_valid, 
  i_clk, i_resetn)
/* synthesis syn_black_box black_box_pad_pin="iS_phaseDelta[31:0],i_valid,oS_phaseAngle[31:0],o_valid,i_clk,i_resetn" */;
  input [31:0]iS_phaseDelta;
  input i_valid;
  output [31:0]oS_phaseAngle;
  output o_valid;
  input i_clk;
  input i_resetn;
endmodule
