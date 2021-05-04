//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
//Date        : Sun May 17 20:57:27 2020
//Host        : dan-Desktop running 64-bit Ubuntu 18.04.4 LTS
//Command     : generate_target hann_filter_wrapper.bd
//Design      : hann_filter_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module hann_filter_wrapper
   (M_AXIS_tdata,
    M_AXIS_tlast,
    M_AXIS_tvalid,
    S_AXIS_tdata,
    S_AXIS_tvalid,
    aclk,
    aresetn,
    o_error);
  output [31:0]M_AXIS_tdata;
  output M_AXIS_tlast;
  output M_AXIS_tvalid;
  input [31:0]S_AXIS_tdata;
  input S_AXIS_tvalid;
  input aclk;
  input aresetn;
  output o_error;

  wire [31:0]M_AXIS_tdata;
  wire M_AXIS_tlast;
  wire M_AXIS_tvalid;
  wire [31:0]S_AXIS_tdata;
  wire S_AXIS_tvalid;
  wire aclk;
  wire aresetn;
  wire o_error;

  hann_filter hann_filter_i
       (.M_AXIS_tdata(M_AXIS_tdata),
        .M_AXIS_tlast(M_AXIS_tlast),
        .M_AXIS_tvalid(M_AXIS_tvalid),
        .S_AXIS_tdata(S_AXIS_tdata),
        .S_AXIS_tvalid(S_AXIS_tvalid),
        .aclk(aclk),
        .aresetn(aresetn),
        .o_error(o_error));
endmodule
