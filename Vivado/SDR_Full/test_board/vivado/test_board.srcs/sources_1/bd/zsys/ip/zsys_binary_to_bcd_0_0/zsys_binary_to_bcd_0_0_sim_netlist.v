// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Wed Apr 21 23:23:54 2021
// Host        : dan-Desktop running 64-bit Ubuntu 18.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/dan/Microwave-SDR/Vivado/SDR_Full/test_board/vivado/test_board.srcs/sources_1/bd/zsys/ip/zsys_binary_to_bcd_0_0/zsys_binary_to_bcd_0_0_sim_netlist.v
// Design      : zsys_binary_to_bcd_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "zsys_binary_to_bcd_0_0,binary_to_bcd,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "binary_to_bcd,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module zsys_binary_to_bcd_0_0
   (i_clk,
    i_resetn,
    i_binary,
    o_bcd);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 i_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_clk, ASSOCIATED_RESET i_resetn, FREQ_HZ 80000000, PHASE 0.000, CLK_DOMAIN zsys_adc_clk_n, INSERT_VIP 0" *) input i_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 i_resetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input i_resetn;
  input [31:0]i_binary;
  output [39:0]o_bcd;

  wire [31:0]i_binary;
  wire i_clk;
  wire i_resetn;
  wire [39:0]o_bcd;

  zsys_binary_to_bcd_0_0_binary_to_bcd inst
       (.i_binary(i_binary),
        .i_clk(i_clk),
        .i_resetn(i_resetn),
        .o_bcd(o_bcd));
endmodule

(* ORIG_REF_NAME = "binary_to_bcd" *) 
module zsys_binary_to_bcd_0_0_binary_to_bcd
   (o_bcd,
    i_binary,
    i_clk,
    i_resetn);
  output [39:0]o_bcd;
  input [31:0]i_binary;
  input i_clk;
  input i_resetn;

  wire [3:0]data0;
  wire [3:0]data1;
  wire [3:0]data10;
  wire [3:0]data2;
  wire [3:0]data3;
  wire [3:0]data4;
  wire [3:0]data5;
  wire [3:0]data6;
  wire [3:0]data7;
  wire [3:0]data8;
  wire [3:0]data9;
  wire [31:0]i_binary;
  wire i_clk;
  wire i_resetn;
  wire [39:0]o_bcd;
  wire \o_bcd[39]_i_1_n_0 ;
  wire \o_bcd[39]_i_2_n_0 ;
  wire [71:3]p_0_in;
  wire [31:0]p_1_in;
  wire [31:1]r_bitsToShift0;
  wire r_bitsToShift0_carry__0_i_1_n_0;
  wire r_bitsToShift0_carry__0_i_2_n_0;
  wire r_bitsToShift0_carry__0_i_3_n_0;
  wire r_bitsToShift0_carry__0_i_4_n_0;
  wire r_bitsToShift0_carry__0_n_0;
  wire r_bitsToShift0_carry__0_n_1;
  wire r_bitsToShift0_carry__0_n_2;
  wire r_bitsToShift0_carry__0_n_3;
  wire r_bitsToShift0_carry__1_i_1_n_0;
  wire r_bitsToShift0_carry__1_i_2_n_0;
  wire r_bitsToShift0_carry__1_i_3_n_0;
  wire r_bitsToShift0_carry__1_i_4_n_0;
  wire r_bitsToShift0_carry__1_n_0;
  wire r_bitsToShift0_carry__1_n_1;
  wire r_bitsToShift0_carry__1_n_2;
  wire r_bitsToShift0_carry__1_n_3;
  wire r_bitsToShift0_carry__2_i_1_n_0;
  wire r_bitsToShift0_carry__2_i_2_n_0;
  wire r_bitsToShift0_carry__2_i_3_n_0;
  wire r_bitsToShift0_carry__2_i_4_n_0;
  wire r_bitsToShift0_carry__2_n_0;
  wire r_bitsToShift0_carry__2_n_1;
  wire r_bitsToShift0_carry__2_n_2;
  wire r_bitsToShift0_carry__2_n_3;
  wire r_bitsToShift0_carry__3_i_1_n_0;
  wire r_bitsToShift0_carry__3_i_2_n_0;
  wire r_bitsToShift0_carry__3_i_3_n_0;
  wire r_bitsToShift0_carry__3_i_4_n_0;
  wire r_bitsToShift0_carry__3_n_0;
  wire r_bitsToShift0_carry__3_n_1;
  wire r_bitsToShift0_carry__3_n_2;
  wire r_bitsToShift0_carry__3_n_3;
  wire r_bitsToShift0_carry__4_i_1_n_0;
  wire r_bitsToShift0_carry__4_i_2_n_0;
  wire r_bitsToShift0_carry__4_i_3_n_0;
  wire r_bitsToShift0_carry__4_i_4_n_0;
  wire r_bitsToShift0_carry__4_n_0;
  wire r_bitsToShift0_carry__4_n_1;
  wire r_bitsToShift0_carry__4_n_2;
  wire r_bitsToShift0_carry__4_n_3;
  wire r_bitsToShift0_carry__5_i_1_n_0;
  wire r_bitsToShift0_carry__5_i_2_n_0;
  wire r_bitsToShift0_carry__5_i_3_n_0;
  wire r_bitsToShift0_carry__5_i_4_n_0;
  wire r_bitsToShift0_carry__5_n_0;
  wire r_bitsToShift0_carry__5_n_1;
  wire r_bitsToShift0_carry__5_n_2;
  wire r_bitsToShift0_carry__5_n_3;
  wire r_bitsToShift0_carry__6_i_1_n_0;
  wire r_bitsToShift0_carry__6_i_2_n_0;
  wire r_bitsToShift0_carry__6_i_3_n_0;
  wire r_bitsToShift0_carry__6_n_2;
  wire r_bitsToShift0_carry__6_n_3;
  wire r_bitsToShift0_carry_i_1_n_0;
  wire r_bitsToShift0_carry_i_2_n_0;
  wire r_bitsToShift0_carry_i_3_n_0;
  wire r_bitsToShift0_carry_i_4_n_0;
  wire r_bitsToShift0_carry_n_0;
  wire r_bitsToShift0_carry_n_1;
  wire r_bitsToShift0_carry_n_2;
  wire r_bitsToShift0_carry_n_3;
  wire \r_bitsToShift[31]_i_10_n_0 ;
  wire \r_bitsToShift[31]_i_11_n_0 ;
  wire \r_bitsToShift[31]_i_1_n_0 ;
  wire \r_bitsToShift[31]_i_3_n_0 ;
  wire \r_bitsToShift[31]_i_4_n_0 ;
  wire \r_bitsToShift[31]_i_5_n_0 ;
  wire \r_bitsToShift[31]_i_6_n_0 ;
  wire \r_bitsToShift[31]_i_7_n_0 ;
  wire \r_bitsToShift[31]_i_8_n_0 ;
  wire \r_bitsToShift[31]_i_9_n_0 ;
  wire \r_digitsToCheck[0]_i_1_n_0 ;
  wire \r_digitsToCheck[1]_i_1_n_0 ;
  wire \r_digitsToCheck[2]_i_1_n_0 ;
  wire \r_digitsToCheck[3]_i_1_n_0 ;
  wire \r_digitsToCheck[4]_i_1_n_0 ;
  wire \r_digitsToCheck[4]_i_2_n_0 ;
  wire \r_digitsToCheck[4]_i_3_n_0 ;
  wire [31:0]r_oldBinary;
  wire \r_oldBinary[31]_i_1_n_0 ;
  wire [31:4]r_shifter3;
  wire [4:3]r_shifter5;
  wire \r_shifter[0]_i_1_n_0 ;
  wire \r_shifter[10]_i_1_n_0 ;
  wire \r_shifter[10]_i_2_n_0 ;
  wire \r_shifter[11]_i_2_n_0 ;
  wire \r_shifter[11]_i_3_n_0 ;
  wire \r_shifter[12]_i_1_n_0 ;
  wire \r_shifter[12]_i_2_n_0 ;
  wire \r_shifter[13]_i_1_n_0 ;
  wire \r_shifter[13]_i_2_n_0 ;
  wire \r_shifter[14]_i_1_n_0 ;
  wire \r_shifter[14]_i_2_n_0 ;
  wire \r_shifter[15]_i_2_n_0 ;
  wire \r_shifter[15]_i_3_n_0 ;
  wire \r_shifter[16]_i_1_n_0 ;
  wire \r_shifter[16]_i_2_n_0 ;
  wire \r_shifter[17]_i_1_n_0 ;
  wire \r_shifter[17]_i_2_n_0 ;
  wire \r_shifter[18]_i_1_n_0 ;
  wire \r_shifter[18]_i_2_n_0 ;
  wire \r_shifter[19]_i_2_n_0 ;
  wire \r_shifter[19]_i_3_n_0 ;
  wire \r_shifter[1]_i_1_n_0 ;
  wire \r_shifter[1]_i_2_n_0 ;
  wire \r_shifter[20]_i_1_n_0 ;
  wire \r_shifter[20]_i_2_n_0 ;
  wire \r_shifter[21]_i_1_n_0 ;
  wire \r_shifter[21]_i_2_n_0 ;
  wire \r_shifter[22]_i_1_n_0 ;
  wire \r_shifter[22]_i_2_n_0 ;
  wire \r_shifter[23]_i_2_n_0 ;
  wire \r_shifter[23]_i_3_n_0 ;
  wire \r_shifter[24]_i_1_n_0 ;
  wire \r_shifter[24]_i_2_n_0 ;
  wire \r_shifter[25]_i_1_n_0 ;
  wire \r_shifter[25]_i_2_n_0 ;
  wire \r_shifter[26]_i_1_n_0 ;
  wire \r_shifter[26]_i_2_n_0 ;
  wire \r_shifter[27]_i_2_n_0 ;
  wire \r_shifter[27]_i_3_n_0 ;
  wire \r_shifter[28]_i_1_n_0 ;
  wire \r_shifter[28]_i_2_n_0 ;
  wire \r_shifter[29]_i_1_n_0 ;
  wire \r_shifter[29]_i_2_n_0 ;
  wire \r_shifter[2]_i_1_n_0 ;
  wire \r_shifter[2]_i_2_n_0 ;
  wire \r_shifter[30]_i_1_n_0 ;
  wire \r_shifter[30]_i_2_n_0 ;
  wire \r_shifter[31]_i_2_n_0 ;
  wire \r_shifter[31]_i_3_n_0 ;
  wire \r_shifter[31]_i_4_n_0 ;
  wire \r_shifter[31]_i_5_n_0 ;
  wire \r_shifter[32]_i_1_n_0 ;
  wire \r_shifter[33]_i_1_n_0 ;
  wire \r_shifter[34]_i_1_n_0 ;
  wire \r_shifter[35]_i_2_n_0 ;
  wire \r_shifter[35]_i_3_n_0 ;
  wire \r_shifter[36]_i_1_n_0 ;
  wire \r_shifter[37]_i_1_n_0 ;
  wire \r_shifter[38]_i_1_n_0 ;
  wire \r_shifter[39]_i_2_n_0 ;
  wire \r_shifter[39]_i_3_n_0 ;
  wire \r_shifter[39]_i_4_n_0 ;
  wire \r_shifter[3]_i_2_n_0 ;
  wire \r_shifter[3]_i_3_n_0 ;
  wire \r_shifter[40]_i_1_n_0 ;
  wire \r_shifter[41]_i_1_n_0 ;
  wire \r_shifter[42]_i_1_n_0 ;
  wire \r_shifter[43]_i_2_n_0 ;
  wire \r_shifter[43]_i_3_n_0 ;
  wire \r_shifter[44]_i_1_n_0 ;
  wire \r_shifter[45]_i_1_n_0 ;
  wire \r_shifter[46]_i_1_n_0 ;
  wire \r_shifter[47]_i_2_n_0 ;
  wire \r_shifter[47]_i_3_n_0 ;
  wire \r_shifter[48]_i_1_n_0 ;
  wire \r_shifter[49]_i_1_n_0 ;
  wire \r_shifter[4]_i_1_n_0 ;
  wire \r_shifter[4]_i_2_n_0 ;
  wire \r_shifter[50]_i_1_n_0 ;
  wire \r_shifter[51]_i_2_n_0 ;
  wire \r_shifter[51]_i_3_n_0 ;
  wire \r_shifter[52]_i_1_n_0 ;
  wire \r_shifter[53]_i_1_n_0 ;
  wire \r_shifter[54]_i_1_n_0 ;
  wire \r_shifter[55]_i_2_n_0 ;
  wire \r_shifter[55]_i_3_n_0 ;
  wire \r_shifter[56]_i_1_n_0 ;
  wire \r_shifter[57]_i_1_n_0 ;
  wire \r_shifter[58]_i_1_n_0 ;
  wire \r_shifter[59]_i_2_n_0 ;
  wire \r_shifter[59]_i_3_n_0 ;
  wire \r_shifter[59]_i_4_n_0 ;
  wire \r_shifter[5]_i_1_n_0 ;
  wire \r_shifter[5]_i_2_n_0 ;
  wire \r_shifter[60]_i_1_n_0 ;
  wire \r_shifter[61]_i_1_n_0 ;
  wire \r_shifter[62]_i_1_n_0 ;
  wire \r_shifter[63]_i_2_n_0 ;
  wire \r_shifter[63]_i_3_n_0 ;
  wire \r_shifter[63]_i_4_n_0 ;
  wire \r_shifter[63]_i_5_n_0 ;
  wire \r_shifter[63]_i_6_n_0 ;
  wire \r_shifter[63]_i_7_n_0 ;
  wire \r_shifter[63]_i_8_n_0 ;
  wire \r_shifter[64]_i_1_n_0 ;
  wire \r_shifter[65]_i_1_n_0 ;
  wire \r_shifter[66]_i_1_n_0 ;
  wire \r_shifter[67]_i_2_n_0 ;
  wire \r_shifter[67]_i_3_n_0 ;
  wire \r_shifter[67]_i_4_n_0 ;
  wire \r_shifter[68]_i_1_n_0 ;
  wire \r_shifter[68]_i_2_n_0 ;
  wire \r_shifter[69]_i_1_n_0 ;
  wire \r_shifter[69]_i_2_n_0 ;
  wire \r_shifter[6]_i_1_n_0 ;
  wire \r_shifter[6]_i_2_n_0 ;
  wire \r_shifter[70]_i_10_n_0 ;
  wire \r_shifter[70]_i_11_n_0 ;
  wire \r_shifter[70]_i_12_n_0 ;
  wire \r_shifter[70]_i_13_n_0 ;
  wire \r_shifter[70]_i_14_n_0 ;
  wire \r_shifter[70]_i_1_n_0 ;
  wire \r_shifter[70]_i_2_n_0 ;
  wire \r_shifter[70]_i_3_n_0 ;
  wire \r_shifter[70]_i_4_n_0 ;
  wire \r_shifter[70]_i_5_n_0 ;
  wire \r_shifter[70]_i_6_n_0 ;
  wire \r_shifter[70]_i_7_n_0 ;
  wire \r_shifter[70]_i_8_n_0 ;
  wire \r_shifter[70]_i_9_n_0 ;
  wire \r_shifter[71]_i_11_n_0 ;
  wire \r_shifter[71]_i_13_n_0 ;
  wire \r_shifter[71]_i_14_n_0 ;
  wire \r_shifter[71]_i_15_n_0 ;
  wire \r_shifter[71]_i_16_n_0 ;
  wire \r_shifter[71]_i_17_n_0 ;
  wire \r_shifter[71]_i_18_n_0 ;
  wire \r_shifter[71]_i_19_n_0 ;
  wire \r_shifter[71]_i_20_n_0 ;
  wire \r_shifter[71]_i_21_n_0 ;
  wire \r_shifter[71]_i_22_n_0 ;
  wire \r_shifter[71]_i_23_n_0 ;
  wire \r_shifter[71]_i_24_n_0 ;
  wire \r_shifter[71]_i_25_n_0 ;
  wire \r_shifter[71]_i_2_n_0 ;
  wire \r_shifter[71]_i_32_n_0 ;
  wire \r_shifter[71]_i_33_n_0 ;
  wire \r_shifter[71]_i_34_n_0 ;
  wire \r_shifter[71]_i_35_n_0 ;
  wire \r_shifter[71]_i_36_n_0 ;
  wire \r_shifter[71]_i_37_n_0 ;
  wire \r_shifter[71]_i_38_n_0 ;
  wire \r_shifter[71]_i_39_n_0 ;
  wire \r_shifter[71]_i_3_n_0 ;
  wire \r_shifter[71]_i_40_n_0 ;
  wire \r_shifter[71]_i_41_n_0 ;
  wire \r_shifter[71]_i_42_n_0 ;
  wire \r_shifter[71]_i_43_n_0 ;
  wire \r_shifter[71]_i_44_n_0 ;
  wire \r_shifter[71]_i_45_n_0 ;
  wire \r_shifter[71]_i_46_n_0 ;
  wire \r_shifter[71]_i_47_n_0 ;
  wire \r_shifter[71]_i_48_n_0 ;
  wire \r_shifter[71]_i_49_n_0 ;
  wire \r_shifter[71]_i_4_n_0 ;
  wire \r_shifter[71]_i_50_n_0 ;
  wire \r_shifter[71]_i_51_n_0 ;
  wire \r_shifter[71]_i_52_n_0 ;
  wire \r_shifter[71]_i_53_n_0 ;
  wire \r_shifter[71]_i_54_n_0 ;
  wire \r_shifter[71]_i_55_n_0 ;
  wire \r_shifter[71]_i_5_n_0 ;
  wire \r_shifter[71]_i_7_n_0 ;
  wire \r_shifter[71]_i_8_n_0 ;
  wire \r_shifter[71]_i_9_n_0 ;
  wire \r_shifter[7]_i_2_n_0 ;
  wire \r_shifter[7]_i_3_n_0 ;
  wire \r_shifter[8]_i_1_n_0 ;
  wire \r_shifter[8]_i_2_n_0 ;
  wire \r_shifter[9]_i_1_n_0 ;
  wire \r_shifter[9]_i_2_n_0 ;
  wire \r_shifter_reg[71]_i_26_n_0 ;
  wire \r_shifter_reg[71]_i_26_n_1 ;
  wire \r_shifter_reg[71]_i_26_n_2 ;
  wire \r_shifter_reg[71]_i_26_n_3 ;
  wire \r_shifter_reg[71]_i_27_n_1 ;
  wire \r_shifter_reg[71]_i_27_n_2 ;
  wire \r_shifter_reg[71]_i_27_n_3 ;
  wire \r_shifter_reg[71]_i_28_n_0 ;
  wire \r_shifter_reg[71]_i_28_n_1 ;
  wire \r_shifter_reg[71]_i_28_n_2 ;
  wire \r_shifter_reg[71]_i_28_n_3 ;
  wire \r_shifter_reg[71]_i_29_n_0 ;
  wire \r_shifter_reg[71]_i_29_n_1 ;
  wire \r_shifter_reg[71]_i_29_n_2 ;
  wire \r_shifter_reg[71]_i_29_n_3 ;
  wire \r_shifter_reg[71]_i_30_n_0 ;
  wire \r_shifter_reg[71]_i_30_n_1 ;
  wire \r_shifter_reg[71]_i_30_n_2 ;
  wire \r_shifter_reg[71]_i_30_n_3 ;
  wire \r_shifter_reg[71]_i_31_n_0 ;
  wire \r_shifter_reg[71]_i_31_n_1 ;
  wire \r_shifter_reg[71]_i_31_n_2 ;
  wire \r_shifter_reg[71]_i_31_n_3 ;
  wire \r_shifter_reg[71]_i_6_n_0 ;
  wire \r_shifter_reg[71]_i_6_n_1 ;
  wire \r_shifter_reg[71]_i_6_n_2 ;
  wire \r_shifter_reg[71]_i_6_n_3 ;
  wire \r_shifter_reg_n_0_[0] ;
  wire \r_shifter_reg_n_0_[10] ;
  wire \r_shifter_reg_n_0_[11] ;
  wire \r_shifter_reg_n_0_[12] ;
  wire \r_shifter_reg_n_0_[13] ;
  wire \r_shifter_reg_n_0_[14] ;
  wire \r_shifter_reg_n_0_[15] ;
  wire \r_shifter_reg_n_0_[16] ;
  wire \r_shifter_reg_n_0_[17] ;
  wire \r_shifter_reg_n_0_[18] ;
  wire \r_shifter_reg_n_0_[19] ;
  wire \r_shifter_reg_n_0_[1] ;
  wire \r_shifter_reg_n_0_[20] ;
  wire \r_shifter_reg_n_0_[21] ;
  wire \r_shifter_reg_n_0_[22] ;
  wire \r_shifter_reg_n_0_[23] ;
  wire \r_shifter_reg_n_0_[24] ;
  wire \r_shifter_reg_n_0_[25] ;
  wire \r_shifter_reg_n_0_[26] ;
  wire \r_shifter_reg_n_0_[27] ;
  wire \r_shifter_reg_n_0_[2] ;
  wire \r_shifter_reg_n_0_[3] ;
  wire \r_shifter_reg_n_0_[4] ;
  wire \r_shifter_reg_n_0_[5] ;
  wire \r_shifter_reg_n_0_[6] ;
  wire \r_shifter_reg_n_0_[7] ;
  wire \r_shifter_reg_n_0_[8] ;
  wire \r_shifter_reg_n_0_[9] ;
  wire [1:0]r_state;
  wire r_state0;
  wire r_state0_carry__0_i_1_n_0;
  wire r_state0_carry__0_i_2_n_0;
  wire r_state0_carry__0_i_3_n_0;
  wire r_state0_carry__0_i_4_n_0;
  wire r_state0_carry__0_n_0;
  wire r_state0_carry__0_n_1;
  wire r_state0_carry__0_n_2;
  wire r_state0_carry__0_n_3;
  wire r_state0_carry__1_i_1_n_0;
  wire r_state0_carry__1_i_2_n_0;
  wire r_state0_carry__1_i_3_n_0;
  wire r_state0_carry__1_n_1;
  wire r_state0_carry__1_n_2;
  wire r_state0_carry__1_n_3;
  wire r_state0_carry_i_1_n_0;
  wire r_state0_carry_i_2_n_0;
  wire r_state0_carry_i_3_n_0;
  wire r_state0_carry_i_4_n_0;
  wire r_state0_carry_n_0;
  wire r_state0_carry_n_1;
  wire r_state0_carry_n_2;
  wire r_state0_carry_n_3;
  wire \r_state[0]_i_1_n_0 ;
  wire \r_state[1]_i_2_n_0 ;
  wire [4:0]sel0;
  wire [31:0]sel0__0;
  wire [3:2]NLW_r_bitsToShift0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_r_bitsToShift0_carry__6_O_UNCONNECTED;
  wire [3:3]\NLW_r_shifter_reg[71]_i_27_CO_UNCONNECTED ;
  wire [3:0]NLW_r_state0_carry_O_UNCONNECTED;
  wire [3:0]NLW_r_state0_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_r_state0_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_r_state0_carry__1_O_UNCONNECTED;

  LUT2 #(
    .INIT(4'h8)) 
    \o_bcd[39]_i_1 
       (.I0(r_state[1]),
        .I1(r_state[0]),
        .O(\o_bcd[39]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \o_bcd[39]_i_2 
       (.I0(i_resetn),
        .O(\o_bcd[39]_i_2_n_0 ));
  FDCE \o_bcd_reg[0] 
       (.C(i_clk),
        .CE(\o_bcd[39]_i_1_n_0 ),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(data1[0]),
        .Q(o_bcd[0]));
  FDCE \o_bcd_reg[10] 
       (.C(i_clk),
        .CE(\o_bcd[39]_i_1_n_0 ),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(data3[2]),
        .Q(o_bcd[10]));
  FDCE \o_bcd_reg[11] 
       (.C(i_clk),
        .CE(\o_bcd[39]_i_1_n_0 ),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(data3[3]),
        .Q(o_bcd[11]));
  FDCE \o_bcd_reg[12] 
       (.C(i_clk),
        .CE(\o_bcd[39]_i_1_n_0 ),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(data4[0]),
        .Q(o_bcd[12]));
  FDCE \o_bcd_reg[13] 
       (.C(i_clk),
        .CE(\o_bcd[39]_i_1_n_0 ),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(data4[1]),
        .Q(o_bcd[13]));
  FDCE \o_bcd_reg[14] 
       (.C(i_clk),
        .CE(\o_bcd[39]_i_1_n_0 ),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(data4[2]),
        .Q(o_bcd[14]));
  FDCE \o_bcd_reg[15] 
       (.C(i_clk),
        .CE(\o_bcd[39]_i_1_n_0 ),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(data4[3]),
        .Q(o_bcd[15]));
  FDCE \o_bcd_reg[16] 
       (.C(i_clk),
        .CE(\o_bcd[39]_i_1_n_0 ),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(data5[0]),
        .Q(o_bcd[16]));
  FDCE \o_bcd_reg[17] 
       (.C(i_clk),
        .CE(\o_bcd[39]_i_1_n_0 ),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(data5[1]),
        .Q(o_bcd[17]));
  FDCE \o_bcd_reg[18] 
       (.C(i_clk),
        .CE(\o_bcd[39]_i_1_n_0 ),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(data5[2]),
        .Q(o_bcd[18]));
  FDCE \o_bcd_reg[19] 
       (.C(i_clk),
        .CE(\o_bcd[39]_i_1_n_0 ),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(data5[3]),
        .Q(o_bcd[19]));
  FDCE \o_bcd_reg[1] 
       (.C(i_clk),
        .CE(\o_bcd[39]_i_1_n_0 ),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(data1[1]),
        .Q(o_bcd[1]));
  FDCE \o_bcd_reg[20] 
       (.C(i_clk),
        .CE(\o_bcd[39]_i_1_n_0 ),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(data6[0]),
        .Q(o_bcd[20]));
  FDCE \o_bcd_reg[21] 
       (.C(i_clk),
        .CE(\o_bcd[39]_i_1_n_0 ),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(data6[1]),
        .Q(o_bcd[21]));
  FDCE \o_bcd_reg[22] 
       (.C(i_clk),
        .CE(\o_bcd[39]_i_1_n_0 ),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(data6[2]),
        .Q(o_bcd[22]));
  FDCE \o_bcd_reg[23] 
       (.C(i_clk),
        .CE(\o_bcd[39]_i_1_n_0 ),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(data6[3]),
        .Q(o_bcd[23]));
  FDCE \o_bcd_reg[24] 
       (.C(i_clk),
        .CE(\o_bcd[39]_i_1_n_0 ),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(data7[0]),
        .Q(o_bcd[24]));
  FDCE \o_bcd_reg[25] 
       (.C(i_clk),
        .CE(\o_bcd[39]_i_1_n_0 ),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(data7[1]),
        .Q(o_bcd[25]));
  FDCE \o_bcd_reg[26] 
       (.C(i_clk),
        .CE(\o_bcd[39]_i_1_n_0 ),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(data7[2]),
        .Q(o_bcd[26]));
  FDCE \o_bcd_reg[27] 
       (.C(i_clk),
        .CE(\o_bcd[39]_i_1_n_0 ),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(data7[3]),
        .Q(o_bcd[27]));
  FDCE \o_bcd_reg[28] 
       (.C(i_clk),
        .CE(\o_bcd[39]_i_1_n_0 ),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(data8[0]),
        .Q(o_bcd[28]));
  FDCE \o_bcd_reg[29] 
       (.C(i_clk),
        .CE(\o_bcd[39]_i_1_n_0 ),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(data8[1]),
        .Q(o_bcd[29]));
  FDCE \o_bcd_reg[2] 
       (.C(i_clk),
        .CE(\o_bcd[39]_i_1_n_0 ),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(data1[2]),
        .Q(o_bcd[2]));
  FDCE \o_bcd_reg[30] 
       (.C(i_clk),
        .CE(\o_bcd[39]_i_1_n_0 ),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(data8[2]),
        .Q(o_bcd[30]));
  FDCE \o_bcd_reg[31] 
       (.C(i_clk),
        .CE(\o_bcd[39]_i_1_n_0 ),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(data8[3]),
        .Q(o_bcd[31]));
  FDCE \o_bcd_reg[32] 
       (.C(i_clk),
        .CE(\o_bcd[39]_i_1_n_0 ),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(data9[0]),
        .Q(o_bcd[32]));
  FDCE \o_bcd_reg[33] 
       (.C(i_clk),
        .CE(\o_bcd[39]_i_1_n_0 ),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(data9[1]),
        .Q(o_bcd[33]));
  FDCE \o_bcd_reg[34] 
       (.C(i_clk),
        .CE(\o_bcd[39]_i_1_n_0 ),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(data9[2]),
        .Q(o_bcd[34]));
  FDCE \o_bcd_reg[35] 
       (.C(i_clk),
        .CE(\o_bcd[39]_i_1_n_0 ),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(data9[3]),
        .Q(o_bcd[35]));
  FDCE \o_bcd_reg[36] 
       (.C(i_clk),
        .CE(\o_bcd[39]_i_1_n_0 ),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(data10[0]),
        .Q(o_bcd[36]));
  FDCE \o_bcd_reg[37] 
       (.C(i_clk),
        .CE(\o_bcd[39]_i_1_n_0 ),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(data10[1]),
        .Q(o_bcd[37]));
  FDCE \o_bcd_reg[38] 
       (.C(i_clk),
        .CE(\o_bcd[39]_i_1_n_0 ),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(data10[2]),
        .Q(o_bcd[38]));
  FDCE \o_bcd_reg[39] 
       (.C(i_clk),
        .CE(\o_bcd[39]_i_1_n_0 ),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(data10[3]),
        .Q(o_bcd[39]));
  FDCE \o_bcd_reg[3] 
       (.C(i_clk),
        .CE(\o_bcd[39]_i_1_n_0 ),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(data1[3]),
        .Q(o_bcd[3]));
  FDCE \o_bcd_reg[4] 
       (.C(i_clk),
        .CE(\o_bcd[39]_i_1_n_0 ),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(data2[0]),
        .Q(o_bcd[4]));
  FDCE \o_bcd_reg[5] 
       (.C(i_clk),
        .CE(\o_bcd[39]_i_1_n_0 ),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(data2[1]),
        .Q(o_bcd[5]));
  FDCE \o_bcd_reg[6] 
       (.C(i_clk),
        .CE(\o_bcd[39]_i_1_n_0 ),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(data2[2]),
        .Q(o_bcd[6]));
  FDCE \o_bcd_reg[7] 
       (.C(i_clk),
        .CE(\o_bcd[39]_i_1_n_0 ),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(data2[3]),
        .Q(o_bcd[7]));
  FDCE \o_bcd_reg[8] 
       (.C(i_clk),
        .CE(\o_bcd[39]_i_1_n_0 ),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(data3[0]),
        .Q(o_bcd[8]));
  FDCE \o_bcd_reg[9] 
       (.C(i_clk),
        .CE(\o_bcd[39]_i_1_n_0 ),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(data3[1]),
        .Q(o_bcd[9]));
  CARRY4 r_bitsToShift0_carry
       (.CI(1'b0),
        .CO({r_bitsToShift0_carry_n_0,r_bitsToShift0_carry_n_1,r_bitsToShift0_carry_n_2,r_bitsToShift0_carry_n_3}),
        .CYINIT(sel0__0[0]),
        .DI(sel0__0[4:1]),
        .O(r_bitsToShift0[4:1]),
        .S({r_bitsToShift0_carry_i_1_n_0,r_bitsToShift0_carry_i_2_n_0,r_bitsToShift0_carry_i_3_n_0,r_bitsToShift0_carry_i_4_n_0}));
  CARRY4 r_bitsToShift0_carry__0
       (.CI(r_bitsToShift0_carry_n_0),
        .CO({r_bitsToShift0_carry__0_n_0,r_bitsToShift0_carry__0_n_1,r_bitsToShift0_carry__0_n_2,r_bitsToShift0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(sel0__0[8:5]),
        .O(r_bitsToShift0[8:5]),
        .S({r_bitsToShift0_carry__0_i_1_n_0,r_bitsToShift0_carry__0_i_2_n_0,r_bitsToShift0_carry__0_i_3_n_0,r_bitsToShift0_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    r_bitsToShift0_carry__0_i_1
       (.I0(sel0__0[8]),
        .O(r_bitsToShift0_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    r_bitsToShift0_carry__0_i_2
       (.I0(sel0__0[7]),
        .O(r_bitsToShift0_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    r_bitsToShift0_carry__0_i_3
       (.I0(sel0__0[6]),
        .O(r_bitsToShift0_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    r_bitsToShift0_carry__0_i_4
       (.I0(sel0__0[5]),
        .O(r_bitsToShift0_carry__0_i_4_n_0));
  CARRY4 r_bitsToShift0_carry__1
       (.CI(r_bitsToShift0_carry__0_n_0),
        .CO({r_bitsToShift0_carry__1_n_0,r_bitsToShift0_carry__1_n_1,r_bitsToShift0_carry__1_n_2,r_bitsToShift0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(sel0__0[12:9]),
        .O(r_bitsToShift0[12:9]),
        .S({r_bitsToShift0_carry__1_i_1_n_0,r_bitsToShift0_carry__1_i_2_n_0,r_bitsToShift0_carry__1_i_3_n_0,r_bitsToShift0_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    r_bitsToShift0_carry__1_i_1
       (.I0(sel0__0[12]),
        .O(r_bitsToShift0_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    r_bitsToShift0_carry__1_i_2
       (.I0(sel0__0[11]),
        .O(r_bitsToShift0_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    r_bitsToShift0_carry__1_i_3
       (.I0(sel0__0[10]),
        .O(r_bitsToShift0_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    r_bitsToShift0_carry__1_i_4
       (.I0(sel0__0[9]),
        .O(r_bitsToShift0_carry__1_i_4_n_0));
  CARRY4 r_bitsToShift0_carry__2
       (.CI(r_bitsToShift0_carry__1_n_0),
        .CO({r_bitsToShift0_carry__2_n_0,r_bitsToShift0_carry__2_n_1,r_bitsToShift0_carry__2_n_2,r_bitsToShift0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(sel0__0[16:13]),
        .O(r_bitsToShift0[16:13]),
        .S({r_bitsToShift0_carry__2_i_1_n_0,r_bitsToShift0_carry__2_i_2_n_0,r_bitsToShift0_carry__2_i_3_n_0,r_bitsToShift0_carry__2_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    r_bitsToShift0_carry__2_i_1
       (.I0(sel0__0[16]),
        .O(r_bitsToShift0_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    r_bitsToShift0_carry__2_i_2
       (.I0(sel0__0[15]),
        .O(r_bitsToShift0_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    r_bitsToShift0_carry__2_i_3
       (.I0(sel0__0[14]),
        .O(r_bitsToShift0_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    r_bitsToShift0_carry__2_i_4
       (.I0(sel0__0[13]),
        .O(r_bitsToShift0_carry__2_i_4_n_0));
  CARRY4 r_bitsToShift0_carry__3
       (.CI(r_bitsToShift0_carry__2_n_0),
        .CO({r_bitsToShift0_carry__3_n_0,r_bitsToShift0_carry__3_n_1,r_bitsToShift0_carry__3_n_2,r_bitsToShift0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(sel0__0[20:17]),
        .O(r_bitsToShift0[20:17]),
        .S({r_bitsToShift0_carry__3_i_1_n_0,r_bitsToShift0_carry__3_i_2_n_0,r_bitsToShift0_carry__3_i_3_n_0,r_bitsToShift0_carry__3_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    r_bitsToShift0_carry__3_i_1
       (.I0(sel0__0[20]),
        .O(r_bitsToShift0_carry__3_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    r_bitsToShift0_carry__3_i_2
       (.I0(sel0__0[19]),
        .O(r_bitsToShift0_carry__3_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    r_bitsToShift0_carry__3_i_3
       (.I0(sel0__0[18]),
        .O(r_bitsToShift0_carry__3_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    r_bitsToShift0_carry__3_i_4
       (.I0(sel0__0[17]),
        .O(r_bitsToShift0_carry__3_i_4_n_0));
  CARRY4 r_bitsToShift0_carry__4
       (.CI(r_bitsToShift0_carry__3_n_0),
        .CO({r_bitsToShift0_carry__4_n_0,r_bitsToShift0_carry__4_n_1,r_bitsToShift0_carry__4_n_2,r_bitsToShift0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(sel0__0[24:21]),
        .O(r_bitsToShift0[24:21]),
        .S({r_bitsToShift0_carry__4_i_1_n_0,r_bitsToShift0_carry__4_i_2_n_0,r_bitsToShift0_carry__4_i_3_n_0,r_bitsToShift0_carry__4_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    r_bitsToShift0_carry__4_i_1
       (.I0(sel0__0[24]),
        .O(r_bitsToShift0_carry__4_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    r_bitsToShift0_carry__4_i_2
       (.I0(sel0__0[23]),
        .O(r_bitsToShift0_carry__4_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    r_bitsToShift0_carry__4_i_3
       (.I0(sel0__0[22]),
        .O(r_bitsToShift0_carry__4_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    r_bitsToShift0_carry__4_i_4
       (.I0(sel0__0[21]),
        .O(r_bitsToShift0_carry__4_i_4_n_0));
  CARRY4 r_bitsToShift0_carry__5
       (.CI(r_bitsToShift0_carry__4_n_0),
        .CO({r_bitsToShift0_carry__5_n_0,r_bitsToShift0_carry__5_n_1,r_bitsToShift0_carry__5_n_2,r_bitsToShift0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(sel0__0[28:25]),
        .O(r_bitsToShift0[28:25]),
        .S({r_bitsToShift0_carry__5_i_1_n_0,r_bitsToShift0_carry__5_i_2_n_0,r_bitsToShift0_carry__5_i_3_n_0,r_bitsToShift0_carry__5_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    r_bitsToShift0_carry__5_i_1
       (.I0(sel0__0[28]),
        .O(r_bitsToShift0_carry__5_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    r_bitsToShift0_carry__5_i_2
       (.I0(sel0__0[27]),
        .O(r_bitsToShift0_carry__5_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    r_bitsToShift0_carry__5_i_3
       (.I0(sel0__0[26]),
        .O(r_bitsToShift0_carry__5_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    r_bitsToShift0_carry__5_i_4
       (.I0(sel0__0[25]),
        .O(r_bitsToShift0_carry__5_i_4_n_0));
  CARRY4 r_bitsToShift0_carry__6
       (.CI(r_bitsToShift0_carry__5_n_0),
        .CO({NLW_r_bitsToShift0_carry__6_CO_UNCONNECTED[3:2],r_bitsToShift0_carry__6_n_2,r_bitsToShift0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,sel0__0[30:29]}),
        .O({NLW_r_bitsToShift0_carry__6_O_UNCONNECTED[3],r_bitsToShift0[31:29]}),
        .S({1'b0,r_bitsToShift0_carry__6_i_1_n_0,r_bitsToShift0_carry__6_i_2_n_0,r_bitsToShift0_carry__6_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    r_bitsToShift0_carry__6_i_1
       (.I0(sel0__0[31]),
        .O(r_bitsToShift0_carry__6_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    r_bitsToShift0_carry__6_i_2
       (.I0(sel0__0[30]),
        .O(r_bitsToShift0_carry__6_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    r_bitsToShift0_carry__6_i_3
       (.I0(sel0__0[29]),
        .O(r_bitsToShift0_carry__6_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    r_bitsToShift0_carry_i_1
       (.I0(sel0__0[4]),
        .O(r_bitsToShift0_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    r_bitsToShift0_carry_i_2
       (.I0(sel0__0[3]),
        .O(r_bitsToShift0_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    r_bitsToShift0_carry_i_3
       (.I0(sel0__0[2]),
        .O(r_bitsToShift0_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    r_bitsToShift0_carry_i_4
       (.I0(sel0__0[1]),
        .O(r_bitsToShift0_carry_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \r_bitsToShift[0]_i_1 
       (.I0(r_state[0]),
        .I1(sel0__0[0]),
        .O(p_1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_bitsToShift[10]_i_1 
       (.I0(r_state[0]),
        .I1(r_bitsToShift0[10]),
        .O(p_1_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_bitsToShift[11]_i_1 
       (.I0(r_state[0]),
        .I1(r_bitsToShift0[11]),
        .O(p_1_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_bitsToShift[12]_i_1 
       (.I0(r_state[0]),
        .I1(r_bitsToShift0[12]),
        .O(p_1_in[12]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_bitsToShift[13]_i_1 
       (.I0(r_state[0]),
        .I1(r_bitsToShift0[13]),
        .O(p_1_in[13]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_bitsToShift[14]_i_1 
       (.I0(r_state[0]),
        .I1(r_bitsToShift0[14]),
        .O(p_1_in[14]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_bitsToShift[15]_i_1 
       (.I0(r_state[0]),
        .I1(r_bitsToShift0[15]),
        .O(p_1_in[15]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_bitsToShift[16]_i_1 
       (.I0(r_state[0]),
        .I1(r_bitsToShift0[16]),
        .O(p_1_in[16]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_bitsToShift[17]_i_1 
       (.I0(r_state[0]),
        .I1(r_bitsToShift0[17]),
        .O(p_1_in[17]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_bitsToShift[18]_i_1 
       (.I0(r_state[0]),
        .I1(r_bitsToShift0[18]),
        .O(p_1_in[18]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_bitsToShift[19]_i_1 
       (.I0(r_state[0]),
        .I1(r_bitsToShift0[19]),
        .O(p_1_in[19]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \r_bitsToShift[1]_i_1 
       (.I0(r_bitsToShift0[1]),
        .I1(r_state[0]),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_bitsToShift[20]_i_1 
       (.I0(r_state[0]),
        .I1(r_bitsToShift0[20]),
        .O(p_1_in[20]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_bitsToShift[21]_i_1 
       (.I0(r_state[0]),
        .I1(r_bitsToShift0[21]),
        .O(p_1_in[21]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_bitsToShift[22]_i_1 
       (.I0(r_state[0]),
        .I1(r_bitsToShift0[22]),
        .O(p_1_in[22]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_bitsToShift[23]_i_1 
       (.I0(r_state[0]),
        .I1(r_bitsToShift0[23]),
        .O(p_1_in[23]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_bitsToShift[24]_i_1 
       (.I0(r_state[0]),
        .I1(r_bitsToShift0[24]),
        .O(p_1_in[24]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_bitsToShift[25]_i_1 
       (.I0(r_state[0]),
        .I1(r_bitsToShift0[25]),
        .O(p_1_in[25]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_bitsToShift[26]_i_1 
       (.I0(r_state[0]),
        .I1(r_bitsToShift0[26]),
        .O(p_1_in[26]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_bitsToShift[27]_i_1 
       (.I0(r_state[0]),
        .I1(r_bitsToShift0[27]),
        .O(p_1_in[27]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_bitsToShift[28]_i_1 
       (.I0(r_state[0]),
        .I1(r_bitsToShift0[28]),
        .O(p_1_in[28]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_bitsToShift[29]_i_1 
       (.I0(r_state[0]),
        .I1(r_bitsToShift0[29]),
        .O(p_1_in[29]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \r_bitsToShift[2]_i_1 
       (.I0(r_bitsToShift0[2]),
        .I1(r_state[0]),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_bitsToShift[30]_i_1 
       (.I0(r_state[0]),
        .I1(r_bitsToShift0[30]),
        .O(p_1_in[30]));
  LUT4 #(
    .INIT(16'h1504)) 
    \r_bitsToShift[31]_i_1 
       (.I0(r_state[1]),
        .I1(r_state[0]),
        .I2(\r_bitsToShift[31]_i_3_n_0 ),
        .I3(r_state0_carry__1_n_1),
        .O(\r_bitsToShift[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \r_bitsToShift[31]_i_10 
       (.I0(sel0__0[8]),
        .I1(sel0__0[0]),
        .I2(sel0__0[13]),
        .I3(sel0__0[9]),
        .O(\r_bitsToShift[31]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \r_bitsToShift[31]_i_11 
       (.I0(sel0__0[16]),
        .I1(sel0__0[7]),
        .I2(sel0__0[1]),
        .I3(sel0__0[17]),
        .O(\r_bitsToShift[31]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_bitsToShift[31]_i_2 
       (.I0(r_state[0]),
        .I1(r_bitsToShift0[31]),
        .O(p_1_in[31]));
  LUT4 #(
    .INIT(16'h0004)) 
    \r_bitsToShift[31]_i_3 
       (.I0(\r_bitsToShift[31]_i_4_n_0 ),
        .I1(\r_bitsToShift[31]_i_5_n_0 ),
        .I2(\r_bitsToShift[31]_i_6_n_0 ),
        .I3(\r_bitsToShift[31]_i_7_n_0 ),
        .O(\r_bitsToShift[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \r_bitsToShift[31]_i_4 
       (.I0(sel0__0[25]),
        .I1(sel0__0[28]),
        .I2(sel0__0[21]),
        .I3(sel0__0[29]),
        .I4(\r_bitsToShift[31]_i_8_n_0 ),
        .O(\r_bitsToShift[31]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \r_bitsToShift[31]_i_5 
       (.I0(sel0__0[18]),
        .I1(sel0__0[24]),
        .I2(sel0__0[14]),
        .I3(sel0__0[10]),
        .I4(\r_bitsToShift[31]_i_9_n_0 ),
        .O(\r_bitsToShift[31]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \r_bitsToShift[31]_i_6 
       (.I0(sel0__0[20]),
        .I1(sel0__0[27]),
        .I2(sel0__0[2]),
        .I3(sel0__0[3]),
        .I4(\r_bitsToShift[31]_i_10_n_0 ),
        .O(\r_bitsToShift[31]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \r_bitsToShift[31]_i_7 
       (.I0(sel0__0[11]),
        .I1(sel0__0[15]),
        .I2(sel0__0[23]),
        .I3(sel0__0[31]),
        .I4(\r_bitsToShift[31]_i_11_n_0 ),
        .O(\r_bitsToShift[31]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \r_bitsToShift[31]_i_8 
       (.I0(sel0__0[19]),
        .I1(sel0__0[6]),
        .I2(sel0__0[22]),
        .I3(sel0__0[26]),
        .O(\r_bitsToShift[31]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \r_bitsToShift[31]_i_9 
       (.I0(sel0__0[4]),
        .I1(sel0__0[5]),
        .I2(sel0__0[30]),
        .I3(sel0__0[12]),
        .O(\r_bitsToShift[31]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \r_bitsToShift[3]_i_1 
       (.I0(r_bitsToShift0[3]),
        .I1(r_state[0]),
        .O(p_1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \r_bitsToShift[4]_i_1 
       (.I0(r_bitsToShift0[4]),
        .I1(r_state[0]),
        .O(p_1_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_bitsToShift[5]_i_1 
       (.I0(r_state[0]),
        .I1(r_bitsToShift0[5]),
        .O(p_1_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_bitsToShift[6]_i_1 
       (.I0(r_state[0]),
        .I1(r_bitsToShift0[6]),
        .O(p_1_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_bitsToShift[7]_i_1 
       (.I0(r_state[0]),
        .I1(r_bitsToShift0[7]),
        .O(p_1_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_bitsToShift[8]_i_1 
       (.I0(r_state[0]),
        .I1(r_bitsToShift0[8]),
        .O(p_1_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_bitsToShift[9]_i_1 
       (.I0(r_state[0]),
        .I1(r_bitsToShift0[9]),
        .O(p_1_in[9]));
  FDCE #(
    .INIT(1'b0)) 
    \r_bitsToShift_reg[0] 
       (.C(i_clk),
        .CE(\r_bitsToShift[31]_i_1_n_0 ),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(p_1_in[0]),
        .Q(sel0__0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \r_bitsToShift_reg[10] 
       (.C(i_clk),
        .CE(\r_bitsToShift[31]_i_1_n_0 ),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(p_1_in[10]),
        .Q(sel0__0[10]));
  FDCE #(
    .INIT(1'b0)) 
    \r_bitsToShift_reg[11] 
       (.C(i_clk),
        .CE(\r_bitsToShift[31]_i_1_n_0 ),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(p_1_in[11]),
        .Q(sel0__0[11]));
  FDCE #(
    .INIT(1'b0)) 
    \r_bitsToShift_reg[12] 
       (.C(i_clk),
        .CE(\r_bitsToShift[31]_i_1_n_0 ),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(p_1_in[12]),
        .Q(sel0__0[12]));
  FDCE #(
    .INIT(1'b0)) 
    \r_bitsToShift_reg[13] 
       (.C(i_clk),
        .CE(\r_bitsToShift[31]_i_1_n_0 ),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(p_1_in[13]),
        .Q(sel0__0[13]));
  FDCE #(
    .INIT(1'b0)) 
    \r_bitsToShift_reg[14] 
       (.C(i_clk),
        .CE(\r_bitsToShift[31]_i_1_n_0 ),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(p_1_in[14]),
        .Q(sel0__0[14]));
  FDCE #(
    .INIT(1'b0)) 
    \r_bitsToShift_reg[15] 
       (.C(i_clk),
        .CE(\r_bitsToShift[31]_i_1_n_0 ),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(p_1_in[15]),
        .Q(sel0__0[15]));
  FDCE #(
    .INIT(1'b0)) 
    \r_bitsToShift_reg[16] 
       (.C(i_clk),
        .CE(\r_bitsToShift[31]_i_1_n_0 ),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(p_1_in[16]),
        .Q(sel0__0[16]));
  FDCE #(
    .INIT(1'b0)) 
    \r_bitsToShift_reg[17] 
       (.C(i_clk),
        .CE(\r_bitsToShift[31]_i_1_n_0 ),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(p_1_in[17]),
        .Q(sel0__0[17]));
  FDCE #(
    .INIT(1'b0)) 
    \r_bitsToShift_reg[18] 
       (.C(i_clk),
        .CE(\r_bitsToShift[31]_i_1_n_0 ),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(p_1_in[18]),
        .Q(sel0__0[18]));
  FDCE #(
    .INIT(1'b0)) 
    \r_bitsToShift_reg[19] 
       (.C(i_clk),
        .CE(\r_bitsToShift[31]_i_1_n_0 ),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(p_1_in[19]),
        .Q(sel0__0[19]));
  FDCE #(
    .INIT(1'b0)) 
    \r_bitsToShift_reg[1] 
       (.C(i_clk),
        .CE(\r_bitsToShift[31]_i_1_n_0 ),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(p_1_in[1]),
        .Q(sel0__0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \r_bitsToShift_reg[20] 
       (.C(i_clk),
        .CE(\r_bitsToShift[31]_i_1_n_0 ),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(p_1_in[20]),
        .Q(sel0__0[20]));
  FDCE #(
    .INIT(1'b0)) 
    \r_bitsToShift_reg[21] 
       (.C(i_clk),
        .CE(\r_bitsToShift[31]_i_1_n_0 ),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(p_1_in[21]),
        .Q(sel0__0[21]));
  FDCE #(
    .INIT(1'b0)) 
    \r_bitsToShift_reg[22] 
       (.C(i_clk),
        .CE(\r_bitsToShift[31]_i_1_n_0 ),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(p_1_in[22]),
        .Q(sel0__0[22]));
  FDCE #(
    .INIT(1'b0)) 
    \r_bitsToShift_reg[23] 
       (.C(i_clk),
        .CE(\r_bitsToShift[31]_i_1_n_0 ),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(p_1_in[23]),
        .Q(sel0__0[23]));
  FDCE #(
    .INIT(1'b0)) 
    \r_bitsToShift_reg[24] 
       (.C(i_clk),
        .CE(\r_bitsToShift[31]_i_1_n_0 ),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(p_1_in[24]),
        .Q(sel0__0[24]));
  FDCE #(
    .INIT(1'b0)) 
    \r_bitsToShift_reg[25] 
       (.C(i_clk),
        .CE(\r_bitsToShift[31]_i_1_n_0 ),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(p_1_in[25]),
        .Q(sel0__0[25]));
  FDCE #(
    .INIT(1'b0)) 
    \r_bitsToShift_reg[26] 
       (.C(i_clk),
        .CE(\r_bitsToShift[31]_i_1_n_0 ),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(p_1_in[26]),
        .Q(sel0__0[26]));
  FDCE #(
    .INIT(1'b0)) 
    \r_bitsToShift_reg[27] 
       (.C(i_clk),
        .CE(\r_bitsToShift[31]_i_1_n_0 ),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(p_1_in[27]),
        .Q(sel0__0[27]));
  FDCE #(
    .INIT(1'b0)) 
    \r_bitsToShift_reg[28] 
       (.C(i_clk),
        .CE(\r_bitsToShift[31]_i_1_n_0 ),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(p_1_in[28]),
        .Q(sel0__0[28]));
  FDCE #(
    .INIT(1'b0)) 
    \r_bitsToShift_reg[29] 
       (.C(i_clk),
        .CE(\r_bitsToShift[31]_i_1_n_0 ),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(p_1_in[29]),
        .Q(sel0__0[29]));
  FDCE #(
    .INIT(1'b0)) 
    \r_bitsToShift_reg[2] 
       (.C(i_clk),
        .CE(\r_bitsToShift[31]_i_1_n_0 ),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(p_1_in[2]),
        .Q(sel0__0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \r_bitsToShift_reg[30] 
       (.C(i_clk),
        .CE(\r_bitsToShift[31]_i_1_n_0 ),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(p_1_in[30]),
        .Q(sel0__0[30]));
  FDCE #(
    .INIT(1'b0)) 
    \r_bitsToShift_reg[31] 
       (.C(i_clk),
        .CE(\r_bitsToShift[31]_i_1_n_0 ),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(p_1_in[31]),
        .Q(sel0__0[31]));
  FDCE #(
    .INIT(1'b0)) 
    \r_bitsToShift_reg[3] 
       (.C(i_clk),
        .CE(\r_bitsToShift[31]_i_1_n_0 ),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(p_1_in[3]),
        .Q(sel0__0[3]));
  FDCE #(
    .INIT(1'b0)) 
    \r_bitsToShift_reg[4] 
       (.C(i_clk),
        .CE(\r_bitsToShift[31]_i_1_n_0 ),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(p_1_in[4]),
        .Q(sel0__0[4]));
  FDCE #(
    .INIT(1'b0)) 
    \r_bitsToShift_reg[5] 
       (.C(i_clk),
        .CE(\r_bitsToShift[31]_i_1_n_0 ),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(p_1_in[5]),
        .Q(sel0__0[5]));
  FDCE #(
    .INIT(1'b0)) 
    \r_bitsToShift_reg[6] 
       (.C(i_clk),
        .CE(\r_bitsToShift[31]_i_1_n_0 ),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(p_1_in[6]),
        .Q(sel0__0[6]));
  FDCE #(
    .INIT(1'b0)) 
    \r_bitsToShift_reg[7] 
       (.C(i_clk),
        .CE(\r_bitsToShift[31]_i_1_n_0 ),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(p_1_in[7]),
        .Q(sel0__0[7]));
  FDCE #(
    .INIT(1'b0)) 
    \r_bitsToShift_reg[8] 
       (.C(i_clk),
        .CE(\r_bitsToShift[31]_i_1_n_0 ),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(p_1_in[8]),
        .Q(sel0__0[8]));
  FDCE #(
    .INIT(1'b0)) 
    \r_bitsToShift_reg[9] 
       (.C(i_clk),
        .CE(\r_bitsToShift[31]_i_1_n_0 ),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(p_1_in[9]),
        .Q(sel0__0[9]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \r_digitsToCheck[0]_i_1 
       (.I0(r_state[1]),
        .I1(sel0[0]),
        .O(\r_digitsToCheck[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \r_digitsToCheck[1]_i_1 
       (.I0(r_state[1]),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .O(\r_digitsToCheck[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hA802)) 
    \r_digitsToCheck[2]_i_1 
       (.I0(r_state[1]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .O(\r_digitsToCheck[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hDDDDDDD7)) 
    \r_digitsToCheck[3]_i_1 
       (.I0(r_state[1]),
        .I1(sel0[3]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .O(\r_digitsToCheck[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0426)) 
    \r_digitsToCheck[4]_i_1 
       (.I0(r_state[1]),
        .I1(r_state[0]),
        .I2(\r_bitsToShift[31]_i_3_n_0 ),
        .I3(\r_digitsToCheck[4]_i_3_n_0 ),
        .O(\r_digitsToCheck[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA800000002)) 
    \r_digitsToCheck[4]_i_2 
       (.I0(r_state[1]),
        .I1(sel0[3]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(sel0[2]),
        .I5(sel0[4]),
        .O(\r_digitsToCheck[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \r_digitsToCheck[4]_i_3 
       (.I0(sel0[4]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(sel0[3]),
        .O(\r_digitsToCheck[4]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \r_digitsToCheck_reg[0] 
       (.C(i_clk),
        .CE(\r_digitsToCheck[4]_i_1_n_0 ),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(\r_digitsToCheck[0]_i_1_n_0 ),
        .Q(sel0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \r_digitsToCheck_reg[1] 
       (.C(i_clk),
        .CE(\r_digitsToCheck[4]_i_1_n_0 ),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(\r_digitsToCheck[1]_i_1_n_0 ),
        .Q(sel0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \r_digitsToCheck_reg[2] 
       (.C(i_clk),
        .CE(\r_digitsToCheck[4]_i_1_n_0 ),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(\r_digitsToCheck[2]_i_1_n_0 ),
        .Q(sel0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \r_digitsToCheck_reg[3] 
       (.C(i_clk),
        .CE(\r_digitsToCheck[4]_i_1_n_0 ),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(\r_digitsToCheck[3]_i_1_n_0 ),
        .Q(sel0[3]));
  FDCE #(
    .INIT(1'b0)) 
    \r_digitsToCheck_reg[4] 
       (.C(i_clk),
        .CE(\r_digitsToCheck[4]_i_1_n_0 ),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(\r_digitsToCheck[4]_i_2_n_0 ),
        .Q(sel0[4]));
  LUT3 #(
    .INIT(8'h04)) 
    \r_oldBinary[31]_i_1 
       (.I0(r_state[0]),
        .I1(r_state0_carry__1_n_1),
        .I2(r_state[1]),
        .O(\r_oldBinary[31]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \r_oldBinary_reg[0] 
       (.C(i_clk),
        .CE(\r_oldBinary[31]_i_1_n_0 ),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(i_binary[0]),
        .Q(r_oldBinary[0]));
  FDCE #(
    .INIT(1'b0)) 
    \r_oldBinary_reg[10] 
       (.C(i_clk),
        .CE(\r_oldBinary[31]_i_1_n_0 ),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(i_binary[10]),
        .Q(r_oldBinary[10]));
  FDCE #(
    .INIT(1'b0)) 
    \r_oldBinary_reg[11] 
       (.C(i_clk),
        .CE(\r_oldBinary[31]_i_1_n_0 ),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(i_binary[11]),
        .Q(r_oldBinary[11]));
  FDCE #(
    .INIT(1'b0)) 
    \r_oldBinary_reg[12] 
       (.C(i_clk),
        .CE(\r_oldBinary[31]_i_1_n_0 ),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(i_binary[12]),
        .Q(r_oldBinary[12]));
  FDCE #(
    .INIT(1'b0)) 
    \r_oldBinary_reg[13] 
       (.C(i_clk),
        .CE(\r_oldBinary[31]_i_1_n_0 ),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(i_binary[13]),
        .Q(r_oldBinary[13]));
  FDCE #(
    .INIT(1'b0)) 
    \r_oldBinary_reg[14] 
       (.C(i_clk),
        .CE(\r_oldBinary[31]_i_1_n_0 ),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(i_binary[14]),
        .Q(r_oldBinary[14]));
  FDCE #(
    .INIT(1'b0)) 
    \r_oldBinary_reg[15] 
       (.C(i_clk),
        .CE(\r_oldBinary[31]_i_1_n_0 ),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(i_binary[15]),
        .Q(r_oldBinary[15]));
  FDCE #(
    .INIT(1'b0)) 
    \r_oldBinary_reg[16] 
       (.C(i_clk),
        .CE(\r_oldBinary[31]_i_1_n_0 ),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(i_binary[16]),
        .Q(r_oldBinary[16]));
  FDCE #(
    .INIT(1'b0)) 
    \r_oldBinary_reg[17] 
       (.C(i_clk),
        .CE(\r_oldBinary[31]_i_1_n_0 ),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(i_binary[17]),
        .Q(r_oldBinary[17]));
  FDCE #(
    .INIT(1'b0)) 
    \r_oldBinary_reg[18] 
       (.C(i_clk),
        .CE(\r_oldBinary[31]_i_1_n_0 ),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(i_binary[18]),
        .Q(r_oldBinary[18]));
  FDCE #(
    .INIT(1'b0)) 
    \r_oldBinary_reg[19] 
       (.C(i_clk),
        .CE(\r_oldBinary[31]_i_1_n_0 ),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(i_binary[19]),
        .Q(r_oldBinary[19]));
  FDCE #(
    .INIT(1'b0)) 
    \r_oldBinary_reg[1] 
       (.C(i_clk),
        .CE(\r_oldBinary[31]_i_1_n_0 ),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(i_binary[1]),
        .Q(r_oldBinary[1]));
  FDCE #(
    .INIT(1'b0)) 
    \r_oldBinary_reg[20] 
       (.C(i_clk),
        .CE(\r_oldBinary[31]_i_1_n_0 ),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(i_binary[20]),
        .Q(r_oldBinary[20]));
  FDCE #(
    .INIT(1'b0)) 
    \r_oldBinary_reg[21] 
       (.C(i_clk),
        .CE(\r_oldBinary[31]_i_1_n_0 ),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(i_binary[21]),
        .Q(r_oldBinary[21]));
  FDCE #(
    .INIT(1'b0)) 
    \r_oldBinary_reg[22] 
       (.C(i_clk),
        .CE(\r_oldBinary[31]_i_1_n_0 ),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(i_binary[22]),
        .Q(r_oldBinary[22]));
  FDCE #(
    .INIT(1'b0)) 
    \r_oldBinary_reg[23] 
       (.C(i_clk),
        .CE(\r_oldBinary[31]_i_1_n_0 ),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(i_binary[23]),
        .Q(r_oldBinary[23]));
  FDCE #(
    .INIT(1'b0)) 
    \r_oldBinary_reg[24] 
       (.C(i_clk),
        .CE(\r_oldBinary[31]_i_1_n_0 ),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(i_binary[24]),
        .Q(r_oldBinary[24]));
  FDCE #(
    .INIT(1'b0)) 
    \r_oldBinary_reg[25] 
       (.C(i_clk),
        .CE(\r_oldBinary[31]_i_1_n_0 ),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(i_binary[25]),
        .Q(r_oldBinary[25]));
  FDCE #(
    .INIT(1'b0)) 
    \r_oldBinary_reg[26] 
       (.C(i_clk),
        .CE(\r_oldBinary[31]_i_1_n_0 ),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(i_binary[26]),
        .Q(r_oldBinary[26]));
  FDCE #(
    .INIT(1'b0)) 
    \r_oldBinary_reg[27] 
       (.C(i_clk),
        .CE(\r_oldBinary[31]_i_1_n_0 ),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(i_binary[27]),
        .Q(r_oldBinary[27]));
  FDCE #(
    .INIT(1'b0)) 
    \r_oldBinary_reg[28] 
       (.C(i_clk),
        .CE(\r_oldBinary[31]_i_1_n_0 ),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(i_binary[28]),
        .Q(r_oldBinary[28]));
  FDCE #(
    .INIT(1'b0)) 
    \r_oldBinary_reg[29] 
       (.C(i_clk),
        .CE(\r_oldBinary[31]_i_1_n_0 ),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(i_binary[29]),
        .Q(r_oldBinary[29]));
  FDCE #(
    .INIT(1'b0)) 
    \r_oldBinary_reg[2] 
       (.C(i_clk),
        .CE(\r_oldBinary[31]_i_1_n_0 ),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(i_binary[2]),
        .Q(r_oldBinary[2]));
  FDCE #(
    .INIT(1'b0)) 
    \r_oldBinary_reg[30] 
       (.C(i_clk),
        .CE(\r_oldBinary[31]_i_1_n_0 ),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(i_binary[30]),
        .Q(r_oldBinary[30]));
  FDCE #(
    .INIT(1'b0)) 
    \r_oldBinary_reg[31] 
       (.C(i_clk),
        .CE(\r_oldBinary[31]_i_1_n_0 ),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(i_binary[31]),
        .Q(r_oldBinary[31]));
  FDCE #(
    .INIT(1'b0)) 
    \r_oldBinary_reg[3] 
       (.C(i_clk),
        .CE(\r_oldBinary[31]_i_1_n_0 ),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(i_binary[3]),
        .Q(r_oldBinary[3]));
  FDCE #(
    .INIT(1'b0)) 
    \r_oldBinary_reg[4] 
       (.C(i_clk),
        .CE(\r_oldBinary[31]_i_1_n_0 ),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(i_binary[4]),
        .Q(r_oldBinary[4]));
  FDCE #(
    .INIT(1'b0)) 
    \r_oldBinary_reg[5] 
       (.C(i_clk),
        .CE(\r_oldBinary[31]_i_1_n_0 ),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(i_binary[5]),
        .Q(r_oldBinary[5]));
  FDCE #(
    .INIT(1'b0)) 
    \r_oldBinary_reg[6] 
       (.C(i_clk),
        .CE(\r_oldBinary[31]_i_1_n_0 ),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(i_binary[6]),
        .Q(r_oldBinary[6]));
  FDCE #(
    .INIT(1'b0)) 
    \r_oldBinary_reg[7] 
       (.C(i_clk),
        .CE(\r_oldBinary[31]_i_1_n_0 ),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(i_binary[7]),
        .Q(r_oldBinary[7]));
  FDCE #(
    .INIT(1'b0)) 
    \r_oldBinary_reg[8] 
       (.C(i_clk),
        .CE(\r_oldBinary[31]_i_1_n_0 ),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(i_binary[8]),
        .Q(r_oldBinary[8]));
  FDCE #(
    .INIT(1'b0)) 
    \r_oldBinary_reg[9] 
       (.C(i_clk),
        .CE(\r_oldBinary[31]_i_1_n_0 ),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(i_binary[9]),
        .Q(r_oldBinary[9]));
  LUT6 #(
    .INIT(64'h000000004444444E)) 
    \r_shifter[0]_i_1 
       (.I0(r_state[1]),
        .I1(i_binary[0]),
        .I2(\r_shifter[67]_i_3_n_0 ),
        .I3(\r_shifter[68]_i_2_n_0 ),
        .I4(r_shifter3[6]),
        .I5(r_state[0]),
        .O(\r_shifter[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAABAAAAAAAAAAAA)) 
    \r_shifter[10]_i_1 
       (.I0(\r_shifter[10]_i_2_n_0 ),
        .I1(\r_shifter[31]_i_5_n_0 ),
        .I2(r_shifter3[4]),
        .I3(\r_shifter[70]_i_2_n_0 ),
        .I4(sel0[0]),
        .I5(sel0[1]),
        .O(\r_shifter[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \r_shifter[10]_i_2 
       (.I0(i_binary[10]),
        .I1(r_state[0]),
        .I2(\r_shifter_reg_n_0_[9] ),
        .I3(r_state[1]),
        .O(\r_shifter[10]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0002AAAA)) 
    \r_shifter[11]_i_1 
       (.I0(i_resetn),
        .I1(\r_shifter[43]_i_3_n_0 ),
        .I2(\r_shifter[63]_i_5_n_0 ),
        .I3(\r_shifter[31]_i_3_n_0 ),
        .I4(\r_shifter[63]_i_6_n_0 ),
        .O(p_0_in[11]));
  LUT6 #(
    .INIT(64'hAAABAAAAAAAAAAAA)) 
    \r_shifter[11]_i_2 
       (.I0(\r_shifter[11]_i_3_n_0 ),
        .I1(\r_shifter[31]_i_5_n_0 ),
        .I2(r_shifter3[4]),
        .I3(\r_shifter[71]_i_7_n_0 ),
        .I4(sel0[0]),
        .I5(sel0[1]),
        .O(\r_shifter[11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \r_shifter[11]_i_3 
       (.I0(i_binary[11]),
        .I1(r_state[0]),
        .I2(\r_shifter_reg_n_0_[10] ),
        .I3(r_state[1]),
        .O(\r_shifter[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAABA)) 
    \r_shifter[12]_i_1 
       (.I0(\r_shifter[12]_i_2_n_0 ),
        .I1(r_shifter3[5]),
        .I2(r_state[1]),
        .I3(r_shifter3[6]),
        .I4(\r_shifter[68]_i_2_n_0 ),
        .I5(\r_shifter[47]_i_3_n_0 ),
        .O(\r_shifter[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \r_shifter[12]_i_2 
       (.I0(i_binary[12]),
        .I1(r_state[0]),
        .I2(\r_shifter_reg_n_0_[11] ),
        .I3(r_state[1]),
        .O(\r_shifter[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAABA)) 
    \r_shifter[13]_i_1 
       (.I0(\r_shifter[13]_i_2_n_0 ),
        .I1(r_shifter3[5]),
        .I2(r_state[1]),
        .I3(r_shifter3[6]),
        .I4(\r_shifter[47]_i_3_n_0 ),
        .I5(\r_shifter[69]_i_2_n_0 ),
        .O(\r_shifter[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \r_shifter[13]_i_2 
       (.I0(i_binary[13]),
        .I1(r_state[0]),
        .I2(\r_shifter_reg_n_0_[12] ),
        .I3(r_state[1]),
        .O(\r_shifter[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAAB)) 
    \r_shifter[14]_i_1 
       (.I0(\r_shifter[14]_i_2_n_0 ),
        .I1(\r_shifter[31]_i_5_n_0 ),
        .I2(r_shifter3[4]),
        .I3(\r_shifter[70]_i_2_n_0 ),
        .I4(sel0[0]),
        .I5(sel0[1]),
        .O(\r_shifter[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \r_shifter[14]_i_2 
       (.I0(i_binary[14]),
        .I1(r_state[0]),
        .I2(\r_shifter_reg_n_0_[13] ),
        .I3(r_state[1]),
        .O(\r_shifter[14]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0002AAAA)) 
    \r_shifter[15]_i_1 
       (.I0(i_resetn),
        .I1(\r_shifter[47]_i_3_n_0 ),
        .I2(\r_shifter[63]_i_5_n_0 ),
        .I3(\r_shifter[31]_i_3_n_0 ),
        .I4(\r_shifter[63]_i_6_n_0 ),
        .O(p_0_in[15]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAAB)) 
    \r_shifter[15]_i_2 
       (.I0(\r_shifter[15]_i_3_n_0 ),
        .I1(\r_shifter[31]_i_5_n_0 ),
        .I2(r_shifter3[4]),
        .I3(\r_shifter[71]_i_7_n_0 ),
        .I4(sel0[0]),
        .I5(sel0[1]),
        .O(\r_shifter[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \r_shifter[15]_i_3 
       (.I0(i_binary[15]),
        .I1(r_state[0]),
        .I2(\r_shifter_reg_n_0_[14] ),
        .I3(r_state[1]),
        .O(\r_shifter[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAABA)) 
    \r_shifter[16]_i_1 
       (.I0(\r_shifter[16]_i_2_n_0 ),
        .I1(r_shifter3[5]),
        .I2(r_state[1]),
        .I3(r_shifter3[6]),
        .I4(\r_shifter[68]_i_2_n_0 ),
        .I5(\r_shifter[51]_i_3_n_0 ),
        .O(\r_shifter[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \r_shifter[16]_i_2 
       (.I0(i_binary[16]),
        .I1(r_state[0]),
        .I2(\r_shifter_reg_n_0_[15] ),
        .I3(r_state[1]),
        .O(\r_shifter[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAABA)) 
    \r_shifter[17]_i_1 
       (.I0(\r_shifter[17]_i_2_n_0 ),
        .I1(r_shifter3[5]),
        .I2(r_state[1]),
        .I3(r_shifter3[6]),
        .I4(\r_shifter[51]_i_3_n_0 ),
        .I5(\r_shifter[69]_i_2_n_0 ),
        .O(\r_shifter[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \r_shifter[17]_i_2 
       (.I0(i_binary[17]),
        .I1(r_state[0]),
        .I2(\r_shifter_reg_n_0_[16] ),
        .I3(r_state[1]),
        .O(\r_shifter[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAABAAAAAAAAA)) 
    \r_shifter[18]_i_1 
       (.I0(\r_shifter[18]_i_2_n_0 ),
        .I1(\r_shifter[31]_i_5_n_0 ),
        .I2(r_shifter3[4]),
        .I3(\r_shifter[70]_i_2_n_0 ),
        .I4(sel0[1]),
        .I5(sel0[0]),
        .O(\r_shifter[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \r_shifter[18]_i_2 
       (.I0(i_binary[18]),
        .I1(r_state[0]),
        .I2(\r_shifter_reg_n_0_[17] ),
        .I3(r_state[1]),
        .O(\r_shifter[18]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0002AAAA)) 
    \r_shifter[19]_i_1 
       (.I0(i_resetn),
        .I1(\r_shifter[51]_i_3_n_0 ),
        .I2(\r_shifter[63]_i_5_n_0 ),
        .I3(\r_shifter[31]_i_3_n_0 ),
        .I4(\r_shifter[63]_i_6_n_0 ),
        .O(p_0_in[19]));
  LUT6 #(
    .INIT(64'hAAAAAABAAAAAAAAA)) 
    \r_shifter[19]_i_2 
       (.I0(\r_shifter[19]_i_3_n_0 ),
        .I1(\r_shifter[31]_i_5_n_0 ),
        .I2(r_shifter3[4]),
        .I3(\r_shifter[71]_i_7_n_0 ),
        .I4(sel0[1]),
        .I5(sel0[0]),
        .O(\r_shifter[19]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \r_shifter[19]_i_3 
       (.I0(i_binary[19]),
        .I1(r_state[0]),
        .I2(\r_shifter_reg_n_0_[18] ),
        .I3(r_state[1]),
        .O(\r_shifter[19]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00FFB8B80000B8B8)) 
    \r_shifter[1]_i_1 
       (.I0(\r_shifter_reg_n_0_[0] ),
        .I1(r_state[0]),
        .I2(i_binary[1]),
        .I3(r_shifter3[6]),
        .I4(r_state[1]),
        .I5(\r_shifter[1]_i_2_n_0 ),
        .O(\r_shifter[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \r_shifter[1]_i_2 
       (.I0(r_shifter3[4]),
        .I1(\r_shifter[71]_i_9_n_0 ),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(r_shifter3[5]),
        .I5(\r_shifter[69]_i_2_n_0 ),
        .O(\r_shifter[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAABA)) 
    \r_shifter[20]_i_1 
       (.I0(\r_shifter[20]_i_2_n_0 ),
        .I1(r_shifter3[5]),
        .I2(r_state[1]),
        .I3(r_shifter3[6]),
        .I4(\r_shifter[68]_i_2_n_0 ),
        .I5(\r_shifter[55]_i_3_n_0 ),
        .O(\r_shifter[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \r_shifter[20]_i_2 
       (.I0(i_binary[20]),
        .I1(r_state[0]),
        .I2(\r_shifter_reg_n_0_[19] ),
        .I3(r_state[1]),
        .O(\r_shifter[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAABA)) 
    \r_shifter[21]_i_1 
       (.I0(\r_shifter[21]_i_2_n_0 ),
        .I1(r_shifter3[5]),
        .I2(r_state[1]),
        .I3(r_shifter3[6]),
        .I4(\r_shifter[55]_i_3_n_0 ),
        .I5(\r_shifter[69]_i_2_n_0 ),
        .O(\r_shifter[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \r_shifter[21]_i_2 
       (.I0(i_binary[21]),
        .I1(r_state[0]),
        .I2(\r_shifter_reg_n_0_[20] ),
        .I3(r_state[1]),
        .O(\r_shifter[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAABAAAAAAAAA)) 
    \r_shifter[22]_i_1 
       (.I0(\r_shifter[22]_i_2_n_0 ),
        .I1(\r_shifter[31]_i_5_n_0 ),
        .I2(r_shifter3[4]),
        .I3(\r_shifter[70]_i_2_n_0 ),
        .I4(sel0[0]),
        .I5(sel0[1]),
        .O(\r_shifter[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \r_shifter[22]_i_2 
       (.I0(i_binary[22]),
        .I1(r_state[0]),
        .I2(\r_shifter_reg_n_0_[21] ),
        .I3(r_state[1]),
        .O(\r_shifter[22]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0002AAAA)) 
    \r_shifter[23]_i_1 
       (.I0(i_resetn),
        .I1(\r_shifter[55]_i_3_n_0 ),
        .I2(\r_shifter[63]_i_5_n_0 ),
        .I3(\r_shifter[31]_i_3_n_0 ),
        .I4(\r_shifter[63]_i_6_n_0 ),
        .O(p_0_in[23]));
  LUT6 #(
    .INIT(64'hAAAAAABAAAAAAAAA)) 
    \r_shifter[23]_i_2 
       (.I0(\r_shifter[23]_i_3_n_0 ),
        .I1(\r_shifter[31]_i_5_n_0 ),
        .I2(r_shifter3[4]),
        .I3(\r_shifter[71]_i_7_n_0 ),
        .I4(sel0[0]),
        .I5(sel0[1]),
        .O(\r_shifter[23]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \r_shifter[23]_i_3 
       (.I0(i_binary[23]),
        .I1(r_state[0]),
        .I2(\r_shifter_reg_n_0_[22] ),
        .I3(r_state[1]),
        .O(\r_shifter[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAABA)) 
    \r_shifter[24]_i_1 
       (.I0(\r_shifter[24]_i_2_n_0 ),
        .I1(r_shifter3[5]),
        .I2(r_state[1]),
        .I3(r_shifter3[6]),
        .I4(\r_shifter[68]_i_2_n_0 ),
        .I5(\r_shifter[59]_i_3_n_0 ),
        .O(\r_shifter[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \r_shifter[24]_i_2 
       (.I0(i_binary[24]),
        .I1(r_state[0]),
        .I2(\r_shifter_reg_n_0_[23] ),
        .I3(r_state[1]),
        .O(\r_shifter[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAABA)) 
    \r_shifter[25]_i_1 
       (.I0(\r_shifter[25]_i_2_n_0 ),
        .I1(r_shifter3[5]),
        .I2(r_state[1]),
        .I3(r_shifter3[6]),
        .I4(\r_shifter[59]_i_3_n_0 ),
        .I5(\r_shifter[69]_i_2_n_0 ),
        .O(\r_shifter[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \r_shifter[25]_i_2 
       (.I0(i_binary[25]),
        .I1(r_state[0]),
        .I2(\r_shifter_reg_n_0_[24] ),
        .I3(r_state[1]),
        .O(\r_shifter[25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAABAAAAAAAAAAAAA)) 
    \r_shifter[26]_i_1 
       (.I0(\r_shifter[26]_i_2_n_0 ),
        .I1(\r_shifter[31]_i_5_n_0 ),
        .I2(r_shifter3[4]),
        .I3(\r_shifter[70]_i_2_n_0 ),
        .I4(sel0[0]),
        .I5(sel0[1]),
        .O(\r_shifter[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \r_shifter[26]_i_2 
       (.I0(i_binary[26]),
        .I1(r_state[0]),
        .I2(\r_shifter_reg_n_0_[25] ),
        .I3(r_state[1]),
        .O(\r_shifter[26]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0002AAAA)) 
    \r_shifter[27]_i_1 
       (.I0(i_resetn),
        .I1(\r_shifter[59]_i_3_n_0 ),
        .I2(\r_shifter[63]_i_5_n_0 ),
        .I3(\r_shifter[31]_i_3_n_0 ),
        .I4(\r_shifter[63]_i_6_n_0 ),
        .O(p_0_in[27]));
  LUT6 #(
    .INIT(64'hAABAAAAAAAAAAAAA)) 
    \r_shifter[27]_i_2 
       (.I0(\r_shifter[27]_i_3_n_0 ),
        .I1(\r_shifter[31]_i_5_n_0 ),
        .I2(r_shifter3[4]),
        .I3(\r_shifter[71]_i_7_n_0 ),
        .I4(sel0[0]),
        .I5(sel0[1]),
        .O(\r_shifter[27]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \r_shifter[27]_i_3 
       (.I0(i_binary[27]),
        .I1(r_state[0]),
        .I2(\r_shifter_reg_n_0_[26] ),
        .I3(r_state[1]),
        .O(\r_shifter[27]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAABA)) 
    \r_shifter[28]_i_1 
       (.I0(\r_shifter[28]_i_2_n_0 ),
        .I1(r_shifter3[5]),
        .I2(r_state[1]),
        .I3(r_shifter3[6]),
        .I4(\r_shifter[68]_i_2_n_0 ),
        .I5(\r_shifter[63]_i_4_n_0 ),
        .O(\r_shifter[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \r_shifter[28]_i_2 
       (.I0(i_binary[28]),
        .I1(r_state[0]),
        .I2(\r_shifter_reg_n_0_[27] ),
        .I3(r_state[1]),
        .O(\r_shifter[28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAABA)) 
    \r_shifter[29]_i_1 
       (.I0(\r_shifter[29]_i_2_n_0 ),
        .I1(r_shifter3[5]),
        .I2(r_state[1]),
        .I3(r_shifter3[6]),
        .I4(\r_shifter[63]_i_4_n_0 ),
        .I5(\r_shifter[69]_i_2_n_0 ),
        .O(\r_shifter[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \r_shifter[29]_i_2 
       (.I0(i_binary[29]),
        .I1(r_state[0]),
        .I2(data0[0]),
        .I3(r_state[1]),
        .O(\r_shifter[29]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAAA)) 
    \r_shifter[2]_i_1 
       (.I0(\r_shifter[2]_i_2_n_0 ),
        .I1(\r_shifter[31]_i_5_n_0 ),
        .I2(r_shifter3[4]),
        .I3(\r_shifter[70]_i_2_n_0 ),
        .I4(sel0[1]),
        .I5(sel0[0]),
        .O(\r_shifter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \r_shifter[2]_i_2 
       (.I0(i_binary[2]),
        .I1(r_state[0]),
        .I2(\r_shifter_reg_n_0_[1] ),
        .I3(r_state[1]),
        .O(\r_shifter[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAABA)) 
    \r_shifter[30]_i_1 
       (.I0(\r_shifter[30]_i_2_n_0 ),
        .I1(\r_shifter[31]_i_5_n_0 ),
        .I2(r_shifter3[4]),
        .I3(\r_shifter[70]_i_2_n_0 ),
        .I4(sel0[0]),
        .I5(sel0[1]),
        .O(\r_shifter[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \r_shifter[30]_i_2 
       (.I0(i_binary[30]),
        .I1(r_state[0]),
        .I2(data0[1]),
        .I3(r_state[1]),
        .O(\r_shifter[30]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0002AAAA)) 
    \r_shifter[31]_i_1 
       (.I0(i_resetn),
        .I1(\r_shifter[63]_i_4_n_0 ),
        .I2(\r_shifter[63]_i_5_n_0 ),
        .I3(\r_shifter[31]_i_3_n_0 ),
        .I4(\r_shifter[63]_i_6_n_0 ),
        .O(p_0_in[28]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAABA)) 
    \r_shifter[31]_i_2 
       (.I0(\r_shifter[31]_i_4_n_0 ),
        .I1(\r_shifter[31]_i_5_n_0 ),
        .I2(r_shifter3[4]),
        .I3(\r_shifter[71]_i_7_n_0 ),
        .I4(sel0[0]),
        .I5(sel0[1]),
        .O(\r_shifter[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \r_shifter[31]_i_3 
       (.I0(r_shifter3[5]),
        .I1(\r_digitsToCheck[4]_i_3_n_0 ),
        .I2(r_state[0]),
        .I3(r_state[1]),
        .I4(r_shifter3[6]),
        .O(\r_shifter[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \r_shifter[31]_i_4 
       (.I0(i_binary[31]),
        .I1(r_state[0]),
        .I2(data0[2]),
        .I3(r_state[1]),
        .O(\r_shifter[31]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \r_shifter[31]_i_5 
       (.I0(r_shifter3[5]),
        .I1(r_state[1]),
        .I2(r_shifter3[6]),
        .O(\r_shifter[31]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h8F888888)) 
    \r_shifter[32]_i_1 
       (.I0(data0[3]),
        .I1(r_state[0]),
        .I2(\r_shifter[68]_i_2_n_0 ),
        .I3(\r_shifter[63]_i_7_n_0 ),
        .I4(\r_shifter[35]_i_3_n_0 ),
        .O(\r_shifter[32]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h8F888888)) 
    \r_shifter[33]_i_1 
       (.I0(data1[0]),
        .I1(r_state[0]),
        .I2(\r_shifter[69]_i_2_n_0 ),
        .I3(\r_shifter[63]_i_7_n_0 ),
        .I4(\r_shifter[35]_i_3_n_0 ),
        .O(\r_shifter[33]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88888888888888F8)) 
    \r_shifter[34]_i_1 
       (.I0(data1[1]),
        .I1(r_state[0]),
        .I2(\r_shifter[63]_i_7_n_0 ),
        .I3(r_shifter3[4]),
        .I4(\r_shifter[70]_i_2_n_0 ),
        .I5(\r_shifter[67]_i_4_n_0 ),
        .O(\r_shifter[34]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0080AAAA)) 
    \r_shifter[35]_i_1 
       (.I0(i_resetn),
        .I1(\r_shifter[35]_i_3_n_0 ),
        .I2(r_shifter3[5]),
        .I3(\r_shifter[39]_i_4_n_0 ),
        .I4(\r_shifter[63]_i_6_n_0 ),
        .O(p_0_in[35]));
  LUT6 #(
    .INIT(64'h88888888888888F8)) 
    \r_shifter[35]_i_2 
       (.I0(data1[2]),
        .I1(r_state[0]),
        .I2(\r_shifter[63]_i_7_n_0 ),
        .I3(r_shifter3[4]),
        .I4(\r_shifter[71]_i_7_n_0 ),
        .I5(\r_shifter[67]_i_4_n_0 ),
        .O(\r_shifter[35]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \r_shifter[35]_i_3 
       (.I0(r_shifter3[4]),
        .I1(\r_shifter[71]_i_9_n_0 ),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .O(\r_shifter[35]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h8F888888)) 
    \r_shifter[36]_i_1 
       (.I0(data1[3]),
        .I1(r_state[0]),
        .I2(\r_shifter[68]_i_2_n_0 ),
        .I3(\r_shifter[63]_i_7_n_0 ),
        .I4(\r_shifter[39]_i_3_n_0 ),
        .O(\r_shifter[36]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h8F888888)) 
    \r_shifter[37]_i_1 
       (.I0(data2[0]),
        .I1(r_state[0]),
        .I2(\r_shifter[69]_i_2_n_0 ),
        .I3(\r_shifter[63]_i_7_n_0 ),
        .I4(\r_shifter[39]_i_3_n_0 ),
        .O(\r_shifter[37]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88888888888888F8)) 
    \r_shifter[38]_i_1 
       (.I0(data2[1]),
        .I1(r_state[0]),
        .I2(\r_shifter[63]_i_7_n_0 ),
        .I3(r_shifter3[4]),
        .I4(\r_shifter[70]_i_2_n_0 ),
        .I5(\r_shifter[71]_i_8_n_0 ),
        .O(\r_shifter[38]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0080AAAA)) 
    \r_shifter[39]_i_1 
       (.I0(i_resetn),
        .I1(\r_shifter[39]_i_3_n_0 ),
        .I2(r_shifter3[5]),
        .I3(\r_shifter[39]_i_4_n_0 ),
        .I4(\r_shifter[63]_i_6_n_0 ),
        .O(p_0_in[39]));
  LUT6 #(
    .INIT(64'h88888888888888F8)) 
    \r_shifter[39]_i_2 
       (.I0(data2[2]),
        .I1(r_state[0]),
        .I2(\r_shifter[63]_i_7_n_0 ),
        .I3(r_shifter3[4]),
        .I4(\r_shifter[71]_i_7_n_0 ),
        .I5(\r_shifter[71]_i_8_n_0 ),
        .O(\r_shifter[39]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \r_shifter[39]_i_3 
       (.I0(r_shifter3[4]),
        .I1(\r_shifter[71]_i_9_n_0 ),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .O(\r_shifter[39]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \r_shifter[39]_i_4 
       (.I0(\r_shifter[63]_i_5_n_0 ),
        .I1(\r_digitsToCheck[4]_i_3_n_0 ),
        .I2(r_state[0]),
        .I3(r_state[1]),
        .I4(r_shifter3[6]),
        .O(\r_shifter[39]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h02AA02AA02AA0202)) 
    \r_shifter[3]_i_1 
       (.I0(i_resetn),
        .I1(\r_shifter[67]_i_3_n_0 ),
        .I2(\r_shifter[39]_i_4_n_0 ),
        .I3(r_state[1]),
        .I4(r_state0_carry__1_n_1),
        .I5(r_state[0]),
        .O(p_0_in[3]));
  LUT6 #(
    .INIT(64'h4540FFFF45404540)) 
    \r_shifter[3]_i_2 
       (.I0(r_state[1]),
        .I1(\r_shifter_reg_n_0_[2] ),
        .I2(r_state[0]),
        .I3(i_binary[3]),
        .I4(\r_shifter[31]_i_5_n_0 ),
        .I5(\r_shifter[3]_i_3_n_0 ),
        .O(\r_shifter[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000510)) 
    \r_shifter[3]_i_3 
       (.I0(r_shifter3[4]),
        .I1(sel0[4]),
        .I2(\r_shifter[71]_i_15_n_0 ),
        .I3(\r_shifter[71]_i_16_n_0 ),
        .I4(\r_shifter[71]_i_9_n_0 ),
        .I5(\r_shifter[67]_i_4_n_0 ),
        .O(\r_shifter[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h888888F8)) 
    \r_shifter[40]_i_1 
       (.I0(data2[3]),
        .I1(r_state[0]),
        .I2(\r_shifter[63]_i_7_n_0 ),
        .I3(\r_shifter[68]_i_2_n_0 ),
        .I4(\r_shifter[43]_i_3_n_0 ),
        .O(\r_shifter[40]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h888888F8)) 
    \r_shifter[41]_i_1 
       (.I0(data3[0]),
        .I1(r_state[0]),
        .I2(\r_shifter[63]_i_7_n_0 ),
        .I3(\r_shifter[43]_i_3_n_0 ),
        .I4(\r_shifter[69]_i_2_n_0 ),
        .O(\r_shifter[41]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88888888888888F8)) 
    \r_shifter[42]_i_1 
       (.I0(data3[1]),
        .I1(r_state[0]),
        .I2(\r_shifter[63]_i_7_n_0 ),
        .I3(r_shifter3[4]),
        .I4(\r_shifter[70]_i_2_n_0 ),
        .I5(\r_shifter[59]_i_4_n_0 ),
        .O(\r_shifter[42]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0008AAAA)) 
    \r_shifter[43]_i_1 
       (.I0(i_resetn),
        .I1(\r_shifter[63]_i_3_n_0 ),
        .I2(\r_shifter[43]_i_3_n_0 ),
        .I3(\r_shifter[63]_i_5_n_0 ),
        .I4(\r_shifter[63]_i_6_n_0 ),
        .O(p_0_in[43]));
  LUT6 #(
    .INIT(64'h88888888888888F8)) 
    \r_shifter[43]_i_2 
       (.I0(data3[2]),
        .I1(r_state[0]),
        .I2(\r_shifter[63]_i_7_n_0 ),
        .I3(r_shifter3[4]),
        .I4(\r_shifter[71]_i_7_n_0 ),
        .I5(\r_shifter[59]_i_4_n_0 ),
        .O(\r_shifter[43]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hFFBF)) 
    \r_shifter[43]_i_3 
       (.I0(r_shifter3[4]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(\r_shifter[71]_i_9_n_0 ),
        .O(\r_shifter[43]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h888888F8)) 
    \r_shifter[44]_i_1 
       (.I0(data3[3]),
        .I1(r_state[0]),
        .I2(\r_shifter[63]_i_7_n_0 ),
        .I3(\r_shifter[68]_i_2_n_0 ),
        .I4(\r_shifter[47]_i_3_n_0 ),
        .O(\r_shifter[44]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h888888F8)) 
    \r_shifter[45]_i_1 
       (.I0(data4[0]),
        .I1(r_state[0]),
        .I2(\r_shifter[63]_i_7_n_0 ),
        .I3(\r_shifter[47]_i_3_n_0 ),
        .I4(\r_shifter[69]_i_2_n_0 ),
        .O(\r_shifter[45]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88888888888888F8)) 
    \r_shifter[46]_i_1 
       (.I0(data4[1]),
        .I1(r_state[0]),
        .I2(\r_shifter[63]_i_7_n_0 ),
        .I3(r_shifter3[4]),
        .I4(\r_shifter[70]_i_2_n_0 ),
        .I5(\r_shifter[63]_i_8_n_0 ),
        .O(\r_shifter[46]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0008AAAA)) 
    \r_shifter[47]_i_1 
       (.I0(i_resetn),
        .I1(\r_shifter[63]_i_3_n_0 ),
        .I2(\r_shifter[47]_i_3_n_0 ),
        .I3(\r_shifter[63]_i_5_n_0 ),
        .I4(\r_shifter[63]_i_6_n_0 ),
        .O(p_0_in[47]));
  LUT6 #(
    .INIT(64'h88888888888888F8)) 
    \r_shifter[47]_i_2 
       (.I0(data4[2]),
        .I1(r_state[0]),
        .I2(\r_shifter[63]_i_7_n_0 ),
        .I3(r_shifter3[4]),
        .I4(\r_shifter[71]_i_7_n_0 ),
        .I5(\r_shifter[63]_i_8_n_0 ),
        .O(\r_shifter[47]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \r_shifter[47]_i_3 
       (.I0(r_shifter3[4]),
        .I1(\r_shifter[71]_i_9_n_0 ),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .O(\r_shifter[47]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h888888F8)) 
    \r_shifter[48]_i_1 
       (.I0(data4[3]),
        .I1(r_state[0]),
        .I2(\r_shifter[63]_i_7_n_0 ),
        .I3(\r_shifter[68]_i_2_n_0 ),
        .I4(\r_shifter[51]_i_3_n_0 ),
        .O(\r_shifter[48]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h888888F8)) 
    \r_shifter[49]_i_1 
       (.I0(data5[0]),
        .I1(r_state[0]),
        .I2(\r_shifter[63]_i_7_n_0 ),
        .I3(\r_shifter[51]_i_3_n_0 ),
        .I4(\r_shifter[69]_i_2_n_0 ),
        .O(\r_shifter[49]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00FFB8B80000B8B8)) 
    \r_shifter[4]_i_1 
       (.I0(\r_shifter_reg_n_0_[3] ),
        .I1(r_state[0]),
        .I2(i_binary[4]),
        .I3(r_shifter3[6]),
        .I4(r_state[1]),
        .I5(\r_shifter[4]_i_2_n_0 ),
        .O(\r_shifter[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \r_shifter[4]_i_2 
       (.I0(r_shifter3[5]),
        .I1(r_shifter3[4]),
        .I2(\r_shifter[71]_i_9_n_0 ),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .I5(\r_shifter[68]_i_2_n_0 ),
        .O(\r_shifter[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h888888888888F888)) 
    \r_shifter[50]_i_1 
       (.I0(data5[1]),
        .I1(r_state[0]),
        .I2(\r_shifter[63]_i_7_n_0 ),
        .I3(r_shifter3[4]),
        .I4(\r_shifter[70]_i_2_n_0 ),
        .I5(\r_shifter[67]_i_4_n_0 ),
        .O(\r_shifter[50]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0008AAAA)) 
    \r_shifter[51]_i_1 
       (.I0(i_resetn),
        .I1(\r_shifter[63]_i_3_n_0 ),
        .I2(\r_shifter[51]_i_3_n_0 ),
        .I3(\r_shifter[63]_i_5_n_0 ),
        .I4(\r_shifter[63]_i_6_n_0 ),
        .O(p_0_in[51]));
  LUT6 #(
    .INIT(64'h888888888888F888)) 
    \r_shifter[51]_i_2 
       (.I0(data5[2]),
        .I1(r_state[0]),
        .I2(\r_shifter[63]_i_7_n_0 ),
        .I3(r_shifter3[4]),
        .I4(\r_shifter[71]_i_7_n_0 ),
        .I5(\r_shifter[67]_i_4_n_0 ),
        .O(\r_shifter[51]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hEFFF)) 
    \r_shifter[51]_i_3 
       (.I0(\r_shifter[71]_i_9_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(r_shifter3[4]),
        .O(\r_shifter[51]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h888888F8)) 
    \r_shifter[52]_i_1 
       (.I0(data5[3]),
        .I1(r_state[0]),
        .I2(\r_shifter[63]_i_7_n_0 ),
        .I3(\r_shifter[68]_i_2_n_0 ),
        .I4(\r_shifter[55]_i_3_n_0 ),
        .O(\r_shifter[52]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h888888F8)) 
    \r_shifter[53]_i_1 
       (.I0(data6[0]),
        .I1(r_state[0]),
        .I2(\r_shifter[63]_i_7_n_0 ),
        .I3(\r_shifter[55]_i_3_n_0 ),
        .I4(\r_shifter[69]_i_2_n_0 ),
        .O(\r_shifter[53]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h888888888888F888)) 
    \r_shifter[54]_i_1 
       (.I0(data6[1]),
        .I1(r_state[0]),
        .I2(\r_shifter[63]_i_7_n_0 ),
        .I3(r_shifter3[4]),
        .I4(\r_shifter[70]_i_2_n_0 ),
        .I5(\r_shifter[71]_i_8_n_0 ),
        .O(\r_shifter[54]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0008AAAA)) 
    \r_shifter[55]_i_1 
       (.I0(i_resetn),
        .I1(\r_shifter[63]_i_3_n_0 ),
        .I2(\r_shifter[55]_i_3_n_0 ),
        .I3(\r_shifter[63]_i_5_n_0 ),
        .I4(\r_shifter[63]_i_6_n_0 ),
        .O(p_0_in[55]));
  LUT6 #(
    .INIT(64'h888888888888F888)) 
    \r_shifter[55]_i_2 
       (.I0(data6[2]),
        .I1(r_state[0]),
        .I2(\r_shifter[63]_i_7_n_0 ),
        .I3(r_shifter3[4]),
        .I4(\r_shifter[71]_i_7_n_0 ),
        .I5(\r_shifter[71]_i_8_n_0 ),
        .O(\r_shifter[55]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hEFFF)) 
    \r_shifter[55]_i_3 
       (.I0(\r_shifter[71]_i_9_n_0 ),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(r_shifter3[4]),
        .O(\r_shifter[55]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h888888F8)) 
    \r_shifter[56]_i_1 
       (.I0(data6[3]),
        .I1(r_state[0]),
        .I2(\r_shifter[63]_i_7_n_0 ),
        .I3(\r_shifter[68]_i_2_n_0 ),
        .I4(\r_shifter[59]_i_3_n_0 ),
        .O(\r_shifter[56]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h888888F8)) 
    \r_shifter[57]_i_1 
       (.I0(data7[0]),
        .I1(r_state[0]),
        .I2(\r_shifter[63]_i_7_n_0 ),
        .I3(\r_shifter[59]_i_3_n_0 ),
        .I4(\r_shifter[69]_i_2_n_0 ),
        .O(\r_shifter[57]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h888888888888F888)) 
    \r_shifter[58]_i_1 
       (.I0(data7[1]),
        .I1(r_state[0]),
        .I2(\r_shifter[63]_i_7_n_0 ),
        .I3(r_shifter3[4]),
        .I4(\r_shifter[70]_i_2_n_0 ),
        .I5(\r_shifter[59]_i_4_n_0 ),
        .O(\r_shifter[58]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0008AAAA)) 
    \r_shifter[59]_i_1 
       (.I0(i_resetn),
        .I1(\r_shifter[63]_i_3_n_0 ),
        .I2(\r_shifter[59]_i_3_n_0 ),
        .I3(\r_shifter[63]_i_5_n_0 ),
        .I4(\r_shifter[63]_i_6_n_0 ),
        .O(p_0_in[59]));
  LUT6 #(
    .INIT(64'h888888888888F888)) 
    \r_shifter[59]_i_2 
       (.I0(data7[2]),
        .I1(r_state[0]),
        .I2(\r_shifter[63]_i_7_n_0 ),
        .I3(r_shifter3[4]),
        .I4(\r_shifter[71]_i_7_n_0 ),
        .I5(\r_shifter[59]_i_4_n_0 ),
        .O(\r_shifter[59]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hF7FF)) 
    \r_shifter[59]_i_3 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(\r_shifter[71]_i_9_n_0 ),
        .I3(r_shifter3[4]),
        .O(\r_shifter[59]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \r_shifter[59]_i_4 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .O(\r_shifter[59]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00FFB8B80000B8B8)) 
    \r_shifter[5]_i_1 
       (.I0(\r_shifter_reg_n_0_[4] ),
        .I1(r_state[0]),
        .I2(i_binary[5]),
        .I3(r_shifter3[6]),
        .I4(r_state[1]),
        .I5(\r_shifter[5]_i_2_n_0 ),
        .O(\r_shifter[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \r_shifter[5]_i_2 
       (.I0(r_shifter3[5]),
        .I1(r_shifter3[4]),
        .I2(\r_shifter[71]_i_9_n_0 ),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .I5(\r_shifter[69]_i_2_n_0 ),
        .O(\r_shifter[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h888888F8)) 
    \r_shifter[60]_i_1 
       (.I0(data7[3]),
        .I1(r_state[0]),
        .I2(\r_shifter[63]_i_7_n_0 ),
        .I3(\r_shifter[68]_i_2_n_0 ),
        .I4(\r_shifter[63]_i_4_n_0 ),
        .O(\r_shifter[60]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h888888F8)) 
    \r_shifter[61]_i_1 
       (.I0(data8[0]),
        .I1(r_state[0]),
        .I2(\r_shifter[63]_i_7_n_0 ),
        .I3(\r_shifter[63]_i_4_n_0 ),
        .I4(\r_shifter[69]_i_2_n_0 ),
        .O(\r_shifter[61]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h888888888888F888)) 
    \r_shifter[62]_i_1 
       (.I0(data8[1]),
        .I1(r_state[0]),
        .I2(\r_shifter[63]_i_7_n_0 ),
        .I3(r_shifter3[4]),
        .I4(\r_shifter[70]_i_2_n_0 ),
        .I5(\r_shifter[63]_i_8_n_0 ),
        .O(\r_shifter[62]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0008AAAA)) 
    \r_shifter[63]_i_1 
       (.I0(i_resetn),
        .I1(\r_shifter[63]_i_3_n_0 ),
        .I2(\r_shifter[63]_i_4_n_0 ),
        .I3(\r_shifter[63]_i_5_n_0 ),
        .I4(\r_shifter[63]_i_6_n_0 ),
        .O(p_0_in[63]));
  LUT6 #(
    .INIT(64'h888888888888F888)) 
    \r_shifter[63]_i_2 
       (.I0(data8[2]),
        .I1(r_state[0]),
        .I2(\r_shifter[63]_i_7_n_0 ),
        .I3(r_shifter3[4]),
        .I4(\r_shifter[71]_i_7_n_0 ),
        .I5(\r_shifter[63]_i_8_n_0 ),
        .O(\r_shifter[63]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000200)) 
    \r_shifter[63]_i_3 
       (.I0(r_shifter3[5]),
        .I1(\r_digitsToCheck[4]_i_3_n_0 ),
        .I2(r_state[0]),
        .I3(r_state[1]),
        .I4(r_shifter3[6]),
        .O(\r_shifter[63]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFEFF)) 
    \r_shifter[63]_i_4 
       (.I0(\r_shifter[71]_i_9_n_0 ),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(r_shifter3[4]),
        .O(\r_shifter[63]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \r_shifter[63]_i_5 
       (.I0(\r_shifter[71]_i_15_n_0 ),
        .I1(\r_shifter[71]_i_16_n_0 ),
        .I2(sel0[4]),
        .O(\r_shifter[63]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAB)) 
    \r_shifter[63]_i_6 
       (.I0(r_state[1]),
        .I1(r_state0_carry__1_n_1),
        .I2(r_state[0]),
        .O(\r_shifter[63]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \r_shifter[63]_i_7 
       (.I0(r_shifter3[5]),
        .I1(r_state[1]),
        .I2(r_shifter3[6]),
        .O(\r_shifter[63]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \r_shifter[63]_i_8 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .O(\r_shifter[63]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h888F888888888888)) 
    \r_shifter[64]_i_1 
       (.I0(data8[3]),
        .I1(r_state[0]),
        .I2(\r_shifter[68]_i_2_n_0 ),
        .I3(\r_shifter[67]_i_3_n_0 ),
        .I4(r_state[1]),
        .I5(r_shifter3[6]),
        .O(\r_shifter[64]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h888F888888888888)) 
    \r_shifter[65]_i_1 
       (.I0(data9[0]),
        .I1(r_state[0]),
        .I2(\r_shifter[67]_i_3_n_0 ),
        .I3(\r_shifter[69]_i_2_n_0 ),
        .I4(r_state[1]),
        .I5(r_shifter3[6]),
        .O(\r_shifter[65]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888888F88888888)) 
    \r_shifter[66]_i_1 
       (.I0(data9[1]),
        .I1(r_state[0]),
        .I2(r_shifter3[4]),
        .I3(\r_shifter[70]_i_2_n_0 ),
        .I4(\r_shifter[67]_i_4_n_0 ),
        .I5(\r_shifter[71]_i_5_n_0 ),
        .O(\r_shifter[66]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08AA08AA08AA0808)) 
    \r_shifter[67]_i_1 
       (.I0(i_resetn),
        .I1(\r_shifter[71]_i_4_n_0 ),
        .I2(\r_shifter[67]_i_3_n_0 ),
        .I3(r_state[1]),
        .I4(r_state0_carry__1_n_1),
        .I5(r_state[0]),
        .O(p_0_in[67]));
  LUT6 #(
    .INIT(64'h8888888F88888888)) 
    \r_shifter[67]_i_2 
       (.I0(data9[2]),
        .I1(r_state[0]),
        .I2(r_shifter3[4]),
        .I3(\r_shifter[71]_i_7_n_0 ),
        .I4(\r_shifter[67]_i_4_n_0 ),
        .I5(\r_shifter[71]_i_5_n_0 ),
        .O(\r_shifter[67]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    \r_shifter[67]_i_3 
       (.I0(r_shifter3[5]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(\r_shifter[71]_i_9_n_0 ),
        .I4(r_shifter3[4]),
        .O(\r_shifter[67]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \r_shifter[67]_i_4 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .O(\r_shifter[67]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h88F8888888888888)) 
    \r_shifter[68]_i_1 
       (.I0(data9[3]),
        .I1(r_state[0]),
        .I2(\r_shifter[71]_i_3_n_0 ),
        .I3(\r_shifter[68]_i_2_n_0 ),
        .I4(r_state[1]),
        .I5(r_shifter3[6]),
        .O(\r_shifter[68]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r_shifter[68]_i_2 
       (.I0(\r_shifter[70]_i_5_n_0 ),
        .I1(sel0[4]),
        .O(\r_shifter[68]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h88F8888888888888)) 
    \r_shifter[69]_i_1 
       (.I0(data10[0]),
        .I1(r_state[0]),
        .I2(\r_shifter[71]_i_3_n_0 ),
        .I3(\r_shifter[69]_i_2_n_0 ),
        .I4(r_state[1]),
        .I5(r_shifter3[6]),
        .O(\r_shifter[69]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \r_shifter[69]_i_2 
       (.I0(\r_shifter[70]_i_4_n_0 ),
        .I1(sel0[4]),
        .I2(\r_shifter[68]_i_2_n_0 ),
        .O(\r_shifter[69]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAAA)) 
    \r_shifter[6]_i_1 
       (.I0(\r_shifter[6]_i_2_n_0 ),
        .I1(\r_shifter[31]_i_5_n_0 ),
        .I2(r_shifter3[4]),
        .I3(\r_shifter[70]_i_2_n_0 ),
        .I4(sel0[0]),
        .I5(sel0[1]),
        .O(\r_shifter[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \r_shifter[6]_i_2 
       (.I0(i_binary[6]),
        .I1(r_state[0]),
        .I2(\r_shifter_reg_n_0_[5] ),
        .I3(r_state[1]),
        .O(\r_shifter[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8888888F88888888)) 
    \r_shifter[70]_i_1 
       (.I0(data10[1]),
        .I1(r_state[0]),
        .I2(r_shifter3[4]),
        .I3(\r_shifter[70]_i_2_n_0 ),
        .I4(\r_shifter[71]_i_8_n_0 ),
        .I5(\r_shifter[71]_i_5_n_0 ),
        .O(\r_shifter[70]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_shifter[70]_i_10 
       (.I0(data7[1]),
        .I1(data6[1]),
        .I2(sel0[1]),
        .I3(data5[1]),
        .I4(sel0[0]),
        .I5(data4[1]),
        .O(\r_shifter[70]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_shifter[70]_i_11 
       (.I0(data3[1]),
        .I1(data2[1]),
        .I2(sel0[1]),
        .I3(data1[1]),
        .I4(sel0[0]),
        .I5(data0[1]),
        .O(\r_shifter[70]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \r_shifter[70]_i_12 
       (.I0(data8[0]),
        .I1(sel0[0]),
        .I2(data9[0]),
        .I3(sel0[1]),
        .I4(data10[0]),
        .I5(sel0[2]),
        .O(\r_shifter[70]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_shifter[70]_i_13 
       (.I0(data7[0]),
        .I1(data6[0]),
        .I2(sel0[1]),
        .I3(data5[0]),
        .I4(sel0[0]),
        .I5(data4[0]),
        .O(\r_shifter[70]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_shifter[70]_i_14 
       (.I0(data3[0]),
        .I1(data2[0]),
        .I2(sel0[1]),
        .I3(data1[0]),
        .I4(sel0[0]),
        .I5(data0[0]),
        .O(\r_shifter[70]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFFFBBBC)) 
    \r_shifter[70]_i_2 
       (.I0(sel0[4]),
        .I1(\r_shifter[70]_i_3_n_0 ),
        .I2(\r_shifter[70]_i_4_n_0 ),
        .I3(\r_shifter[70]_i_5_n_0 ),
        .I4(\r_shifter[71]_i_9_n_0 ),
        .O(\r_shifter[70]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAABFBFFFFABFB)) 
    \r_shifter[70]_i_3 
       (.I0(sel0[4]),
        .I1(\r_shifter[70]_i_6_n_0 ),
        .I2(sel0[2]),
        .I3(\r_shifter[70]_i_7_n_0 ),
        .I4(sel0[3]),
        .I5(\r_shifter[70]_i_8_n_0 ),
        .O(\r_shifter[70]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \r_shifter[70]_i_4 
       (.I0(\r_shifter[70]_i_9_n_0 ),
        .I1(sel0[3]),
        .I2(\r_shifter[70]_i_10_n_0 ),
        .I3(sel0[2]),
        .I4(\r_shifter[70]_i_11_n_0 ),
        .O(\r_shifter[70]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \r_shifter[70]_i_5 
       (.I0(\r_shifter[70]_i_12_n_0 ),
        .I1(sel0[3]),
        .I2(\r_shifter[70]_i_13_n_0 ),
        .I3(sel0[2]),
        .I4(\r_shifter[70]_i_14_n_0 ),
        .O(\r_shifter[70]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_shifter[70]_i_6 
       (.I0(data3[2]),
        .I1(data2[2]),
        .I2(sel0[1]),
        .I3(data1[2]),
        .I4(sel0[0]),
        .I5(data0[2]),
        .O(\r_shifter[70]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_shifter[70]_i_7 
       (.I0(data7[2]),
        .I1(data6[2]),
        .I2(sel0[1]),
        .I3(data5[2]),
        .I4(sel0[0]),
        .I5(data4[2]),
        .O(\r_shifter[70]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \r_shifter[70]_i_8 
       (.I0(data8[2]),
        .I1(sel0[0]),
        .I2(data9[2]),
        .I3(sel0[1]),
        .I4(data10[2]),
        .I5(sel0[2]),
        .O(\r_shifter[70]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \r_shifter[70]_i_9 
       (.I0(data8[1]),
        .I1(sel0[0]),
        .I2(data9[1]),
        .I3(sel0[1]),
        .I4(data10[1]),
        .I5(sel0[2]),
        .O(\r_shifter[70]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h80AA80AA80AA8080)) 
    \r_shifter[71]_i_1 
       (.I0(i_resetn),
        .I1(\r_shifter[71]_i_3_n_0 ),
        .I2(\r_shifter[71]_i_4_n_0 ),
        .I3(r_state[1]),
        .I4(r_state0_carry__1_n_1),
        .I5(r_state[0]),
        .O(p_0_in[71]));
  LUT4 #(
    .INIT(16'hAAA9)) 
    \r_shifter[71]_i_10 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .O(r_shifter5[3]));
  LUT5 #(
    .INIT(32'h00000001)) 
    \r_shifter[71]_i_11 
       (.I0(sel0[4]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(sel0[3]),
        .O(\r_shifter[71]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    \r_shifter[71]_i_12 
       (.I0(sel0[3]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(sel0[4]),
        .O(r_shifter5[4]));
  LUT4 #(
    .INIT(16'h01FE)) 
    \r_shifter[71]_i_13 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(sel0[3]),
        .O(\r_shifter[71]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'hE1)) 
    \r_shifter[71]_i_14 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .O(\r_shifter[71]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAB)) 
    \r_shifter[71]_i_15 
       (.I0(\r_shifter[70]_i_3_n_0 ),
        .I1(\r_shifter[70]_i_4_n_0 ),
        .I2(\r_shifter[70]_i_5_n_0 ),
        .O(\r_shifter[71]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'h88BB8B8B)) 
    \r_shifter[71]_i_16 
       (.I0(\r_shifter[71]_i_23_n_0 ),
        .I1(sel0[3]),
        .I2(\r_shifter[71]_i_24_n_0 ),
        .I3(\r_shifter[71]_i_25_n_0 ),
        .I4(sel0[2]),
        .O(\r_shifter[71]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \r_shifter[71]_i_17 
       (.I0(r_shifter3[13]),
        .I1(r_shifter3[29]),
        .I2(r_shifter3[19]),
        .I3(r_shifter3[24]),
        .O(\r_shifter[71]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \r_shifter[71]_i_18 
       (.I0(r_shifter3[9]),
        .I1(r_shifter3[14]),
        .I2(r_shifter3[8]),
        .I3(r_shifter3[15]),
        .O(\r_shifter[71]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \r_shifter[71]_i_19 
       (.I0(r_shifter3[31]),
        .I1(r_shifter3[26]),
        .I2(r_shifter3[30]),
        .O(\r_shifter[71]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h88888888888888F8)) 
    \r_shifter[71]_i_2 
       (.I0(data10[2]),
        .I1(r_state[0]),
        .I2(\r_shifter[71]_i_5_n_0 ),
        .I3(r_shifter3[4]),
        .I4(\r_shifter[71]_i_7_n_0 ),
        .I5(\r_shifter[71]_i_8_n_0 ),
        .O(\r_shifter[71]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \r_shifter[71]_i_20 
       (.I0(r_shifter3[10]),
        .I1(r_shifter3[28]),
        .I2(r_shifter3[11]),
        .I3(r_shifter3[16]),
        .O(\r_shifter[71]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \r_shifter[71]_i_21 
       (.I0(r_shifter3[21]),
        .I1(r_shifter3[23]),
        .I2(r_shifter3[17]),
        .I3(r_shifter3[27]),
        .O(\r_shifter[71]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \r_shifter[71]_i_22 
       (.I0(r_shifter3[12]),
        .I1(r_shifter3[25]),
        .I2(r_shifter3[22]),
        .I3(r_shifter3[7]),
        .I4(r_shifter3[20]),
        .I5(r_shifter3[18]),
        .O(\r_shifter[71]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hFAFAABFBFFFFABFB)) 
    \r_shifter[71]_i_23 
       (.I0(sel0[2]),
        .I1(data8[3]),
        .I2(sel0[0]),
        .I3(data9[3]),
        .I4(sel0[1]),
        .I5(data10[3]),
        .O(\r_shifter[71]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_shifter[71]_i_24 
       (.I0(data3[3]),
        .I1(data2[3]),
        .I2(sel0[1]),
        .I3(data1[3]),
        .I4(sel0[0]),
        .I5(data0[3]),
        .O(\r_shifter[71]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_shifter[71]_i_25 
       (.I0(data7[3]),
        .I1(data6[3]),
        .I2(sel0[1]),
        .I3(data5[3]),
        .I4(sel0[0]),
        .I5(data4[3]),
        .O(\r_shifter[71]_i_25_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \r_shifter[71]_i_3 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(\r_shifter[71]_i_9_n_0 ),
        .I3(r_shifter3[4]),
        .I4(r_shifter3[5]),
        .O(\r_shifter[71]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \r_shifter[71]_i_32 
       (.I0(sel0[4]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(sel0[3]),
        .O(\r_shifter[71]_i_32_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \r_shifter[71]_i_33 
       (.I0(sel0[4]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(sel0[3]),
        .O(\r_shifter[71]_i_33_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \r_shifter[71]_i_34 
       (.I0(sel0[4]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(sel0[3]),
        .O(\r_shifter[71]_i_34_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \r_shifter[71]_i_35 
       (.I0(sel0[4]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(sel0[3]),
        .O(\r_shifter[71]_i_35_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \r_shifter[71]_i_36 
       (.I0(sel0[4]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(sel0[3]),
        .O(\r_shifter[71]_i_36_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \r_shifter[71]_i_37 
       (.I0(sel0[4]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(sel0[3]),
        .O(\r_shifter[71]_i_37_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \r_shifter[71]_i_38 
       (.I0(sel0[4]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(sel0[3]),
        .O(\r_shifter[71]_i_38_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \r_shifter[71]_i_39 
       (.I0(sel0[4]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(sel0[3]),
        .O(\r_shifter[71]_i_39_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00040000)) 
    \r_shifter[71]_i_4 
       (.I0(\r_shifter[63]_i_5_n_0 ),
        .I1(r_shifter3[6]),
        .I2(\r_digitsToCheck[4]_i_3_n_0 ),
        .I3(r_state[0]),
        .I4(r_state[1]),
        .O(\r_shifter[71]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \r_shifter[71]_i_40 
       (.I0(sel0[4]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(sel0[3]),
        .O(\r_shifter[71]_i_40_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \r_shifter[71]_i_41 
       (.I0(sel0[4]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(sel0[3]),
        .O(\r_shifter[71]_i_41_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \r_shifter[71]_i_42 
       (.I0(sel0[4]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(sel0[3]),
        .O(\r_shifter[71]_i_42_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \r_shifter[71]_i_43 
       (.I0(sel0[4]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(sel0[3]),
        .O(\r_shifter[71]_i_43_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \r_shifter[71]_i_44 
       (.I0(sel0[4]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(sel0[3]),
        .O(\r_shifter[71]_i_44_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \r_shifter[71]_i_45 
       (.I0(sel0[4]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(sel0[3]),
        .O(\r_shifter[71]_i_45_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \r_shifter[71]_i_46 
       (.I0(sel0[4]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(sel0[3]),
        .O(\r_shifter[71]_i_46_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \r_shifter[71]_i_47 
       (.I0(sel0[4]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(sel0[3]),
        .O(\r_shifter[71]_i_47_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \r_shifter[71]_i_48 
       (.I0(sel0[4]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(sel0[3]),
        .O(\r_shifter[71]_i_48_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \r_shifter[71]_i_49 
       (.I0(sel0[4]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(sel0[3]),
        .O(\r_shifter[71]_i_49_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \r_shifter[71]_i_5 
       (.I0(r_shifter3[6]),
        .I1(r_state[1]),
        .I2(r_shifter3[5]),
        .O(\r_shifter[71]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \r_shifter[71]_i_50 
       (.I0(sel0[4]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(sel0[3]),
        .O(\r_shifter[71]_i_50_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \r_shifter[71]_i_51 
       (.I0(sel0[4]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(sel0[3]),
        .O(\r_shifter[71]_i_51_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \r_shifter[71]_i_52 
       (.I0(sel0[4]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(sel0[3]),
        .O(\r_shifter[71]_i_52_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \r_shifter[71]_i_53 
       (.I0(sel0[4]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(sel0[3]),
        .O(\r_shifter[71]_i_53_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \r_shifter[71]_i_54 
       (.I0(sel0[4]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(sel0[3]),
        .O(\r_shifter[71]_i_54_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \r_shifter[71]_i_55 
       (.I0(sel0[4]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(sel0[3]),
        .O(\r_shifter[71]_i_55_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFFCB)) 
    \r_shifter[71]_i_7 
       (.I0(sel0[4]),
        .I1(\r_shifter[71]_i_15_n_0 ),
        .I2(\r_shifter[71]_i_16_n_0 ),
        .I3(\r_shifter[71]_i_9_n_0 ),
        .O(\r_shifter[71]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \r_shifter[71]_i_8 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .O(\r_shifter[71]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \r_shifter[71]_i_9 
       (.I0(\r_shifter[71]_i_17_n_0 ),
        .I1(\r_shifter[71]_i_18_n_0 ),
        .I2(\r_shifter[71]_i_19_n_0 ),
        .I3(\r_shifter[71]_i_20_n_0 ),
        .I4(\r_shifter[71]_i_21_n_0 ),
        .I5(\r_shifter[71]_i_22_n_0 ),
        .O(\r_shifter[71]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h08AA08AA08AA0808)) 
    \r_shifter[7]_i_1 
       (.I0(i_resetn),
        .I1(\r_shifter[71]_i_3_n_0 ),
        .I2(\r_shifter[39]_i_4_n_0 ),
        .I3(r_state[1]),
        .I4(r_state0_carry__1_n_1),
        .I5(r_state[0]),
        .O(p_0_in[7]));
  LUT6 #(
    .INIT(64'h4540FFFF45404540)) 
    \r_shifter[7]_i_2 
       (.I0(r_state[1]),
        .I1(\r_shifter_reg_n_0_[6] ),
        .I2(r_state[0]),
        .I3(i_binary[7]),
        .I4(\r_shifter[31]_i_5_n_0 ),
        .I5(\r_shifter[7]_i_3_n_0 ),
        .O(\r_shifter[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000510)) 
    \r_shifter[7]_i_3 
       (.I0(r_shifter3[4]),
        .I1(sel0[4]),
        .I2(\r_shifter[71]_i_15_n_0 ),
        .I3(\r_shifter[71]_i_16_n_0 ),
        .I4(\r_shifter[71]_i_9_n_0 ),
        .I5(\r_shifter[71]_i_8_n_0 ),
        .O(\r_shifter[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAABA)) 
    \r_shifter[8]_i_1 
       (.I0(\r_shifter[8]_i_2_n_0 ),
        .I1(r_shifter3[5]),
        .I2(r_state[1]),
        .I3(r_shifter3[6]),
        .I4(\r_shifter[68]_i_2_n_0 ),
        .I5(\r_shifter[43]_i_3_n_0 ),
        .O(\r_shifter[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \r_shifter[8]_i_2 
       (.I0(i_binary[8]),
        .I1(r_state[0]),
        .I2(\r_shifter_reg_n_0_[7] ),
        .I3(r_state[1]),
        .O(\r_shifter[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAABA)) 
    \r_shifter[9]_i_1 
       (.I0(\r_shifter[9]_i_2_n_0 ),
        .I1(r_shifter3[5]),
        .I2(r_state[1]),
        .I3(r_shifter3[6]),
        .I4(\r_shifter[43]_i_3_n_0 ),
        .I5(\r_shifter[69]_i_2_n_0 ),
        .O(\r_shifter[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \r_shifter[9]_i_2 
       (.I0(i_binary[9]),
        .I1(r_state[0]),
        .I2(\r_shifter_reg_n_0_[8] ),
        .I3(r_state[1]),
        .O(\r_shifter[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_shifter_reg[0] 
       (.C(i_clk),
        .CE(p_0_in[3]),
        .D(\r_shifter[0]_i_1_n_0 ),
        .Q(\r_shifter_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_shifter_reg[10] 
       (.C(i_clk),
        .CE(p_0_in[11]),
        .D(\r_shifter[10]_i_1_n_0 ),
        .Q(\r_shifter_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_shifter_reg[11] 
       (.C(i_clk),
        .CE(p_0_in[11]),
        .D(\r_shifter[11]_i_2_n_0 ),
        .Q(\r_shifter_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_shifter_reg[12] 
       (.C(i_clk),
        .CE(p_0_in[15]),
        .D(\r_shifter[12]_i_1_n_0 ),
        .Q(\r_shifter_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_shifter_reg[13] 
       (.C(i_clk),
        .CE(p_0_in[15]),
        .D(\r_shifter[13]_i_1_n_0 ),
        .Q(\r_shifter_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_shifter_reg[14] 
       (.C(i_clk),
        .CE(p_0_in[15]),
        .D(\r_shifter[14]_i_1_n_0 ),
        .Q(\r_shifter_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_shifter_reg[15] 
       (.C(i_clk),
        .CE(p_0_in[15]),
        .D(\r_shifter[15]_i_2_n_0 ),
        .Q(\r_shifter_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_shifter_reg[16] 
       (.C(i_clk),
        .CE(p_0_in[19]),
        .D(\r_shifter[16]_i_1_n_0 ),
        .Q(\r_shifter_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_shifter_reg[17] 
       (.C(i_clk),
        .CE(p_0_in[19]),
        .D(\r_shifter[17]_i_1_n_0 ),
        .Q(\r_shifter_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_shifter_reg[18] 
       (.C(i_clk),
        .CE(p_0_in[19]),
        .D(\r_shifter[18]_i_1_n_0 ),
        .Q(\r_shifter_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_shifter_reg[19] 
       (.C(i_clk),
        .CE(p_0_in[19]),
        .D(\r_shifter[19]_i_2_n_0 ),
        .Q(\r_shifter_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_shifter_reg[1] 
       (.C(i_clk),
        .CE(p_0_in[3]),
        .D(\r_shifter[1]_i_1_n_0 ),
        .Q(\r_shifter_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_shifter_reg[20] 
       (.C(i_clk),
        .CE(p_0_in[23]),
        .D(\r_shifter[20]_i_1_n_0 ),
        .Q(\r_shifter_reg_n_0_[20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_shifter_reg[21] 
       (.C(i_clk),
        .CE(p_0_in[23]),
        .D(\r_shifter[21]_i_1_n_0 ),
        .Q(\r_shifter_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_shifter_reg[22] 
       (.C(i_clk),
        .CE(p_0_in[23]),
        .D(\r_shifter[22]_i_1_n_0 ),
        .Q(\r_shifter_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_shifter_reg[23] 
       (.C(i_clk),
        .CE(p_0_in[23]),
        .D(\r_shifter[23]_i_2_n_0 ),
        .Q(\r_shifter_reg_n_0_[23] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_shifter_reg[24] 
       (.C(i_clk),
        .CE(p_0_in[27]),
        .D(\r_shifter[24]_i_1_n_0 ),
        .Q(\r_shifter_reg_n_0_[24] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_shifter_reg[25] 
       (.C(i_clk),
        .CE(p_0_in[27]),
        .D(\r_shifter[25]_i_1_n_0 ),
        .Q(\r_shifter_reg_n_0_[25] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_shifter_reg[26] 
       (.C(i_clk),
        .CE(p_0_in[27]),
        .D(\r_shifter[26]_i_1_n_0 ),
        .Q(\r_shifter_reg_n_0_[26] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_shifter_reg[27] 
       (.C(i_clk),
        .CE(p_0_in[27]),
        .D(\r_shifter[27]_i_2_n_0 ),
        .Q(\r_shifter_reg_n_0_[27] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_shifter_reg[28] 
       (.C(i_clk),
        .CE(p_0_in[28]),
        .D(\r_shifter[28]_i_1_n_0 ),
        .Q(data0[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_shifter_reg[29] 
       (.C(i_clk),
        .CE(p_0_in[28]),
        .D(\r_shifter[29]_i_1_n_0 ),
        .Q(data0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_shifter_reg[2] 
       (.C(i_clk),
        .CE(p_0_in[3]),
        .D(\r_shifter[2]_i_1_n_0 ),
        .Q(\r_shifter_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_shifter_reg[30] 
       (.C(i_clk),
        .CE(p_0_in[28]),
        .D(\r_shifter[30]_i_1_n_0 ),
        .Q(data0[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_shifter_reg[31] 
       (.C(i_clk),
        .CE(p_0_in[28]),
        .D(\r_shifter[31]_i_2_n_0 ),
        .Q(data0[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_shifter_reg[32] 
       (.C(i_clk),
        .CE(p_0_in[35]),
        .D(\r_shifter[32]_i_1_n_0 ),
        .Q(data1[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_shifter_reg[33] 
       (.C(i_clk),
        .CE(p_0_in[35]),
        .D(\r_shifter[33]_i_1_n_0 ),
        .Q(data1[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_shifter_reg[34] 
       (.C(i_clk),
        .CE(p_0_in[35]),
        .D(\r_shifter[34]_i_1_n_0 ),
        .Q(data1[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_shifter_reg[35] 
       (.C(i_clk),
        .CE(p_0_in[35]),
        .D(\r_shifter[35]_i_2_n_0 ),
        .Q(data1[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_shifter_reg[36] 
       (.C(i_clk),
        .CE(p_0_in[39]),
        .D(\r_shifter[36]_i_1_n_0 ),
        .Q(data2[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_shifter_reg[37] 
       (.C(i_clk),
        .CE(p_0_in[39]),
        .D(\r_shifter[37]_i_1_n_0 ),
        .Q(data2[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_shifter_reg[38] 
       (.C(i_clk),
        .CE(p_0_in[39]),
        .D(\r_shifter[38]_i_1_n_0 ),
        .Q(data2[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_shifter_reg[39] 
       (.C(i_clk),
        .CE(p_0_in[39]),
        .D(\r_shifter[39]_i_2_n_0 ),
        .Q(data2[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_shifter_reg[3] 
       (.C(i_clk),
        .CE(p_0_in[3]),
        .D(\r_shifter[3]_i_2_n_0 ),
        .Q(\r_shifter_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_shifter_reg[40] 
       (.C(i_clk),
        .CE(p_0_in[43]),
        .D(\r_shifter[40]_i_1_n_0 ),
        .Q(data3[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_shifter_reg[41] 
       (.C(i_clk),
        .CE(p_0_in[43]),
        .D(\r_shifter[41]_i_1_n_0 ),
        .Q(data3[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_shifter_reg[42] 
       (.C(i_clk),
        .CE(p_0_in[43]),
        .D(\r_shifter[42]_i_1_n_0 ),
        .Q(data3[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_shifter_reg[43] 
       (.C(i_clk),
        .CE(p_0_in[43]),
        .D(\r_shifter[43]_i_2_n_0 ),
        .Q(data3[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_shifter_reg[44] 
       (.C(i_clk),
        .CE(p_0_in[47]),
        .D(\r_shifter[44]_i_1_n_0 ),
        .Q(data4[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_shifter_reg[45] 
       (.C(i_clk),
        .CE(p_0_in[47]),
        .D(\r_shifter[45]_i_1_n_0 ),
        .Q(data4[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_shifter_reg[46] 
       (.C(i_clk),
        .CE(p_0_in[47]),
        .D(\r_shifter[46]_i_1_n_0 ),
        .Q(data4[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_shifter_reg[47] 
       (.C(i_clk),
        .CE(p_0_in[47]),
        .D(\r_shifter[47]_i_2_n_0 ),
        .Q(data4[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_shifter_reg[48] 
       (.C(i_clk),
        .CE(p_0_in[51]),
        .D(\r_shifter[48]_i_1_n_0 ),
        .Q(data5[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_shifter_reg[49] 
       (.C(i_clk),
        .CE(p_0_in[51]),
        .D(\r_shifter[49]_i_1_n_0 ),
        .Q(data5[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_shifter_reg[4] 
       (.C(i_clk),
        .CE(p_0_in[7]),
        .D(\r_shifter[4]_i_1_n_0 ),
        .Q(\r_shifter_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_shifter_reg[50] 
       (.C(i_clk),
        .CE(p_0_in[51]),
        .D(\r_shifter[50]_i_1_n_0 ),
        .Q(data5[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_shifter_reg[51] 
       (.C(i_clk),
        .CE(p_0_in[51]),
        .D(\r_shifter[51]_i_2_n_0 ),
        .Q(data5[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_shifter_reg[52] 
       (.C(i_clk),
        .CE(p_0_in[55]),
        .D(\r_shifter[52]_i_1_n_0 ),
        .Q(data6[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_shifter_reg[53] 
       (.C(i_clk),
        .CE(p_0_in[55]),
        .D(\r_shifter[53]_i_1_n_0 ),
        .Q(data6[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_shifter_reg[54] 
       (.C(i_clk),
        .CE(p_0_in[55]),
        .D(\r_shifter[54]_i_1_n_0 ),
        .Q(data6[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_shifter_reg[55] 
       (.C(i_clk),
        .CE(p_0_in[55]),
        .D(\r_shifter[55]_i_2_n_0 ),
        .Q(data6[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_shifter_reg[56] 
       (.C(i_clk),
        .CE(p_0_in[59]),
        .D(\r_shifter[56]_i_1_n_0 ),
        .Q(data7[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_shifter_reg[57] 
       (.C(i_clk),
        .CE(p_0_in[59]),
        .D(\r_shifter[57]_i_1_n_0 ),
        .Q(data7[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_shifter_reg[58] 
       (.C(i_clk),
        .CE(p_0_in[59]),
        .D(\r_shifter[58]_i_1_n_0 ),
        .Q(data7[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_shifter_reg[59] 
       (.C(i_clk),
        .CE(p_0_in[59]),
        .D(\r_shifter[59]_i_2_n_0 ),
        .Q(data7[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_shifter_reg[5] 
       (.C(i_clk),
        .CE(p_0_in[7]),
        .D(\r_shifter[5]_i_1_n_0 ),
        .Q(\r_shifter_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_shifter_reg[60] 
       (.C(i_clk),
        .CE(p_0_in[63]),
        .D(\r_shifter[60]_i_1_n_0 ),
        .Q(data8[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_shifter_reg[61] 
       (.C(i_clk),
        .CE(p_0_in[63]),
        .D(\r_shifter[61]_i_1_n_0 ),
        .Q(data8[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_shifter_reg[62] 
       (.C(i_clk),
        .CE(p_0_in[63]),
        .D(\r_shifter[62]_i_1_n_0 ),
        .Q(data8[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_shifter_reg[63] 
       (.C(i_clk),
        .CE(p_0_in[63]),
        .D(\r_shifter[63]_i_2_n_0 ),
        .Q(data8[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_shifter_reg[64] 
       (.C(i_clk),
        .CE(p_0_in[67]),
        .D(\r_shifter[64]_i_1_n_0 ),
        .Q(data9[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_shifter_reg[65] 
       (.C(i_clk),
        .CE(p_0_in[67]),
        .D(\r_shifter[65]_i_1_n_0 ),
        .Q(data9[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_shifter_reg[66] 
       (.C(i_clk),
        .CE(p_0_in[67]),
        .D(\r_shifter[66]_i_1_n_0 ),
        .Q(data9[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_shifter_reg[67] 
       (.C(i_clk),
        .CE(p_0_in[67]),
        .D(\r_shifter[67]_i_2_n_0 ),
        .Q(data9[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_shifter_reg[68] 
       (.C(i_clk),
        .CE(p_0_in[71]),
        .D(\r_shifter[68]_i_1_n_0 ),
        .Q(data10[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_shifter_reg[69] 
       (.C(i_clk),
        .CE(p_0_in[71]),
        .D(\r_shifter[69]_i_1_n_0 ),
        .Q(data10[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_shifter_reg[6] 
       (.C(i_clk),
        .CE(p_0_in[7]),
        .D(\r_shifter[6]_i_1_n_0 ),
        .Q(\r_shifter_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_shifter_reg[70] 
       (.C(i_clk),
        .CE(p_0_in[71]),
        .D(\r_shifter[70]_i_1_n_0 ),
        .Q(data10[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_shifter_reg[71] 
       (.C(i_clk),
        .CE(p_0_in[71]),
        .D(\r_shifter[71]_i_2_n_0 ),
        .Q(data10[3]),
        .R(1'b0));
  CARRY4 \r_shifter_reg[71]_i_26 
       (.CI(\r_shifter_reg[71]_i_30_n_0 ),
        .CO({\r_shifter_reg[71]_i_26_n_0 ,\r_shifter_reg[71]_i_26_n_1 ,\r_shifter_reg[71]_i_26_n_2 ,\r_shifter_reg[71]_i_26_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(r_shifter3[15:12]),
        .S({\r_shifter[71]_i_32_n_0 ,\r_shifter[71]_i_33_n_0 ,\r_shifter[71]_i_34_n_0 ,\r_shifter[71]_i_35_n_0 }));
  CARRY4 \r_shifter_reg[71]_i_27 
       (.CI(\r_shifter_reg[71]_i_29_n_0 ),
        .CO({\NLW_r_shifter_reg[71]_i_27_CO_UNCONNECTED [3],\r_shifter_reg[71]_i_27_n_1 ,\r_shifter_reg[71]_i_27_n_2 ,\r_shifter_reg[71]_i_27_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(r_shifter3[31:28]),
        .S({\r_shifter[71]_i_36_n_0 ,\r_shifter[71]_i_37_n_0 ,\r_shifter[71]_i_38_n_0 ,\r_shifter[71]_i_39_n_0 }));
  CARRY4 \r_shifter_reg[71]_i_28 
       (.CI(\r_shifter_reg[71]_i_26_n_0 ),
        .CO({\r_shifter_reg[71]_i_28_n_0 ,\r_shifter_reg[71]_i_28_n_1 ,\r_shifter_reg[71]_i_28_n_2 ,\r_shifter_reg[71]_i_28_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(r_shifter3[19:16]),
        .S({\r_shifter[71]_i_40_n_0 ,\r_shifter[71]_i_41_n_0 ,\r_shifter[71]_i_42_n_0 ,\r_shifter[71]_i_43_n_0 }));
  CARRY4 \r_shifter_reg[71]_i_29 
       (.CI(\r_shifter_reg[71]_i_31_n_0 ),
        .CO({\r_shifter_reg[71]_i_29_n_0 ,\r_shifter_reg[71]_i_29_n_1 ,\r_shifter_reg[71]_i_29_n_2 ,\r_shifter_reg[71]_i_29_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(r_shifter3[27:24]),
        .S({\r_shifter[71]_i_44_n_0 ,\r_shifter[71]_i_45_n_0 ,\r_shifter[71]_i_46_n_0 ,\r_shifter[71]_i_47_n_0 }));
  CARRY4 \r_shifter_reg[71]_i_30 
       (.CI(\r_shifter_reg[71]_i_6_n_0 ),
        .CO({\r_shifter_reg[71]_i_30_n_0 ,\r_shifter_reg[71]_i_30_n_1 ,\r_shifter_reg[71]_i_30_n_2 ,\r_shifter_reg[71]_i_30_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(r_shifter3[11:8]),
        .S({\r_shifter[71]_i_48_n_0 ,\r_shifter[71]_i_49_n_0 ,\r_shifter[71]_i_50_n_0 ,\r_shifter[71]_i_51_n_0 }));
  CARRY4 \r_shifter_reg[71]_i_31 
       (.CI(\r_shifter_reg[71]_i_28_n_0 ),
        .CO({\r_shifter_reg[71]_i_31_n_0 ,\r_shifter_reg[71]_i_31_n_1 ,\r_shifter_reg[71]_i_31_n_2 ,\r_shifter_reg[71]_i_31_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(r_shifter3[23:20]),
        .S({\r_shifter[71]_i_52_n_0 ,\r_shifter[71]_i_53_n_0 ,\r_shifter[71]_i_54_n_0 ,\r_shifter[71]_i_55_n_0 }));
  CARRY4 \r_shifter_reg[71]_i_6 
       (.CI(1'b0),
        .CO({\r_shifter_reg[71]_i_6_n_0 ,\r_shifter_reg[71]_i_6_n_1 ,\r_shifter_reg[71]_i_6_n_2 ,\r_shifter_reg[71]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,r_shifter5[3],1'b0}),
        .O(r_shifter3[7:4]),
        .S({\r_shifter[71]_i_11_n_0 ,r_shifter5[4],\r_shifter[71]_i_13_n_0 ,\r_shifter[71]_i_14_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \r_shifter_reg[7] 
       (.C(i_clk),
        .CE(p_0_in[7]),
        .D(\r_shifter[7]_i_2_n_0 ),
        .Q(\r_shifter_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_shifter_reg[8] 
       (.C(i_clk),
        .CE(p_0_in[11]),
        .D(\r_shifter[8]_i_1_n_0 ),
        .Q(\r_shifter_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_shifter_reg[9] 
       (.C(i_clk),
        .CE(p_0_in[11]),
        .D(\r_shifter[9]_i_1_n_0 ),
        .Q(\r_shifter_reg_n_0_[9] ),
        .R(1'b0));
  CARRY4 r_state0_carry
       (.CI(1'b0),
        .CO({r_state0_carry_n_0,r_state0_carry_n_1,r_state0_carry_n_2,r_state0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_r_state0_carry_O_UNCONNECTED[3:0]),
        .S({r_state0_carry_i_1_n_0,r_state0_carry_i_2_n_0,r_state0_carry_i_3_n_0,r_state0_carry_i_4_n_0}));
  CARRY4 r_state0_carry__0
       (.CI(r_state0_carry_n_0),
        .CO({r_state0_carry__0_n_0,r_state0_carry__0_n_1,r_state0_carry__0_n_2,r_state0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_r_state0_carry__0_O_UNCONNECTED[3:0]),
        .S({r_state0_carry__0_i_1_n_0,r_state0_carry__0_i_2_n_0,r_state0_carry__0_i_3_n_0,r_state0_carry__0_i_4_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    r_state0_carry__0_i_1
       (.I0(i_binary[21]),
        .I1(r_oldBinary[21]),
        .I2(i_binary[22]),
        .I3(r_oldBinary[22]),
        .I4(r_oldBinary[23]),
        .I5(i_binary[23]),
        .O(r_state0_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    r_state0_carry__0_i_2
       (.I0(i_binary[18]),
        .I1(r_oldBinary[18]),
        .I2(i_binary[19]),
        .I3(r_oldBinary[19]),
        .I4(r_oldBinary[20]),
        .I5(i_binary[20]),
        .O(r_state0_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    r_state0_carry__0_i_3
       (.I0(i_binary[15]),
        .I1(r_oldBinary[15]),
        .I2(i_binary[16]),
        .I3(r_oldBinary[16]),
        .I4(r_oldBinary[17]),
        .I5(i_binary[17]),
        .O(r_state0_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    r_state0_carry__0_i_4
       (.I0(i_binary[12]),
        .I1(r_oldBinary[12]),
        .I2(i_binary[13]),
        .I3(r_oldBinary[13]),
        .I4(r_oldBinary[14]),
        .I5(i_binary[14]),
        .O(r_state0_carry__0_i_4_n_0));
  CARRY4 r_state0_carry__1
       (.CI(r_state0_carry__0_n_0),
        .CO({NLW_r_state0_carry__1_CO_UNCONNECTED[3],r_state0_carry__1_n_1,r_state0_carry__1_n_2,r_state0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,1'b1,1'b1}),
        .O(NLW_r_state0_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,r_state0_carry__1_i_1_n_0,r_state0_carry__1_i_2_n_0,r_state0_carry__1_i_3_n_0}));
  LUT4 #(
    .INIT(16'h9009)) 
    r_state0_carry__1_i_1
       (.I0(r_oldBinary[31]),
        .I1(i_binary[31]),
        .I2(r_oldBinary[30]),
        .I3(i_binary[30]),
        .O(r_state0_carry__1_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    r_state0_carry__1_i_2
       (.I0(i_binary[27]),
        .I1(r_oldBinary[27]),
        .I2(i_binary[28]),
        .I3(r_oldBinary[28]),
        .I4(r_oldBinary[29]),
        .I5(i_binary[29]),
        .O(r_state0_carry__1_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    r_state0_carry__1_i_3
       (.I0(i_binary[26]),
        .I1(r_oldBinary[26]),
        .I2(i_binary[24]),
        .I3(r_oldBinary[24]),
        .I4(r_oldBinary[25]),
        .I5(i_binary[25]),
        .O(r_state0_carry__1_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    r_state0_carry_i_1
       (.I0(i_binary[11]),
        .I1(r_oldBinary[11]),
        .I2(i_binary[9]),
        .I3(r_oldBinary[9]),
        .I4(r_oldBinary[10]),
        .I5(i_binary[10]),
        .O(r_state0_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    r_state0_carry_i_2
       (.I0(i_binary[6]),
        .I1(r_oldBinary[6]),
        .I2(i_binary[7]),
        .I3(r_oldBinary[7]),
        .I4(r_oldBinary[8]),
        .I5(i_binary[8]),
        .O(r_state0_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    r_state0_carry_i_3
       (.I0(i_binary[4]),
        .I1(r_oldBinary[4]),
        .I2(i_binary[3]),
        .I3(r_oldBinary[3]),
        .I4(r_oldBinary[5]),
        .I5(i_binary[5]),
        .O(r_state0_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    r_state0_carry_i_4
       (.I0(i_binary[0]),
        .I1(r_oldBinary[0]),
        .I2(i_binary[1]),
        .I3(r_oldBinary[1]),
        .I4(r_oldBinary[2]),
        .I5(i_binary[2]),
        .O(r_state0_carry_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h2F2C)) 
    \r_state[0]_i_1 
       (.I0(\r_bitsToShift[31]_i_3_n_0 ),
        .I1(r_state[1]),
        .I2(r_state[0]),
        .I3(r_state0_carry__1_n_1),
        .O(\r_state[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hEF)) 
    \r_state[1]_i_1 
       (.I0(\r_digitsToCheck[4]_i_3_n_0 ),
        .I1(r_state[0]),
        .I2(r_state[1]),
        .O(r_state0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r_state[1]_i_2 
       (.I0(r_state[0]),
        .I1(r_state[1]),
        .O(\r_state[1]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \r_state_reg[0] 
       (.C(i_clk),
        .CE(r_state0),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(\r_state[0]_i_1_n_0 ),
        .Q(r_state[0]));
  FDCE #(
    .INIT(1'b0)) 
    \r_state_reg[1] 
       (.C(i_clk),
        .CE(r_state0),
        .CLR(\o_bcd[39]_i_2_n_0 ),
        .D(\r_state[1]_i_2_n_0 ),
        .Q(r_state[1]));
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
