// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Thu Apr 22 21:17:10 2021
// Host        : dan-Desktop running 64-bit Ubuntu 18.04.5 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/dan/Microwave-SDR/Vivado/SDR_Full/test_board/vivado/test_board.srcs/sources_1/bd/zsys/ip/zsys_axis_subset_converter_0_0/zsys_axis_subset_converter_0_0_stub.v
// Design      : zsys_axis_subset_converter_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "top_zsys_axis_subset_converter_0_0,Vivado 2019.2" *)
module zsys_axis_subset_converter_0_0(aclk, aresetn, s_axis_tvalid, s_axis_tdata, 
  m_axis_tvalid, m_axis_tdata)
/* synthesis syn_black_box black_box_pad_pin="aclk,aresetn,s_axis_tvalid,s_axis_tdata[15:0],m_axis_tvalid,m_axis_tdata[15:0]" */;
  input aclk;
  input aresetn;
  input s_axis_tvalid;
  input [15:0]s_axis_tdata;
  output m_axis_tvalid;
  output [15:0]m_axis_tdata;
endmodule
