// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Fri Apr 23 22:45:47 2021
// Host        : dan-Desktop running 64-bit Ubuntu 18.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/dan/Microwave-SDR/Vivado/SDR_Full/test_board/vivado/test_board.srcs/sources_1/bd/zsys/ip/zsys_axis_mux_0_0/zsys_axis_mux_0_0_sim_netlist.v
// Design      : zsys_axis_mux_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "zsys_axis_mux_0_0,axis_mux,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "axis_mux,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module zsys_axis_mux_0_0
   (oS_data,
    o_valid,
    i_ctl,
    i_en_n,
    o_enabled,
    iS_data0,
    i_valid0,
    iS_data1,
    i_valid1,
    iS_data2,
    i_valid2,
    iS_data3,
    i_valid3,
    iS_data4,
    i_valid4,
    iS_data5,
    i_valid5,
    iS_data6,
    i_valid6,
    iS_data7,
    i_valid7,
    i_clk,
    i_resetn);
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT TDATA" *) output [15:0]oS_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_OUTPUT, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 80000000, PHASE 0.000, CLK_DOMAIN zsys_adc_clk_n, LAYERED_METADATA undef, INSERT_VIP 0" *) output o_valid;
  input [2:0]i_ctl;
  input i_en_n;
  output o_enabled;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_INPUT0 TDATA" *) input [15:0]iS_data0;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_INPUT0 TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_INPUT0, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 80000000, PHASE 0.000, CLK_DOMAIN zsys_adc_clk_n, LAYERED_METADATA undef, INSERT_VIP 0" *) input i_valid0;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_INPUT1 TDATA" *) input [15:0]iS_data1;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_INPUT1 TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_INPUT1, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 80000000, PHASE 0.000, CLK_DOMAIN zsys_adc_clk_n, LAYERED_METADATA undef, INSERT_VIP 0" *) input i_valid1;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_INPUT2 TDATA" *) input [15:0]iS_data2;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_INPUT2 TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_INPUT2, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 80000000, PHASE 0.000, CLK_DOMAIN zsys_adc_clk_n, LAYERED_METADATA undef, INSERT_VIP 0" *) input i_valid2;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_INPUT3 TDATA" *) input [15:0]iS_data3;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_INPUT3 TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_INPUT3, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 80000000, PHASE 0.000, CLK_DOMAIN zsys_adc_clk_n, LAYERED_METADATA undef, INSERT_VIP 0" *) input i_valid3;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_INPUT4 TDATA" *) input [15:0]iS_data4;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_INPUT4 TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_INPUT4, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 80000000, PHASE 0.000, CLK_DOMAIN zsys_adc_clk_n, LAYERED_METADATA undef, INSERT_VIP 0" *) input i_valid4;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_INPUT5 TDATA" *) input [15:0]iS_data5;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_INPUT5 TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_INPUT5, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 80000000, PHASE 0.000, CLK_DOMAIN zsys_adc_clk_n, LAYERED_METADATA undef, INSERT_VIP 0" *) input i_valid5;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_INPUT6 TDATA" *) input [15:0]iS_data6;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_INPUT6 TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_INPUT6, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 80000000, PHASE 0.000, CLK_DOMAIN zsys_adc_clk_n, LAYERED_METADATA undef, INSERT_VIP 0" *) input i_valid6;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_INPUT7 TDATA" *) input [15:0]iS_data7;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_INPUT7 TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_INPUT7, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 80000000, PHASE 0.000, CLK_DOMAIN zsys_adc_clk_n, LAYERED_METADATA undef, INSERT_VIP 0" *) input i_valid7;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 i_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_clk, ASSOCIATED_RESET i_resetn, ASSOCIATED_BUSIF M_AXIS_OUTPUT:S_AXIS_INPUT0:S_AXIS_INPUT1:S_AXIS_INPUT2:S_AXIS_INPUT3:S_AXIS_INPUT4:S_AXIS_INPUT5:S_AXIS_INPUT6:S_AXIS_INPUT7, FREQ_HZ 80000000, PHASE 0.000, CLK_DOMAIN zsys_adc_clk_n, INSERT_VIP 0" *) input i_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 i_resetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input i_resetn;

  wire [15:0]iS_data0;
  wire [15:0]iS_data1;
  wire [15:0]iS_data2;
  wire [15:0]iS_data3;
  wire [15:0]iS_data4;
  wire [15:0]iS_data5;
  wire [15:0]iS_data6;
  wire [15:0]iS_data7;
  wire i_clk;
  wire [2:0]i_ctl;
  wire i_en_n;
  wire i_valid0;
  wire i_valid1;
  wire i_valid2;
  wire i_valid3;
  wire i_valid4;
  wire i_valid5;
  wire i_valid6;
  wire i_valid7;
  wire [15:0]oS_data;
  wire o_enabled;
  wire o_valid;

  zsys_axis_mux_0_0_axis_mux inst
       (.iS_data0(iS_data0),
        .iS_data1(iS_data1),
        .iS_data2(iS_data2),
        .iS_data3(iS_data3),
        .iS_data4(iS_data4),
        .iS_data5(iS_data5),
        .iS_data6(iS_data6),
        .iS_data7(iS_data7),
        .i_clk(i_clk),
        .i_ctl(i_ctl),
        .i_en_n(i_en_n),
        .i_valid0(i_valid0),
        .i_valid1(i_valid1),
        .i_valid2(i_valid2),
        .i_valid3(i_valid3),
        .i_valid4(i_valid4),
        .i_valid5(i_valid5),
        .i_valid6(i_valid6),
        .i_valid7(i_valid7),
        .oS_data(oS_data),
        .o_enabled(o_enabled),
        .o_valid(o_valid));
endmodule

(* ORIG_REF_NAME = "axis_mux" *) 
module zsys_axis_mux_0_0_axis_mux
   (oS_data,
    o_valid,
    o_enabled,
    i_en_n,
    i_clk,
    i_ctl,
    iS_data3,
    iS_data2,
    iS_data1,
    iS_data0,
    iS_data7,
    iS_data6,
    iS_data5,
    iS_data4,
    i_valid3,
    i_valid2,
    i_valid1,
    i_valid0,
    i_valid7,
    i_valid6,
    i_valid5,
    i_valid4);
  output [15:0]oS_data;
  output o_valid;
  output o_enabled;
  input i_en_n;
  input i_clk;
  input [2:0]i_ctl;
  input [15:0]iS_data3;
  input [15:0]iS_data2;
  input [15:0]iS_data1;
  input [15:0]iS_data0;
  input [15:0]iS_data7;
  input [15:0]iS_data6;
  input [15:0]iS_data5;
  input [15:0]iS_data4;
  input i_valid3;
  input i_valid2;
  input i_valid1;
  input i_valid0;
  input i_valid7;
  input i_valid6;
  input i_valid5;
  input i_valid4;

  wire [15:0]iS_data0;
  wire [15:0]iS_data1;
  wire [15:0]iS_data2;
  wire [15:0]iS_data3;
  wire [15:0]iS_data4;
  wire [15:0]iS_data5;
  wire [15:0]iS_data6;
  wire [15:0]iS_data7;
  wire i_clk;
  wire [2:0]i_ctl;
  wire i_en_n;
  wire i_valid0;
  wire i_valid1;
  wire i_valid2;
  wire i_valid3;
  wire i_valid4;
  wire i_valid5;
  wire i_valid6;
  wire i_valid7;
  wire [15:0]oS_data;
  wire \oS_data[0]_i_2_n_0 ;
  wire \oS_data[0]_i_3_n_0 ;
  wire \oS_data[10]_i_2_n_0 ;
  wire \oS_data[10]_i_3_n_0 ;
  wire \oS_data[11]_i_2_n_0 ;
  wire \oS_data[11]_i_3_n_0 ;
  wire \oS_data[12]_i_2_n_0 ;
  wire \oS_data[12]_i_3_n_0 ;
  wire \oS_data[13]_i_2_n_0 ;
  wire \oS_data[13]_i_3_n_0 ;
  wire \oS_data[14]_i_2_n_0 ;
  wire \oS_data[14]_i_3_n_0 ;
  wire \oS_data[15]_i_2_n_0 ;
  wire \oS_data[15]_i_3_n_0 ;
  wire \oS_data[1]_i_2_n_0 ;
  wire \oS_data[1]_i_3_n_0 ;
  wire \oS_data[2]_i_2_n_0 ;
  wire \oS_data[2]_i_3_n_0 ;
  wire \oS_data[3]_i_2_n_0 ;
  wire \oS_data[3]_i_3_n_0 ;
  wire \oS_data[4]_i_2_n_0 ;
  wire \oS_data[4]_i_3_n_0 ;
  wire \oS_data[5]_i_2_n_0 ;
  wire \oS_data[5]_i_3_n_0 ;
  wire \oS_data[6]_i_2_n_0 ;
  wire \oS_data[6]_i_3_n_0 ;
  wire \oS_data[7]_i_2_n_0 ;
  wire \oS_data[7]_i_3_n_0 ;
  wire \oS_data[8]_i_2_n_0 ;
  wire \oS_data[8]_i_3_n_0 ;
  wire \oS_data[9]_i_2_n_0 ;
  wire \oS_data[9]_i_3_n_0 ;
  wire [15:0]oS_data_0;
  wire o_enabled;
  wire o_valid;
  wire o_valid_1;
  wire o_valid_i_2_n_0;
  wire o_valid_i_3_n_0;

  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \oS_data[0]_i_2 
       (.I0(iS_data3[0]),
        .I1(iS_data2[0]),
        .I2(i_ctl[1]),
        .I3(iS_data1[0]),
        .I4(i_ctl[0]),
        .I5(iS_data0[0]),
        .O(\oS_data[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \oS_data[0]_i_3 
       (.I0(iS_data7[0]),
        .I1(iS_data6[0]),
        .I2(i_ctl[1]),
        .I3(iS_data5[0]),
        .I4(i_ctl[0]),
        .I5(iS_data4[0]),
        .O(\oS_data[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \oS_data[10]_i_2 
       (.I0(iS_data3[10]),
        .I1(iS_data2[10]),
        .I2(i_ctl[1]),
        .I3(iS_data1[10]),
        .I4(i_ctl[0]),
        .I5(iS_data0[10]),
        .O(\oS_data[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \oS_data[10]_i_3 
       (.I0(iS_data7[10]),
        .I1(iS_data6[10]),
        .I2(i_ctl[1]),
        .I3(iS_data5[10]),
        .I4(i_ctl[0]),
        .I5(iS_data4[10]),
        .O(\oS_data[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \oS_data[11]_i_2 
       (.I0(iS_data3[11]),
        .I1(iS_data2[11]),
        .I2(i_ctl[1]),
        .I3(iS_data1[11]),
        .I4(i_ctl[0]),
        .I5(iS_data0[11]),
        .O(\oS_data[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \oS_data[11]_i_3 
       (.I0(iS_data7[11]),
        .I1(iS_data6[11]),
        .I2(i_ctl[1]),
        .I3(iS_data5[11]),
        .I4(i_ctl[0]),
        .I5(iS_data4[11]),
        .O(\oS_data[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \oS_data[12]_i_2 
       (.I0(iS_data3[12]),
        .I1(iS_data2[12]),
        .I2(i_ctl[1]),
        .I3(iS_data1[12]),
        .I4(i_ctl[0]),
        .I5(iS_data0[12]),
        .O(\oS_data[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \oS_data[12]_i_3 
       (.I0(iS_data7[12]),
        .I1(iS_data6[12]),
        .I2(i_ctl[1]),
        .I3(iS_data5[12]),
        .I4(i_ctl[0]),
        .I5(iS_data4[12]),
        .O(\oS_data[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \oS_data[13]_i_2 
       (.I0(iS_data3[13]),
        .I1(iS_data2[13]),
        .I2(i_ctl[1]),
        .I3(iS_data1[13]),
        .I4(i_ctl[0]),
        .I5(iS_data0[13]),
        .O(\oS_data[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \oS_data[13]_i_3 
       (.I0(iS_data7[13]),
        .I1(iS_data6[13]),
        .I2(i_ctl[1]),
        .I3(iS_data5[13]),
        .I4(i_ctl[0]),
        .I5(iS_data4[13]),
        .O(\oS_data[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \oS_data[14]_i_2 
       (.I0(iS_data3[14]),
        .I1(iS_data2[14]),
        .I2(i_ctl[1]),
        .I3(iS_data1[14]),
        .I4(i_ctl[0]),
        .I5(iS_data0[14]),
        .O(\oS_data[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \oS_data[14]_i_3 
       (.I0(iS_data7[14]),
        .I1(iS_data6[14]),
        .I2(i_ctl[1]),
        .I3(iS_data5[14]),
        .I4(i_ctl[0]),
        .I5(iS_data4[14]),
        .O(\oS_data[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \oS_data[15]_i_2 
       (.I0(iS_data3[15]),
        .I1(iS_data2[15]),
        .I2(i_ctl[1]),
        .I3(iS_data1[15]),
        .I4(i_ctl[0]),
        .I5(iS_data0[15]),
        .O(\oS_data[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \oS_data[15]_i_3 
       (.I0(iS_data7[15]),
        .I1(iS_data6[15]),
        .I2(i_ctl[1]),
        .I3(iS_data5[15]),
        .I4(i_ctl[0]),
        .I5(iS_data4[15]),
        .O(\oS_data[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \oS_data[1]_i_2 
       (.I0(iS_data3[1]),
        .I1(iS_data2[1]),
        .I2(i_ctl[1]),
        .I3(iS_data1[1]),
        .I4(i_ctl[0]),
        .I5(iS_data0[1]),
        .O(\oS_data[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \oS_data[1]_i_3 
       (.I0(iS_data7[1]),
        .I1(iS_data6[1]),
        .I2(i_ctl[1]),
        .I3(iS_data5[1]),
        .I4(i_ctl[0]),
        .I5(iS_data4[1]),
        .O(\oS_data[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \oS_data[2]_i_2 
       (.I0(iS_data3[2]),
        .I1(iS_data2[2]),
        .I2(i_ctl[1]),
        .I3(iS_data1[2]),
        .I4(i_ctl[0]),
        .I5(iS_data0[2]),
        .O(\oS_data[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \oS_data[2]_i_3 
       (.I0(iS_data7[2]),
        .I1(iS_data6[2]),
        .I2(i_ctl[1]),
        .I3(iS_data5[2]),
        .I4(i_ctl[0]),
        .I5(iS_data4[2]),
        .O(\oS_data[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \oS_data[3]_i_2 
       (.I0(iS_data3[3]),
        .I1(iS_data2[3]),
        .I2(i_ctl[1]),
        .I3(iS_data1[3]),
        .I4(i_ctl[0]),
        .I5(iS_data0[3]),
        .O(\oS_data[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \oS_data[3]_i_3 
       (.I0(iS_data7[3]),
        .I1(iS_data6[3]),
        .I2(i_ctl[1]),
        .I3(iS_data5[3]),
        .I4(i_ctl[0]),
        .I5(iS_data4[3]),
        .O(\oS_data[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \oS_data[4]_i_2 
       (.I0(iS_data3[4]),
        .I1(iS_data2[4]),
        .I2(i_ctl[1]),
        .I3(iS_data1[4]),
        .I4(i_ctl[0]),
        .I5(iS_data0[4]),
        .O(\oS_data[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \oS_data[4]_i_3 
       (.I0(iS_data7[4]),
        .I1(iS_data6[4]),
        .I2(i_ctl[1]),
        .I3(iS_data5[4]),
        .I4(i_ctl[0]),
        .I5(iS_data4[4]),
        .O(\oS_data[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \oS_data[5]_i_2 
       (.I0(iS_data3[5]),
        .I1(iS_data2[5]),
        .I2(i_ctl[1]),
        .I3(iS_data1[5]),
        .I4(i_ctl[0]),
        .I5(iS_data0[5]),
        .O(\oS_data[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \oS_data[5]_i_3 
       (.I0(iS_data7[5]),
        .I1(iS_data6[5]),
        .I2(i_ctl[1]),
        .I3(iS_data5[5]),
        .I4(i_ctl[0]),
        .I5(iS_data4[5]),
        .O(\oS_data[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \oS_data[6]_i_2 
       (.I0(iS_data3[6]),
        .I1(iS_data2[6]),
        .I2(i_ctl[1]),
        .I3(iS_data1[6]),
        .I4(i_ctl[0]),
        .I5(iS_data0[6]),
        .O(\oS_data[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \oS_data[6]_i_3 
       (.I0(iS_data7[6]),
        .I1(iS_data6[6]),
        .I2(i_ctl[1]),
        .I3(iS_data5[6]),
        .I4(i_ctl[0]),
        .I5(iS_data4[6]),
        .O(\oS_data[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \oS_data[7]_i_2 
       (.I0(iS_data3[7]),
        .I1(iS_data2[7]),
        .I2(i_ctl[1]),
        .I3(iS_data1[7]),
        .I4(i_ctl[0]),
        .I5(iS_data0[7]),
        .O(\oS_data[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \oS_data[7]_i_3 
       (.I0(iS_data7[7]),
        .I1(iS_data6[7]),
        .I2(i_ctl[1]),
        .I3(iS_data5[7]),
        .I4(i_ctl[0]),
        .I5(iS_data4[7]),
        .O(\oS_data[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \oS_data[8]_i_2 
       (.I0(iS_data3[8]),
        .I1(iS_data2[8]),
        .I2(i_ctl[1]),
        .I3(iS_data1[8]),
        .I4(i_ctl[0]),
        .I5(iS_data0[8]),
        .O(\oS_data[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \oS_data[8]_i_3 
       (.I0(iS_data7[8]),
        .I1(iS_data6[8]),
        .I2(i_ctl[1]),
        .I3(iS_data5[8]),
        .I4(i_ctl[0]),
        .I5(iS_data4[8]),
        .O(\oS_data[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \oS_data[9]_i_2 
       (.I0(iS_data3[9]),
        .I1(iS_data2[9]),
        .I2(i_ctl[1]),
        .I3(iS_data1[9]),
        .I4(i_ctl[0]),
        .I5(iS_data0[9]),
        .O(\oS_data[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \oS_data[9]_i_3 
       (.I0(iS_data7[9]),
        .I1(iS_data6[9]),
        .I2(i_ctl[1]),
        .I3(iS_data5[9]),
        .I4(i_ctl[0]),
        .I5(iS_data4[9]),
        .O(\oS_data[9]_i_3_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT TDATA" *) 
  FDRE \oS_data_reg[0] 
       (.C(i_clk),
        .CE(1'b1),
        .D(oS_data_0[0]),
        .Q(oS_data[0]),
        .R(i_en_n));
  MUXF7 \oS_data_reg[0]_i_1 
       (.I0(\oS_data[0]_i_2_n_0 ),
        .I1(\oS_data[0]_i_3_n_0 ),
        .O(oS_data_0[0]),
        .S(i_ctl[2]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT TDATA" *) 
  FDRE \oS_data_reg[10] 
       (.C(i_clk),
        .CE(1'b1),
        .D(oS_data_0[10]),
        .Q(oS_data[10]),
        .R(i_en_n));
  MUXF7 \oS_data_reg[10]_i_1 
       (.I0(\oS_data[10]_i_2_n_0 ),
        .I1(\oS_data[10]_i_3_n_0 ),
        .O(oS_data_0[10]),
        .S(i_ctl[2]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT TDATA" *) 
  FDRE \oS_data_reg[11] 
       (.C(i_clk),
        .CE(1'b1),
        .D(oS_data_0[11]),
        .Q(oS_data[11]),
        .R(i_en_n));
  MUXF7 \oS_data_reg[11]_i_1 
       (.I0(\oS_data[11]_i_2_n_0 ),
        .I1(\oS_data[11]_i_3_n_0 ),
        .O(oS_data_0[11]),
        .S(i_ctl[2]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT TDATA" *) 
  FDRE \oS_data_reg[12] 
       (.C(i_clk),
        .CE(1'b1),
        .D(oS_data_0[12]),
        .Q(oS_data[12]),
        .R(i_en_n));
  MUXF7 \oS_data_reg[12]_i_1 
       (.I0(\oS_data[12]_i_2_n_0 ),
        .I1(\oS_data[12]_i_3_n_0 ),
        .O(oS_data_0[12]),
        .S(i_ctl[2]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT TDATA" *) 
  FDRE \oS_data_reg[13] 
       (.C(i_clk),
        .CE(1'b1),
        .D(oS_data_0[13]),
        .Q(oS_data[13]),
        .R(i_en_n));
  MUXF7 \oS_data_reg[13]_i_1 
       (.I0(\oS_data[13]_i_2_n_0 ),
        .I1(\oS_data[13]_i_3_n_0 ),
        .O(oS_data_0[13]),
        .S(i_ctl[2]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT TDATA" *) 
  FDRE \oS_data_reg[14] 
       (.C(i_clk),
        .CE(1'b1),
        .D(oS_data_0[14]),
        .Q(oS_data[14]),
        .R(i_en_n));
  MUXF7 \oS_data_reg[14]_i_1 
       (.I0(\oS_data[14]_i_2_n_0 ),
        .I1(\oS_data[14]_i_3_n_0 ),
        .O(oS_data_0[14]),
        .S(i_ctl[2]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT TDATA" *) 
  FDRE \oS_data_reg[15] 
       (.C(i_clk),
        .CE(1'b1),
        .D(oS_data_0[15]),
        .Q(oS_data[15]),
        .R(i_en_n));
  MUXF7 \oS_data_reg[15]_i_1 
       (.I0(\oS_data[15]_i_2_n_0 ),
        .I1(\oS_data[15]_i_3_n_0 ),
        .O(oS_data_0[15]),
        .S(i_ctl[2]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT TDATA" *) 
  FDRE \oS_data_reg[1] 
       (.C(i_clk),
        .CE(1'b1),
        .D(oS_data_0[1]),
        .Q(oS_data[1]),
        .R(i_en_n));
  MUXF7 \oS_data_reg[1]_i_1 
       (.I0(\oS_data[1]_i_2_n_0 ),
        .I1(\oS_data[1]_i_3_n_0 ),
        .O(oS_data_0[1]),
        .S(i_ctl[2]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT TDATA" *) 
  FDRE \oS_data_reg[2] 
       (.C(i_clk),
        .CE(1'b1),
        .D(oS_data_0[2]),
        .Q(oS_data[2]),
        .R(i_en_n));
  MUXF7 \oS_data_reg[2]_i_1 
       (.I0(\oS_data[2]_i_2_n_0 ),
        .I1(\oS_data[2]_i_3_n_0 ),
        .O(oS_data_0[2]),
        .S(i_ctl[2]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT TDATA" *) 
  FDRE \oS_data_reg[3] 
       (.C(i_clk),
        .CE(1'b1),
        .D(oS_data_0[3]),
        .Q(oS_data[3]),
        .R(i_en_n));
  MUXF7 \oS_data_reg[3]_i_1 
       (.I0(\oS_data[3]_i_2_n_0 ),
        .I1(\oS_data[3]_i_3_n_0 ),
        .O(oS_data_0[3]),
        .S(i_ctl[2]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT TDATA" *) 
  FDRE \oS_data_reg[4] 
       (.C(i_clk),
        .CE(1'b1),
        .D(oS_data_0[4]),
        .Q(oS_data[4]),
        .R(i_en_n));
  MUXF7 \oS_data_reg[4]_i_1 
       (.I0(\oS_data[4]_i_2_n_0 ),
        .I1(\oS_data[4]_i_3_n_0 ),
        .O(oS_data_0[4]),
        .S(i_ctl[2]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT TDATA" *) 
  FDRE \oS_data_reg[5] 
       (.C(i_clk),
        .CE(1'b1),
        .D(oS_data_0[5]),
        .Q(oS_data[5]),
        .R(i_en_n));
  MUXF7 \oS_data_reg[5]_i_1 
       (.I0(\oS_data[5]_i_2_n_0 ),
        .I1(\oS_data[5]_i_3_n_0 ),
        .O(oS_data_0[5]),
        .S(i_ctl[2]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT TDATA" *) 
  FDRE \oS_data_reg[6] 
       (.C(i_clk),
        .CE(1'b1),
        .D(oS_data_0[6]),
        .Q(oS_data[6]),
        .R(i_en_n));
  MUXF7 \oS_data_reg[6]_i_1 
       (.I0(\oS_data[6]_i_2_n_0 ),
        .I1(\oS_data[6]_i_3_n_0 ),
        .O(oS_data_0[6]),
        .S(i_ctl[2]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT TDATA" *) 
  FDRE \oS_data_reg[7] 
       (.C(i_clk),
        .CE(1'b1),
        .D(oS_data_0[7]),
        .Q(oS_data[7]),
        .R(i_en_n));
  MUXF7 \oS_data_reg[7]_i_1 
       (.I0(\oS_data[7]_i_2_n_0 ),
        .I1(\oS_data[7]_i_3_n_0 ),
        .O(oS_data_0[7]),
        .S(i_ctl[2]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT TDATA" *) 
  FDRE \oS_data_reg[8] 
       (.C(i_clk),
        .CE(1'b1),
        .D(oS_data_0[8]),
        .Q(oS_data[8]),
        .R(i_en_n));
  MUXF7 \oS_data_reg[8]_i_1 
       (.I0(\oS_data[8]_i_2_n_0 ),
        .I1(\oS_data[8]_i_3_n_0 ),
        .O(oS_data_0[8]),
        .S(i_ctl[2]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT TDATA" *) 
  FDRE \oS_data_reg[9] 
       (.C(i_clk),
        .CE(1'b1),
        .D(oS_data_0[9]),
        .Q(oS_data[9]),
        .R(i_en_n));
  MUXF7 \oS_data_reg[9]_i_1 
       (.I0(\oS_data[9]_i_2_n_0 ),
        .I1(\oS_data[9]_i_3_n_0 ),
        .O(oS_data_0[9]),
        .S(i_ctl[2]));
  FDRE o_enabled_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(1'b1),
        .Q(o_enabled),
        .R(i_en_n));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_valid_i_2
       (.I0(i_valid3),
        .I1(i_valid2),
        .I2(i_ctl[1]),
        .I3(i_valid1),
        .I4(i_ctl[0]),
        .I5(i_valid0),
        .O(o_valid_i_2_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_valid_i_3
       (.I0(i_valid7),
        .I1(i_valid6),
        .I2(i_ctl[1]),
        .I3(i_valid5),
        .I4(i_ctl[0]),
        .I5(i_valid4),
        .O(o_valid_i_3_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT TVALID" *) 
  FDRE o_valid_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(o_valid_1),
        .Q(o_valid),
        .R(i_en_n));
  MUXF7 o_valid_reg_i_1
       (.I0(o_valid_i_2_n_0),
        .I1(o_valid_i_3_n_0),
        .O(o_valid_1),
        .S(i_ctl[2]));
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
