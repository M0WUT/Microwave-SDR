// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Wed Apr 21 23:25:03 2021
// Host        : dan-Desktop running 64-bit Ubuntu 18.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/dan/Microwave-SDR/Vivado/SDR_Full/test_board/vivado/test_board.srcs/sources_1/bd/zsys/ip/zsys_Segment_Driver_0_0/zsys_Segment_Driver_0_0_sim_netlist.v
// Design      : zsys_Segment_Driver_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "zsys_Segment_Driver_0_0,Segment_Driver,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "Segment_Driver,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module zsys_Segment_Driver_0_0
   (i_clk,
    i_blank,
    i_bcdData,
    i_mode,
    i_resetn,
    o_ledClk,
    o_data,
    o_lat,
    o_blank);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 i_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_clk, ASSOCIATED_RESET i_resetn, FREQ_HZ 80000000, PHASE 0.000, CLK_DOMAIN zsys_adc_clk_n, INSERT_VIP 0" *) input i_clk;
  input i_blank;
  input [39:0]i_bcdData;
  input i_mode;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 i_resetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input i_resetn;
  output o_ledClk;
  output o_data;
  output o_lat;
  output o_blank;

  wire [39:0]i_bcdData;
  wire i_blank;
  wire i_clk;
  wire i_mode;
  wire i_resetn;
  wire o_data;
  wire o_lat;
  wire o_ledClk;

  assign o_blank = i_blank;
  zsys_Segment_Driver_0_0_Segment_Driver inst
       (.i_bcdData(i_bcdData),
        .i_clk(i_clk),
        .i_mode(i_mode),
        .i_resetn(i_resetn),
        .o_data(o_data),
        .o_lat(o_lat),
        .o_ledClk(o_ledClk));
endmodule

(* ORIG_REF_NAME = "Segment_Driver" *) 
module zsys_Segment_Driver_0_0_Segment_Driver
   (o_lat,
    o_data,
    o_ledClk,
    i_bcdData,
    i_mode,
    i_clk,
    i_resetn);
  output o_lat;
  output o_data;
  output o_ledClk;
  input [39:0]i_bcdData;
  input i_mode;
  input i_clk;
  input i_resetn;

  wire \FSM_sequential_r_state[0]_i_1_n_0 ;
  wire \FSM_sequential_r_state[1]_i_1_n_0 ;
  wire \FSM_sequential_r_state[1]_i_2_n_0 ;
  wire \FSM_sequential_r_state[1]_i_4_n_0 ;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry__1_i_4_n_0;
  wire i__carry__2_i_1_n_0;
  wire i__carry__2_i_2_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire [39:0]i_bcdData;
  wire i_clk;
  wire i_mode;
  wire i_resetn;
  wire o_data;
  wire o_data_INST_0_i_10_n_0;
  wire o_data_INST_0_i_11_n_0;
  wire o_data_INST_0_i_12_n_0;
  wire o_data_INST_0_i_13_n_0;
  wire o_data_INST_0_i_14_n_0;
  wire o_data_INST_0_i_15_n_0;
  wire o_data_INST_0_i_16_n_0;
  wire o_data_INST_0_i_17_n_0;
  wire o_data_INST_0_i_18_n_0;
  wire o_data_INST_0_i_19_n_0;
  wire o_data_INST_0_i_1_n_0;
  wire o_data_INST_0_i_20_n_0;
  wire o_data_INST_0_i_21_n_0;
  wire o_data_INST_0_i_22_n_0;
  wire o_data_INST_0_i_23_n_0;
  wire o_data_INST_0_i_24_n_0;
  wire o_data_INST_0_i_25_n_0;
  wire o_data_INST_0_i_26_n_0;
  wire o_data_INST_0_i_27_n_0;
  wire o_data_INST_0_i_28_n_0;
  wire o_data_INST_0_i_29_n_0;
  wire o_data_INST_0_i_2_n_0;
  wire o_data_INST_0_i_30_n_0;
  wire o_data_INST_0_i_31_n_0;
  wire o_data_INST_0_i_32_n_0;
  wire o_data_INST_0_i_33_n_0;
  wire o_data_INST_0_i_34_n_0;
  wire o_data_INST_0_i_35_n_0;
  wire o_data_INST_0_i_36_n_0;
  wire o_data_INST_0_i_3_n_0;
  wire o_data_INST_0_i_4_n_0;
  wire o_data_INST_0_i_5_n_0;
  wire o_data_INST_0_i_6_n_0;
  wire o_data_INST_0_i_7_n_0;
  wire o_data_INST_0_i_8_n_0;
  wire o_data_INST_0_i_9_n_0;
  wire o_lat;
  wire o_ledClk;
  wire [7:0]p_0_in;
  wire [79:0]p_0_in_0;
  wire [7:0]r_bitCounter;
  wire \r_bitCounter[2]_i_2_n_0 ;
  wire \r_bitCounter[3]_i_2_n_0 ;
  wire \r_bitCounter[5]_i_2_n_0 ;
  wire \r_bitCounter[7]_i_1_n_0 ;
  wire \r_bitCounter[7]_i_3_n_0 ;
  wire \r_bitCounter_reg_n_0_[0] ;
  wire \r_bitCounter_reg_n_0_[1] ;
  wire \r_bitCounter_reg_n_0_[2] ;
  wire \r_bitCounter_reg_n_0_[3] ;
  wire \r_bitCounter_reg_n_0_[4] ;
  wire \r_bitCounter_reg_n_0_[5] ;
  wire \r_bitCounter_reg_n_0_[6] ;
  wire \r_bitCounter_reg_n_0_[7] ;
  wire \r_clockCounter[7]_i_2_n_0 ;
  wire \r_clockCounter_reg_n_0_[0] ;
  wire \r_clockCounter_reg_n_0_[1] ;
  wire \r_clockCounter_reg_n_0_[2] ;
  wire \r_clockCounter_reg_n_0_[3] ;
  wire \r_clockCounter_reg_n_0_[4] ;
  wire \r_clockCounter_reg_n_0_[5] ;
  wire \r_clockCounter_reg_n_0_[6] ;
  wire [79:0]r_dataToSend;
  wire \r_dataToSend[6]_i_1_n_0 ;
  wire [39:0]r_oldBcdData;
  wire r_oldMode;
  wire r_oldMode_i_1_n_0;
  wire \r_state1_inferred__0/i__carry__0_n_0 ;
  wire \r_state1_inferred__0/i__carry__0_n_1 ;
  wire \r_state1_inferred__0/i__carry__0_n_2 ;
  wire \r_state1_inferred__0/i__carry__0_n_3 ;
  wire \r_state1_inferred__0/i__carry__1_n_0 ;
  wire \r_state1_inferred__0/i__carry__1_n_1 ;
  wire \r_state1_inferred__0/i__carry__1_n_2 ;
  wire \r_state1_inferred__0/i__carry__1_n_3 ;
  wire \r_state1_inferred__0/i__carry__2_n_2 ;
  wire \r_state1_inferred__0/i__carry__2_n_3 ;
  wire \r_state1_inferred__0/i__carry_n_0 ;
  wire \r_state1_inferred__0/i__carry_n_1 ;
  wire \r_state1_inferred__0/i__carry_n_2 ;
  wire \r_state1_inferred__0/i__carry_n_3 ;
  wire [1:0]r_state__0;
  wire [0:0]r_state__1;
  wire r_state__6;
  wire w_slowClock;
  wire [3:0]\NLW_r_state1_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_r_state1_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_r_state1_inferred__0/i__carry__1_O_UNCONNECTED ;
  wire [3:2]\NLW_r_state1_inferred__0/i__carry__2_CO_UNCONNECTED ;
  wire [3:0]\NLW_r_state1_inferred__0/i__carry__2_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hFF00FF0000F6FFF6)) 
    \FSM_sequential_r_state[0]_i_1 
       (.I0(r_oldMode),
        .I1(i_mode),
        .I2(\r_state1_inferred__0/i__carry__2_n_2 ),
        .I3(r_state__0[0]),
        .I4(r_state__6),
        .I5(r_state__0[1]),
        .O(\FSM_sequential_r_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \FSM_sequential_r_state[1]_i_1 
       (.I0(r_state__0[0]),
        .I1(r_state__6),
        .I2(r_state__0[1]),
        .O(\FSM_sequential_r_state[1]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_r_state[1]_i_2 
       (.I0(i_resetn),
        .O(\FSM_sequential_r_state[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \FSM_sequential_r_state[1]_i_3 
       (.I0(\r_bitCounter_reg_n_0_[5] ),
        .I1(\r_bitCounter_reg_n_0_[4] ),
        .I2(\r_bitCounter_reg_n_0_[6] ),
        .I3(\r_bitCounter_reg_n_0_[7] ),
        .I4(\FSM_sequential_r_state[1]_i_4_n_0 ),
        .O(r_state__6));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_r_state[1]_i_4 
       (.I0(\r_bitCounter_reg_n_0_[2] ),
        .I1(\r_bitCounter_reg_n_0_[3] ),
        .I2(\r_bitCounter_reg_n_0_[0] ),
        .I3(\r_bitCounter_reg_n_0_[1] ),
        .O(\FSM_sequential_r_state[1]_i_4_n_0 ));
  (* FSM_ENCODED_STATES = "s_LATCH:10,s_IDLE:00,s_SENDING:01" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_sequential_r_state_reg[0] 
       (.C(w_slowClock),
        .CE(1'b1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(\FSM_sequential_r_state[0]_i_1_n_0 ),
        .Q(r_state__0[0]));
  (* FSM_ENCODED_STATES = "s_LATCH:10,s_IDLE:00,s_SENDING:01" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_sequential_r_state_reg[1] 
       (.C(w_slowClock),
        .CE(1'b1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(\FSM_sequential_r_state[1]_i_1_n_0 ),
        .Q(r_state__0[1]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__0_i_1
       (.I0(i_bcdData[21]),
        .I1(r_oldBcdData[21]),
        .I2(r_oldBcdData[23]),
        .I3(i_bcdData[23]),
        .I4(r_oldBcdData[22]),
        .I5(i_bcdData[22]),
        .O(i__carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__0_i_2
       (.I0(i_bcdData[18]),
        .I1(r_oldBcdData[18]),
        .I2(r_oldBcdData[20]),
        .I3(i_bcdData[20]),
        .I4(r_oldBcdData[19]),
        .I5(i_bcdData[19]),
        .O(i__carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__0_i_3
       (.I0(i_bcdData[15]),
        .I1(r_oldBcdData[15]),
        .I2(r_oldBcdData[17]),
        .I3(i_bcdData[17]),
        .I4(r_oldBcdData[16]),
        .I5(i_bcdData[16]),
        .O(i__carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__0_i_4
       (.I0(i_bcdData[12]),
        .I1(r_oldBcdData[12]),
        .I2(r_oldBcdData[14]),
        .I3(i_bcdData[14]),
        .I4(r_oldBcdData[13]),
        .I5(i_bcdData[13]),
        .O(i__carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__1_i_1
       (.I0(i_bcdData[33]),
        .I1(r_oldBcdData[33]),
        .I2(r_oldBcdData[35]),
        .I3(i_bcdData[35]),
        .I4(r_oldBcdData[34]),
        .I5(i_bcdData[34]),
        .O(i__carry__1_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__1_i_2
       (.I0(i_bcdData[30]),
        .I1(r_oldBcdData[30]),
        .I2(r_oldBcdData[32]),
        .I3(i_bcdData[32]),
        .I4(r_oldBcdData[31]),
        .I5(i_bcdData[31]),
        .O(i__carry__1_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__1_i_3
       (.I0(i_bcdData[27]),
        .I1(r_oldBcdData[27]),
        .I2(r_oldBcdData[29]),
        .I3(i_bcdData[29]),
        .I4(r_oldBcdData[28]),
        .I5(i_bcdData[28]),
        .O(i__carry__1_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__1_i_4
       (.I0(i_bcdData[24]),
        .I1(r_oldBcdData[24]),
        .I2(r_oldBcdData[26]),
        .I3(i_bcdData[26]),
        .I4(r_oldBcdData[25]),
        .I5(i_bcdData[25]),
        .O(i__carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_1
       (.I0(r_oldBcdData[39]),
        .I1(i_bcdData[39]),
        .O(i__carry__2_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__2_i_2
       (.I0(i_bcdData[36]),
        .I1(r_oldBcdData[36]),
        .I2(r_oldBcdData[38]),
        .I3(i_bcdData[38]),
        .I4(r_oldBcdData[37]),
        .I5(i_bcdData[37]),
        .O(i__carry__2_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_1
       (.I0(i_bcdData[9]),
        .I1(r_oldBcdData[9]),
        .I2(r_oldBcdData[11]),
        .I3(i_bcdData[11]),
        .I4(r_oldBcdData[10]),
        .I5(i_bcdData[10]),
        .O(i__carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_2
       (.I0(i_bcdData[6]),
        .I1(r_oldBcdData[6]),
        .I2(r_oldBcdData[8]),
        .I3(i_bcdData[8]),
        .I4(r_oldBcdData[7]),
        .I5(i_bcdData[7]),
        .O(i__carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_3
       (.I0(i_bcdData[3]),
        .I1(r_oldBcdData[3]),
        .I2(r_oldBcdData[5]),
        .I3(i_bcdData[5]),
        .I4(r_oldBcdData[4]),
        .I5(i_bcdData[4]),
        .O(i__carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_4
       (.I0(i_bcdData[0]),
        .I1(r_oldBcdData[0]),
        .I2(r_oldBcdData[2]),
        .I3(i_bcdData[2]),
        .I4(r_oldBcdData[1]),
        .I5(i_bcdData[1]),
        .O(i__carry_i_4_n_0));
  LUT5 #(
    .INIT(32'h40444000)) 
    o_data_INST_0
       (.I0(r_state__0[1]),
        .I1(r_state__0[0]),
        .I2(o_data_INST_0_i_1_n_0),
        .I3(\r_bitCounter_reg_n_0_[6] ),
        .I4(o_data_INST_0_i_2_n_0),
        .O(o_data));
  MUXF8 o_data_INST_0_i_1
       (.I0(o_data_INST_0_i_3_n_0),
        .I1(o_data_INST_0_i_4_n_0),
        .O(o_data_INST_0_i_1_n_0),
        .S(\r_bitCounter_reg_n_0_[3] ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    o_data_INST_0_i_10
       (.I0(r_dataToSend[71]),
        .I1(\r_bitCounter_reg_n_0_[1] ),
        .I2(r_dataToSend[69]),
        .I3(\r_bitCounter_reg_n_0_[0] ),
        .I4(r_dataToSend[68]),
        .O(o_data_INST_0_i_10_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_data_INST_0_i_11
       (.I0(r_dataToSend[75]),
        .I1(r_dataToSend[74]),
        .I2(\r_bitCounter_reg_n_0_[1] ),
        .I3(r_dataToSend[73]),
        .I4(\r_bitCounter_reg_n_0_[0] ),
        .I5(r_dataToSend[72]),
        .O(o_data_INST_0_i_11_n_0));
  LUT5 #(
    .INIT(32'hB833B800)) 
    o_data_INST_0_i_12
       (.I0(r_dataToSend[79]),
        .I1(\r_bitCounter_reg_n_0_[1] ),
        .I2(r_dataToSend[77]),
        .I3(\r_bitCounter_reg_n_0_[0] ),
        .I4(r_dataToSend[76]),
        .O(o_data_INST_0_i_12_n_0));
  MUXF7 o_data_INST_0_i_13
       (.I0(o_data_INST_0_i_21_n_0),
        .I1(o_data_INST_0_i_22_n_0),
        .O(o_data_INST_0_i_13_n_0),
        .S(\r_bitCounter_reg_n_0_[2] ));
  MUXF7 o_data_INST_0_i_14
       (.I0(o_data_INST_0_i_23_n_0),
        .I1(o_data_INST_0_i_24_n_0),
        .O(o_data_INST_0_i_14_n_0),
        .S(\r_bitCounter_reg_n_0_[2] ));
  MUXF7 o_data_INST_0_i_15
       (.I0(o_data_INST_0_i_25_n_0),
        .I1(o_data_INST_0_i_26_n_0),
        .O(o_data_INST_0_i_15_n_0),
        .S(\r_bitCounter_reg_n_0_[2] ));
  MUXF7 o_data_INST_0_i_16
       (.I0(o_data_INST_0_i_27_n_0),
        .I1(o_data_INST_0_i_28_n_0),
        .O(o_data_INST_0_i_16_n_0),
        .S(\r_bitCounter_reg_n_0_[2] ));
  MUXF7 o_data_INST_0_i_17
       (.I0(o_data_INST_0_i_29_n_0),
        .I1(o_data_INST_0_i_30_n_0),
        .O(o_data_INST_0_i_17_n_0),
        .S(\r_bitCounter_reg_n_0_[2] ));
  MUXF7 o_data_INST_0_i_18
       (.I0(o_data_INST_0_i_31_n_0),
        .I1(o_data_INST_0_i_32_n_0),
        .O(o_data_INST_0_i_18_n_0),
        .S(\r_bitCounter_reg_n_0_[2] ));
  MUXF7 o_data_INST_0_i_19
       (.I0(o_data_INST_0_i_33_n_0),
        .I1(o_data_INST_0_i_34_n_0),
        .O(o_data_INST_0_i_19_n_0),
        .S(\r_bitCounter_reg_n_0_[2] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_data_INST_0_i_2
       (.I0(o_data_INST_0_i_5_n_0),
        .I1(o_data_INST_0_i_6_n_0),
        .I2(\r_bitCounter_reg_n_0_[5] ),
        .I3(o_data_INST_0_i_7_n_0),
        .I4(\r_bitCounter_reg_n_0_[4] ),
        .I5(o_data_INST_0_i_8_n_0),
        .O(o_data_INST_0_i_2_n_0));
  MUXF7 o_data_INST_0_i_20
       (.I0(o_data_INST_0_i_35_n_0),
        .I1(o_data_INST_0_i_36_n_0),
        .O(o_data_INST_0_i_20_n_0),
        .S(\r_bitCounter_reg_n_0_[2] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_data_INST_0_i_21
       (.I0(r_dataToSend[51]),
        .I1(r_dataToSend[50]),
        .I2(\r_bitCounter_reg_n_0_[1] ),
        .I3(r_dataToSend[49]),
        .I4(\r_bitCounter_reg_n_0_[0] ),
        .I5(r_dataToSend[48]),
        .O(o_data_INST_0_i_21_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_data_INST_0_i_22
       (.I0(r_dataToSend[55]),
        .I1(r_dataToSend[6]),
        .I2(\r_bitCounter_reg_n_0_[1] ),
        .I3(r_dataToSend[53]),
        .I4(\r_bitCounter_reg_n_0_[0] ),
        .I5(r_dataToSend[52]),
        .O(o_data_INST_0_i_22_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_data_INST_0_i_23
       (.I0(r_dataToSend[59]),
        .I1(r_dataToSend[58]),
        .I2(\r_bitCounter_reg_n_0_[1] ),
        .I3(r_dataToSend[57]),
        .I4(\r_bitCounter_reg_n_0_[0] ),
        .I5(r_dataToSend[56]),
        .O(o_data_INST_0_i_23_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_data_INST_0_i_24
       (.I0(r_dataToSend[63]),
        .I1(r_dataToSend[14]),
        .I2(\r_bitCounter_reg_n_0_[1] ),
        .I3(r_dataToSend[61]),
        .I4(\r_bitCounter_reg_n_0_[0] ),
        .I5(r_dataToSend[60]),
        .O(o_data_INST_0_i_24_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_data_INST_0_i_25
       (.I0(r_dataToSend[35]),
        .I1(r_dataToSend[34]),
        .I2(\r_bitCounter_reg_n_0_[1] ),
        .I3(r_dataToSend[33]),
        .I4(\r_bitCounter_reg_n_0_[0] ),
        .I5(r_dataToSend[32]),
        .O(o_data_INST_0_i_25_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_data_INST_0_i_26
       (.I0(r_dataToSend[39]),
        .I1(r_dataToSend[14]),
        .I2(\r_bitCounter_reg_n_0_[1] ),
        .I3(r_dataToSend[37]),
        .I4(\r_bitCounter_reg_n_0_[0] ),
        .I5(r_dataToSend[36]),
        .O(o_data_INST_0_i_26_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_data_INST_0_i_27
       (.I0(r_dataToSend[43]),
        .I1(r_dataToSend[42]),
        .I2(\r_bitCounter_reg_n_0_[1] ),
        .I3(r_dataToSend[41]),
        .I4(\r_bitCounter_reg_n_0_[0] ),
        .I5(r_dataToSend[40]),
        .O(o_data_INST_0_i_27_n_0));
  LUT5 #(
    .INIT(32'hB833B800)) 
    o_data_INST_0_i_28
       (.I0(r_dataToSend[47]),
        .I1(\r_bitCounter_reg_n_0_[1] ),
        .I2(r_dataToSend[45]),
        .I3(\r_bitCounter_reg_n_0_[0] ),
        .I4(r_dataToSend[44]),
        .O(o_data_INST_0_i_28_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_data_INST_0_i_29
       (.I0(r_dataToSend[19]),
        .I1(r_dataToSend[18]),
        .I2(\r_bitCounter_reg_n_0_[1] ),
        .I3(r_dataToSend[17]),
        .I4(\r_bitCounter_reg_n_0_[0] ),
        .I5(r_dataToSend[16]),
        .O(o_data_INST_0_i_29_n_0));
  MUXF7 o_data_INST_0_i_3
       (.I0(o_data_INST_0_i_9_n_0),
        .I1(o_data_INST_0_i_10_n_0),
        .O(o_data_INST_0_i_3_n_0),
        .S(\r_bitCounter_reg_n_0_[2] ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    o_data_INST_0_i_30
       (.I0(r_dataToSend[23]),
        .I1(\r_bitCounter_reg_n_0_[1] ),
        .I2(r_dataToSend[21]),
        .I3(\r_bitCounter_reg_n_0_[0] ),
        .I4(r_dataToSend[20]),
        .O(o_data_INST_0_i_30_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_data_INST_0_i_31
       (.I0(r_dataToSend[27]),
        .I1(r_dataToSend[26]),
        .I2(\r_bitCounter_reg_n_0_[1] ),
        .I3(r_dataToSend[25]),
        .I4(\r_bitCounter_reg_n_0_[0] ),
        .I5(r_dataToSend[24]),
        .O(o_data_INST_0_i_31_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_data_INST_0_i_32
       (.I0(r_dataToSend[31]),
        .I1(r_dataToSend[6]),
        .I2(\r_bitCounter_reg_n_0_[1] ),
        .I3(r_dataToSend[29]),
        .I4(\r_bitCounter_reg_n_0_[0] ),
        .I5(r_dataToSend[28]),
        .O(o_data_INST_0_i_32_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_data_INST_0_i_33
       (.I0(r_dataToSend[3]),
        .I1(r_dataToSend[2]),
        .I2(\r_bitCounter_reg_n_0_[1] ),
        .I3(r_dataToSend[1]),
        .I4(\r_bitCounter_reg_n_0_[0] ),
        .I5(r_dataToSend[0]),
        .O(o_data_INST_0_i_33_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_data_INST_0_i_34
       (.I0(r_dataToSend[7]),
        .I1(r_dataToSend[6]),
        .I2(\r_bitCounter_reg_n_0_[1] ),
        .I3(r_dataToSend[5]),
        .I4(\r_bitCounter_reg_n_0_[0] ),
        .I5(r_dataToSend[4]),
        .O(o_data_INST_0_i_34_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_data_INST_0_i_35
       (.I0(r_dataToSend[11]),
        .I1(r_dataToSend[10]),
        .I2(\r_bitCounter_reg_n_0_[1] ),
        .I3(r_dataToSend[9]),
        .I4(\r_bitCounter_reg_n_0_[0] ),
        .I5(r_dataToSend[8]),
        .O(o_data_INST_0_i_35_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_data_INST_0_i_36
       (.I0(r_dataToSend[15]),
        .I1(r_dataToSend[14]),
        .I2(\r_bitCounter_reg_n_0_[1] ),
        .I3(r_dataToSend[13]),
        .I4(\r_bitCounter_reg_n_0_[0] ),
        .I5(r_dataToSend[12]),
        .O(o_data_INST_0_i_36_n_0));
  MUXF7 o_data_INST_0_i_4
       (.I0(o_data_INST_0_i_11_n_0),
        .I1(o_data_INST_0_i_12_n_0),
        .O(o_data_INST_0_i_4_n_0),
        .S(\r_bitCounter_reg_n_0_[2] ));
  MUXF8 o_data_INST_0_i_5
       (.I0(o_data_INST_0_i_13_n_0),
        .I1(o_data_INST_0_i_14_n_0),
        .O(o_data_INST_0_i_5_n_0),
        .S(\r_bitCounter_reg_n_0_[3] ));
  MUXF8 o_data_INST_0_i_6
       (.I0(o_data_INST_0_i_15_n_0),
        .I1(o_data_INST_0_i_16_n_0),
        .O(o_data_INST_0_i_6_n_0),
        .S(\r_bitCounter_reg_n_0_[3] ));
  MUXF8 o_data_INST_0_i_7
       (.I0(o_data_INST_0_i_17_n_0),
        .I1(o_data_INST_0_i_18_n_0),
        .O(o_data_INST_0_i_7_n_0),
        .S(\r_bitCounter_reg_n_0_[3] ));
  MUXF8 o_data_INST_0_i_8
       (.I0(o_data_INST_0_i_19_n_0),
        .I1(o_data_INST_0_i_20_n_0),
        .O(o_data_INST_0_i_8_n_0),
        .S(\r_bitCounter_reg_n_0_[3] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_data_INST_0_i_9
       (.I0(r_dataToSend[67]),
        .I1(r_dataToSend[66]),
        .I2(\r_bitCounter_reg_n_0_[1] ),
        .I3(r_dataToSend[65]),
        .I4(\r_bitCounter_reg_n_0_[0] ),
        .I5(r_dataToSend[64]),
        .O(o_data_INST_0_i_9_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    o_lat_INST_0
       (.I0(r_state__0[1]),
        .I1(r_state__0[0]),
        .O(o_lat));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h40)) 
    o_ledClk_INST_0
       (.I0(r_state__0[1]),
        .I1(r_state__0[0]),
        .I2(w_slowClock),
        .O(o_ledClk));
  LUT5 #(
    .INIT(32'h00F6FFF6)) 
    \r_bitCounter[0]_i_1 
       (.I0(r_oldMode),
        .I1(i_mode),
        .I2(\r_state1_inferred__0/i__carry__2_n_2 ),
        .I3(r_state__0[0]),
        .I4(\r_bitCounter_reg_n_0_[0] ),
        .O(r_bitCounter[0]));
  LUT6 #(
    .INIT(64'hFFF600F600F6FFF6)) 
    \r_bitCounter[1]_i_1 
       (.I0(r_oldMode),
        .I1(i_mode),
        .I2(\r_state1_inferred__0/i__carry__2_n_2 ),
        .I3(r_state__0[0]),
        .I4(\r_bitCounter_reg_n_0_[1] ),
        .I5(\r_bitCounter_reg_n_0_[0] ),
        .O(r_bitCounter[1]));
  LUT5 #(
    .INIT(32'hFFF600F6)) 
    \r_bitCounter[2]_i_1 
       (.I0(r_oldMode),
        .I1(i_mode),
        .I2(\r_state1_inferred__0/i__carry__2_n_2 ),
        .I3(r_state__0[0]),
        .I4(\r_bitCounter[2]_i_2_n_0 ),
        .O(r_bitCounter[2]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \r_bitCounter[2]_i_2 
       (.I0(\r_bitCounter_reg_n_0_[1] ),
        .I1(\r_bitCounter_reg_n_0_[0] ),
        .I2(\r_bitCounter_reg_n_0_[2] ),
        .O(\r_bitCounter[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFF600F6)) 
    \r_bitCounter[3]_i_1 
       (.I0(r_oldMode),
        .I1(i_mode),
        .I2(\r_state1_inferred__0/i__carry__2_n_2 ),
        .I3(r_state__0[0]),
        .I4(\r_bitCounter[3]_i_2_n_0 ),
        .O(r_bitCounter[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFE01)) 
    \r_bitCounter[3]_i_2 
       (.I0(\r_bitCounter_reg_n_0_[2] ),
        .I1(\r_bitCounter_reg_n_0_[0] ),
        .I2(\r_bitCounter_reg_n_0_[1] ),
        .I3(\r_bitCounter_reg_n_0_[3] ),
        .O(\r_bitCounter[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFE000000010000)) 
    \r_bitCounter[4]_i_1 
       (.I0(\r_bitCounter_reg_n_0_[2] ),
        .I1(\r_bitCounter_reg_n_0_[0] ),
        .I2(\r_bitCounter_reg_n_0_[1] ),
        .I3(\r_bitCounter_reg_n_0_[3] ),
        .I4(r_state__0[0]),
        .I5(\r_bitCounter_reg_n_0_[4] ),
        .O(r_bitCounter[4]));
  LUT3 #(
    .INIT(8'h82)) 
    \r_bitCounter[5]_i_1 
       (.I0(r_state__0[0]),
        .I1(\r_bitCounter[5]_i_2_n_0 ),
        .I2(\r_bitCounter_reg_n_0_[5] ),
        .O(r_bitCounter[5]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \r_bitCounter[5]_i_2 
       (.I0(\r_bitCounter_reg_n_0_[3] ),
        .I1(\r_bitCounter_reg_n_0_[1] ),
        .I2(\r_bitCounter_reg_n_0_[0] ),
        .I3(\r_bitCounter_reg_n_0_[2] ),
        .I4(\r_bitCounter_reg_n_0_[4] ),
        .O(\r_bitCounter[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFF600F600F6FFF6)) 
    \r_bitCounter[6]_i_1 
       (.I0(r_oldMode),
        .I1(i_mode),
        .I2(\r_state1_inferred__0/i__carry__2_n_2 ),
        .I3(r_state__0[0]),
        .I4(\r_bitCounter_reg_n_0_[6] ),
        .I5(\r_bitCounter[7]_i_3_n_0 ),
        .O(r_bitCounter[6]));
  LUT3 #(
    .INIT(8'h15)) 
    \r_bitCounter[7]_i_1 
       (.I0(r_state__0[1]),
        .I1(r_state__6),
        .I2(r_state__0[0]),
        .O(\r_bitCounter[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA802)) 
    \r_bitCounter[7]_i_2 
       (.I0(r_state__0[0]),
        .I1(\r_bitCounter_reg_n_0_[6] ),
        .I2(\r_bitCounter[7]_i_3_n_0 ),
        .I3(\r_bitCounter_reg_n_0_[7] ),
        .O(r_bitCounter[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \r_bitCounter[7]_i_3 
       (.I0(\r_bitCounter_reg_n_0_[4] ),
        .I1(\r_bitCounter_reg_n_0_[2] ),
        .I2(\r_bitCounter_reg_n_0_[0] ),
        .I3(\r_bitCounter_reg_n_0_[1] ),
        .I4(\r_bitCounter_reg_n_0_[3] ),
        .I5(\r_bitCounter_reg_n_0_[5] ),
        .O(\r_bitCounter[7]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_bitCounter_reg[0] 
       (.C(w_slowClock),
        .CE(\r_bitCounter[7]_i_1_n_0 ),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(r_bitCounter[0]),
        .Q(\r_bitCounter_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_bitCounter_reg[1] 
       (.C(w_slowClock),
        .CE(\r_bitCounter[7]_i_1_n_0 ),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(r_bitCounter[1]),
        .Q(\r_bitCounter_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_bitCounter_reg[2] 
       (.C(w_slowClock),
        .CE(\r_bitCounter[7]_i_1_n_0 ),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(r_bitCounter[2]),
        .Q(\r_bitCounter_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_bitCounter_reg[3] 
       (.C(w_slowClock),
        .CE(\r_bitCounter[7]_i_1_n_0 ),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(r_bitCounter[3]),
        .Q(\r_bitCounter_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_bitCounter_reg[4] 
       (.C(w_slowClock),
        .CE(\r_bitCounter[7]_i_1_n_0 ),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(r_bitCounter[4]),
        .Q(\r_bitCounter_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_bitCounter_reg[5] 
       (.C(w_slowClock),
        .CE(\r_bitCounter[7]_i_1_n_0 ),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(r_bitCounter[5]),
        .Q(\r_bitCounter_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_bitCounter_reg[6] 
       (.C(w_slowClock),
        .CE(\r_bitCounter[7]_i_1_n_0 ),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(r_bitCounter[6]),
        .Q(\r_bitCounter_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_bitCounter_reg[7] 
       (.C(w_slowClock),
        .CE(\r_bitCounter[7]_i_1_n_0 ),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(r_bitCounter[7]),
        .Q(\r_bitCounter_reg_n_0_[7] ));
  LUT1 #(
    .INIT(2'h1)) 
    \r_clockCounter[0]_i_1 
       (.I0(\r_clockCounter_reg_n_0_[0] ),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r_clockCounter[1]_i_1 
       (.I0(\r_clockCounter_reg_n_0_[0] ),
        .I1(\r_clockCounter_reg_n_0_[1] ),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \r_clockCounter[2]_i_1 
       (.I0(\r_clockCounter_reg_n_0_[0] ),
        .I1(\r_clockCounter_reg_n_0_[1] ),
        .I2(\r_clockCounter_reg_n_0_[2] ),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \r_clockCounter[3]_i_1 
       (.I0(\r_clockCounter_reg_n_0_[1] ),
        .I1(\r_clockCounter_reg_n_0_[0] ),
        .I2(\r_clockCounter_reg_n_0_[2] ),
        .I3(\r_clockCounter_reg_n_0_[3] ),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \r_clockCounter[4]_i_1 
       (.I0(\r_clockCounter_reg_n_0_[2] ),
        .I1(\r_clockCounter_reg_n_0_[0] ),
        .I2(\r_clockCounter_reg_n_0_[1] ),
        .I3(\r_clockCounter_reg_n_0_[3] ),
        .I4(\r_clockCounter_reg_n_0_[4] ),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \r_clockCounter[5]_i_1 
       (.I0(\r_clockCounter_reg_n_0_[3] ),
        .I1(\r_clockCounter_reg_n_0_[1] ),
        .I2(\r_clockCounter_reg_n_0_[0] ),
        .I3(\r_clockCounter_reg_n_0_[2] ),
        .I4(\r_clockCounter_reg_n_0_[4] ),
        .I5(\r_clockCounter_reg_n_0_[5] ),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r_clockCounter[6]_i_1 
       (.I0(\r_clockCounter[7]_i_2_n_0 ),
        .I1(\r_clockCounter_reg_n_0_[6] ),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \r_clockCounter[7]_i_1 
       (.I0(\r_clockCounter[7]_i_2_n_0 ),
        .I1(\r_clockCounter_reg_n_0_[6] ),
        .I2(w_slowClock),
        .O(p_0_in[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \r_clockCounter[7]_i_2 
       (.I0(\r_clockCounter_reg_n_0_[5] ),
        .I1(\r_clockCounter_reg_n_0_[3] ),
        .I2(\r_clockCounter_reg_n_0_[1] ),
        .I3(\r_clockCounter_reg_n_0_[0] ),
        .I4(\r_clockCounter_reg_n_0_[2] ),
        .I5(\r_clockCounter_reg_n_0_[4] ),
        .O(\r_clockCounter[7]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \r_clockCounter_reg[0] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(p_0_in[0]),
        .Q(\r_clockCounter_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_clockCounter_reg[1] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(p_0_in[1]),
        .Q(\r_clockCounter_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_clockCounter_reg[2] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(p_0_in[2]),
        .Q(\r_clockCounter_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_clockCounter_reg[3] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(p_0_in[3]),
        .Q(\r_clockCounter_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_clockCounter_reg[4] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(p_0_in[4]),
        .Q(\r_clockCounter_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_clockCounter_reg[5] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(p_0_in[5]),
        .Q(\r_clockCounter_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_clockCounter_reg[6] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(p_0_in[6]),
        .Q(\r_clockCounter_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_clockCounter_reg[7] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(p_0_in[7]),
        .Q(w_slowClock));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h155A)) 
    \r_dataToSend[0]_i_1 
       (.I0(i_bcdData[39]),
        .I1(i_bcdData[36]),
        .I2(i_bcdData[38]),
        .I3(i_bcdData[37]),
        .O(p_0_in_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h1653)) 
    \r_dataToSend[10]_i_1 
       (.I0(i_bcdData[35]),
        .I1(i_bcdData[34]),
        .I2(i_bcdData[33]),
        .I3(i_bcdData[32]),
        .O(p_0_in_0[10]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0647)) 
    \r_dataToSend[11]_i_1 
       (.I0(i_bcdData[35]),
        .I1(i_bcdData[34]),
        .I2(i_bcdData[33]),
        .I3(i_bcdData[32]),
        .O(p_0_in_0[11]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h5747)) 
    \r_dataToSend[12]_i_1 
       (.I0(i_bcdData[35]),
        .I1(i_bcdData[34]),
        .I2(i_bcdData[33]),
        .I3(i_bcdData[32]),
        .O(p_0_in_0[12]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h5653)) 
    \r_dataToSend[13]_i_1 
       (.I0(i_bcdData[35]),
        .I1(i_bcdData[34]),
        .I2(i_bcdData[33]),
        .I3(i_bcdData[32]),
        .O(p_0_in_0[13]));
  LUT4 #(
    .INIT(16'h4177)) 
    \r_dataToSend[15]_i_1 
       (.I0(i_bcdData[35]),
        .I1(i_bcdData[33]),
        .I2(i_bcdData[32]),
        .I3(i_bcdData[34]),
        .O(p_0_in_0[15]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h155A)) 
    \r_dataToSend[16]_i_1 
       (.I0(i_bcdData[31]),
        .I1(i_bcdData[28]),
        .I2(i_bcdData[30]),
        .I3(i_bcdData[29]),
        .O(p_0_in_0[16]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0047)) 
    \r_dataToSend[17]_i_1 
       (.I0(i_bcdData[31]),
        .I1(i_bcdData[29]),
        .I2(i_bcdData[30]),
        .I3(i_bcdData[28]),
        .O(p_0_in_0[17]));
  LUT4 #(
    .INIT(16'h0647)) 
    \r_dataToSend[18]_i_1 
       (.I0(i_bcdData[31]),
        .I1(i_bcdData[30]),
        .I2(i_bcdData[29]),
        .I3(i_bcdData[28]),
        .O(p_0_in_0[18]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h1653)) 
    \r_dataToSend[19]_i_1 
       (.I0(i_bcdData[31]),
        .I1(i_bcdData[30]),
        .I2(i_bcdData[29]),
        .I3(i_bcdData[28]),
        .O(p_0_in_0[19]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h0047)) 
    \r_dataToSend[1]_i_1 
       (.I0(i_bcdData[39]),
        .I1(i_bcdData[37]),
        .I2(i_bcdData[38]),
        .I3(i_bcdData[36]),
        .O(p_0_in_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h5747)) 
    \r_dataToSend[20]_i_1 
       (.I0(i_bcdData[31]),
        .I1(i_bcdData[30]),
        .I2(i_bcdData[29]),
        .I3(i_bcdData[28]),
        .O(p_0_in_0[20]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h5653)) 
    \r_dataToSend[21]_i_1 
       (.I0(i_bcdData[31]),
        .I1(i_bcdData[30]),
        .I2(i_bcdData[29]),
        .I3(i_bcdData[28]),
        .O(p_0_in_0[21]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h4177)) 
    \r_dataToSend[23]_i_1 
       (.I0(i_bcdData[31]),
        .I1(i_bcdData[29]),
        .I2(i_bcdData[28]),
        .I3(i_bcdData[30]),
        .O(p_0_in_0[23]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0047)) 
    \r_dataToSend[24]_i_1 
       (.I0(i_bcdData[27]),
        .I1(i_bcdData[25]),
        .I2(i_bcdData[26]),
        .I3(i_bcdData[24]),
        .O(p_0_in_0[24]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h155A)) 
    \r_dataToSend[25]_i_1 
       (.I0(i_bcdData[27]),
        .I1(i_bcdData[24]),
        .I2(i_bcdData[26]),
        .I3(i_bcdData[25]),
        .O(p_0_in_0[25]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h1653)) 
    \r_dataToSend[26]_i_1 
       (.I0(i_bcdData[27]),
        .I1(i_bcdData[26]),
        .I2(i_bcdData[25]),
        .I3(i_bcdData[24]),
        .O(p_0_in_0[26]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0647)) 
    \r_dataToSend[27]_i_1 
       (.I0(i_bcdData[27]),
        .I1(i_bcdData[26]),
        .I2(i_bcdData[25]),
        .I3(i_bcdData[24]),
        .O(p_0_in_0[27]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h5747)) 
    \r_dataToSend[28]_i_1 
       (.I0(i_bcdData[27]),
        .I1(i_bcdData[26]),
        .I2(i_bcdData[25]),
        .I3(i_bcdData[24]),
        .O(p_0_in_0[28]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h5653)) 
    \r_dataToSend[29]_i_1 
       (.I0(i_bcdData[27]),
        .I1(i_bcdData[26]),
        .I2(i_bcdData[25]),
        .I3(i_bcdData[24]),
        .O(p_0_in_0[29]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h0647)) 
    \r_dataToSend[2]_i_1 
       (.I0(i_bcdData[39]),
        .I1(i_bcdData[38]),
        .I2(i_bcdData[37]),
        .I3(i_bcdData[36]),
        .O(p_0_in_0[2]));
  LUT4 #(
    .INIT(16'h4177)) 
    \r_dataToSend[31]_i_1 
       (.I0(i_bcdData[27]),
        .I1(i_bcdData[25]),
        .I2(i_bcdData[24]),
        .I3(i_bcdData[26]),
        .O(p_0_in_0[31]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h155A)) 
    \r_dataToSend[32]_i_1 
       (.I0(i_bcdData[23]),
        .I1(i_bcdData[20]),
        .I2(i_bcdData[22]),
        .I3(i_bcdData[21]),
        .O(p_0_in_0[32]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0047)) 
    \r_dataToSend[33]_i_1 
       (.I0(i_bcdData[23]),
        .I1(i_bcdData[21]),
        .I2(i_bcdData[22]),
        .I3(i_bcdData[20]),
        .O(p_0_in_0[33]));
  LUT4 #(
    .INIT(16'h0647)) 
    \r_dataToSend[34]_i_1 
       (.I0(i_bcdData[23]),
        .I1(i_bcdData[22]),
        .I2(i_bcdData[21]),
        .I3(i_bcdData[20]),
        .O(p_0_in_0[34]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h1653)) 
    \r_dataToSend[35]_i_1 
       (.I0(i_bcdData[23]),
        .I1(i_bcdData[22]),
        .I2(i_bcdData[21]),
        .I3(i_bcdData[20]),
        .O(p_0_in_0[35]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h5747)) 
    \r_dataToSend[36]_i_1 
       (.I0(i_bcdData[23]),
        .I1(i_bcdData[22]),
        .I2(i_bcdData[21]),
        .I3(i_bcdData[20]),
        .O(p_0_in_0[36]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h5653)) 
    \r_dataToSend[37]_i_1 
       (.I0(i_bcdData[23]),
        .I1(i_bcdData[22]),
        .I2(i_bcdData[21]),
        .I3(i_bcdData[20]),
        .O(p_0_in_0[37]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h4177)) 
    \r_dataToSend[39]_i_1 
       (.I0(i_bcdData[23]),
        .I1(i_bcdData[21]),
        .I2(i_bcdData[20]),
        .I3(i_bcdData[22]),
        .O(p_0_in_0[39]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h1653)) 
    \r_dataToSend[3]_i_1 
       (.I0(i_bcdData[39]),
        .I1(i_bcdData[38]),
        .I2(i_bcdData[37]),
        .I3(i_bcdData[36]),
        .O(p_0_in_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h0047)) 
    \r_dataToSend[40]_i_1 
       (.I0(i_bcdData[19]),
        .I1(i_bcdData[17]),
        .I2(i_bcdData[18]),
        .I3(i_bcdData[16]),
        .O(p_0_in_0[40]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h155A)) 
    \r_dataToSend[41]_i_1 
       (.I0(i_bcdData[19]),
        .I1(i_bcdData[16]),
        .I2(i_bcdData[18]),
        .I3(i_bcdData[17]),
        .O(p_0_in_0[41]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h1653)) 
    \r_dataToSend[42]_i_1 
       (.I0(i_bcdData[19]),
        .I1(i_bcdData[18]),
        .I2(i_bcdData[17]),
        .I3(i_bcdData[16]),
        .O(p_0_in_0[42]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h0647)) 
    \r_dataToSend[43]_i_1 
       (.I0(i_bcdData[19]),
        .I1(i_bcdData[18]),
        .I2(i_bcdData[17]),
        .I3(i_bcdData[16]),
        .O(p_0_in_0[43]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h5747)) 
    \r_dataToSend[44]_i_1 
       (.I0(i_bcdData[19]),
        .I1(i_bcdData[18]),
        .I2(i_bcdData[17]),
        .I3(i_bcdData[16]),
        .O(p_0_in_0[44]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h5653)) 
    \r_dataToSend[45]_i_1 
       (.I0(i_bcdData[19]),
        .I1(i_bcdData[18]),
        .I2(i_bcdData[17]),
        .I3(i_bcdData[16]),
        .O(p_0_in_0[45]));
  LUT4 #(
    .INIT(16'h4177)) 
    \r_dataToSend[47]_i_1 
       (.I0(i_bcdData[19]),
        .I1(i_bcdData[17]),
        .I2(i_bcdData[16]),
        .I3(i_bcdData[18]),
        .O(p_0_in_0[47]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h155A)) 
    \r_dataToSend[48]_i_1 
       (.I0(i_bcdData[15]),
        .I1(i_bcdData[12]),
        .I2(i_bcdData[14]),
        .I3(i_bcdData[13]),
        .O(p_0_in_0[48]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h0047)) 
    \r_dataToSend[49]_i_1 
       (.I0(i_bcdData[15]),
        .I1(i_bcdData[13]),
        .I2(i_bcdData[14]),
        .I3(i_bcdData[12]),
        .O(p_0_in_0[49]));
  LUT4 #(
    .INIT(16'h5747)) 
    \r_dataToSend[4]_i_1 
       (.I0(i_bcdData[39]),
        .I1(i_bcdData[38]),
        .I2(i_bcdData[37]),
        .I3(i_bcdData[36]),
        .O(p_0_in_0[4]));
  LUT4 #(
    .INIT(16'h0647)) 
    \r_dataToSend[50]_i_1 
       (.I0(i_bcdData[15]),
        .I1(i_bcdData[14]),
        .I2(i_bcdData[13]),
        .I3(i_bcdData[12]),
        .O(p_0_in_0[50]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h1653)) 
    \r_dataToSend[51]_i_1 
       (.I0(i_bcdData[15]),
        .I1(i_bcdData[14]),
        .I2(i_bcdData[13]),
        .I3(i_bcdData[12]),
        .O(p_0_in_0[51]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h5747)) 
    \r_dataToSend[52]_i_1 
       (.I0(i_bcdData[15]),
        .I1(i_bcdData[14]),
        .I2(i_bcdData[13]),
        .I3(i_bcdData[12]),
        .O(p_0_in_0[52]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h5653)) 
    \r_dataToSend[53]_i_1 
       (.I0(i_bcdData[15]),
        .I1(i_bcdData[14]),
        .I2(i_bcdData[13]),
        .I3(i_bcdData[12]),
        .O(p_0_in_0[53]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h4177)) 
    \r_dataToSend[55]_i_1 
       (.I0(i_bcdData[15]),
        .I1(i_bcdData[13]),
        .I2(i_bcdData[12]),
        .I3(i_bcdData[14]),
        .O(p_0_in_0[55]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h0047)) 
    \r_dataToSend[56]_i_1 
       (.I0(i_bcdData[11]),
        .I1(i_bcdData[9]),
        .I2(i_bcdData[10]),
        .I3(i_bcdData[8]),
        .O(p_0_in_0[56]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h155A)) 
    \r_dataToSend[57]_i_1 
       (.I0(i_bcdData[11]),
        .I1(i_bcdData[8]),
        .I2(i_bcdData[10]),
        .I3(i_bcdData[9]),
        .O(p_0_in_0[57]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h1653)) 
    \r_dataToSend[58]_i_1 
       (.I0(i_bcdData[11]),
        .I1(i_bcdData[10]),
        .I2(i_bcdData[9]),
        .I3(i_bcdData[8]),
        .O(p_0_in_0[58]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h0647)) 
    \r_dataToSend[59]_i_1 
       (.I0(i_bcdData[11]),
        .I1(i_bcdData[10]),
        .I2(i_bcdData[9]),
        .I3(i_bcdData[8]),
        .O(p_0_in_0[59]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h5653)) 
    \r_dataToSend[5]_i_1 
       (.I0(i_bcdData[39]),
        .I1(i_bcdData[38]),
        .I2(i_bcdData[37]),
        .I3(i_bcdData[36]),
        .O(p_0_in_0[5]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h5747)) 
    \r_dataToSend[60]_i_1 
       (.I0(i_bcdData[11]),
        .I1(i_bcdData[10]),
        .I2(i_bcdData[9]),
        .I3(i_bcdData[8]),
        .O(p_0_in_0[60]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h5653)) 
    \r_dataToSend[61]_i_1 
       (.I0(i_bcdData[11]),
        .I1(i_bcdData[10]),
        .I2(i_bcdData[9]),
        .I3(i_bcdData[8]),
        .O(p_0_in_0[61]));
  LUT4 #(
    .INIT(16'h4177)) 
    \r_dataToSend[63]_i_1 
       (.I0(i_bcdData[11]),
        .I1(i_bcdData[9]),
        .I2(i_bcdData[8]),
        .I3(i_bcdData[10]),
        .O(p_0_in_0[63]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h155A)) 
    \r_dataToSend[64]_i_1 
       (.I0(i_bcdData[7]),
        .I1(i_bcdData[4]),
        .I2(i_bcdData[6]),
        .I3(i_bcdData[5]),
        .O(p_0_in_0[64]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h0047)) 
    \r_dataToSend[65]_i_1 
       (.I0(i_bcdData[7]),
        .I1(i_bcdData[5]),
        .I2(i_bcdData[6]),
        .I3(i_bcdData[4]),
        .O(p_0_in_0[65]));
  LUT4 #(
    .INIT(16'h0647)) 
    \r_dataToSend[66]_i_1 
       (.I0(i_bcdData[7]),
        .I1(i_bcdData[6]),
        .I2(i_bcdData[5]),
        .I3(i_bcdData[4]),
        .O(p_0_in_0[66]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h1653)) 
    \r_dataToSend[67]_i_1 
       (.I0(i_bcdData[7]),
        .I1(i_bcdData[6]),
        .I2(i_bcdData[5]),
        .I3(i_bcdData[4]),
        .O(p_0_in_0[67]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h5747)) 
    \r_dataToSend[68]_i_1 
       (.I0(i_bcdData[7]),
        .I1(i_bcdData[6]),
        .I2(i_bcdData[5]),
        .I3(i_bcdData[4]),
        .O(p_0_in_0[68]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h5653)) 
    \r_dataToSend[69]_i_1 
       (.I0(i_bcdData[7]),
        .I1(i_bcdData[6]),
        .I2(i_bcdData[5]),
        .I3(i_bcdData[4]),
        .O(p_0_in_0[69]));
  LUT1 #(
    .INIT(2'h1)) 
    \r_dataToSend[6]_i_1 
       (.I0(i_mode),
        .O(\r_dataToSend[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h4177)) 
    \r_dataToSend[71]_i_1 
       (.I0(i_bcdData[7]),
        .I1(i_bcdData[5]),
        .I2(i_bcdData[4]),
        .I3(i_bcdData[6]),
        .O(p_0_in_0[71]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h0047)) 
    \r_dataToSend[72]_i_1 
       (.I0(i_bcdData[3]),
        .I1(i_bcdData[1]),
        .I2(i_bcdData[2]),
        .I3(i_bcdData[0]),
        .O(p_0_in_0[72]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h155A)) 
    \r_dataToSend[73]_i_1 
       (.I0(i_bcdData[3]),
        .I1(i_bcdData[0]),
        .I2(i_bcdData[2]),
        .I3(i_bcdData[1]),
        .O(p_0_in_0[73]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h1653)) 
    \r_dataToSend[74]_i_1 
       (.I0(i_bcdData[3]),
        .I1(i_bcdData[2]),
        .I2(i_bcdData[1]),
        .I3(i_bcdData[0]),
        .O(p_0_in_0[74]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h0647)) 
    \r_dataToSend[75]_i_1 
       (.I0(i_bcdData[3]),
        .I1(i_bcdData[2]),
        .I2(i_bcdData[1]),
        .I3(i_bcdData[0]),
        .O(p_0_in_0[75]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h5747)) 
    \r_dataToSend[76]_i_1 
       (.I0(i_bcdData[3]),
        .I1(i_bcdData[2]),
        .I2(i_bcdData[1]),
        .I3(i_bcdData[0]),
        .O(p_0_in_0[76]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h5653)) 
    \r_dataToSend[77]_i_1 
       (.I0(i_bcdData[3]),
        .I1(i_bcdData[2]),
        .I2(i_bcdData[1]),
        .I3(i_bcdData[0]),
        .O(p_0_in_0[77]));
  LUT5 #(
    .INIT(32'h000000F6)) 
    \r_dataToSend[79]_i_1 
       (.I0(r_oldMode),
        .I1(i_mode),
        .I2(\r_state1_inferred__0/i__carry__2_n_2 ),
        .I3(r_state__0[0]),
        .I4(r_state__0[1]),
        .O(r_state__1));
  LUT4 #(
    .INIT(16'h4177)) 
    \r_dataToSend[79]_i_2 
       (.I0(i_bcdData[3]),
        .I1(i_bcdData[1]),
        .I2(i_bcdData[0]),
        .I3(i_bcdData[2]),
        .O(p_0_in_0[79]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h4177)) 
    \r_dataToSend[7]_i_1 
       (.I0(i_bcdData[39]),
        .I1(i_bcdData[37]),
        .I2(i_bcdData[36]),
        .I3(i_bcdData[38]),
        .O(p_0_in_0[7]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0047)) 
    \r_dataToSend[8]_i_1 
       (.I0(i_bcdData[35]),
        .I1(i_bcdData[33]),
        .I2(i_bcdData[34]),
        .I3(i_bcdData[32]),
        .O(p_0_in_0[8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h155A)) 
    \r_dataToSend[9]_i_1 
       (.I0(i_bcdData[35]),
        .I1(i_bcdData[32]),
        .I2(i_bcdData[34]),
        .I3(i_bcdData[33]),
        .O(p_0_in_0[9]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_dataToSend_reg[0] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(p_0_in_0[0]),
        .Q(r_dataToSend[0]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_dataToSend_reg[10] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(p_0_in_0[10]),
        .Q(r_dataToSend[10]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_dataToSend_reg[11] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(p_0_in_0[11]),
        .Q(r_dataToSend[11]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_dataToSend_reg[12] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(p_0_in_0[12]),
        .Q(r_dataToSend[12]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_dataToSend_reg[13] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(p_0_in_0[13]),
        .Q(r_dataToSend[13]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_dataToSend_reg[14] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(i_mode),
        .Q(r_dataToSend[14]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_dataToSend_reg[15] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(p_0_in_0[15]),
        .Q(r_dataToSend[15]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_dataToSend_reg[16] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(p_0_in_0[16]),
        .Q(r_dataToSend[16]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_dataToSend_reg[17] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(p_0_in_0[17]),
        .Q(r_dataToSend[17]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_dataToSend_reg[18] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(p_0_in_0[18]),
        .Q(r_dataToSend[18]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_dataToSend_reg[19] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(p_0_in_0[19]),
        .Q(r_dataToSend[19]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_dataToSend_reg[1] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(p_0_in_0[1]),
        .Q(r_dataToSend[1]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_dataToSend_reg[20] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(p_0_in_0[20]),
        .Q(r_dataToSend[20]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_dataToSend_reg[21] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(p_0_in_0[21]),
        .Q(r_dataToSend[21]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_dataToSend_reg[23] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(p_0_in_0[23]),
        .Q(r_dataToSend[23]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_dataToSend_reg[24] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(p_0_in_0[24]),
        .Q(r_dataToSend[24]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_dataToSend_reg[25] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(p_0_in_0[25]),
        .Q(r_dataToSend[25]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_dataToSend_reg[26] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(p_0_in_0[26]),
        .Q(r_dataToSend[26]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_dataToSend_reg[27] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(p_0_in_0[27]),
        .Q(r_dataToSend[27]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_dataToSend_reg[28] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(p_0_in_0[28]),
        .Q(r_dataToSend[28]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_dataToSend_reg[29] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(p_0_in_0[29]),
        .Q(r_dataToSend[29]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_dataToSend_reg[2] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(p_0_in_0[2]),
        .Q(r_dataToSend[2]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_dataToSend_reg[31] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(p_0_in_0[31]),
        .Q(r_dataToSend[31]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_dataToSend_reg[32] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(p_0_in_0[32]),
        .Q(r_dataToSend[32]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_dataToSend_reg[33] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(p_0_in_0[33]),
        .Q(r_dataToSend[33]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_dataToSend_reg[34] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(p_0_in_0[34]),
        .Q(r_dataToSend[34]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_dataToSend_reg[35] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(p_0_in_0[35]),
        .Q(r_dataToSend[35]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_dataToSend_reg[36] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(p_0_in_0[36]),
        .Q(r_dataToSend[36]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_dataToSend_reg[37] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(p_0_in_0[37]),
        .Q(r_dataToSend[37]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_dataToSend_reg[39] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(p_0_in_0[39]),
        .Q(r_dataToSend[39]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_dataToSend_reg[3] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(p_0_in_0[3]),
        .Q(r_dataToSend[3]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_dataToSend_reg[40] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(p_0_in_0[40]),
        .Q(r_dataToSend[40]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_dataToSend_reg[41] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(p_0_in_0[41]),
        .Q(r_dataToSend[41]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_dataToSend_reg[42] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(p_0_in_0[42]),
        .Q(r_dataToSend[42]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_dataToSend_reg[43] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(p_0_in_0[43]),
        .Q(r_dataToSend[43]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_dataToSend_reg[44] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(p_0_in_0[44]),
        .Q(r_dataToSend[44]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_dataToSend_reg[45] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(p_0_in_0[45]),
        .Q(r_dataToSend[45]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_dataToSend_reg[47] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(p_0_in_0[47]),
        .Q(r_dataToSend[47]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_dataToSend_reg[48] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(p_0_in_0[48]),
        .Q(r_dataToSend[48]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_dataToSend_reg[49] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(p_0_in_0[49]),
        .Q(r_dataToSend[49]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_dataToSend_reg[4] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(p_0_in_0[4]),
        .Q(r_dataToSend[4]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_dataToSend_reg[50] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(p_0_in_0[50]),
        .Q(r_dataToSend[50]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_dataToSend_reg[51] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(p_0_in_0[51]),
        .Q(r_dataToSend[51]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_dataToSend_reg[52] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(p_0_in_0[52]),
        .Q(r_dataToSend[52]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_dataToSend_reg[53] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(p_0_in_0[53]),
        .Q(r_dataToSend[53]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_dataToSend_reg[55] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(p_0_in_0[55]),
        .Q(r_dataToSend[55]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_dataToSend_reg[56] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(p_0_in_0[56]),
        .Q(r_dataToSend[56]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_dataToSend_reg[57] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(p_0_in_0[57]),
        .Q(r_dataToSend[57]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_dataToSend_reg[58] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(p_0_in_0[58]),
        .Q(r_dataToSend[58]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_dataToSend_reg[59] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(p_0_in_0[59]),
        .Q(r_dataToSend[59]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_dataToSend_reg[5] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(p_0_in_0[5]),
        .Q(r_dataToSend[5]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_dataToSend_reg[60] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(p_0_in_0[60]),
        .Q(r_dataToSend[60]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_dataToSend_reg[61] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(p_0_in_0[61]),
        .Q(r_dataToSend[61]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_dataToSend_reg[63] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(p_0_in_0[63]),
        .Q(r_dataToSend[63]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_dataToSend_reg[64] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(p_0_in_0[64]),
        .Q(r_dataToSend[64]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_dataToSend_reg[65] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(p_0_in_0[65]),
        .Q(r_dataToSend[65]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_dataToSend_reg[66] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(p_0_in_0[66]),
        .Q(r_dataToSend[66]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_dataToSend_reg[67] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(p_0_in_0[67]),
        .Q(r_dataToSend[67]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_dataToSend_reg[68] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(p_0_in_0[68]),
        .Q(r_dataToSend[68]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_dataToSend_reg[69] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(p_0_in_0[69]),
        .Q(r_dataToSend[69]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_dataToSend_reg[6] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(\r_dataToSend[6]_i_1_n_0 ),
        .Q(r_dataToSend[6]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_dataToSend_reg[71] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(p_0_in_0[71]),
        .Q(r_dataToSend[71]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_dataToSend_reg[72] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(p_0_in_0[72]),
        .Q(r_dataToSend[72]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_dataToSend_reg[73] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(p_0_in_0[73]),
        .Q(r_dataToSend[73]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_dataToSend_reg[74] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(p_0_in_0[74]),
        .Q(r_dataToSend[74]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_dataToSend_reg[75] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(p_0_in_0[75]),
        .Q(r_dataToSend[75]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_dataToSend_reg[76] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(p_0_in_0[76]),
        .Q(r_dataToSend[76]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_dataToSend_reg[77] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(p_0_in_0[77]),
        .Q(r_dataToSend[77]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_dataToSend_reg[79] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(p_0_in_0[79]),
        .Q(r_dataToSend[79]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_dataToSend_reg[7] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(p_0_in_0[7]),
        .Q(r_dataToSend[7]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_dataToSend_reg[8] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(p_0_in_0[8]),
        .Q(r_dataToSend[8]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_dataToSend_reg[9] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(p_0_in_0[9]),
        .Q(r_dataToSend[9]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_oldBcdData_reg[0] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(i_bcdData[0]),
        .Q(r_oldBcdData[0]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_oldBcdData_reg[10] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(i_bcdData[10]),
        .Q(r_oldBcdData[10]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_oldBcdData_reg[11] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(i_bcdData[11]),
        .Q(r_oldBcdData[11]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_oldBcdData_reg[12] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(i_bcdData[12]),
        .Q(r_oldBcdData[12]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_oldBcdData_reg[13] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(i_bcdData[13]),
        .Q(r_oldBcdData[13]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_oldBcdData_reg[14] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(i_bcdData[14]),
        .Q(r_oldBcdData[14]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_oldBcdData_reg[15] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(i_bcdData[15]),
        .Q(r_oldBcdData[15]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_oldBcdData_reg[16] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(i_bcdData[16]),
        .Q(r_oldBcdData[16]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_oldBcdData_reg[17] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(i_bcdData[17]),
        .Q(r_oldBcdData[17]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_oldBcdData_reg[18] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(i_bcdData[18]),
        .Q(r_oldBcdData[18]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_oldBcdData_reg[19] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(i_bcdData[19]),
        .Q(r_oldBcdData[19]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_oldBcdData_reg[1] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(i_bcdData[1]),
        .Q(r_oldBcdData[1]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_oldBcdData_reg[20] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(i_bcdData[20]),
        .Q(r_oldBcdData[20]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_oldBcdData_reg[21] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(i_bcdData[21]),
        .Q(r_oldBcdData[21]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_oldBcdData_reg[22] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(i_bcdData[22]),
        .Q(r_oldBcdData[22]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_oldBcdData_reg[23] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(i_bcdData[23]),
        .Q(r_oldBcdData[23]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_oldBcdData_reg[24] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(i_bcdData[24]),
        .Q(r_oldBcdData[24]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_oldBcdData_reg[25] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(i_bcdData[25]),
        .Q(r_oldBcdData[25]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_oldBcdData_reg[26] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(i_bcdData[26]),
        .Q(r_oldBcdData[26]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_oldBcdData_reg[27] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(i_bcdData[27]),
        .Q(r_oldBcdData[27]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_oldBcdData_reg[28] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(i_bcdData[28]),
        .Q(r_oldBcdData[28]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_oldBcdData_reg[29] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(i_bcdData[29]),
        .Q(r_oldBcdData[29]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_oldBcdData_reg[2] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(i_bcdData[2]),
        .Q(r_oldBcdData[2]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_oldBcdData_reg[30] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(i_bcdData[30]),
        .Q(r_oldBcdData[30]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_oldBcdData_reg[31] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(i_bcdData[31]),
        .Q(r_oldBcdData[31]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_oldBcdData_reg[32] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(i_bcdData[32]),
        .Q(r_oldBcdData[32]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_oldBcdData_reg[33] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(i_bcdData[33]),
        .Q(r_oldBcdData[33]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_oldBcdData_reg[34] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(i_bcdData[34]),
        .Q(r_oldBcdData[34]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_oldBcdData_reg[35] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(i_bcdData[35]),
        .Q(r_oldBcdData[35]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_oldBcdData_reg[36] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(i_bcdData[36]),
        .Q(r_oldBcdData[36]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_oldBcdData_reg[37] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(i_bcdData[37]),
        .Q(r_oldBcdData[37]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_oldBcdData_reg[38] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(i_bcdData[38]),
        .Q(r_oldBcdData[38]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_oldBcdData_reg[39] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(i_bcdData[39]),
        .Q(r_oldBcdData[39]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_oldBcdData_reg[3] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(i_bcdData[3]),
        .Q(r_oldBcdData[3]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_oldBcdData_reg[4] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(i_bcdData[4]),
        .Q(r_oldBcdData[4]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_oldBcdData_reg[5] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(i_bcdData[5]),
        .Q(r_oldBcdData[5]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_oldBcdData_reg[6] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(i_bcdData[6]),
        .Q(r_oldBcdData[6]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_oldBcdData_reg[7] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(i_bcdData[7]),
        .Q(r_oldBcdData[7]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_oldBcdData_reg[8] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(i_bcdData[8]),
        .Q(r_oldBcdData[8]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_oldBcdData_reg[9] 
       (.C(w_slowClock),
        .CE(r_state__1),
        .CLR(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .D(i_bcdData[9]),
        .Q(r_oldBcdData[9]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFD0200)) 
    r_oldMode_i_1
       (.I0(i_resetn),
        .I1(r_state__0[1]),
        .I2(r_state__0[0]),
        .I3(i_mode),
        .I4(r_oldMode),
        .O(r_oldMode_i_1_n_0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    r_oldMode_reg
       (.C(w_slowClock),
        .CE(1'b1),
        .D(r_oldMode_i_1_n_0),
        .Q(r_oldMode),
        .R(1'b0));
  CARRY4 \r_state1_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\r_state1_inferred__0/i__carry_n_0 ,\r_state1_inferred__0/i__carry_n_1 ,\r_state1_inferred__0/i__carry_n_2 ,\r_state1_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(\NLW_r_state1_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}));
  CARRY4 \r_state1_inferred__0/i__carry__0 
       (.CI(\r_state1_inferred__0/i__carry_n_0 ),
        .CO({\r_state1_inferred__0/i__carry__0_n_0 ,\r_state1_inferred__0/i__carry__0_n_1 ,\r_state1_inferred__0/i__carry__0_n_2 ,\r_state1_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(\NLW_r_state1_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}));
  CARRY4 \r_state1_inferred__0/i__carry__1 
       (.CI(\r_state1_inferred__0/i__carry__0_n_0 ),
        .CO({\r_state1_inferred__0/i__carry__1_n_0 ,\r_state1_inferred__0/i__carry__1_n_1 ,\r_state1_inferred__0/i__carry__1_n_2 ,\r_state1_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(\NLW_r_state1_inferred__0/i__carry__1_O_UNCONNECTED [3:0]),
        .S({i__carry__1_i_1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0,i__carry__1_i_4_n_0}));
  CARRY4 \r_state1_inferred__0/i__carry__2 
       (.CI(\r_state1_inferred__0/i__carry__1_n_0 ),
        .CO({\NLW_r_state1_inferred__0/i__carry__2_CO_UNCONNECTED [3:2],\r_state1_inferred__0/i__carry__2_n_2 ,\r_state1_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b1,1'b1}),
        .O(\NLW_r_state1_inferred__0/i__carry__2_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,i__carry__2_i_1_n_0,i__carry__2_i_2_n_0}));
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
