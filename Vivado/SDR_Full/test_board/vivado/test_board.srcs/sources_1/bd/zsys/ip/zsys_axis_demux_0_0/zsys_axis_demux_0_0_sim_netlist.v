// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Thu Apr 22 21:55:43 2021
// Host        : dan-Desktop running 64-bit Ubuntu 18.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/dan/Microwave-SDR/Vivado/SDR_Full/test_board/vivado/test_board.srcs/sources_1/bd/zsys/ip/zsys_axis_demux_0_0/zsys_axis_demux_0_0_sim_netlist.v
// Design      : zsys_axis_demux_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "zsys_axis_demux_0_0,axis_demux,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "axis_demux,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module zsys_axis_demux_0_0
   (iS_data,
    i_valid,
    i_ctl,
    oS_data0,
    o_valid0,
    oS_data1,
    o_valid1,
    oS_data2,
    o_valid2,
    oS_data3,
    o_valid3,
    oS_data4,
    o_valid4,
    oS_data5,
    o_valid5,
    oS_data6,
    o_valid6,
    oS_data7,
    o_valid7,
    i_clk,
    i_resetn);
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DATA TDATA" *) input [15:0]iS_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DATA TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_DATA, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 80000000, PHASE 0.000, CLK_DOMAIN zsys_adc_clk_n, LAYERED_METADATA undef, INSERT_VIP 0" *) input i_valid;
  input [2:0]i_ctl;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT0 TDATA" *) output [15:0]oS_data0;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT0 TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_OUTPUT0, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 80000000, PHASE 0.000, CLK_DOMAIN zsys_adc_clk_n, LAYERED_METADATA undef, INSERT_VIP 0" *) output o_valid0;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT1 TDATA" *) output [15:0]oS_data1;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT1 TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_OUTPUT1, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 80000000, PHASE 0.000, CLK_DOMAIN zsys_adc_clk_n, LAYERED_METADATA undef, INSERT_VIP 0" *) output o_valid1;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT2 TDATA" *) output [15:0]oS_data2;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT2 TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_OUTPUT2, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 80000000, PHASE 0.000, CLK_DOMAIN zsys_adc_clk_n, LAYERED_METADATA undef, INSERT_VIP 0" *) output o_valid2;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT3 TDATA" *) output [15:0]oS_data3;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT3 TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_OUTPUT3, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 80000000, PHASE 0.000, CLK_DOMAIN zsys_adc_clk_n, LAYERED_METADATA undef, INSERT_VIP 0" *) output o_valid3;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT4 TDATA" *) output [15:0]oS_data4;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT4 TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_OUTPUT4, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 80000000, PHASE 0.000, CLK_DOMAIN zsys_adc_clk_n, LAYERED_METADATA undef, INSERT_VIP 0" *) output o_valid4;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT5 TDATA" *) output [15:0]oS_data5;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT5 TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_OUTPUT5, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 80000000, PHASE 0.000, CLK_DOMAIN zsys_adc_clk_n, LAYERED_METADATA undef, INSERT_VIP 0" *) output o_valid5;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT6 TDATA" *) output [15:0]oS_data6;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT6 TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_OUTPUT6, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 80000000, PHASE 0.000, CLK_DOMAIN zsys_adc_clk_n, LAYERED_METADATA undef, INSERT_VIP 0" *) output o_valid6;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT7 TDATA" *) output [15:0]oS_data7;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT7 TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_OUTPUT7, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 80000000, PHASE 0.000, CLK_DOMAIN zsys_adc_clk_n, LAYERED_METADATA undef, INSERT_VIP 0" *) output o_valid7;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 i_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_clk, ASSOCIATED_RESET i_resetn, ASSOCIATED_BUSIF S_AXIS_X:S_AXIS_DATA:M_AXIS_OUTPUT0:M_AXIS_OUTPUT1:M_AXIS_OUTPUT2:M_AXIS_OUTPUT3:M_AXIS_OUTPUT4:M_AXIS_OUTPUT5:M_AXIS_OUTPUT6:M_AXIS_OUTPUT7, FREQ_HZ 80000000, PHASE 0.000, CLK_DOMAIN zsys_adc_clk_n, INSERT_VIP 0" *) input i_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 i_resetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input i_resetn;

  wire [15:0]iS_data;
  wire i_clk;
  wire [2:0]i_ctl;
  wire i_valid;
  wire [15:0]oS_data0;
  wire [15:0]oS_data1;
  wire [15:0]oS_data2;
  wire [15:0]oS_data3;
  wire [15:0]oS_data4;
  wire [15:0]oS_data5;
  wire [15:0]oS_data6;
  wire [15:0]oS_data7;
  wire o_valid0;
  wire o_valid1;
  wire o_valid2;
  wire o_valid3;
  wire o_valid4;
  wire o_valid5;
  wire o_valid6;
  wire o_valid7;

  zsys_axis_demux_0_0_axis_demux inst
       (.iS_data(iS_data),
        .i_clk(i_clk),
        .i_ctl(i_ctl),
        .i_valid(i_valid),
        .oS_data0(oS_data0),
        .oS_data1(oS_data1),
        .oS_data2(oS_data2),
        .oS_data3(oS_data3),
        .oS_data4(oS_data4),
        .oS_data5(oS_data5),
        .oS_data6(oS_data6),
        .oS_data7(oS_data7),
        .o_valid0(o_valid0),
        .o_valid1(o_valid1),
        .o_valid2(o_valid2),
        .o_valid3(o_valid3),
        .o_valid4(o_valid4),
        .o_valid5(o_valid5),
        .o_valid6(o_valid6),
        .o_valid7(o_valid7));
endmodule

(* ORIG_REF_NAME = "axis_demux" *) 
module zsys_axis_demux_0_0_axis_demux
   (oS_data0,
    o_valid0,
    oS_data1,
    o_valid1,
    oS_data2,
    o_valid2,
    oS_data3,
    o_valid3,
    oS_data4,
    o_valid4,
    oS_data5,
    o_valid5,
    oS_data6,
    o_valid6,
    oS_data7,
    o_valid7,
    i_ctl,
    iS_data,
    i_clk,
    i_valid);
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
  input [2:0]i_ctl;
  input [15:0]iS_data;
  input i_clk;
  input i_valid;

  wire [15:0]iS_data;
  wire i_clk;
  wire [2:0]i_ctl;
  wire i_valid;
  wire [15:0]oS_data0;
  wire \oS_data0[0]_i_1_n_0 ;
  wire \oS_data0[10]_i_1_n_0 ;
  wire \oS_data0[11]_i_1_n_0 ;
  wire \oS_data0[12]_i_1_n_0 ;
  wire \oS_data0[13]_i_1_n_0 ;
  wire \oS_data0[14]_i_1_n_0 ;
  wire \oS_data0[15]_i_1_n_0 ;
  wire \oS_data0[15]_i_2_n_0 ;
  wire \oS_data0[1]_i_1_n_0 ;
  wire \oS_data0[2]_i_1_n_0 ;
  wire \oS_data0[3]_i_1_n_0 ;
  wire \oS_data0[4]_i_1_n_0 ;
  wire \oS_data0[5]_i_1_n_0 ;
  wire \oS_data0[6]_i_1_n_0 ;
  wire \oS_data0[7]_i_1_n_0 ;
  wire \oS_data0[8]_i_1_n_0 ;
  wire \oS_data0[9]_i_1_n_0 ;
  wire [15:0]oS_data1;
  wire \oS_data1[0]_i_1_n_0 ;
  wire \oS_data1[10]_i_1_n_0 ;
  wire \oS_data1[11]_i_1_n_0 ;
  wire \oS_data1[12]_i_1_n_0 ;
  wire \oS_data1[13]_i_1_n_0 ;
  wire \oS_data1[14]_i_1_n_0 ;
  wire \oS_data1[15]_i_1_n_0 ;
  wire \oS_data1[1]_i_1_n_0 ;
  wire \oS_data1[2]_i_1_n_0 ;
  wire \oS_data1[3]_i_1_n_0 ;
  wire \oS_data1[4]_i_1_n_0 ;
  wire \oS_data1[5]_i_1_n_0 ;
  wire \oS_data1[6]_i_1_n_0 ;
  wire \oS_data1[7]_i_1_n_0 ;
  wire \oS_data1[8]_i_1_n_0 ;
  wire \oS_data1[9]_i_1_n_0 ;
  wire [15:0]oS_data2;
  wire \oS_data2[0]_i_1_n_0 ;
  wire \oS_data2[10]_i_1_n_0 ;
  wire \oS_data2[11]_i_1_n_0 ;
  wire \oS_data2[12]_i_1_n_0 ;
  wire \oS_data2[13]_i_1_n_0 ;
  wire \oS_data2[14]_i_1_n_0 ;
  wire \oS_data2[15]_i_1_n_0 ;
  wire \oS_data2[15]_i_2_n_0 ;
  wire \oS_data2[1]_i_1_n_0 ;
  wire \oS_data2[2]_i_1_n_0 ;
  wire \oS_data2[3]_i_1_n_0 ;
  wire \oS_data2[4]_i_1_n_0 ;
  wire \oS_data2[5]_i_1_n_0 ;
  wire \oS_data2[6]_i_1_n_0 ;
  wire \oS_data2[7]_i_1_n_0 ;
  wire \oS_data2[8]_i_1_n_0 ;
  wire \oS_data2[9]_i_1_n_0 ;
  wire [15:0]oS_data3;
  wire \oS_data3[0]_i_1_n_0 ;
  wire \oS_data3[10]_i_1_n_0 ;
  wire \oS_data3[11]_i_1_n_0 ;
  wire \oS_data3[12]_i_1_n_0 ;
  wire \oS_data3[13]_i_1_n_0 ;
  wire \oS_data3[14]_i_1_n_0 ;
  wire \oS_data3[15]_i_1_n_0 ;
  wire \oS_data3[15]_i_2_n_0 ;
  wire \oS_data3[1]_i_1_n_0 ;
  wire \oS_data3[2]_i_1_n_0 ;
  wire \oS_data3[3]_i_1_n_0 ;
  wire \oS_data3[4]_i_1_n_0 ;
  wire \oS_data3[5]_i_1_n_0 ;
  wire \oS_data3[6]_i_1_n_0 ;
  wire \oS_data3[7]_i_1_n_0 ;
  wire \oS_data3[8]_i_1_n_0 ;
  wire \oS_data3[9]_i_1_n_0 ;
  wire [15:0]oS_data4;
  wire \oS_data4[0]_i_1_n_0 ;
  wire \oS_data4[10]_i_1_n_0 ;
  wire \oS_data4[11]_i_1_n_0 ;
  wire \oS_data4[12]_i_1_n_0 ;
  wire \oS_data4[13]_i_1_n_0 ;
  wire \oS_data4[14]_i_1_n_0 ;
  wire \oS_data4[15]_i_1_n_0 ;
  wire \oS_data4[15]_i_2_n_0 ;
  wire \oS_data4[1]_i_1_n_0 ;
  wire \oS_data4[2]_i_1_n_0 ;
  wire \oS_data4[3]_i_1_n_0 ;
  wire \oS_data4[4]_i_1_n_0 ;
  wire \oS_data4[5]_i_1_n_0 ;
  wire \oS_data4[6]_i_1_n_0 ;
  wire \oS_data4[7]_i_1_n_0 ;
  wire \oS_data4[8]_i_1_n_0 ;
  wire \oS_data4[9]_i_1_n_0 ;
  wire [15:0]oS_data5;
  wire \oS_data5[15]_i_1_n_0 ;
  wire [15:0]oS_data6;
  wire \oS_data6[15]_i_1_n_0 ;
  wire [15:0]oS_data7;
  wire o_valid0;
  wire o_valid0_i_1_n_0;
  wire o_valid1;
  wire o_valid1_i_1_n_0;
  wire o_valid2;
  wire o_valid2__0_n_0;
  wire o_valid3;
  wire o_valid3_i_1_n_0;
  wire o_valid4;
  wire o_valid4_i_1_n_0;
  wire o_valid5;
  wire o_valid5_i_1_n_0;
  wire o_valid6;
  wire o_valid6__0_n_0;
  wire o_valid7;
  wire o_valid7_i_1_n_0;

  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \oS_data0[0]_i_1 
       (.I0(iS_data[0]),
        .I1(i_ctl[0]),
        .O(\oS_data0[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \oS_data0[10]_i_1 
       (.I0(iS_data[10]),
        .I1(i_ctl[0]),
        .O(\oS_data0[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \oS_data0[11]_i_1 
       (.I0(iS_data[11]),
        .I1(i_ctl[0]),
        .O(\oS_data0[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \oS_data0[12]_i_1 
       (.I0(iS_data[12]),
        .I1(i_ctl[0]),
        .O(\oS_data0[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \oS_data0[13]_i_1 
       (.I0(iS_data[13]),
        .I1(i_ctl[0]),
        .O(\oS_data0[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \oS_data0[14]_i_1 
       (.I0(iS_data[14]),
        .I1(i_ctl[0]),
        .O(\oS_data0[14]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \oS_data0[15]_i_1 
       (.I0(i_ctl[1]),
        .I1(i_ctl[2]),
        .O(\oS_data0[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \oS_data0[15]_i_2 
       (.I0(iS_data[15]),
        .I1(i_ctl[0]),
        .O(\oS_data0[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \oS_data0[1]_i_1 
       (.I0(iS_data[1]),
        .I1(i_ctl[0]),
        .O(\oS_data0[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \oS_data0[2]_i_1 
       (.I0(iS_data[2]),
        .I1(i_ctl[0]),
        .O(\oS_data0[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \oS_data0[3]_i_1 
       (.I0(iS_data[3]),
        .I1(i_ctl[0]),
        .O(\oS_data0[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \oS_data0[4]_i_1 
       (.I0(iS_data[4]),
        .I1(i_ctl[0]),
        .O(\oS_data0[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \oS_data0[5]_i_1 
       (.I0(iS_data[5]),
        .I1(i_ctl[0]),
        .O(\oS_data0[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \oS_data0[6]_i_1 
       (.I0(iS_data[6]),
        .I1(i_ctl[0]),
        .O(\oS_data0[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \oS_data0[7]_i_1 
       (.I0(iS_data[7]),
        .I1(i_ctl[0]),
        .O(\oS_data0[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \oS_data0[8]_i_1 
       (.I0(iS_data[8]),
        .I1(i_ctl[0]),
        .O(\oS_data0[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \oS_data0[9]_i_1 
       (.I0(iS_data[9]),
        .I1(i_ctl[0]),
        .O(\oS_data0[9]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT0 TDATA" *) 
  FDRE \oS_data0_reg[0] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data0[0]_i_1_n_0 ),
        .Q(oS_data0[0]),
        .R(\oS_data0[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT0 TDATA" *) 
  FDRE \oS_data0_reg[10] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data0[10]_i_1_n_0 ),
        .Q(oS_data0[10]),
        .R(\oS_data0[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT0 TDATA" *) 
  FDRE \oS_data0_reg[11] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data0[11]_i_1_n_0 ),
        .Q(oS_data0[11]),
        .R(\oS_data0[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT0 TDATA" *) 
  FDRE \oS_data0_reg[12] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data0[12]_i_1_n_0 ),
        .Q(oS_data0[12]),
        .R(\oS_data0[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT0 TDATA" *) 
  FDRE \oS_data0_reg[13] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data0[13]_i_1_n_0 ),
        .Q(oS_data0[13]),
        .R(\oS_data0[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT0 TDATA" *) 
  FDRE \oS_data0_reg[14] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data0[14]_i_1_n_0 ),
        .Q(oS_data0[14]),
        .R(\oS_data0[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT0 TDATA" *) 
  FDRE \oS_data0_reg[15] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data0[15]_i_2_n_0 ),
        .Q(oS_data0[15]),
        .R(\oS_data0[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT0 TDATA" *) 
  FDRE \oS_data0_reg[1] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data0[1]_i_1_n_0 ),
        .Q(oS_data0[1]),
        .R(\oS_data0[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT0 TDATA" *) 
  FDRE \oS_data0_reg[2] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data0[2]_i_1_n_0 ),
        .Q(oS_data0[2]),
        .R(\oS_data0[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT0 TDATA" *) 
  FDRE \oS_data0_reg[3] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data0[3]_i_1_n_0 ),
        .Q(oS_data0[3]),
        .R(\oS_data0[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT0 TDATA" *) 
  FDRE \oS_data0_reg[4] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data0[4]_i_1_n_0 ),
        .Q(oS_data0[4]),
        .R(\oS_data0[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT0 TDATA" *) 
  FDRE \oS_data0_reg[5] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data0[5]_i_1_n_0 ),
        .Q(oS_data0[5]),
        .R(\oS_data0[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT0 TDATA" *) 
  FDRE \oS_data0_reg[6] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data0[6]_i_1_n_0 ),
        .Q(oS_data0[6]),
        .R(\oS_data0[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT0 TDATA" *) 
  FDRE \oS_data0_reg[7] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data0[7]_i_1_n_0 ),
        .Q(oS_data0[7]),
        .R(\oS_data0[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT0 TDATA" *) 
  FDRE \oS_data0_reg[8] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data0[8]_i_1_n_0 ),
        .Q(oS_data0[8]),
        .R(\oS_data0[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT0 TDATA" *) 
  FDRE \oS_data0_reg[9] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data0[9]_i_1_n_0 ),
        .Q(oS_data0[9]),
        .R(\oS_data0[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \oS_data1[0]_i_1 
       (.I0(i_ctl[0]),
        .I1(iS_data[0]),
        .O(\oS_data1[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \oS_data1[10]_i_1 
       (.I0(i_ctl[0]),
        .I1(iS_data[10]),
        .O(\oS_data1[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \oS_data1[11]_i_1 
       (.I0(i_ctl[0]),
        .I1(iS_data[11]),
        .O(\oS_data1[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \oS_data1[12]_i_1 
       (.I0(i_ctl[0]),
        .I1(iS_data[12]),
        .O(\oS_data1[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \oS_data1[13]_i_1 
       (.I0(i_ctl[0]),
        .I1(iS_data[13]),
        .O(\oS_data1[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \oS_data1[14]_i_1 
       (.I0(i_ctl[0]),
        .I1(iS_data[14]),
        .O(\oS_data1[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \oS_data1[15]_i_1 
       (.I0(i_ctl[0]),
        .I1(iS_data[15]),
        .O(\oS_data1[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \oS_data1[1]_i_1 
       (.I0(i_ctl[0]),
        .I1(iS_data[1]),
        .O(\oS_data1[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \oS_data1[2]_i_1 
       (.I0(i_ctl[0]),
        .I1(iS_data[2]),
        .O(\oS_data1[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \oS_data1[3]_i_1 
       (.I0(i_ctl[0]),
        .I1(iS_data[3]),
        .O(\oS_data1[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \oS_data1[4]_i_1 
       (.I0(i_ctl[0]),
        .I1(iS_data[4]),
        .O(\oS_data1[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \oS_data1[5]_i_1 
       (.I0(i_ctl[0]),
        .I1(iS_data[5]),
        .O(\oS_data1[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \oS_data1[6]_i_1 
       (.I0(i_ctl[0]),
        .I1(iS_data[6]),
        .O(\oS_data1[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \oS_data1[7]_i_1 
       (.I0(i_ctl[0]),
        .I1(iS_data[7]),
        .O(\oS_data1[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \oS_data1[8]_i_1 
       (.I0(i_ctl[0]),
        .I1(iS_data[8]),
        .O(\oS_data1[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \oS_data1[9]_i_1 
       (.I0(i_ctl[0]),
        .I1(iS_data[9]),
        .O(\oS_data1[9]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT1 TDATA" *) 
  FDRE \oS_data1_reg[0] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data1[0]_i_1_n_0 ),
        .Q(oS_data1[0]),
        .R(\oS_data0[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT1 TDATA" *) 
  FDRE \oS_data1_reg[10] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data1[10]_i_1_n_0 ),
        .Q(oS_data1[10]),
        .R(\oS_data0[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT1 TDATA" *) 
  FDRE \oS_data1_reg[11] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data1[11]_i_1_n_0 ),
        .Q(oS_data1[11]),
        .R(\oS_data0[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT1 TDATA" *) 
  FDRE \oS_data1_reg[12] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data1[12]_i_1_n_0 ),
        .Q(oS_data1[12]),
        .R(\oS_data0[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT1 TDATA" *) 
  FDRE \oS_data1_reg[13] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data1[13]_i_1_n_0 ),
        .Q(oS_data1[13]),
        .R(\oS_data0[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT1 TDATA" *) 
  FDRE \oS_data1_reg[14] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data1[14]_i_1_n_0 ),
        .Q(oS_data1[14]),
        .R(\oS_data0[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT1 TDATA" *) 
  FDRE \oS_data1_reg[15] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data1[15]_i_1_n_0 ),
        .Q(oS_data1[15]),
        .R(\oS_data0[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT1 TDATA" *) 
  FDRE \oS_data1_reg[1] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data1[1]_i_1_n_0 ),
        .Q(oS_data1[1]),
        .R(\oS_data0[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT1 TDATA" *) 
  FDRE \oS_data1_reg[2] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data1[2]_i_1_n_0 ),
        .Q(oS_data1[2]),
        .R(\oS_data0[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT1 TDATA" *) 
  FDRE \oS_data1_reg[3] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data1[3]_i_1_n_0 ),
        .Q(oS_data1[3]),
        .R(\oS_data0[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT1 TDATA" *) 
  FDRE \oS_data1_reg[4] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data1[4]_i_1_n_0 ),
        .Q(oS_data1[4]),
        .R(\oS_data0[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT1 TDATA" *) 
  FDRE \oS_data1_reg[5] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data1[5]_i_1_n_0 ),
        .Q(oS_data1[5]),
        .R(\oS_data0[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT1 TDATA" *) 
  FDRE \oS_data1_reg[6] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data1[6]_i_1_n_0 ),
        .Q(oS_data1[6]),
        .R(\oS_data0[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT1 TDATA" *) 
  FDRE \oS_data1_reg[7] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data1[7]_i_1_n_0 ),
        .Q(oS_data1[7]),
        .R(\oS_data0[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT1 TDATA" *) 
  FDRE \oS_data1_reg[8] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data1[8]_i_1_n_0 ),
        .Q(oS_data1[8]),
        .R(\oS_data0[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT1 TDATA" *) 
  FDRE \oS_data1_reg[9] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data1[9]_i_1_n_0 ),
        .Q(oS_data1[9]),
        .R(\oS_data0[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \oS_data2[0]_i_1 
       (.I0(i_ctl[1]),
        .I1(iS_data[0]),
        .O(\oS_data2[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \oS_data2[10]_i_1 
       (.I0(i_ctl[1]),
        .I1(iS_data[10]),
        .O(\oS_data2[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \oS_data2[11]_i_1 
       (.I0(i_ctl[1]),
        .I1(iS_data[11]),
        .O(\oS_data2[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \oS_data2[12]_i_1 
       (.I0(i_ctl[1]),
        .I1(iS_data[12]),
        .O(\oS_data2[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \oS_data2[13]_i_1 
       (.I0(i_ctl[1]),
        .I1(iS_data[13]),
        .O(\oS_data2[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \oS_data2[14]_i_1 
       (.I0(i_ctl[1]),
        .I1(iS_data[14]),
        .O(\oS_data2[14]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \oS_data2[15]_i_1 
       (.I0(i_ctl[2]),
        .I1(i_ctl[0]),
        .O(\oS_data2[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \oS_data2[15]_i_2 
       (.I0(i_ctl[1]),
        .I1(iS_data[15]),
        .O(\oS_data2[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \oS_data2[1]_i_1 
       (.I0(i_ctl[1]),
        .I1(iS_data[1]),
        .O(\oS_data2[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \oS_data2[2]_i_1 
       (.I0(i_ctl[1]),
        .I1(iS_data[2]),
        .O(\oS_data2[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \oS_data2[3]_i_1 
       (.I0(i_ctl[1]),
        .I1(iS_data[3]),
        .O(\oS_data2[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \oS_data2[4]_i_1 
       (.I0(i_ctl[1]),
        .I1(iS_data[4]),
        .O(\oS_data2[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \oS_data2[5]_i_1 
       (.I0(i_ctl[1]),
        .I1(iS_data[5]),
        .O(\oS_data2[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \oS_data2[6]_i_1 
       (.I0(i_ctl[1]),
        .I1(iS_data[6]),
        .O(\oS_data2[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \oS_data2[7]_i_1 
       (.I0(i_ctl[1]),
        .I1(iS_data[7]),
        .O(\oS_data2[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \oS_data2[8]_i_1 
       (.I0(i_ctl[1]),
        .I1(iS_data[8]),
        .O(\oS_data2[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \oS_data2[9]_i_1 
       (.I0(i_ctl[1]),
        .I1(iS_data[9]),
        .O(\oS_data2[9]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT2 TDATA" *) 
  FDRE \oS_data2_reg[0] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data2[0]_i_1_n_0 ),
        .Q(oS_data2[0]),
        .R(\oS_data2[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT2 TDATA" *) 
  FDRE \oS_data2_reg[10] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data2[10]_i_1_n_0 ),
        .Q(oS_data2[10]),
        .R(\oS_data2[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT2 TDATA" *) 
  FDRE \oS_data2_reg[11] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data2[11]_i_1_n_0 ),
        .Q(oS_data2[11]),
        .R(\oS_data2[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT2 TDATA" *) 
  FDRE \oS_data2_reg[12] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data2[12]_i_1_n_0 ),
        .Q(oS_data2[12]),
        .R(\oS_data2[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT2 TDATA" *) 
  FDRE \oS_data2_reg[13] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data2[13]_i_1_n_0 ),
        .Q(oS_data2[13]),
        .R(\oS_data2[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT2 TDATA" *) 
  FDRE \oS_data2_reg[14] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data2[14]_i_1_n_0 ),
        .Q(oS_data2[14]),
        .R(\oS_data2[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT2 TDATA" *) 
  FDRE \oS_data2_reg[15] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data2[15]_i_2_n_0 ),
        .Q(oS_data2[15]),
        .R(\oS_data2[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT2 TDATA" *) 
  FDRE \oS_data2_reg[1] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data2[1]_i_1_n_0 ),
        .Q(oS_data2[1]),
        .R(\oS_data2[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT2 TDATA" *) 
  FDRE \oS_data2_reg[2] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data2[2]_i_1_n_0 ),
        .Q(oS_data2[2]),
        .R(\oS_data2[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT2 TDATA" *) 
  FDRE \oS_data2_reg[3] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data2[3]_i_1_n_0 ),
        .Q(oS_data2[3]),
        .R(\oS_data2[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT2 TDATA" *) 
  FDRE \oS_data2_reg[4] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data2[4]_i_1_n_0 ),
        .Q(oS_data2[4]),
        .R(\oS_data2[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT2 TDATA" *) 
  FDRE \oS_data2_reg[5] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data2[5]_i_1_n_0 ),
        .Q(oS_data2[5]),
        .R(\oS_data2[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT2 TDATA" *) 
  FDRE \oS_data2_reg[6] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data2[6]_i_1_n_0 ),
        .Q(oS_data2[6]),
        .R(\oS_data2[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT2 TDATA" *) 
  FDRE \oS_data2_reg[7] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data2[7]_i_1_n_0 ),
        .Q(oS_data2[7]),
        .R(\oS_data2[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT2 TDATA" *) 
  FDRE \oS_data2_reg[8] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data2[8]_i_1_n_0 ),
        .Q(oS_data2[8]),
        .R(\oS_data2[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT2 TDATA" *) 
  FDRE \oS_data2_reg[9] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data2[9]_i_1_n_0 ),
        .Q(oS_data2[9]),
        .R(\oS_data2[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \oS_data3[0]_i_1 
       (.I0(iS_data[0]),
        .I1(i_ctl[2]),
        .O(\oS_data3[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \oS_data3[10]_i_1 
       (.I0(iS_data[10]),
        .I1(i_ctl[2]),
        .O(\oS_data3[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \oS_data3[11]_i_1 
       (.I0(iS_data[11]),
        .I1(i_ctl[2]),
        .O(\oS_data3[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \oS_data3[12]_i_1 
       (.I0(iS_data[12]),
        .I1(i_ctl[2]),
        .O(\oS_data3[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \oS_data3[13]_i_1 
       (.I0(iS_data[13]),
        .I1(i_ctl[2]),
        .O(\oS_data3[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \oS_data3[14]_i_1 
       (.I0(iS_data[14]),
        .I1(i_ctl[2]),
        .O(\oS_data3[14]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \oS_data3[15]_i_1 
       (.I0(i_ctl[0]),
        .I1(i_ctl[1]),
        .O(\oS_data3[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \oS_data3[15]_i_2 
       (.I0(iS_data[15]),
        .I1(i_ctl[2]),
        .O(\oS_data3[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \oS_data3[1]_i_1 
       (.I0(iS_data[1]),
        .I1(i_ctl[2]),
        .O(\oS_data3[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \oS_data3[2]_i_1 
       (.I0(iS_data[2]),
        .I1(i_ctl[2]),
        .O(\oS_data3[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \oS_data3[3]_i_1 
       (.I0(iS_data[3]),
        .I1(i_ctl[2]),
        .O(\oS_data3[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \oS_data3[4]_i_1 
       (.I0(iS_data[4]),
        .I1(i_ctl[2]),
        .O(\oS_data3[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \oS_data3[5]_i_1 
       (.I0(iS_data[5]),
        .I1(i_ctl[2]),
        .O(\oS_data3[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \oS_data3[6]_i_1 
       (.I0(iS_data[6]),
        .I1(i_ctl[2]),
        .O(\oS_data3[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \oS_data3[7]_i_1 
       (.I0(iS_data[7]),
        .I1(i_ctl[2]),
        .O(\oS_data3[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \oS_data3[8]_i_1 
       (.I0(iS_data[8]),
        .I1(i_ctl[2]),
        .O(\oS_data3[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \oS_data3[9]_i_1 
       (.I0(iS_data[9]),
        .I1(i_ctl[2]),
        .O(\oS_data3[9]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT3 TDATA" *) 
  FDRE \oS_data3_reg[0] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data3[0]_i_1_n_0 ),
        .Q(oS_data3[0]),
        .R(\oS_data3[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT3 TDATA" *) 
  FDRE \oS_data3_reg[10] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data3[10]_i_1_n_0 ),
        .Q(oS_data3[10]),
        .R(\oS_data3[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT3 TDATA" *) 
  FDRE \oS_data3_reg[11] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data3[11]_i_1_n_0 ),
        .Q(oS_data3[11]),
        .R(\oS_data3[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT3 TDATA" *) 
  FDRE \oS_data3_reg[12] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data3[12]_i_1_n_0 ),
        .Q(oS_data3[12]),
        .R(\oS_data3[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT3 TDATA" *) 
  FDRE \oS_data3_reg[13] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data3[13]_i_1_n_0 ),
        .Q(oS_data3[13]),
        .R(\oS_data3[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT3 TDATA" *) 
  FDRE \oS_data3_reg[14] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data3[14]_i_1_n_0 ),
        .Q(oS_data3[14]),
        .R(\oS_data3[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT3 TDATA" *) 
  FDRE \oS_data3_reg[15] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data3[15]_i_2_n_0 ),
        .Q(oS_data3[15]),
        .R(\oS_data3[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT3 TDATA" *) 
  FDRE \oS_data3_reg[1] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data3[1]_i_1_n_0 ),
        .Q(oS_data3[1]),
        .R(\oS_data3[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT3 TDATA" *) 
  FDRE \oS_data3_reg[2] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data3[2]_i_1_n_0 ),
        .Q(oS_data3[2]),
        .R(\oS_data3[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT3 TDATA" *) 
  FDRE \oS_data3_reg[3] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data3[3]_i_1_n_0 ),
        .Q(oS_data3[3]),
        .R(\oS_data3[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT3 TDATA" *) 
  FDRE \oS_data3_reg[4] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data3[4]_i_1_n_0 ),
        .Q(oS_data3[4]),
        .R(\oS_data3[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT3 TDATA" *) 
  FDRE \oS_data3_reg[5] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data3[5]_i_1_n_0 ),
        .Q(oS_data3[5]),
        .R(\oS_data3[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT3 TDATA" *) 
  FDRE \oS_data3_reg[6] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data3[6]_i_1_n_0 ),
        .Q(oS_data3[6]),
        .R(\oS_data3[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT3 TDATA" *) 
  FDRE \oS_data3_reg[7] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data3[7]_i_1_n_0 ),
        .Q(oS_data3[7]),
        .R(\oS_data3[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT3 TDATA" *) 
  FDRE \oS_data3_reg[8] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data3[8]_i_1_n_0 ),
        .Q(oS_data3[8]),
        .R(\oS_data3[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT3 TDATA" *) 
  FDRE \oS_data3_reg[9] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data3[9]_i_1_n_0 ),
        .Q(oS_data3[9]),
        .R(\oS_data3[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \oS_data4[0]_i_1 
       (.I0(iS_data[0]),
        .I1(i_ctl[2]),
        .O(\oS_data4[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \oS_data4[10]_i_1 
       (.I0(iS_data[10]),
        .I1(i_ctl[2]),
        .O(\oS_data4[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \oS_data4[11]_i_1 
       (.I0(iS_data[11]),
        .I1(i_ctl[2]),
        .O(\oS_data4[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \oS_data4[12]_i_1 
       (.I0(iS_data[12]),
        .I1(i_ctl[2]),
        .O(\oS_data4[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \oS_data4[13]_i_1 
       (.I0(iS_data[13]),
        .I1(i_ctl[2]),
        .O(\oS_data4[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \oS_data4[14]_i_1 
       (.I0(iS_data[14]),
        .I1(i_ctl[2]),
        .O(\oS_data4[14]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \oS_data4[15]_i_1 
       (.I0(i_ctl[0]),
        .I1(i_ctl[1]),
        .O(\oS_data4[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \oS_data4[15]_i_2 
       (.I0(iS_data[15]),
        .I1(i_ctl[2]),
        .O(\oS_data4[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \oS_data4[1]_i_1 
       (.I0(iS_data[1]),
        .I1(i_ctl[2]),
        .O(\oS_data4[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \oS_data4[2]_i_1 
       (.I0(iS_data[2]),
        .I1(i_ctl[2]),
        .O(\oS_data4[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \oS_data4[3]_i_1 
       (.I0(iS_data[3]),
        .I1(i_ctl[2]),
        .O(\oS_data4[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \oS_data4[4]_i_1 
       (.I0(iS_data[4]),
        .I1(i_ctl[2]),
        .O(\oS_data4[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \oS_data4[5]_i_1 
       (.I0(iS_data[5]),
        .I1(i_ctl[2]),
        .O(\oS_data4[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \oS_data4[6]_i_1 
       (.I0(iS_data[6]),
        .I1(i_ctl[2]),
        .O(\oS_data4[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \oS_data4[7]_i_1 
       (.I0(iS_data[7]),
        .I1(i_ctl[2]),
        .O(\oS_data4[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \oS_data4[8]_i_1 
       (.I0(iS_data[8]),
        .I1(i_ctl[2]),
        .O(\oS_data4[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \oS_data4[9]_i_1 
       (.I0(iS_data[9]),
        .I1(i_ctl[2]),
        .O(\oS_data4[9]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT4 TDATA" *) 
  FDRE \oS_data4_reg[0] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data4[0]_i_1_n_0 ),
        .Q(oS_data4[0]),
        .R(\oS_data4[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT4 TDATA" *) 
  FDRE \oS_data4_reg[10] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data4[10]_i_1_n_0 ),
        .Q(oS_data4[10]),
        .R(\oS_data4[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT4 TDATA" *) 
  FDRE \oS_data4_reg[11] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data4[11]_i_1_n_0 ),
        .Q(oS_data4[11]),
        .R(\oS_data4[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT4 TDATA" *) 
  FDRE \oS_data4_reg[12] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data4[12]_i_1_n_0 ),
        .Q(oS_data4[12]),
        .R(\oS_data4[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT4 TDATA" *) 
  FDRE \oS_data4_reg[13] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data4[13]_i_1_n_0 ),
        .Q(oS_data4[13]),
        .R(\oS_data4[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT4 TDATA" *) 
  FDRE \oS_data4_reg[14] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data4[14]_i_1_n_0 ),
        .Q(oS_data4[14]),
        .R(\oS_data4[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT4 TDATA" *) 
  FDRE \oS_data4_reg[15] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data4[15]_i_2_n_0 ),
        .Q(oS_data4[15]),
        .R(\oS_data4[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT4 TDATA" *) 
  FDRE \oS_data4_reg[1] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data4[1]_i_1_n_0 ),
        .Q(oS_data4[1]),
        .R(\oS_data4[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT4 TDATA" *) 
  FDRE \oS_data4_reg[2] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data4[2]_i_1_n_0 ),
        .Q(oS_data4[2]),
        .R(\oS_data4[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT4 TDATA" *) 
  FDRE \oS_data4_reg[3] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data4[3]_i_1_n_0 ),
        .Q(oS_data4[3]),
        .R(\oS_data4[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT4 TDATA" *) 
  FDRE \oS_data4_reg[4] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data4[4]_i_1_n_0 ),
        .Q(oS_data4[4]),
        .R(\oS_data4[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT4 TDATA" *) 
  FDRE \oS_data4_reg[5] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data4[5]_i_1_n_0 ),
        .Q(oS_data4[5]),
        .R(\oS_data4[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT4 TDATA" *) 
  FDRE \oS_data4_reg[6] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data4[6]_i_1_n_0 ),
        .Q(oS_data4[6]),
        .R(\oS_data4[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT4 TDATA" *) 
  FDRE \oS_data4_reg[7] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data4[7]_i_1_n_0 ),
        .Q(oS_data4[7]),
        .R(\oS_data4[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT4 TDATA" *) 
  FDRE \oS_data4_reg[8] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data4[8]_i_1_n_0 ),
        .Q(oS_data4[8]),
        .R(\oS_data4[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT4 TDATA" *) 
  FDRE \oS_data4_reg[9] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data4[9]_i_1_n_0 ),
        .Q(oS_data4[9]),
        .R(\oS_data4[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \oS_data5[15]_i_1 
       (.I0(i_ctl[1]),
        .I1(i_ctl[2]),
        .O(\oS_data5[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT5 TDATA" *) 
  FDRE \oS_data5_reg[0] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data1[0]_i_1_n_0 ),
        .Q(oS_data5[0]),
        .R(\oS_data5[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT5 TDATA" *) 
  FDRE \oS_data5_reg[10] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data1[10]_i_1_n_0 ),
        .Q(oS_data5[10]),
        .R(\oS_data5[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT5 TDATA" *) 
  FDRE \oS_data5_reg[11] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data1[11]_i_1_n_0 ),
        .Q(oS_data5[11]),
        .R(\oS_data5[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT5 TDATA" *) 
  FDRE \oS_data5_reg[12] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data1[12]_i_1_n_0 ),
        .Q(oS_data5[12]),
        .R(\oS_data5[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT5 TDATA" *) 
  FDRE \oS_data5_reg[13] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data1[13]_i_1_n_0 ),
        .Q(oS_data5[13]),
        .R(\oS_data5[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT5 TDATA" *) 
  FDRE \oS_data5_reg[14] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data1[14]_i_1_n_0 ),
        .Q(oS_data5[14]),
        .R(\oS_data5[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT5 TDATA" *) 
  FDRE \oS_data5_reg[15] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data1[15]_i_1_n_0 ),
        .Q(oS_data5[15]),
        .R(\oS_data5[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT5 TDATA" *) 
  FDRE \oS_data5_reg[1] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data1[1]_i_1_n_0 ),
        .Q(oS_data5[1]),
        .R(\oS_data5[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT5 TDATA" *) 
  FDRE \oS_data5_reg[2] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data1[2]_i_1_n_0 ),
        .Q(oS_data5[2]),
        .R(\oS_data5[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT5 TDATA" *) 
  FDRE \oS_data5_reg[3] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data1[3]_i_1_n_0 ),
        .Q(oS_data5[3]),
        .R(\oS_data5[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT5 TDATA" *) 
  FDRE \oS_data5_reg[4] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data1[4]_i_1_n_0 ),
        .Q(oS_data5[4]),
        .R(\oS_data5[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT5 TDATA" *) 
  FDRE \oS_data5_reg[5] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data1[5]_i_1_n_0 ),
        .Q(oS_data5[5]),
        .R(\oS_data5[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT5 TDATA" *) 
  FDRE \oS_data5_reg[6] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data1[6]_i_1_n_0 ),
        .Q(oS_data5[6]),
        .R(\oS_data5[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT5 TDATA" *) 
  FDRE \oS_data5_reg[7] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data1[7]_i_1_n_0 ),
        .Q(oS_data5[7]),
        .R(\oS_data5[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT5 TDATA" *) 
  FDRE \oS_data5_reg[8] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data1[8]_i_1_n_0 ),
        .Q(oS_data5[8]),
        .R(\oS_data5[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT5 TDATA" *) 
  FDRE \oS_data5_reg[9] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data1[9]_i_1_n_0 ),
        .Q(oS_data5[9]),
        .R(\oS_data5[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \oS_data6[15]_i_1 
       (.I0(i_ctl[0]),
        .I1(i_ctl[2]),
        .O(\oS_data6[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT6 TDATA" *) 
  FDRE \oS_data6_reg[0] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data2[0]_i_1_n_0 ),
        .Q(oS_data6[0]),
        .R(\oS_data6[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT6 TDATA" *) 
  FDRE \oS_data6_reg[10] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data2[10]_i_1_n_0 ),
        .Q(oS_data6[10]),
        .R(\oS_data6[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT6 TDATA" *) 
  FDRE \oS_data6_reg[11] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data2[11]_i_1_n_0 ),
        .Q(oS_data6[11]),
        .R(\oS_data6[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT6 TDATA" *) 
  FDRE \oS_data6_reg[12] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data2[12]_i_1_n_0 ),
        .Q(oS_data6[12]),
        .R(\oS_data6[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT6 TDATA" *) 
  FDRE \oS_data6_reg[13] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data2[13]_i_1_n_0 ),
        .Q(oS_data6[13]),
        .R(\oS_data6[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT6 TDATA" *) 
  FDRE \oS_data6_reg[14] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data2[14]_i_1_n_0 ),
        .Q(oS_data6[14]),
        .R(\oS_data6[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT6 TDATA" *) 
  FDRE \oS_data6_reg[15] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data2[15]_i_2_n_0 ),
        .Q(oS_data6[15]),
        .R(\oS_data6[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT6 TDATA" *) 
  FDRE \oS_data6_reg[1] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data2[1]_i_1_n_0 ),
        .Q(oS_data6[1]),
        .R(\oS_data6[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT6 TDATA" *) 
  FDRE \oS_data6_reg[2] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data2[2]_i_1_n_0 ),
        .Q(oS_data6[2]),
        .R(\oS_data6[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT6 TDATA" *) 
  FDRE \oS_data6_reg[3] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data2[3]_i_1_n_0 ),
        .Q(oS_data6[3]),
        .R(\oS_data6[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT6 TDATA" *) 
  FDRE \oS_data6_reg[4] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data2[4]_i_1_n_0 ),
        .Q(oS_data6[4]),
        .R(\oS_data6[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT6 TDATA" *) 
  FDRE \oS_data6_reg[5] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data2[5]_i_1_n_0 ),
        .Q(oS_data6[5]),
        .R(\oS_data6[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT6 TDATA" *) 
  FDRE \oS_data6_reg[6] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data2[6]_i_1_n_0 ),
        .Q(oS_data6[6]),
        .R(\oS_data6[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT6 TDATA" *) 
  FDRE \oS_data6_reg[7] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data2[7]_i_1_n_0 ),
        .Q(oS_data6[7]),
        .R(\oS_data6[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT6 TDATA" *) 
  FDRE \oS_data6_reg[8] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data2[8]_i_1_n_0 ),
        .Q(oS_data6[8]),
        .R(\oS_data6[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT6 TDATA" *) 
  FDRE \oS_data6_reg[9] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data2[9]_i_1_n_0 ),
        .Q(oS_data6[9]),
        .R(\oS_data6[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT7 TDATA" *) 
  FDRE \oS_data7_reg[0] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data4[0]_i_1_n_0 ),
        .Q(oS_data7[0]),
        .R(\oS_data3[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT7 TDATA" *) 
  FDRE \oS_data7_reg[10] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data4[10]_i_1_n_0 ),
        .Q(oS_data7[10]),
        .R(\oS_data3[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT7 TDATA" *) 
  FDRE \oS_data7_reg[11] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data4[11]_i_1_n_0 ),
        .Q(oS_data7[11]),
        .R(\oS_data3[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT7 TDATA" *) 
  FDRE \oS_data7_reg[12] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data4[12]_i_1_n_0 ),
        .Q(oS_data7[12]),
        .R(\oS_data3[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT7 TDATA" *) 
  FDRE \oS_data7_reg[13] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data4[13]_i_1_n_0 ),
        .Q(oS_data7[13]),
        .R(\oS_data3[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT7 TDATA" *) 
  FDRE \oS_data7_reg[14] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data4[14]_i_1_n_0 ),
        .Q(oS_data7[14]),
        .R(\oS_data3[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT7 TDATA" *) 
  FDRE \oS_data7_reg[15] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data4[15]_i_2_n_0 ),
        .Q(oS_data7[15]),
        .R(\oS_data3[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT7 TDATA" *) 
  FDRE \oS_data7_reg[1] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data4[1]_i_1_n_0 ),
        .Q(oS_data7[1]),
        .R(\oS_data3[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT7 TDATA" *) 
  FDRE \oS_data7_reg[2] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data4[2]_i_1_n_0 ),
        .Q(oS_data7[2]),
        .R(\oS_data3[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT7 TDATA" *) 
  FDRE \oS_data7_reg[3] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data4[3]_i_1_n_0 ),
        .Q(oS_data7[3]),
        .R(\oS_data3[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT7 TDATA" *) 
  FDRE \oS_data7_reg[4] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data4[4]_i_1_n_0 ),
        .Q(oS_data7[4]),
        .R(\oS_data3[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT7 TDATA" *) 
  FDRE \oS_data7_reg[5] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data4[5]_i_1_n_0 ),
        .Q(oS_data7[5]),
        .R(\oS_data3[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT7 TDATA" *) 
  FDRE \oS_data7_reg[6] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data4[6]_i_1_n_0 ),
        .Q(oS_data7[6]),
        .R(\oS_data3[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT7 TDATA" *) 
  FDRE \oS_data7_reg[7] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data4[7]_i_1_n_0 ),
        .Q(oS_data7[7]),
        .R(\oS_data3[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT7 TDATA" *) 
  FDRE \oS_data7_reg[8] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data4[8]_i_1_n_0 ),
        .Q(oS_data7[8]),
        .R(\oS_data3[15]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT7 TDATA" *) 
  FDRE \oS_data7_reg[9] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_data4[9]_i_1_n_0 ),
        .Q(oS_data7[9]),
        .R(\oS_data3[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    o_valid0_i_1
       (.I0(i_ctl[0]),
        .I1(i_ctl[2]),
        .I2(i_valid),
        .I3(i_ctl[1]),
        .O(o_valid0_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT0 TVALID" *) 
  FDRE o_valid0_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(o_valid0_i_1_n_0),
        .Q(o_valid0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    o_valid1_i_1
       (.I0(i_ctl[1]),
        .I1(i_ctl[2]),
        .I2(i_ctl[0]),
        .I3(i_valid),
        .O(o_valid1_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT1 TVALID" *) 
  FDRE o_valid1_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(o_valid1_i_1_n_0),
        .Q(o_valid1),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    o_valid2__0
       (.I0(i_ctl[0]),
        .I1(i_ctl[2]),
        .I2(i_ctl[1]),
        .I3(i_valid),
        .O(o_valid2__0_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT2 TVALID" *) 
  FDRE o_valid2_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(o_valid2__0_n_0),
        .Q(o_valid2),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    o_valid3_i_1
       (.I0(i_valid),
        .I1(i_ctl[2]),
        .I2(i_ctl[0]),
        .I3(i_ctl[1]),
        .O(o_valid3_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT3 TVALID" *) 
  FDRE o_valid3_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(o_valid3_i_1_n_0),
        .Q(o_valid3),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    o_valid4_i_1
       (.I0(i_ctl[0]),
        .I1(i_ctl[1]),
        .I2(i_valid),
        .I3(i_ctl[2]),
        .O(o_valid4_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT4 TVALID" *) 
  FDRE o_valid4_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(o_valid4_i_1_n_0),
        .Q(o_valid4),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    o_valid5_i_1
       (.I0(i_ctl[2]),
        .I1(i_ctl[1]),
        .I2(i_ctl[0]),
        .I3(i_valid),
        .O(o_valid5_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT5 TVALID" *) 
  FDRE o_valid5_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(o_valid5_i_1_n_0),
        .Q(o_valid5),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    o_valid6__0
       (.I0(i_ctl[2]),
        .I1(i_ctl[0]),
        .I2(i_valid),
        .I3(i_ctl[1]),
        .O(o_valid6__0_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT6 TVALID" *) 
  FDRE o_valid6_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(o_valid6__0_n_0),
        .Q(o_valid6),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    o_valid7_i_1
       (.I0(i_valid),
        .I1(i_ctl[2]),
        .I2(i_ctl[0]),
        .I3(i_ctl[1]),
        .O(o_valid7_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT7 TVALID" *) 
  FDRE o_valid7_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(o_valid7_i_1_n_0),
        .Q(o_valid7),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
