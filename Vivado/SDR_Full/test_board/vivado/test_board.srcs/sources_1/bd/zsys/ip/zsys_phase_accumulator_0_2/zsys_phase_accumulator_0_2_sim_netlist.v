// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Wed Apr 21 23:24:31 2021
// Host        : dan-Desktop running 64-bit Ubuntu 18.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/dan/Microwave-SDR/Vivado/SDR_Full/test_board/vivado/test_board.srcs/sources_1/bd/zsys/ip/zsys_phase_accumulator_0_2/zsys_phase_accumulator_0_2_sim_netlist.v
// Design      : zsys_phase_accumulator_0_2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "zsys_phase_accumulator_0_2,phase_accumulator,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "phase_accumulator,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module zsys_phase_accumulator_0_2
   (iS_phaseDelta,
    i_valid,
    oS_phaseAngle,
    o_valid,
    i_clk,
    i_resetn);
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_ANGLE_DELTA TDATA" *) input [31:0]iS_phaseDelta;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_ANGLE_DELTA TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_ANGLE_DELTA, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 80000000, PHASE 0.000, CLK_DOMAIN zsys_adc_clk_n, LAYERED_METADATA undef, INSERT_VIP 0" *) input i_valid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_ANGLE TDATA" *) output [31:0]oS_phaseAngle;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_ANGLE TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_ANGLE, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 80000000, PHASE 0.000, CLK_DOMAIN zsys_adc_clk_n, LAYERED_METADATA undef, INSERT_VIP 0" *) output o_valid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 i_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_clk, ASSOCIATED_RESET i_resetn, ASSOCIATED_BUSIF S_AXIS_X:S_AXIS_ANGLE_DELTA:M_AXIS_ANGLE, FREQ_HZ 80000000, PHASE 0.000, CLK_DOMAIN zsys_adc_clk_n, INSERT_VIP 0" *) input i_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 i_resetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input i_resetn;

  wire [31:0]iS_phaseDelta;
  wire i_clk;
  wire i_resetn;
  wire i_valid;
  wire [31:0]oS_phaseAngle;
  wire o_valid;

  zsys_phase_accumulator_0_2_phase_accumulator inst
       (.iS_phaseDelta(iS_phaseDelta),
        .i_clk(i_clk),
        .i_resetn(i_resetn),
        .i_valid(i_valid),
        .oS_phaseAngle(oS_phaseAngle),
        .o_valid(o_valid));
endmodule

(* ORIG_REF_NAME = "phase_accumulator" *) 
module zsys_phase_accumulator_0_2_phase_accumulator
   (o_valid,
    oS_phaseAngle,
    i_valid,
    iS_phaseDelta,
    i_clk,
    i_resetn);
  output o_valid;
  output [31:0]oS_phaseAngle;
  input i_valid;
  input [31:0]iS_phaseDelta;
  input i_clk;
  input i_resetn;

  wire clear;
  wire [31:0]iS_phaseDelta;
  wire i_clk;
  wire i_resetn;
  wire i_valid;
  wire [31:0]oS_phaseAngle;
  wire \oS_phaseAngle[11]_i_2_n_0 ;
  wire \oS_phaseAngle[11]_i_3_n_0 ;
  wire \oS_phaseAngle[11]_i_4_n_0 ;
  wire \oS_phaseAngle[11]_i_5_n_0 ;
  wire \oS_phaseAngle[15]_i_2_n_0 ;
  wire \oS_phaseAngle[15]_i_3_n_0 ;
  wire \oS_phaseAngle[15]_i_4_n_0 ;
  wire \oS_phaseAngle[15]_i_5_n_0 ;
  wire \oS_phaseAngle[19]_i_2_n_0 ;
  wire \oS_phaseAngle[19]_i_3_n_0 ;
  wire \oS_phaseAngle[19]_i_4_n_0 ;
  wire \oS_phaseAngle[19]_i_5_n_0 ;
  wire \oS_phaseAngle[23]_i_2_n_0 ;
  wire \oS_phaseAngle[23]_i_3_n_0 ;
  wire \oS_phaseAngle[23]_i_4_n_0 ;
  wire \oS_phaseAngle[23]_i_5_n_0 ;
  wire \oS_phaseAngle[27]_i_2_n_0 ;
  wire \oS_phaseAngle[27]_i_3_n_0 ;
  wire \oS_phaseAngle[27]_i_4_n_0 ;
  wire \oS_phaseAngle[27]_i_5_n_0 ;
  wire \oS_phaseAngle[31]_i_3_n_0 ;
  wire \oS_phaseAngle[31]_i_4_n_0 ;
  wire \oS_phaseAngle[31]_i_5_n_0 ;
  wire \oS_phaseAngle[31]_i_6_n_0 ;
  wire \oS_phaseAngle[3]_i_2_n_0 ;
  wire \oS_phaseAngle[3]_i_3_n_0 ;
  wire \oS_phaseAngle[3]_i_4_n_0 ;
  wire \oS_phaseAngle[3]_i_5_n_0 ;
  wire \oS_phaseAngle[7]_i_2_n_0 ;
  wire \oS_phaseAngle[7]_i_3_n_0 ;
  wire \oS_phaseAngle[7]_i_4_n_0 ;
  wire \oS_phaseAngle[7]_i_5_n_0 ;
  wire \oS_phaseAngle_reg[11]_i_1_n_0 ;
  wire \oS_phaseAngle_reg[11]_i_1_n_1 ;
  wire \oS_phaseAngle_reg[11]_i_1_n_2 ;
  wire \oS_phaseAngle_reg[11]_i_1_n_3 ;
  wire \oS_phaseAngle_reg[11]_i_1_n_4 ;
  wire \oS_phaseAngle_reg[11]_i_1_n_5 ;
  wire \oS_phaseAngle_reg[11]_i_1_n_6 ;
  wire \oS_phaseAngle_reg[11]_i_1_n_7 ;
  wire \oS_phaseAngle_reg[15]_i_1_n_0 ;
  wire \oS_phaseAngle_reg[15]_i_1_n_1 ;
  wire \oS_phaseAngle_reg[15]_i_1_n_2 ;
  wire \oS_phaseAngle_reg[15]_i_1_n_3 ;
  wire \oS_phaseAngle_reg[15]_i_1_n_4 ;
  wire \oS_phaseAngle_reg[15]_i_1_n_5 ;
  wire \oS_phaseAngle_reg[15]_i_1_n_6 ;
  wire \oS_phaseAngle_reg[15]_i_1_n_7 ;
  wire \oS_phaseAngle_reg[19]_i_1_n_0 ;
  wire \oS_phaseAngle_reg[19]_i_1_n_1 ;
  wire \oS_phaseAngle_reg[19]_i_1_n_2 ;
  wire \oS_phaseAngle_reg[19]_i_1_n_3 ;
  wire \oS_phaseAngle_reg[19]_i_1_n_4 ;
  wire \oS_phaseAngle_reg[19]_i_1_n_5 ;
  wire \oS_phaseAngle_reg[19]_i_1_n_6 ;
  wire \oS_phaseAngle_reg[19]_i_1_n_7 ;
  wire \oS_phaseAngle_reg[23]_i_1_n_0 ;
  wire \oS_phaseAngle_reg[23]_i_1_n_1 ;
  wire \oS_phaseAngle_reg[23]_i_1_n_2 ;
  wire \oS_phaseAngle_reg[23]_i_1_n_3 ;
  wire \oS_phaseAngle_reg[23]_i_1_n_4 ;
  wire \oS_phaseAngle_reg[23]_i_1_n_5 ;
  wire \oS_phaseAngle_reg[23]_i_1_n_6 ;
  wire \oS_phaseAngle_reg[23]_i_1_n_7 ;
  wire \oS_phaseAngle_reg[27]_i_1_n_0 ;
  wire \oS_phaseAngle_reg[27]_i_1_n_1 ;
  wire \oS_phaseAngle_reg[27]_i_1_n_2 ;
  wire \oS_phaseAngle_reg[27]_i_1_n_3 ;
  wire \oS_phaseAngle_reg[27]_i_1_n_4 ;
  wire \oS_phaseAngle_reg[27]_i_1_n_5 ;
  wire \oS_phaseAngle_reg[27]_i_1_n_6 ;
  wire \oS_phaseAngle_reg[27]_i_1_n_7 ;
  wire \oS_phaseAngle_reg[31]_i_2_n_1 ;
  wire \oS_phaseAngle_reg[31]_i_2_n_2 ;
  wire \oS_phaseAngle_reg[31]_i_2_n_3 ;
  wire \oS_phaseAngle_reg[31]_i_2_n_4 ;
  wire \oS_phaseAngle_reg[31]_i_2_n_5 ;
  wire \oS_phaseAngle_reg[31]_i_2_n_6 ;
  wire \oS_phaseAngle_reg[31]_i_2_n_7 ;
  wire \oS_phaseAngle_reg[3]_i_1_n_0 ;
  wire \oS_phaseAngle_reg[3]_i_1_n_1 ;
  wire \oS_phaseAngle_reg[3]_i_1_n_2 ;
  wire \oS_phaseAngle_reg[3]_i_1_n_3 ;
  wire \oS_phaseAngle_reg[3]_i_1_n_4 ;
  wire \oS_phaseAngle_reg[3]_i_1_n_5 ;
  wire \oS_phaseAngle_reg[3]_i_1_n_6 ;
  wire \oS_phaseAngle_reg[3]_i_1_n_7 ;
  wire \oS_phaseAngle_reg[7]_i_1_n_0 ;
  wire \oS_phaseAngle_reg[7]_i_1_n_1 ;
  wire \oS_phaseAngle_reg[7]_i_1_n_2 ;
  wire \oS_phaseAngle_reg[7]_i_1_n_3 ;
  wire \oS_phaseAngle_reg[7]_i_1_n_4 ;
  wire \oS_phaseAngle_reg[7]_i_1_n_5 ;
  wire \oS_phaseAngle_reg[7]_i_1_n_6 ;
  wire \oS_phaseAngle_reg[7]_i_1_n_7 ;
  wire o_valid;
  wire [31:0]r_phaseDelta;
  wire [3:3]\NLW_oS_phaseAngle_reg[31]_i_2_CO_UNCONNECTED ;

  LUT4 #(
    .INIT(16'h1BE4)) 
    \oS_phaseAngle[11]_i_2 
       (.I0(i_valid),
        .I1(r_phaseDelta[11]),
        .I2(iS_phaseDelta[11]),
        .I3(oS_phaseAngle[11]),
        .O(\oS_phaseAngle[11]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h1BE4)) 
    \oS_phaseAngle[11]_i_3 
       (.I0(i_valid),
        .I1(r_phaseDelta[10]),
        .I2(iS_phaseDelta[10]),
        .I3(oS_phaseAngle[10]),
        .O(\oS_phaseAngle[11]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h1BE4)) 
    \oS_phaseAngle[11]_i_4 
       (.I0(i_valid),
        .I1(r_phaseDelta[9]),
        .I2(iS_phaseDelta[9]),
        .I3(oS_phaseAngle[9]),
        .O(\oS_phaseAngle[11]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h1BE4)) 
    \oS_phaseAngle[11]_i_5 
       (.I0(i_valid),
        .I1(r_phaseDelta[8]),
        .I2(iS_phaseDelta[8]),
        .I3(oS_phaseAngle[8]),
        .O(\oS_phaseAngle[11]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h1BE4)) 
    \oS_phaseAngle[15]_i_2 
       (.I0(i_valid),
        .I1(r_phaseDelta[15]),
        .I2(iS_phaseDelta[15]),
        .I3(oS_phaseAngle[15]),
        .O(\oS_phaseAngle[15]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h1BE4)) 
    \oS_phaseAngle[15]_i_3 
       (.I0(i_valid),
        .I1(r_phaseDelta[14]),
        .I2(iS_phaseDelta[14]),
        .I3(oS_phaseAngle[14]),
        .O(\oS_phaseAngle[15]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h1BE4)) 
    \oS_phaseAngle[15]_i_4 
       (.I0(i_valid),
        .I1(r_phaseDelta[13]),
        .I2(iS_phaseDelta[13]),
        .I3(oS_phaseAngle[13]),
        .O(\oS_phaseAngle[15]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h1BE4)) 
    \oS_phaseAngle[15]_i_5 
       (.I0(i_valid),
        .I1(r_phaseDelta[12]),
        .I2(iS_phaseDelta[12]),
        .I3(oS_phaseAngle[12]),
        .O(\oS_phaseAngle[15]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h1BE4)) 
    \oS_phaseAngle[19]_i_2 
       (.I0(i_valid),
        .I1(r_phaseDelta[19]),
        .I2(iS_phaseDelta[19]),
        .I3(oS_phaseAngle[19]),
        .O(\oS_phaseAngle[19]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h1BE4)) 
    \oS_phaseAngle[19]_i_3 
       (.I0(i_valid),
        .I1(r_phaseDelta[18]),
        .I2(iS_phaseDelta[18]),
        .I3(oS_phaseAngle[18]),
        .O(\oS_phaseAngle[19]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h1BE4)) 
    \oS_phaseAngle[19]_i_4 
       (.I0(i_valid),
        .I1(r_phaseDelta[17]),
        .I2(iS_phaseDelta[17]),
        .I3(oS_phaseAngle[17]),
        .O(\oS_phaseAngle[19]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h1BE4)) 
    \oS_phaseAngle[19]_i_5 
       (.I0(i_valid),
        .I1(r_phaseDelta[16]),
        .I2(iS_phaseDelta[16]),
        .I3(oS_phaseAngle[16]),
        .O(\oS_phaseAngle[19]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h1BE4)) 
    \oS_phaseAngle[23]_i_2 
       (.I0(i_valid),
        .I1(r_phaseDelta[23]),
        .I2(iS_phaseDelta[23]),
        .I3(oS_phaseAngle[23]),
        .O(\oS_phaseAngle[23]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h1BE4)) 
    \oS_phaseAngle[23]_i_3 
       (.I0(i_valid),
        .I1(r_phaseDelta[22]),
        .I2(iS_phaseDelta[22]),
        .I3(oS_phaseAngle[22]),
        .O(\oS_phaseAngle[23]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h1BE4)) 
    \oS_phaseAngle[23]_i_4 
       (.I0(i_valid),
        .I1(r_phaseDelta[21]),
        .I2(iS_phaseDelta[21]),
        .I3(oS_phaseAngle[21]),
        .O(\oS_phaseAngle[23]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h1BE4)) 
    \oS_phaseAngle[23]_i_5 
       (.I0(i_valid),
        .I1(r_phaseDelta[20]),
        .I2(iS_phaseDelta[20]),
        .I3(oS_phaseAngle[20]),
        .O(\oS_phaseAngle[23]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h1BE4)) 
    \oS_phaseAngle[27]_i_2 
       (.I0(i_valid),
        .I1(r_phaseDelta[27]),
        .I2(iS_phaseDelta[27]),
        .I3(oS_phaseAngle[27]),
        .O(\oS_phaseAngle[27]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h1BE4)) 
    \oS_phaseAngle[27]_i_3 
       (.I0(i_valid),
        .I1(r_phaseDelta[26]),
        .I2(iS_phaseDelta[26]),
        .I3(oS_phaseAngle[26]),
        .O(\oS_phaseAngle[27]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h1BE4)) 
    \oS_phaseAngle[27]_i_4 
       (.I0(i_valid),
        .I1(r_phaseDelta[25]),
        .I2(iS_phaseDelta[25]),
        .I3(oS_phaseAngle[25]),
        .O(\oS_phaseAngle[27]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h1BE4)) 
    \oS_phaseAngle[27]_i_5 
       (.I0(i_valid),
        .I1(r_phaseDelta[24]),
        .I2(iS_phaseDelta[24]),
        .I3(oS_phaseAngle[24]),
        .O(\oS_phaseAngle[27]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \oS_phaseAngle[31]_i_1 
       (.I0(i_resetn),
        .O(clear));
  LUT4 #(
    .INIT(16'h1BE4)) 
    \oS_phaseAngle[31]_i_3 
       (.I0(i_valid),
        .I1(r_phaseDelta[31]),
        .I2(iS_phaseDelta[31]),
        .I3(oS_phaseAngle[31]),
        .O(\oS_phaseAngle[31]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h1BE4)) 
    \oS_phaseAngle[31]_i_4 
       (.I0(i_valid),
        .I1(r_phaseDelta[30]),
        .I2(iS_phaseDelta[30]),
        .I3(oS_phaseAngle[30]),
        .O(\oS_phaseAngle[31]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h1BE4)) 
    \oS_phaseAngle[31]_i_5 
       (.I0(i_valid),
        .I1(r_phaseDelta[29]),
        .I2(iS_phaseDelta[29]),
        .I3(oS_phaseAngle[29]),
        .O(\oS_phaseAngle[31]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h1BE4)) 
    \oS_phaseAngle[31]_i_6 
       (.I0(i_valid),
        .I1(r_phaseDelta[28]),
        .I2(iS_phaseDelta[28]),
        .I3(oS_phaseAngle[28]),
        .O(\oS_phaseAngle[31]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h1BE4)) 
    \oS_phaseAngle[3]_i_2 
       (.I0(i_valid),
        .I1(r_phaseDelta[3]),
        .I2(iS_phaseDelta[3]),
        .I3(oS_phaseAngle[3]),
        .O(\oS_phaseAngle[3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h1BE4)) 
    \oS_phaseAngle[3]_i_3 
       (.I0(i_valid),
        .I1(r_phaseDelta[2]),
        .I2(iS_phaseDelta[2]),
        .I3(oS_phaseAngle[2]),
        .O(\oS_phaseAngle[3]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h1BE4)) 
    \oS_phaseAngle[3]_i_4 
       (.I0(i_valid),
        .I1(r_phaseDelta[1]),
        .I2(iS_phaseDelta[1]),
        .I3(oS_phaseAngle[1]),
        .O(\oS_phaseAngle[3]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h1BE4)) 
    \oS_phaseAngle[3]_i_5 
       (.I0(i_valid),
        .I1(r_phaseDelta[0]),
        .I2(iS_phaseDelta[0]),
        .I3(oS_phaseAngle[0]),
        .O(\oS_phaseAngle[3]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h1BE4)) 
    \oS_phaseAngle[7]_i_2 
       (.I0(i_valid),
        .I1(r_phaseDelta[7]),
        .I2(iS_phaseDelta[7]),
        .I3(oS_phaseAngle[7]),
        .O(\oS_phaseAngle[7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h1BE4)) 
    \oS_phaseAngle[7]_i_3 
       (.I0(i_valid),
        .I1(r_phaseDelta[6]),
        .I2(iS_phaseDelta[6]),
        .I3(oS_phaseAngle[6]),
        .O(\oS_phaseAngle[7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h1BE4)) 
    \oS_phaseAngle[7]_i_4 
       (.I0(i_valid),
        .I1(r_phaseDelta[5]),
        .I2(iS_phaseDelta[5]),
        .I3(oS_phaseAngle[5]),
        .O(\oS_phaseAngle[7]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h1BE4)) 
    \oS_phaseAngle[7]_i_5 
       (.I0(i_valid),
        .I1(r_phaseDelta[4]),
        .I2(iS_phaseDelta[4]),
        .I3(oS_phaseAngle[4]),
        .O(\oS_phaseAngle[7]_i_5_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_ANGLE TDATA" *) 
  FDRE \oS_phaseAngle_reg[0] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_phaseAngle_reg[3]_i_1_n_7 ),
        .Q(oS_phaseAngle[0]),
        .R(clear));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_ANGLE TDATA" *) 
  FDRE \oS_phaseAngle_reg[10] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_phaseAngle_reg[11]_i_1_n_5 ),
        .Q(oS_phaseAngle[10]),
        .R(clear));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_ANGLE TDATA" *) 
  FDRE \oS_phaseAngle_reg[11] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_phaseAngle_reg[11]_i_1_n_4 ),
        .Q(oS_phaseAngle[11]),
        .R(clear));
  CARRY4 \oS_phaseAngle_reg[11]_i_1 
       (.CI(\oS_phaseAngle_reg[7]_i_1_n_0 ),
        .CO({\oS_phaseAngle_reg[11]_i_1_n_0 ,\oS_phaseAngle_reg[11]_i_1_n_1 ,\oS_phaseAngle_reg[11]_i_1_n_2 ,\oS_phaseAngle_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(oS_phaseAngle[11:8]),
        .O({\oS_phaseAngle_reg[11]_i_1_n_4 ,\oS_phaseAngle_reg[11]_i_1_n_5 ,\oS_phaseAngle_reg[11]_i_1_n_6 ,\oS_phaseAngle_reg[11]_i_1_n_7 }),
        .S({\oS_phaseAngle[11]_i_2_n_0 ,\oS_phaseAngle[11]_i_3_n_0 ,\oS_phaseAngle[11]_i_4_n_0 ,\oS_phaseAngle[11]_i_5_n_0 }));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_ANGLE TDATA" *) 
  FDRE \oS_phaseAngle_reg[12] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_phaseAngle_reg[15]_i_1_n_7 ),
        .Q(oS_phaseAngle[12]),
        .R(clear));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_ANGLE TDATA" *) 
  FDRE \oS_phaseAngle_reg[13] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_phaseAngle_reg[15]_i_1_n_6 ),
        .Q(oS_phaseAngle[13]),
        .R(clear));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_ANGLE TDATA" *) 
  FDRE \oS_phaseAngle_reg[14] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_phaseAngle_reg[15]_i_1_n_5 ),
        .Q(oS_phaseAngle[14]),
        .R(clear));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_ANGLE TDATA" *) 
  FDRE \oS_phaseAngle_reg[15] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_phaseAngle_reg[15]_i_1_n_4 ),
        .Q(oS_phaseAngle[15]),
        .R(clear));
  CARRY4 \oS_phaseAngle_reg[15]_i_1 
       (.CI(\oS_phaseAngle_reg[11]_i_1_n_0 ),
        .CO({\oS_phaseAngle_reg[15]_i_1_n_0 ,\oS_phaseAngle_reg[15]_i_1_n_1 ,\oS_phaseAngle_reg[15]_i_1_n_2 ,\oS_phaseAngle_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(oS_phaseAngle[15:12]),
        .O({\oS_phaseAngle_reg[15]_i_1_n_4 ,\oS_phaseAngle_reg[15]_i_1_n_5 ,\oS_phaseAngle_reg[15]_i_1_n_6 ,\oS_phaseAngle_reg[15]_i_1_n_7 }),
        .S({\oS_phaseAngle[15]_i_2_n_0 ,\oS_phaseAngle[15]_i_3_n_0 ,\oS_phaseAngle[15]_i_4_n_0 ,\oS_phaseAngle[15]_i_5_n_0 }));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_ANGLE TDATA" *) 
  FDRE \oS_phaseAngle_reg[16] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_phaseAngle_reg[19]_i_1_n_7 ),
        .Q(oS_phaseAngle[16]),
        .R(clear));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_ANGLE TDATA" *) 
  FDRE \oS_phaseAngle_reg[17] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_phaseAngle_reg[19]_i_1_n_6 ),
        .Q(oS_phaseAngle[17]),
        .R(clear));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_ANGLE TDATA" *) 
  FDRE \oS_phaseAngle_reg[18] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_phaseAngle_reg[19]_i_1_n_5 ),
        .Q(oS_phaseAngle[18]),
        .R(clear));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_ANGLE TDATA" *) 
  FDRE \oS_phaseAngle_reg[19] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_phaseAngle_reg[19]_i_1_n_4 ),
        .Q(oS_phaseAngle[19]),
        .R(clear));
  CARRY4 \oS_phaseAngle_reg[19]_i_1 
       (.CI(\oS_phaseAngle_reg[15]_i_1_n_0 ),
        .CO({\oS_phaseAngle_reg[19]_i_1_n_0 ,\oS_phaseAngle_reg[19]_i_1_n_1 ,\oS_phaseAngle_reg[19]_i_1_n_2 ,\oS_phaseAngle_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(oS_phaseAngle[19:16]),
        .O({\oS_phaseAngle_reg[19]_i_1_n_4 ,\oS_phaseAngle_reg[19]_i_1_n_5 ,\oS_phaseAngle_reg[19]_i_1_n_6 ,\oS_phaseAngle_reg[19]_i_1_n_7 }),
        .S({\oS_phaseAngle[19]_i_2_n_0 ,\oS_phaseAngle[19]_i_3_n_0 ,\oS_phaseAngle[19]_i_4_n_0 ,\oS_phaseAngle[19]_i_5_n_0 }));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_ANGLE TDATA" *) 
  FDRE \oS_phaseAngle_reg[1] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_phaseAngle_reg[3]_i_1_n_6 ),
        .Q(oS_phaseAngle[1]),
        .R(clear));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_ANGLE TDATA" *) 
  FDRE \oS_phaseAngle_reg[20] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_phaseAngle_reg[23]_i_1_n_7 ),
        .Q(oS_phaseAngle[20]),
        .R(clear));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_ANGLE TDATA" *) 
  FDRE \oS_phaseAngle_reg[21] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_phaseAngle_reg[23]_i_1_n_6 ),
        .Q(oS_phaseAngle[21]),
        .R(clear));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_ANGLE TDATA" *) 
  FDRE \oS_phaseAngle_reg[22] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_phaseAngle_reg[23]_i_1_n_5 ),
        .Q(oS_phaseAngle[22]),
        .R(clear));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_ANGLE TDATA" *) 
  FDRE \oS_phaseAngle_reg[23] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_phaseAngle_reg[23]_i_1_n_4 ),
        .Q(oS_phaseAngle[23]),
        .R(clear));
  CARRY4 \oS_phaseAngle_reg[23]_i_1 
       (.CI(\oS_phaseAngle_reg[19]_i_1_n_0 ),
        .CO({\oS_phaseAngle_reg[23]_i_1_n_0 ,\oS_phaseAngle_reg[23]_i_1_n_1 ,\oS_phaseAngle_reg[23]_i_1_n_2 ,\oS_phaseAngle_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(oS_phaseAngle[23:20]),
        .O({\oS_phaseAngle_reg[23]_i_1_n_4 ,\oS_phaseAngle_reg[23]_i_1_n_5 ,\oS_phaseAngle_reg[23]_i_1_n_6 ,\oS_phaseAngle_reg[23]_i_1_n_7 }),
        .S({\oS_phaseAngle[23]_i_2_n_0 ,\oS_phaseAngle[23]_i_3_n_0 ,\oS_phaseAngle[23]_i_4_n_0 ,\oS_phaseAngle[23]_i_5_n_0 }));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_ANGLE TDATA" *) 
  FDRE \oS_phaseAngle_reg[24] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_phaseAngle_reg[27]_i_1_n_7 ),
        .Q(oS_phaseAngle[24]),
        .R(clear));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_ANGLE TDATA" *) 
  FDRE \oS_phaseAngle_reg[25] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_phaseAngle_reg[27]_i_1_n_6 ),
        .Q(oS_phaseAngle[25]),
        .R(clear));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_ANGLE TDATA" *) 
  FDRE \oS_phaseAngle_reg[26] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_phaseAngle_reg[27]_i_1_n_5 ),
        .Q(oS_phaseAngle[26]),
        .R(clear));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_ANGLE TDATA" *) 
  FDRE \oS_phaseAngle_reg[27] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_phaseAngle_reg[27]_i_1_n_4 ),
        .Q(oS_phaseAngle[27]),
        .R(clear));
  CARRY4 \oS_phaseAngle_reg[27]_i_1 
       (.CI(\oS_phaseAngle_reg[23]_i_1_n_0 ),
        .CO({\oS_phaseAngle_reg[27]_i_1_n_0 ,\oS_phaseAngle_reg[27]_i_1_n_1 ,\oS_phaseAngle_reg[27]_i_1_n_2 ,\oS_phaseAngle_reg[27]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(oS_phaseAngle[27:24]),
        .O({\oS_phaseAngle_reg[27]_i_1_n_4 ,\oS_phaseAngle_reg[27]_i_1_n_5 ,\oS_phaseAngle_reg[27]_i_1_n_6 ,\oS_phaseAngle_reg[27]_i_1_n_7 }),
        .S({\oS_phaseAngle[27]_i_2_n_0 ,\oS_phaseAngle[27]_i_3_n_0 ,\oS_phaseAngle[27]_i_4_n_0 ,\oS_phaseAngle[27]_i_5_n_0 }));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_ANGLE TDATA" *) 
  FDRE \oS_phaseAngle_reg[28] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_phaseAngle_reg[31]_i_2_n_7 ),
        .Q(oS_phaseAngle[28]),
        .R(clear));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_ANGLE TDATA" *) 
  FDRE \oS_phaseAngle_reg[29] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_phaseAngle_reg[31]_i_2_n_6 ),
        .Q(oS_phaseAngle[29]),
        .R(clear));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_ANGLE TDATA" *) 
  FDRE \oS_phaseAngle_reg[2] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_phaseAngle_reg[3]_i_1_n_5 ),
        .Q(oS_phaseAngle[2]),
        .R(clear));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_ANGLE TDATA" *) 
  FDRE \oS_phaseAngle_reg[30] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_phaseAngle_reg[31]_i_2_n_5 ),
        .Q(oS_phaseAngle[30]),
        .R(clear));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_ANGLE TDATA" *) 
  FDRE \oS_phaseAngle_reg[31] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_phaseAngle_reg[31]_i_2_n_4 ),
        .Q(oS_phaseAngle[31]),
        .R(clear));
  CARRY4 \oS_phaseAngle_reg[31]_i_2 
       (.CI(\oS_phaseAngle_reg[27]_i_1_n_0 ),
        .CO({\NLW_oS_phaseAngle_reg[31]_i_2_CO_UNCONNECTED [3],\oS_phaseAngle_reg[31]_i_2_n_1 ,\oS_phaseAngle_reg[31]_i_2_n_2 ,\oS_phaseAngle_reg[31]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,oS_phaseAngle[30:28]}),
        .O({\oS_phaseAngle_reg[31]_i_2_n_4 ,\oS_phaseAngle_reg[31]_i_2_n_5 ,\oS_phaseAngle_reg[31]_i_2_n_6 ,\oS_phaseAngle_reg[31]_i_2_n_7 }),
        .S({\oS_phaseAngle[31]_i_3_n_0 ,\oS_phaseAngle[31]_i_4_n_0 ,\oS_phaseAngle[31]_i_5_n_0 ,\oS_phaseAngle[31]_i_6_n_0 }));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_ANGLE TDATA" *) 
  FDRE \oS_phaseAngle_reg[3] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_phaseAngle_reg[3]_i_1_n_4 ),
        .Q(oS_phaseAngle[3]),
        .R(clear));
  CARRY4 \oS_phaseAngle_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\oS_phaseAngle_reg[3]_i_1_n_0 ,\oS_phaseAngle_reg[3]_i_1_n_1 ,\oS_phaseAngle_reg[3]_i_1_n_2 ,\oS_phaseAngle_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(oS_phaseAngle[3:0]),
        .O({\oS_phaseAngle_reg[3]_i_1_n_4 ,\oS_phaseAngle_reg[3]_i_1_n_5 ,\oS_phaseAngle_reg[3]_i_1_n_6 ,\oS_phaseAngle_reg[3]_i_1_n_7 }),
        .S({\oS_phaseAngle[3]_i_2_n_0 ,\oS_phaseAngle[3]_i_3_n_0 ,\oS_phaseAngle[3]_i_4_n_0 ,\oS_phaseAngle[3]_i_5_n_0 }));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_ANGLE TDATA" *) 
  FDRE \oS_phaseAngle_reg[4] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_phaseAngle_reg[7]_i_1_n_7 ),
        .Q(oS_phaseAngle[4]),
        .R(clear));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_ANGLE TDATA" *) 
  FDRE \oS_phaseAngle_reg[5] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_phaseAngle_reg[7]_i_1_n_6 ),
        .Q(oS_phaseAngle[5]),
        .R(clear));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_ANGLE TDATA" *) 
  FDRE \oS_phaseAngle_reg[6] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_phaseAngle_reg[7]_i_1_n_5 ),
        .Q(oS_phaseAngle[6]),
        .R(clear));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_ANGLE TDATA" *) 
  FDRE \oS_phaseAngle_reg[7] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_phaseAngle_reg[7]_i_1_n_4 ),
        .Q(oS_phaseAngle[7]),
        .R(clear));
  CARRY4 \oS_phaseAngle_reg[7]_i_1 
       (.CI(\oS_phaseAngle_reg[3]_i_1_n_0 ),
        .CO({\oS_phaseAngle_reg[7]_i_1_n_0 ,\oS_phaseAngle_reg[7]_i_1_n_1 ,\oS_phaseAngle_reg[7]_i_1_n_2 ,\oS_phaseAngle_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(oS_phaseAngle[7:4]),
        .O({\oS_phaseAngle_reg[7]_i_1_n_4 ,\oS_phaseAngle_reg[7]_i_1_n_5 ,\oS_phaseAngle_reg[7]_i_1_n_6 ,\oS_phaseAngle_reg[7]_i_1_n_7 }),
        .S({\oS_phaseAngle[7]_i_2_n_0 ,\oS_phaseAngle[7]_i_3_n_0 ,\oS_phaseAngle[7]_i_4_n_0 ,\oS_phaseAngle[7]_i_5_n_0 }));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_ANGLE TDATA" *) 
  FDRE \oS_phaseAngle_reg[8] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_phaseAngle_reg[11]_i_1_n_7 ),
        .Q(oS_phaseAngle[8]),
        .R(clear));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_ANGLE TDATA" *) 
  FDRE \oS_phaseAngle_reg[9] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\oS_phaseAngle_reg[11]_i_1_n_6 ),
        .Q(oS_phaseAngle[9]),
        .R(clear));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_ANGLE TVALID" *) 
  FDRE o_valid_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(i_valid),
        .Q(o_valid),
        .R(clear));
  FDRE \r_phaseDelta_reg[0] 
       (.C(i_clk),
        .CE(i_valid),
        .D(iS_phaseDelta[0]),
        .Q(r_phaseDelta[0]),
        .R(clear));
  FDRE \r_phaseDelta_reg[10] 
       (.C(i_clk),
        .CE(i_valid),
        .D(iS_phaseDelta[10]),
        .Q(r_phaseDelta[10]),
        .R(clear));
  FDRE \r_phaseDelta_reg[11] 
       (.C(i_clk),
        .CE(i_valid),
        .D(iS_phaseDelta[11]),
        .Q(r_phaseDelta[11]),
        .R(clear));
  FDRE \r_phaseDelta_reg[12] 
       (.C(i_clk),
        .CE(i_valid),
        .D(iS_phaseDelta[12]),
        .Q(r_phaseDelta[12]),
        .R(clear));
  FDRE \r_phaseDelta_reg[13] 
       (.C(i_clk),
        .CE(i_valid),
        .D(iS_phaseDelta[13]),
        .Q(r_phaseDelta[13]),
        .R(clear));
  FDRE \r_phaseDelta_reg[14] 
       (.C(i_clk),
        .CE(i_valid),
        .D(iS_phaseDelta[14]),
        .Q(r_phaseDelta[14]),
        .R(clear));
  FDRE \r_phaseDelta_reg[15] 
       (.C(i_clk),
        .CE(i_valid),
        .D(iS_phaseDelta[15]),
        .Q(r_phaseDelta[15]),
        .R(clear));
  FDRE \r_phaseDelta_reg[16] 
       (.C(i_clk),
        .CE(i_valid),
        .D(iS_phaseDelta[16]),
        .Q(r_phaseDelta[16]),
        .R(clear));
  FDRE \r_phaseDelta_reg[17] 
       (.C(i_clk),
        .CE(i_valid),
        .D(iS_phaseDelta[17]),
        .Q(r_phaseDelta[17]),
        .R(clear));
  FDRE \r_phaseDelta_reg[18] 
       (.C(i_clk),
        .CE(i_valid),
        .D(iS_phaseDelta[18]),
        .Q(r_phaseDelta[18]),
        .R(clear));
  FDRE \r_phaseDelta_reg[19] 
       (.C(i_clk),
        .CE(i_valid),
        .D(iS_phaseDelta[19]),
        .Q(r_phaseDelta[19]),
        .R(clear));
  FDRE \r_phaseDelta_reg[1] 
       (.C(i_clk),
        .CE(i_valid),
        .D(iS_phaseDelta[1]),
        .Q(r_phaseDelta[1]),
        .R(clear));
  FDRE \r_phaseDelta_reg[20] 
       (.C(i_clk),
        .CE(i_valid),
        .D(iS_phaseDelta[20]),
        .Q(r_phaseDelta[20]),
        .R(clear));
  FDRE \r_phaseDelta_reg[21] 
       (.C(i_clk),
        .CE(i_valid),
        .D(iS_phaseDelta[21]),
        .Q(r_phaseDelta[21]),
        .R(clear));
  FDRE \r_phaseDelta_reg[22] 
       (.C(i_clk),
        .CE(i_valid),
        .D(iS_phaseDelta[22]),
        .Q(r_phaseDelta[22]),
        .R(clear));
  FDRE \r_phaseDelta_reg[23] 
       (.C(i_clk),
        .CE(i_valid),
        .D(iS_phaseDelta[23]),
        .Q(r_phaseDelta[23]),
        .R(clear));
  FDRE \r_phaseDelta_reg[24] 
       (.C(i_clk),
        .CE(i_valid),
        .D(iS_phaseDelta[24]),
        .Q(r_phaseDelta[24]),
        .R(clear));
  FDRE \r_phaseDelta_reg[25] 
       (.C(i_clk),
        .CE(i_valid),
        .D(iS_phaseDelta[25]),
        .Q(r_phaseDelta[25]),
        .R(clear));
  FDRE \r_phaseDelta_reg[26] 
       (.C(i_clk),
        .CE(i_valid),
        .D(iS_phaseDelta[26]),
        .Q(r_phaseDelta[26]),
        .R(clear));
  FDRE \r_phaseDelta_reg[27] 
       (.C(i_clk),
        .CE(i_valid),
        .D(iS_phaseDelta[27]),
        .Q(r_phaseDelta[27]),
        .R(clear));
  FDRE \r_phaseDelta_reg[28] 
       (.C(i_clk),
        .CE(i_valid),
        .D(iS_phaseDelta[28]),
        .Q(r_phaseDelta[28]),
        .R(clear));
  FDRE \r_phaseDelta_reg[29] 
       (.C(i_clk),
        .CE(i_valid),
        .D(iS_phaseDelta[29]),
        .Q(r_phaseDelta[29]),
        .R(clear));
  FDRE \r_phaseDelta_reg[2] 
       (.C(i_clk),
        .CE(i_valid),
        .D(iS_phaseDelta[2]),
        .Q(r_phaseDelta[2]),
        .R(clear));
  FDRE \r_phaseDelta_reg[30] 
       (.C(i_clk),
        .CE(i_valid),
        .D(iS_phaseDelta[30]),
        .Q(r_phaseDelta[30]),
        .R(clear));
  FDRE \r_phaseDelta_reg[31] 
       (.C(i_clk),
        .CE(i_valid),
        .D(iS_phaseDelta[31]),
        .Q(r_phaseDelta[31]),
        .R(clear));
  FDRE \r_phaseDelta_reg[3] 
       (.C(i_clk),
        .CE(i_valid),
        .D(iS_phaseDelta[3]),
        .Q(r_phaseDelta[3]),
        .R(clear));
  FDRE \r_phaseDelta_reg[4] 
       (.C(i_clk),
        .CE(i_valid),
        .D(iS_phaseDelta[4]),
        .Q(r_phaseDelta[4]),
        .R(clear));
  FDRE \r_phaseDelta_reg[5] 
       (.C(i_clk),
        .CE(i_valid),
        .D(iS_phaseDelta[5]),
        .Q(r_phaseDelta[5]),
        .R(clear));
  FDRE \r_phaseDelta_reg[6] 
       (.C(i_clk),
        .CE(i_valid),
        .D(iS_phaseDelta[6]),
        .Q(r_phaseDelta[6]),
        .R(clear));
  FDRE \r_phaseDelta_reg[7] 
       (.C(i_clk),
        .CE(i_valid),
        .D(iS_phaseDelta[7]),
        .Q(r_phaseDelta[7]),
        .R(clear));
  FDRE \r_phaseDelta_reg[8] 
       (.C(i_clk),
        .CE(i_valid),
        .D(iS_phaseDelta[8]),
        .Q(r_phaseDelta[8]),
        .R(clear));
  FDRE \r_phaseDelta_reg[9] 
       (.C(i_clk),
        .CE(i_valid),
        .D(iS_phaseDelta[9]),
        .Q(r_phaseDelta[9]),
        .R(clear));
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
