// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Sat May 16 19:26:29 2020
// Host        : dan-Desktop running 64-bit Ubuntu 18.04.4 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/dan/Trenz_Provided_Files/test_board/vivado/test_board.srcs/sources_1/bd/zsys/ip/zsys_Hann_Filter_0_0/zsys_Hann_Filter_0_0_stub.v
// Design      : zsys_Hann_Filter_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "design_1,Vivado 2019.2" *)
module zsys_Hann_Filter_0_0(M_AXIS_tdata, M_AXIS_tlast, M_AXIS_tvalid, 
  S_AXIS_tdata, S_AXIS_tvalid, aclk, aresetn, o_error)
/* synthesis syn_black_box black_box_pad_pin="M_AXIS_tdata[31:0],M_AXIS_tlast,M_AXIS_tvalid,S_AXIS_tdata[31:0],S_AXIS_tvalid,aclk,aresetn,o_error" */;
  output [31:0]M_AXIS_tdata;
  output M_AXIS_tlast;
  output M_AXIS_tvalid;
  input [31:0]S_AXIS_tdata;
  input S_AXIS_tvalid;
  input aclk;
  input aresetn;
  output o_error;
endmodule
