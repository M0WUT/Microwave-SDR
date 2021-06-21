// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Mon Jun 21 19:29:56 2021
// Host        : dan-Desktop running 64-bit Ubuntu 18.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/dan/Microwave-SDR/Vivado/SDR_Full/test_board/vivado/test_board.srcs/sources_1/bd/zsys/ip/zsys_adau1361_handler_0_1/zsys_adau1361_handler_0_1_sim_netlist.v
// Design      : zsys_adau1361_handler_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "zsys_adau1361_handler_0_1,adau1361_handler,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "adau1361_handler,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module zsys_adau1361_handler_0_1
   (iS_left_dac_data,
    i_left_dac_valid,
    iS_right_dac_data,
    i_right_dac_valid,
    oS_left_adc_data,
    o_left_adc_valid,
    oS_right_adc_data,
    o_right_adc_valid,
    i_clk,
    i_resetn,
    o_mclk,
    o_bclk,
    o_lrclk,
    i_adcData,
    o_dacData,
    o_error);
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_LEFT_DAC TDATA" *) input [15:0]iS_left_dac_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_LEFT_DAC TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_LEFT_DAC, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 80000000, PHASE 0.000, CLK_DOMAIN zsys_adc_clk_n, LAYERED_METADATA undef, INSERT_VIP 0" *) input i_left_dac_valid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_RIGHT_DAC TDATA" *) input [15:0]iS_right_dac_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_RIGHT_DAC TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_RIGHT_DAC, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 80000000, PHASE 0.000, CLK_DOMAIN zsys_adc_clk_n, LAYERED_METADATA undef, INSERT_VIP 0" *) input i_right_dac_valid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_LEFT_ADC TDATA" *) output [15:0]oS_left_adc_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_LEFT_ADC TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_LEFT_ADC, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 80000000, PHASE 0.000, CLK_DOMAIN zsys_adc_clk_n, LAYERED_METADATA undef, INSERT_VIP 0" *) output o_left_adc_valid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_RIGHT_ADC TDATA" *) output [15:0]oS_right_adc_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_RIGHT_ADC TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_RIGHT_ADC, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 80000000, PHASE 0.000, CLK_DOMAIN zsys_adc_clk_n, LAYERED_METADATA undef, INSERT_VIP 0" *) output o_right_adc_valid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 i_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_clk, ASSOCIATED_RESET i_resetn, ASSOCIATED_BUSIF S_AXIS_LEFT_DAC:S_AXIS_RIGHT_DAC:M_AXIS_LEFT_ADC:M_AXIS_RIGHT_ADC, FREQ_HZ 80000000, PHASE 0.000, CLK_DOMAIN zsys_adc_clk_n, INSERT_VIP 0" *) input i_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 i_resetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input i_resetn;
  output o_mclk;
  output o_bclk;
  output o_lrclk;
  input i_adcData;
  output o_dacData;
  output o_error;

  wire [15:0]iS_left_dac_data;
  wire [15:0]iS_right_dac_data;
  wire i_adcData;
  wire i_clk;
  wire i_left_dac_valid;
  wire i_resetn;
  wire i_right_dac_valid;
  wire [15:0]oS_left_adc_data;
  wire [15:0]oS_right_adc_data;
  wire o_bclk;
  wire o_dacData;
  wire o_error;
  wire o_left_adc_valid;
  wire o_lrclk;
  wire o_mclk;
  wire o_right_adc_valid;

  zsys_adau1361_handler_0_1_adau1361_handler inst
       (.D({iS_left_dac_data,iS_right_dac_data}),
        .i_adcData(i_adcData),
        .i_clk(i_clk),
        .i_left_dac_valid(i_left_dac_valid),
        .i_resetn(i_resetn),
        .i_right_dac_valid(i_right_dac_valid),
        .oS_left_adc_data(oS_left_adc_data),
        .oS_right_adc_data(oS_right_adc_data),
        .o_bclk_reg_0(o_bclk),
        .o_dacData(o_dacData),
        .o_error(o_error),
        .o_left_adc_valid(o_left_adc_valid),
        .o_lrclk(o_lrclk),
        .o_mclk(o_mclk),
        .o_right_adc_valid(o_right_adc_valid));
endmodule

(* ORIG_REF_NAME = "adau1361_handler" *) 
module zsys_adau1361_handler_0_1_adau1361_handler
   (o_bclk_reg_0,
    oS_left_adc_data,
    o_left_adc_valid,
    oS_right_adc_data,
    o_right_adc_valid,
    o_error,
    o_dacData,
    o_lrclk,
    o_mclk,
    i_resetn,
    i_clk,
    i_left_dac_valid,
    i_adcData,
    D,
    i_right_dac_valid);
  output o_bclk_reg_0;
  output [15:0]oS_left_adc_data;
  output o_left_adc_valid;
  output [15:0]oS_right_adc_data;
  output o_right_adc_valid;
  output o_error;
  output o_dacData;
  output o_lrclk;
  output o_mclk;
  input i_resetn;
  input i_clk;
  input i_left_dac_valid;
  input i_adcData;
  input [31:0]D;
  input i_right_dac_valid;

  wire [31:0]D;
  wire i_adcData;
  wire i_clk;
  wire i_left_dac_valid;
  wire i_resetn;
  wire i_right_dac_valid;
  wire [15:0]oS_left_adc_data;
  wire \oS_left_adc_data[15]_i_1_n_0 ;
  wire \oS_left_adc_data[15]_i_2_n_0 ;
  wire [15:0]oS_right_adc_data;
  wire o_bclk_i_1_n_0;
  wire o_bclk_reg_0;
  wire o_dacData;
  wire o_dacData_0;
  wire o_dacData_i_10_n_0;
  wire o_dacData_i_11_n_0;
  wire o_dacData_i_12_n_0;
  wire o_dacData_i_13_n_0;
  wire o_dacData_i_14_n_0;
  wire o_dacData_i_15_n_0;
  wire o_dacData_i_16_n_0;
  wire o_dacData_i_17_n_0;
  wire o_dacData_i_18_n_0;
  wire o_dacData_i_1_n_0;
  wire o_dacData_i_2_n_0;
  wire o_dacData_i_5_n_0;
  wire o_dacData_i_6_n_0;
  wire o_dacData_i_7_n_0;
  wire o_dacData_i_8_n_0;
  wire o_dacData_i_9_n_0;
  wire o_error;
  wire o_error6_out;
  wire o_error_i_1_n_0;
  wire o_error_i_2_n_0;
  wire o_error_i_3_n_0;
  wire o_left_adc_valid;
  wire o_left_adc_valid_i_1_n_0;
  wire o_left_adc_valid_i_2_n_0;
  wire o_left_adc_valid_i_3_n_0;
  wire o_lrclk;
  wire o_lrclk_i_1_n_0;
  wire o_lrclk_i_2_n_0;
  wire o_lrclk_i_3_n_0;
  wire o_mclk;
  wire o_mclk_i_1_n_0;
  wire o_right_adc_valid;
  wire [15:0]p_0_in;
  wire [5:1]p_1_in;
  wire \r_adcData[31]_i_1_n_0 ;
  wire \r_adcData_reg_n_0_[0] ;
  wire \r_adcData_reg_n_0_[10] ;
  wire \r_adcData_reg_n_0_[11] ;
  wire \r_adcData_reg_n_0_[12] ;
  wire \r_adcData_reg_n_0_[13] ;
  wire \r_adcData_reg_n_0_[14] ;
  wire \r_adcData_reg_n_0_[15] ;
  wire \r_adcData_reg_n_0_[1] ;
  wire \r_adcData_reg_n_0_[2] ;
  wire \r_adcData_reg_n_0_[3] ;
  wire \r_adcData_reg_n_0_[4] ;
  wire \r_adcData_reg_n_0_[5] ;
  wire \r_adcData_reg_n_0_[6] ;
  wire \r_adcData_reg_n_0_[7] ;
  wire \r_adcData_reg_n_0_[8] ;
  wire \r_adcData_reg_n_0_[9] ;
  wire \r_bitCounter[0]_i_1_n_0 ;
  wire \r_bitCounter[1]_i_1_n_0 ;
  wire \r_bitCounter[2]_i_1_n_0 ;
  wire \r_bitCounter[3]_i_1_n_0 ;
  wire \r_bitCounter[4]_i_1_n_0 ;
  wire \r_bitCounter[4]_i_2_n_0 ;
  wire \r_bitCounter[4]_i_3_n_0 ;
  wire \r_bitCounter[4]_i_4_n_0 ;
  wire \r_bitCounter[5]_i_1_n_0 ;
  wire \r_bitCounter[5]_i_2_n_0 ;
  wire \r_bitCounter_reg_n_0_[0] ;
  wire \r_bitCounter_reg_n_0_[1] ;
  wire \r_bitCounter_reg_n_0_[2] ;
  wire \r_bitCounter_reg_n_0_[3] ;
  wire \r_bitCounter_reg_n_0_[4] ;
  wire \r_bitCounter_reg_n_0_[5] ;
  wire r_dacData1__0;
  wire \r_dacData[31]_i_1_n_0 ;
  wire \r_dacData[31]_i_2_n_0 ;
  wire \r_dacData_reg_n_0_[0] ;
  wire \r_dacData_reg_n_0_[10] ;
  wire \r_dacData_reg_n_0_[11] ;
  wire \r_dacData_reg_n_0_[12] ;
  wire \r_dacData_reg_n_0_[13] ;
  wire \r_dacData_reg_n_0_[14] ;
  wire \r_dacData_reg_n_0_[15] ;
  wire \r_dacData_reg_n_0_[16] ;
  wire \r_dacData_reg_n_0_[17] ;
  wire \r_dacData_reg_n_0_[18] ;
  wire \r_dacData_reg_n_0_[19] ;
  wire \r_dacData_reg_n_0_[1] ;
  wire \r_dacData_reg_n_0_[20] ;
  wire \r_dacData_reg_n_0_[21] ;
  wire \r_dacData_reg_n_0_[22] ;
  wire \r_dacData_reg_n_0_[23] ;
  wire \r_dacData_reg_n_0_[24] ;
  wire \r_dacData_reg_n_0_[25] ;
  wire \r_dacData_reg_n_0_[26] ;
  wire \r_dacData_reg_n_0_[27] ;
  wire \r_dacData_reg_n_0_[28] ;
  wire \r_dacData_reg_n_0_[29] ;
  wire \r_dacData_reg_n_0_[2] ;
  wire \r_dacData_reg_n_0_[30] ;
  wire \r_dacData_reg_n_0_[31] ;
  wire \r_dacData_reg_n_0_[3] ;
  wire \r_dacData_reg_n_0_[4] ;
  wire \r_dacData_reg_n_0_[5] ;
  wire \r_dacData_reg_n_0_[6] ;
  wire \r_dacData_reg_n_0_[7] ;
  wire \r_dacData_reg_n_0_[8] ;
  wire \r_dacData_reg_n_0_[9] ;
  wire \r_dividerCounter[0]_i_1_n_0 ;
  wire \r_dividerCounter_reg_n_0_[0] ;
  wire \r_dividerCounter_reg_n_0_[1] ;
  wire \r_dividerCounter_reg_n_0_[3] ;
  wire \r_dividerCounter_reg_n_0_[4] ;
  wire r_started;
  wire r_started_i_1_n_0;
  wire w_bclk;
  wire w_lrclk012_in;
  wire w_mclk;

  LUT3 #(
    .INIT(8'h08)) 
    \oS_left_adc_data[15]_i_1 
       (.I0(r_started),
        .I1(i_resetn),
        .I2(\oS_left_adc_data[15]_i_2_n_0 ),
        .O(\oS_left_adc_data[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFFBFFF)) 
    \oS_left_adc_data[15]_i_2 
       (.I0(\r_bitCounter_reg_n_0_[5] ),
        .I1(\r_bitCounter_reg_n_0_[1] ),
        .I2(\r_bitCounter_reg_n_0_[2] ),
        .I3(\r_bitCounter_reg_n_0_[0] ),
        .I4(o_left_adc_valid_i_3_n_0),
        .O(\oS_left_adc_data[15]_i_2_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_LEFT_ADC TDATA" *) 
  FDRE \oS_left_adc_data_reg[0] 
       (.C(i_clk),
        .CE(\oS_left_adc_data[15]_i_1_n_0 ),
        .D(p_0_in[0]),
        .Q(oS_left_adc_data[0]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_LEFT_ADC TDATA" *) 
  FDRE \oS_left_adc_data_reg[10] 
       (.C(i_clk),
        .CE(\oS_left_adc_data[15]_i_1_n_0 ),
        .D(p_0_in[10]),
        .Q(oS_left_adc_data[10]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_LEFT_ADC TDATA" *) 
  FDRE \oS_left_adc_data_reg[11] 
       (.C(i_clk),
        .CE(\oS_left_adc_data[15]_i_1_n_0 ),
        .D(p_0_in[11]),
        .Q(oS_left_adc_data[11]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_LEFT_ADC TDATA" *) 
  FDRE \oS_left_adc_data_reg[12] 
       (.C(i_clk),
        .CE(\oS_left_adc_data[15]_i_1_n_0 ),
        .D(p_0_in[12]),
        .Q(oS_left_adc_data[12]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_LEFT_ADC TDATA" *) 
  FDRE \oS_left_adc_data_reg[13] 
       (.C(i_clk),
        .CE(\oS_left_adc_data[15]_i_1_n_0 ),
        .D(p_0_in[13]),
        .Q(oS_left_adc_data[13]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_LEFT_ADC TDATA" *) 
  FDRE \oS_left_adc_data_reg[14] 
       (.C(i_clk),
        .CE(\oS_left_adc_data[15]_i_1_n_0 ),
        .D(p_0_in[14]),
        .Q(oS_left_adc_data[14]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_LEFT_ADC TDATA" *) 
  FDRE \oS_left_adc_data_reg[15] 
       (.C(i_clk),
        .CE(\oS_left_adc_data[15]_i_1_n_0 ),
        .D(p_0_in[15]),
        .Q(oS_left_adc_data[15]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_LEFT_ADC TDATA" *) 
  FDRE \oS_left_adc_data_reg[1] 
       (.C(i_clk),
        .CE(\oS_left_adc_data[15]_i_1_n_0 ),
        .D(p_0_in[1]),
        .Q(oS_left_adc_data[1]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_LEFT_ADC TDATA" *) 
  FDRE \oS_left_adc_data_reg[2] 
       (.C(i_clk),
        .CE(\oS_left_adc_data[15]_i_1_n_0 ),
        .D(p_0_in[2]),
        .Q(oS_left_adc_data[2]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_LEFT_ADC TDATA" *) 
  FDRE \oS_left_adc_data_reg[3] 
       (.C(i_clk),
        .CE(\oS_left_adc_data[15]_i_1_n_0 ),
        .D(p_0_in[3]),
        .Q(oS_left_adc_data[3]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_LEFT_ADC TDATA" *) 
  FDRE \oS_left_adc_data_reg[4] 
       (.C(i_clk),
        .CE(\oS_left_adc_data[15]_i_1_n_0 ),
        .D(p_0_in[4]),
        .Q(oS_left_adc_data[4]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_LEFT_ADC TDATA" *) 
  FDRE \oS_left_adc_data_reg[5] 
       (.C(i_clk),
        .CE(\oS_left_adc_data[15]_i_1_n_0 ),
        .D(p_0_in[5]),
        .Q(oS_left_adc_data[5]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_LEFT_ADC TDATA" *) 
  FDRE \oS_left_adc_data_reg[6] 
       (.C(i_clk),
        .CE(\oS_left_adc_data[15]_i_1_n_0 ),
        .D(p_0_in[6]),
        .Q(oS_left_adc_data[6]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_LEFT_ADC TDATA" *) 
  FDRE \oS_left_adc_data_reg[7] 
       (.C(i_clk),
        .CE(\oS_left_adc_data[15]_i_1_n_0 ),
        .D(p_0_in[7]),
        .Q(oS_left_adc_data[7]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_LEFT_ADC TDATA" *) 
  FDRE \oS_left_adc_data_reg[8] 
       (.C(i_clk),
        .CE(\oS_left_adc_data[15]_i_1_n_0 ),
        .D(p_0_in[8]),
        .Q(oS_left_adc_data[8]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_LEFT_ADC TDATA" *) 
  FDRE \oS_left_adc_data_reg[9] 
       (.C(i_clk),
        .CE(\oS_left_adc_data[15]_i_1_n_0 ),
        .D(p_0_in[9]),
        .Q(oS_left_adc_data[9]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_RIGHT_ADC TDATA" *) 
  FDRE \oS_right_adc_data_reg[0] 
       (.C(i_clk),
        .CE(\oS_left_adc_data[15]_i_1_n_0 ),
        .D(\r_adcData_reg_n_0_[0] ),
        .Q(oS_right_adc_data[0]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_RIGHT_ADC TDATA" *) 
  FDRE \oS_right_adc_data_reg[10] 
       (.C(i_clk),
        .CE(\oS_left_adc_data[15]_i_1_n_0 ),
        .D(\r_adcData_reg_n_0_[10] ),
        .Q(oS_right_adc_data[10]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_RIGHT_ADC TDATA" *) 
  FDRE \oS_right_adc_data_reg[11] 
       (.C(i_clk),
        .CE(\oS_left_adc_data[15]_i_1_n_0 ),
        .D(\r_adcData_reg_n_0_[11] ),
        .Q(oS_right_adc_data[11]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_RIGHT_ADC TDATA" *) 
  FDRE \oS_right_adc_data_reg[12] 
       (.C(i_clk),
        .CE(\oS_left_adc_data[15]_i_1_n_0 ),
        .D(\r_adcData_reg_n_0_[12] ),
        .Q(oS_right_adc_data[12]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_RIGHT_ADC TDATA" *) 
  FDRE \oS_right_adc_data_reg[13] 
       (.C(i_clk),
        .CE(\oS_left_adc_data[15]_i_1_n_0 ),
        .D(\r_adcData_reg_n_0_[13] ),
        .Q(oS_right_adc_data[13]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_RIGHT_ADC TDATA" *) 
  FDRE \oS_right_adc_data_reg[14] 
       (.C(i_clk),
        .CE(\oS_left_adc_data[15]_i_1_n_0 ),
        .D(\r_adcData_reg_n_0_[14] ),
        .Q(oS_right_adc_data[14]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_RIGHT_ADC TDATA" *) 
  FDRE \oS_right_adc_data_reg[15] 
       (.C(i_clk),
        .CE(\oS_left_adc_data[15]_i_1_n_0 ),
        .D(\r_adcData_reg_n_0_[15] ),
        .Q(oS_right_adc_data[15]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_RIGHT_ADC TDATA" *) 
  FDRE \oS_right_adc_data_reg[1] 
       (.C(i_clk),
        .CE(\oS_left_adc_data[15]_i_1_n_0 ),
        .D(\r_adcData_reg_n_0_[1] ),
        .Q(oS_right_adc_data[1]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_RIGHT_ADC TDATA" *) 
  FDRE \oS_right_adc_data_reg[2] 
       (.C(i_clk),
        .CE(\oS_left_adc_data[15]_i_1_n_0 ),
        .D(\r_adcData_reg_n_0_[2] ),
        .Q(oS_right_adc_data[2]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_RIGHT_ADC TDATA" *) 
  FDRE \oS_right_adc_data_reg[3] 
       (.C(i_clk),
        .CE(\oS_left_adc_data[15]_i_1_n_0 ),
        .D(\r_adcData_reg_n_0_[3] ),
        .Q(oS_right_adc_data[3]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_RIGHT_ADC TDATA" *) 
  FDRE \oS_right_adc_data_reg[4] 
       (.C(i_clk),
        .CE(\oS_left_adc_data[15]_i_1_n_0 ),
        .D(\r_adcData_reg_n_0_[4] ),
        .Q(oS_right_adc_data[4]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_RIGHT_ADC TDATA" *) 
  FDRE \oS_right_adc_data_reg[5] 
       (.C(i_clk),
        .CE(\oS_left_adc_data[15]_i_1_n_0 ),
        .D(\r_adcData_reg_n_0_[5] ),
        .Q(oS_right_adc_data[5]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_RIGHT_ADC TDATA" *) 
  FDRE \oS_right_adc_data_reg[6] 
       (.C(i_clk),
        .CE(\oS_left_adc_data[15]_i_1_n_0 ),
        .D(\r_adcData_reg_n_0_[6] ),
        .Q(oS_right_adc_data[6]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_RIGHT_ADC TDATA" *) 
  FDRE \oS_right_adc_data_reg[7] 
       (.C(i_clk),
        .CE(\oS_left_adc_data[15]_i_1_n_0 ),
        .D(\r_adcData_reg_n_0_[7] ),
        .Q(oS_right_adc_data[7]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_RIGHT_ADC TDATA" *) 
  FDRE \oS_right_adc_data_reg[8] 
       (.C(i_clk),
        .CE(\oS_left_adc_data[15]_i_1_n_0 ),
        .D(\r_adcData_reg_n_0_[8] ),
        .Q(oS_right_adc_data[8]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_RIGHT_ADC TDATA" *) 
  FDRE \oS_right_adc_data_reg[9] 
       (.C(i_clk),
        .CE(\oS_left_adc_data[15]_i_1_n_0 ),
        .D(\r_adcData_reg_n_0_[9] ),
        .Q(oS_right_adc_data[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFE02FFFF)) 
    o_bclk_i_1
       (.I0(o_bclk_reg_0),
        .I1(i_left_dac_valid),
        .I2(r_started),
        .I3(w_bclk),
        .I4(i_resetn),
        .O(o_bclk_i_1_n_0));
  FDRE o_bclk_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(o_bclk_i_1_n_0),
        .Q(o_bclk_reg_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000EAAA2AAA)) 
    o_dacData_i_1
       (.I0(o_dacData),
        .I1(o_dacData_i_2_n_0),
        .I2(r_dacData1__0),
        .I3(r_started),
        .I4(o_dacData_0),
        .I5(o_left_adc_valid_i_1_n_0),
        .O(o_dacData_i_1_n_0));
  LUT6 #(
    .INIT(64'hCFAFC0AFCFA0C0A0)) 
    o_dacData_i_10
       (.I0(\r_dacData_reg_n_0_[12] ),
        .I1(\r_dacData_reg_n_0_[14] ),
        .I2(\r_bitCounter_reg_n_0_[0] ),
        .I3(\r_bitCounter_reg_n_0_[1] ),
        .I4(\r_dacData_reg_n_0_[13] ),
        .I5(\r_dacData_reg_n_0_[15] ),
        .O(o_dacData_i_10_n_0));
  LUT3 #(
    .INIT(8'hE1)) 
    o_dacData_i_11
       (.I0(\r_bitCounter_reg_n_0_[0] ),
        .I1(\r_bitCounter_reg_n_0_[1] ),
        .I2(\r_bitCounter_reg_n_0_[2] ),
        .O(o_dacData_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFE01)) 
    o_dacData_i_12
       (.I0(\r_bitCounter_reg_n_0_[2] ),
        .I1(\r_bitCounter_reg_n_0_[1] ),
        .I2(\r_bitCounter_reg_n_0_[0] ),
        .I3(\r_bitCounter_reg_n_0_[3] ),
        .O(o_dacData_i_12_n_0));
  LUT6 #(
    .INIT(64'hCFAFC0AFCFA0C0A0)) 
    o_dacData_i_13
       (.I0(\r_dacData_reg_n_0_[0] ),
        .I1(\r_dacData_reg_n_0_[2] ),
        .I2(\r_bitCounter_reg_n_0_[0] ),
        .I3(\r_bitCounter_reg_n_0_[1] ),
        .I4(\r_dacData_reg_n_0_[1] ),
        .I5(\r_dacData_reg_n_0_[3] ),
        .O(o_dacData_i_13_n_0));
  LUT6 #(
    .INIT(64'hCFAFC0AFCFA0C0A0)) 
    o_dacData_i_14
       (.I0(\r_dacData_reg_n_0_[8] ),
        .I1(\r_dacData_reg_n_0_[10] ),
        .I2(\r_bitCounter_reg_n_0_[0] ),
        .I3(\r_bitCounter_reg_n_0_[1] ),
        .I4(\r_dacData_reg_n_0_[9] ),
        .I5(\r_dacData_reg_n_0_[11] ),
        .O(o_dacData_i_14_n_0));
  LUT6 #(
    .INIT(64'hCFAFC0AFCFA0C0A0)) 
    o_dacData_i_15
       (.I0(\r_dacData_reg_n_0_[20] ),
        .I1(\r_dacData_reg_n_0_[22] ),
        .I2(\r_bitCounter_reg_n_0_[0] ),
        .I3(\r_bitCounter_reg_n_0_[1] ),
        .I4(\r_dacData_reg_n_0_[21] ),
        .I5(\r_dacData_reg_n_0_[23] ),
        .O(o_dacData_i_15_n_0));
  LUT6 #(
    .INIT(64'hCFAFC0AFCFA0C0A0)) 
    o_dacData_i_16
       (.I0(\r_dacData_reg_n_0_[28] ),
        .I1(\r_dacData_reg_n_0_[30] ),
        .I2(\r_bitCounter_reg_n_0_[0] ),
        .I3(\r_bitCounter_reg_n_0_[1] ),
        .I4(\r_dacData_reg_n_0_[29] ),
        .I5(\r_dacData_reg_n_0_[31] ),
        .O(o_dacData_i_16_n_0));
  LUT6 #(
    .INIT(64'hCFAFC0AFCFA0C0A0)) 
    o_dacData_i_17
       (.I0(\r_dacData_reg_n_0_[16] ),
        .I1(\r_dacData_reg_n_0_[18] ),
        .I2(\r_bitCounter_reg_n_0_[0] ),
        .I3(\r_bitCounter_reg_n_0_[1] ),
        .I4(\r_dacData_reg_n_0_[17] ),
        .I5(\r_dacData_reg_n_0_[19] ),
        .O(o_dacData_i_17_n_0));
  LUT6 #(
    .INIT(64'hCFAFC0AFCFA0C0A0)) 
    o_dacData_i_18
       (.I0(\r_dacData_reg_n_0_[24] ),
        .I1(\r_dacData_reg_n_0_[26] ),
        .I2(\r_bitCounter_reg_n_0_[0] ),
        .I3(\r_bitCounter_reg_n_0_[1] ),
        .I4(\r_dacData_reg_n_0_[25] ),
        .I5(\r_dacData_reg_n_0_[27] ),
        .O(o_dacData_i_18_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFFEEE)) 
    o_dacData_i_2
       (.I0(\r_bitCounter_reg_n_0_[4] ),
        .I1(\r_bitCounter_reg_n_0_[5] ),
        .I2(i_right_dac_valid),
        .I3(i_left_dac_valid),
        .I4(o_lrclk_i_3_n_0),
        .O(o_dacData_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    o_dacData_i_3
       (.I0(o_bclk_reg_0),
        .I1(w_bclk),
        .O(r_dacData1__0));
  LUT5 #(
    .INIT(32'hFFE400E4)) 
    o_dacData_i_4
       (.I0(o_dacData_i_5_n_0),
        .I1(o_dacData_i_6_n_0),
        .I2(o_dacData_i_7_n_0),
        .I3(o_dacData_i_8_n_0),
        .I4(D[31]),
        .O(o_dacData_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    o_dacData_i_5
       (.I0(\r_bitCounter_reg_n_0_[3] ),
        .I1(\r_bitCounter_reg_n_0_[0] ),
        .I2(\r_bitCounter_reg_n_0_[1] ),
        .I3(\r_bitCounter_reg_n_0_[2] ),
        .I4(\r_bitCounter_reg_n_0_[4] ),
        .O(o_dacData_i_5_n_0));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    o_dacData_i_6
       (.I0(o_dacData_i_9_n_0),
        .I1(o_dacData_i_10_n_0),
        .I2(o_dacData_i_11_n_0),
        .I3(o_dacData_i_12_n_0),
        .I4(o_dacData_i_13_n_0),
        .I5(o_dacData_i_14_n_0),
        .O(o_dacData_i_6_n_0));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    o_dacData_i_7
       (.I0(o_dacData_i_15_n_0),
        .I1(o_dacData_i_16_n_0),
        .I2(o_dacData_i_11_n_0),
        .I3(o_dacData_i_12_n_0),
        .I4(o_dacData_i_17_n_0),
        .I5(o_dacData_i_18_n_0),
        .O(o_dacData_i_7_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    o_dacData_i_8
       (.I0(\r_bitCounter_reg_n_0_[4] ),
        .I1(\r_bitCounter_reg_n_0_[5] ),
        .I2(\r_bitCounter_reg_n_0_[2] ),
        .I3(\r_bitCounter_reg_n_0_[3] ),
        .I4(\r_bitCounter_reg_n_0_[0] ),
        .I5(\r_bitCounter_reg_n_0_[1] ),
        .O(o_dacData_i_8_n_0));
  LUT6 #(
    .INIT(64'hCFAFC0AFCFA0C0A0)) 
    o_dacData_i_9
       (.I0(\r_dacData_reg_n_0_[4] ),
        .I1(\r_dacData_reg_n_0_[6] ),
        .I2(\r_bitCounter_reg_n_0_[0] ),
        .I3(\r_bitCounter_reg_n_0_[1] ),
        .I4(\r_dacData_reg_n_0_[5] ),
        .I5(\r_dacData_reg_n_0_[7] ),
        .O(o_dacData_i_9_n_0));
  FDRE o_dacData_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(o_dacData_i_1_n_0),
        .Q(o_dacData),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000AA8AAA80)) 
    o_error_i_1
       (.I0(i_resetn),
        .I1(o_error_i_2_n_0),
        .I2(o_error_i_3_n_0),
        .I3(o_error6_out),
        .I4(o_error),
        .I5(\r_dacData[31]_i_1_n_0 ),
        .O(o_error_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'hE)) 
    o_error_i_2
       (.I0(i_left_dac_valid),
        .I1(i_right_dac_valid),
        .O(o_error_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h20)) 
    o_error_i_3
       (.I0(r_started),
        .I1(w_bclk),
        .I2(o_bclk_reg_0),
        .O(o_error_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000001000000)) 
    o_error_i_4
       (.I0(\r_bitCounter_reg_n_0_[4] ),
        .I1(\r_bitCounter_reg_n_0_[5] ),
        .I2(w_bclk),
        .I3(o_bclk_reg_0),
        .I4(r_started),
        .I5(o_lrclk_i_3_n_0),
        .O(o_error6_out));
  FDRE o_error_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(o_error_i_1_n_0),
        .Q(o_error),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h4F)) 
    o_left_adc_valid_i_1
       (.I0(r_started),
        .I1(i_left_dac_valid),
        .I2(i_resetn),
        .O(o_left_adc_valid_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00004000)) 
    o_left_adc_valid_i_2
       (.I0(o_left_adc_valid_i_3_n_0),
        .I1(\r_bitCounter_reg_n_0_[0] ),
        .I2(\r_bitCounter_reg_n_0_[2] ),
        .I3(\r_bitCounter_reg_n_0_[1] ),
        .I4(\r_bitCounter_reg_n_0_[5] ),
        .O(o_left_adc_valid_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFF7F)) 
    o_left_adc_valid_i_3
       (.I0(\r_bitCounter_reg_n_0_[4] ),
        .I1(\r_bitCounter_reg_n_0_[3] ),
        .I2(w_bclk),
        .I3(o_bclk_reg_0),
        .O(o_left_adc_valid_i_3_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_LEFT_ADC TVALID" *) 
  FDRE o_left_adc_valid_reg
       (.C(i_clk),
        .CE(r_started),
        .D(o_left_adc_valid_i_2_n_0),
        .Q(o_left_adc_valid),
        .R(o_left_adc_valid_i_1_n_0));
  LUT6 #(
    .INIT(64'h222E22E200000000)) 
    o_lrclk_i_1
       (.I0(o_lrclk),
        .I1(o_lrclk_i_2_n_0),
        .I2(o_lrclk_i_3_n_0),
        .I3(\r_bitCounter_reg_n_0_[5] ),
        .I4(\r_bitCounter_reg_n_0_[4] ),
        .I5(i_resetn),
        .O(o_lrclk_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'hE)) 
    o_lrclk_i_2
       (.I0(r_started),
        .I1(i_left_dac_valid),
        .O(o_lrclk_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    o_lrclk_i_3
       (.I0(\r_bitCounter_reg_n_0_[3] ),
        .I1(\r_bitCounter_reg_n_0_[2] ),
        .I2(\r_bitCounter_reg_n_0_[0] ),
        .I3(\r_bitCounter_reg_n_0_[1] ),
        .O(o_lrclk_i_3_n_0));
  FDRE o_lrclk_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(o_lrclk_i_1_n_0),
        .Q(o_lrclk),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFE020000)) 
    o_mclk_i_1
       (.I0(o_mclk),
        .I1(i_left_dac_valid),
        .I2(r_started),
        .I3(w_mclk),
        .I4(i_resetn),
        .O(o_mclk_i_1_n_0));
  FDRE o_mclk_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(o_mclk_i_1_n_0),
        .Q(o_mclk),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_RIGHT_ADC TVALID" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE o_right_adc_valid_reg
       (.C(i_clk),
        .CE(r_started),
        .D(o_left_adc_valid_i_2_n_0),
        .Q(o_right_adc_valid),
        .R(o_left_adc_valid_i_1_n_0));
  LUT4 #(
    .INIT(16'h0080)) 
    \r_adcData[31]_i_1 
       (.I0(r_started),
        .I1(i_resetn),
        .I2(w_bclk),
        .I3(o_bclk_reg_0),
        .O(\r_adcData[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_adcData_reg[0] 
       (.C(i_clk),
        .CE(\r_adcData[31]_i_1_n_0 ),
        .D(i_adcData),
        .Q(\r_adcData_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_adcData_reg[10] 
       (.C(i_clk),
        .CE(\r_adcData[31]_i_1_n_0 ),
        .D(\r_adcData_reg_n_0_[9] ),
        .Q(\r_adcData_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_adcData_reg[11] 
       (.C(i_clk),
        .CE(\r_adcData[31]_i_1_n_0 ),
        .D(\r_adcData_reg_n_0_[10] ),
        .Q(\r_adcData_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_adcData_reg[12] 
       (.C(i_clk),
        .CE(\r_adcData[31]_i_1_n_0 ),
        .D(\r_adcData_reg_n_0_[11] ),
        .Q(\r_adcData_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_adcData_reg[13] 
       (.C(i_clk),
        .CE(\r_adcData[31]_i_1_n_0 ),
        .D(\r_adcData_reg_n_0_[12] ),
        .Q(\r_adcData_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_adcData_reg[14] 
       (.C(i_clk),
        .CE(\r_adcData[31]_i_1_n_0 ),
        .D(\r_adcData_reg_n_0_[13] ),
        .Q(\r_adcData_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_adcData_reg[15] 
       (.C(i_clk),
        .CE(\r_adcData[31]_i_1_n_0 ),
        .D(\r_adcData_reg_n_0_[14] ),
        .Q(\r_adcData_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_adcData_reg[16] 
       (.C(i_clk),
        .CE(\r_adcData[31]_i_1_n_0 ),
        .D(\r_adcData_reg_n_0_[15] ),
        .Q(p_0_in[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_adcData_reg[17] 
       (.C(i_clk),
        .CE(\r_adcData[31]_i_1_n_0 ),
        .D(p_0_in[0]),
        .Q(p_0_in[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_adcData_reg[18] 
       (.C(i_clk),
        .CE(\r_adcData[31]_i_1_n_0 ),
        .D(p_0_in[1]),
        .Q(p_0_in[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_adcData_reg[19] 
       (.C(i_clk),
        .CE(\r_adcData[31]_i_1_n_0 ),
        .D(p_0_in[2]),
        .Q(p_0_in[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_adcData_reg[1] 
       (.C(i_clk),
        .CE(\r_adcData[31]_i_1_n_0 ),
        .D(\r_adcData_reg_n_0_[0] ),
        .Q(\r_adcData_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_adcData_reg[20] 
       (.C(i_clk),
        .CE(\r_adcData[31]_i_1_n_0 ),
        .D(p_0_in[3]),
        .Q(p_0_in[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_adcData_reg[21] 
       (.C(i_clk),
        .CE(\r_adcData[31]_i_1_n_0 ),
        .D(p_0_in[4]),
        .Q(p_0_in[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_adcData_reg[22] 
       (.C(i_clk),
        .CE(\r_adcData[31]_i_1_n_0 ),
        .D(p_0_in[5]),
        .Q(p_0_in[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_adcData_reg[23] 
       (.C(i_clk),
        .CE(\r_adcData[31]_i_1_n_0 ),
        .D(p_0_in[6]),
        .Q(p_0_in[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_adcData_reg[24] 
       (.C(i_clk),
        .CE(\r_adcData[31]_i_1_n_0 ),
        .D(p_0_in[7]),
        .Q(p_0_in[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_adcData_reg[25] 
       (.C(i_clk),
        .CE(\r_adcData[31]_i_1_n_0 ),
        .D(p_0_in[8]),
        .Q(p_0_in[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_adcData_reg[26] 
       (.C(i_clk),
        .CE(\r_adcData[31]_i_1_n_0 ),
        .D(p_0_in[9]),
        .Q(p_0_in[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_adcData_reg[27] 
       (.C(i_clk),
        .CE(\r_adcData[31]_i_1_n_0 ),
        .D(p_0_in[10]),
        .Q(p_0_in[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_adcData_reg[28] 
       (.C(i_clk),
        .CE(\r_adcData[31]_i_1_n_0 ),
        .D(p_0_in[11]),
        .Q(p_0_in[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_adcData_reg[29] 
       (.C(i_clk),
        .CE(\r_adcData[31]_i_1_n_0 ),
        .D(p_0_in[12]),
        .Q(p_0_in[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_adcData_reg[2] 
       (.C(i_clk),
        .CE(\r_adcData[31]_i_1_n_0 ),
        .D(\r_adcData_reg_n_0_[1] ),
        .Q(\r_adcData_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_adcData_reg[30] 
       (.C(i_clk),
        .CE(\r_adcData[31]_i_1_n_0 ),
        .D(p_0_in[13]),
        .Q(p_0_in[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_adcData_reg[31] 
       (.C(i_clk),
        .CE(\r_adcData[31]_i_1_n_0 ),
        .D(p_0_in[14]),
        .Q(p_0_in[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_adcData_reg[3] 
       (.C(i_clk),
        .CE(\r_adcData[31]_i_1_n_0 ),
        .D(\r_adcData_reg_n_0_[2] ),
        .Q(\r_adcData_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_adcData_reg[4] 
       (.C(i_clk),
        .CE(\r_adcData[31]_i_1_n_0 ),
        .D(\r_adcData_reg_n_0_[3] ),
        .Q(\r_adcData_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_adcData_reg[5] 
       (.C(i_clk),
        .CE(\r_adcData[31]_i_1_n_0 ),
        .D(\r_adcData_reg_n_0_[4] ),
        .Q(\r_adcData_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_adcData_reg[6] 
       (.C(i_clk),
        .CE(\r_adcData[31]_i_1_n_0 ),
        .D(\r_adcData_reg_n_0_[5] ),
        .Q(\r_adcData_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_adcData_reg[7] 
       (.C(i_clk),
        .CE(\r_adcData[31]_i_1_n_0 ),
        .D(\r_adcData_reg_n_0_[6] ),
        .Q(\r_adcData_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_adcData_reg[8] 
       (.C(i_clk),
        .CE(\r_adcData[31]_i_1_n_0 ),
        .D(\r_adcData_reg_n_0_[7] ),
        .Q(\r_adcData_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_adcData_reg[9] 
       (.C(i_clk),
        .CE(\r_adcData[31]_i_1_n_0 ),
        .D(\r_adcData_reg_n_0_[8] ),
        .Q(\r_adcData_reg_n_0_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7F77)) 
    \r_bitCounter[0]_i_1 
       (.I0(\r_bitCounter_reg_n_0_[0] ),
        .I1(w_lrclk012_in),
        .I2(r_started),
        .I3(i_left_dac_valid),
        .O(\r_bitCounter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hD7FFD7D7)) 
    \r_bitCounter[1]_i_1 
       (.I0(w_lrclk012_in),
        .I1(\r_bitCounter_reg_n_0_[0] ),
        .I2(\r_bitCounter_reg_n_0_[1] ),
        .I3(r_started),
        .I4(i_left_dac_valid),
        .O(\r_bitCounter[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFD57FFFFFD57FD57)) 
    \r_bitCounter[2]_i_1 
       (.I0(w_lrclk012_in),
        .I1(\r_bitCounter_reg_n_0_[0] ),
        .I2(\r_bitCounter_reg_n_0_[1] ),
        .I3(\r_bitCounter_reg_n_0_[2] ),
        .I4(r_started),
        .I5(i_left_dac_valid),
        .O(\r_bitCounter[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFD5557)) 
    \r_bitCounter[3]_i_1 
       (.I0(w_lrclk012_in),
        .I1(\r_bitCounter_reg_n_0_[2] ),
        .I2(\r_bitCounter_reg_n_0_[1] ),
        .I3(\r_bitCounter_reg_n_0_[0] ),
        .I4(\r_bitCounter_reg_n_0_[3] ),
        .I5(\r_bitCounter[4]_i_4_n_0 ),
        .O(\r_bitCounter[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \r_bitCounter[3]_i_2 
       (.I0(\r_bitCounter_reg_n_0_[5] ),
        .I1(\r_bitCounter_reg_n_0_[4] ),
        .I2(\r_bitCounter_reg_n_0_[1] ),
        .I3(\r_bitCounter_reg_n_0_[0] ),
        .I4(\r_bitCounter_reg_n_0_[2] ),
        .I5(\r_bitCounter_reg_n_0_[3] ),
        .O(w_lrclk012_in));
  LUT1 #(
    .INIT(2'h1)) 
    \r_bitCounter[4]_i_1 
       (.I0(i_resetn),
        .O(\r_bitCounter[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \r_bitCounter[4]_i_2 
       (.I0(o_bclk_reg_0),
        .I1(w_bclk),
        .I2(r_started),
        .I3(i_left_dac_valid),
        .O(\r_bitCounter[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF0F0F0E1)) 
    \r_bitCounter[4]_i_3 
       (.I0(\r_bitCounter_reg_n_0_[1] ),
        .I1(\r_bitCounter_reg_n_0_[0] ),
        .I2(\r_bitCounter_reg_n_0_[4] ),
        .I3(\r_bitCounter_reg_n_0_[2] ),
        .I4(\r_bitCounter_reg_n_0_[3] ),
        .I5(\r_bitCounter[4]_i_4_n_0 ),
        .O(\r_bitCounter[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r_bitCounter[4]_i_4 
       (.I0(i_left_dac_valid),
        .I1(r_started),
        .O(\r_bitCounter[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000A2620000)) 
    \r_bitCounter[5]_i_1 
       (.I0(\r_bitCounter_reg_n_0_[5] ),
        .I1(o_error_i_3_n_0),
        .I2(w_lrclk012_in),
        .I3(\r_bitCounter[5]_i_2_n_0 ),
        .I4(i_resetn),
        .I5(\r_bitCounter[4]_i_4_n_0 ),
        .O(\r_bitCounter[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \r_bitCounter[5]_i_2 
       (.I0(\r_bitCounter_reg_n_0_[3] ),
        .I1(\r_bitCounter_reg_n_0_[0] ),
        .I2(\r_bitCounter_reg_n_0_[1] ),
        .I3(\r_bitCounter_reg_n_0_[2] ),
        .I4(\r_bitCounter_reg_n_0_[4] ),
        .O(\r_bitCounter[5]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_bitCounter_reg[0] 
       (.C(i_clk),
        .CE(\r_bitCounter[4]_i_2_n_0 ),
        .D(\r_bitCounter[0]_i_1_n_0 ),
        .Q(\r_bitCounter_reg_n_0_[0] ),
        .R(\r_bitCounter[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_bitCounter_reg[1] 
       (.C(i_clk),
        .CE(\r_bitCounter[4]_i_2_n_0 ),
        .D(\r_bitCounter[1]_i_1_n_0 ),
        .Q(\r_bitCounter_reg_n_0_[1] ),
        .R(\r_bitCounter[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_bitCounter_reg[2] 
       (.C(i_clk),
        .CE(\r_bitCounter[4]_i_2_n_0 ),
        .D(\r_bitCounter[2]_i_1_n_0 ),
        .Q(\r_bitCounter_reg_n_0_[2] ),
        .R(\r_bitCounter[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_bitCounter_reg[3] 
       (.C(i_clk),
        .CE(\r_bitCounter[4]_i_2_n_0 ),
        .D(\r_bitCounter[3]_i_1_n_0 ),
        .Q(\r_bitCounter_reg_n_0_[3] ),
        .R(\r_bitCounter[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_bitCounter_reg[4] 
       (.C(i_clk),
        .CE(\r_bitCounter[4]_i_2_n_0 ),
        .D(\r_bitCounter[4]_i_3_n_0 ),
        .Q(\r_bitCounter_reg_n_0_[4] ),
        .R(\r_bitCounter[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_bitCounter_reg[5] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\r_bitCounter[5]_i_1_n_0 ),
        .Q(\r_bitCounter_reg_n_0_[5] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0040FFFF00000000)) 
    \r_dacData[31]_i_1 
       (.I0(o_lrclk_i_3_n_0),
        .I1(r_dacData1__0),
        .I2(i_right_dac_valid),
        .I3(\r_dacData[31]_i_2_n_0 ),
        .I4(r_started),
        .I5(i_left_dac_valid),
        .O(\r_dacData[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \r_dacData[31]_i_2 
       (.I0(\r_bitCounter_reg_n_0_[4] ),
        .I1(\r_bitCounter_reg_n_0_[5] ),
        .O(\r_dacData[31]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_dacData_reg[0] 
       (.C(i_clk),
        .CE(\r_dacData[31]_i_1_n_0 ),
        .D(D[0]),
        .Q(\r_dacData_reg_n_0_[0] ),
        .R(\r_bitCounter[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_dacData_reg[10] 
       (.C(i_clk),
        .CE(\r_dacData[31]_i_1_n_0 ),
        .D(D[10]),
        .Q(\r_dacData_reg_n_0_[10] ),
        .R(\r_bitCounter[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_dacData_reg[11] 
       (.C(i_clk),
        .CE(\r_dacData[31]_i_1_n_0 ),
        .D(D[11]),
        .Q(\r_dacData_reg_n_0_[11] ),
        .R(\r_bitCounter[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_dacData_reg[12] 
       (.C(i_clk),
        .CE(\r_dacData[31]_i_1_n_0 ),
        .D(D[12]),
        .Q(\r_dacData_reg_n_0_[12] ),
        .R(\r_bitCounter[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_dacData_reg[13] 
       (.C(i_clk),
        .CE(\r_dacData[31]_i_1_n_0 ),
        .D(D[13]),
        .Q(\r_dacData_reg_n_0_[13] ),
        .R(\r_bitCounter[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_dacData_reg[14] 
       (.C(i_clk),
        .CE(\r_dacData[31]_i_1_n_0 ),
        .D(D[14]),
        .Q(\r_dacData_reg_n_0_[14] ),
        .R(\r_bitCounter[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_dacData_reg[15] 
       (.C(i_clk),
        .CE(\r_dacData[31]_i_1_n_0 ),
        .D(D[15]),
        .Q(\r_dacData_reg_n_0_[15] ),
        .R(\r_bitCounter[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_dacData_reg[16] 
       (.C(i_clk),
        .CE(\r_dacData[31]_i_1_n_0 ),
        .D(D[16]),
        .Q(\r_dacData_reg_n_0_[16] ),
        .R(\r_bitCounter[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_dacData_reg[17] 
       (.C(i_clk),
        .CE(\r_dacData[31]_i_1_n_0 ),
        .D(D[17]),
        .Q(\r_dacData_reg_n_0_[17] ),
        .R(\r_bitCounter[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_dacData_reg[18] 
       (.C(i_clk),
        .CE(\r_dacData[31]_i_1_n_0 ),
        .D(D[18]),
        .Q(\r_dacData_reg_n_0_[18] ),
        .R(\r_bitCounter[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_dacData_reg[19] 
       (.C(i_clk),
        .CE(\r_dacData[31]_i_1_n_0 ),
        .D(D[19]),
        .Q(\r_dacData_reg_n_0_[19] ),
        .R(\r_bitCounter[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_dacData_reg[1] 
       (.C(i_clk),
        .CE(\r_dacData[31]_i_1_n_0 ),
        .D(D[1]),
        .Q(\r_dacData_reg_n_0_[1] ),
        .R(\r_bitCounter[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_dacData_reg[20] 
       (.C(i_clk),
        .CE(\r_dacData[31]_i_1_n_0 ),
        .D(D[20]),
        .Q(\r_dacData_reg_n_0_[20] ),
        .R(\r_bitCounter[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_dacData_reg[21] 
       (.C(i_clk),
        .CE(\r_dacData[31]_i_1_n_0 ),
        .D(D[21]),
        .Q(\r_dacData_reg_n_0_[21] ),
        .R(\r_bitCounter[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_dacData_reg[22] 
       (.C(i_clk),
        .CE(\r_dacData[31]_i_1_n_0 ),
        .D(D[22]),
        .Q(\r_dacData_reg_n_0_[22] ),
        .R(\r_bitCounter[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_dacData_reg[23] 
       (.C(i_clk),
        .CE(\r_dacData[31]_i_1_n_0 ),
        .D(D[23]),
        .Q(\r_dacData_reg_n_0_[23] ),
        .R(\r_bitCounter[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_dacData_reg[24] 
       (.C(i_clk),
        .CE(\r_dacData[31]_i_1_n_0 ),
        .D(D[24]),
        .Q(\r_dacData_reg_n_0_[24] ),
        .R(\r_bitCounter[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_dacData_reg[25] 
       (.C(i_clk),
        .CE(\r_dacData[31]_i_1_n_0 ),
        .D(D[25]),
        .Q(\r_dacData_reg_n_0_[25] ),
        .R(\r_bitCounter[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_dacData_reg[26] 
       (.C(i_clk),
        .CE(\r_dacData[31]_i_1_n_0 ),
        .D(D[26]),
        .Q(\r_dacData_reg_n_0_[26] ),
        .R(\r_bitCounter[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_dacData_reg[27] 
       (.C(i_clk),
        .CE(\r_dacData[31]_i_1_n_0 ),
        .D(D[27]),
        .Q(\r_dacData_reg_n_0_[27] ),
        .R(\r_bitCounter[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_dacData_reg[28] 
       (.C(i_clk),
        .CE(\r_dacData[31]_i_1_n_0 ),
        .D(D[28]),
        .Q(\r_dacData_reg_n_0_[28] ),
        .R(\r_bitCounter[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_dacData_reg[29] 
       (.C(i_clk),
        .CE(\r_dacData[31]_i_1_n_0 ),
        .D(D[29]),
        .Q(\r_dacData_reg_n_0_[29] ),
        .R(\r_bitCounter[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_dacData_reg[2] 
       (.C(i_clk),
        .CE(\r_dacData[31]_i_1_n_0 ),
        .D(D[2]),
        .Q(\r_dacData_reg_n_0_[2] ),
        .R(\r_bitCounter[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_dacData_reg[30] 
       (.C(i_clk),
        .CE(\r_dacData[31]_i_1_n_0 ),
        .D(D[30]),
        .Q(\r_dacData_reg_n_0_[30] ),
        .R(\r_bitCounter[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_dacData_reg[31] 
       (.C(i_clk),
        .CE(\r_dacData[31]_i_1_n_0 ),
        .D(D[31]),
        .Q(\r_dacData_reg_n_0_[31] ),
        .R(\r_bitCounter[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_dacData_reg[3] 
       (.C(i_clk),
        .CE(\r_dacData[31]_i_1_n_0 ),
        .D(D[3]),
        .Q(\r_dacData_reg_n_0_[3] ),
        .R(\r_bitCounter[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_dacData_reg[4] 
       (.C(i_clk),
        .CE(\r_dacData[31]_i_1_n_0 ),
        .D(D[4]),
        .Q(\r_dacData_reg_n_0_[4] ),
        .R(\r_bitCounter[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_dacData_reg[5] 
       (.C(i_clk),
        .CE(\r_dacData[31]_i_1_n_0 ),
        .D(D[5]),
        .Q(\r_dacData_reg_n_0_[5] ),
        .R(\r_bitCounter[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_dacData_reg[6] 
       (.C(i_clk),
        .CE(\r_dacData[31]_i_1_n_0 ),
        .D(D[6]),
        .Q(\r_dacData_reg_n_0_[6] ),
        .R(\r_bitCounter[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_dacData_reg[7] 
       (.C(i_clk),
        .CE(\r_dacData[31]_i_1_n_0 ),
        .D(D[7]),
        .Q(\r_dacData_reg_n_0_[7] ),
        .R(\r_bitCounter[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_dacData_reg[8] 
       (.C(i_clk),
        .CE(\r_dacData[31]_i_1_n_0 ),
        .D(D[8]),
        .Q(\r_dacData_reg_n_0_[8] ),
        .R(\r_bitCounter[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_dacData_reg[9] 
       (.C(i_clk),
        .CE(\r_dacData[31]_i_1_n_0 ),
        .D(D[9]),
        .Q(\r_dacData_reg_n_0_[9] ),
        .R(\r_bitCounter[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h5E00)) 
    \r_dividerCounter[0]_i_1 
       (.I0(\r_dividerCounter_reg_n_0_[0] ),
        .I1(i_left_dac_valid),
        .I2(r_started),
        .I3(i_resetn),
        .O(\r_dividerCounter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r_dividerCounter[1]_i_1 
       (.I0(\r_dividerCounter_reg_n_0_[0] ),
        .I1(\r_dividerCounter_reg_n_0_[1] ),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \r_dividerCounter[2]_i_1 
       (.I0(\r_dividerCounter_reg_n_0_[0] ),
        .I1(\r_dividerCounter_reg_n_0_[1] ),
        .I2(w_mclk),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \r_dividerCounter[3]_i_1 
       (.I0(\r_dividerCounter_reg_n_0_[1] ),
        .I1(\r_dividerCounter_reg_n_0_[0] ),
        .I2(w_mclk),
        .I3(\r_dividerCounter_reg_n_0_[3] ),
        .O(p_1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \r_dividerCounter[4]_i_1 
       (.I0(w_mclk),
        .I1(\r_dividerCounter_reg_n_0_[0] ),
        .I2(\r_dividerCounter_reg_n_0_[1] ),
        .I3(\r_dividerCounter_reg_n_0_[3] ),
        .I4(\r_dividerCounter_reg_n_0_[4] ),
        .O(p_1_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \r_dividerCounter[5]_i_1 
       (.I0(\r_dividerCounter_reg_n_0_[3] ),
        .I1(\r_dividerCounter_reg_n_0_[1] ),
        .I2(\r_dividerCounter_reg_n_0_[0] ),
        .I3(w_mclk),
        .I4(\r_dividerCounter_reg_n_0_[4] ),
        .I5(w_bclk),
        .O(p_1_in[5]));
  FDRE #(
    .INIT(1'b0)) 
    \r_dividerCounter_reg[0] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\r_dividerCounter[0]_i_1_n_0 ),
        .Q(\r_dividerCounter_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_dividerCounter_reg[1] 
       (.C(i_clk),
        .CE(r_started),
        .D(p_1_in[1]),
        .Q(\r_dividerCounter_reg_n_0_[1] ),
        .R(o_left_adc_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \r_dividerCounter_reg[2] 
       (.C(i_clk),
        .CE(r_started),
        .D(p_1_in[2]),
        .Q(w_mclk),
        .R(o_left_adc_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \r_dividerCounter_reg[3] 
       (.C(i_clk),
        .CE(r_started),
        .D(p_1_in[3]),
        .Q(\r_dividerCounter_reg_n_0_[3] ),
        .R(o_left_adc_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \r_dividerCounter_reg[4] 
       (.C(i_clk),
        .CE(r_started),
        .D(p_1_in[4]),
        .Q(\r_dividerCounter_reg_n_0_[4] ),
        .R(o_left_adc_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \r_dividerCounter_reg[5] 
       (.C(i_clk),
        .CE(r_started),
        .D(p_1_in[5]),
        .Q(w_bclk),
        .R(o_left_adc_valid_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    r_started_i_1
       (.I0(r_started),
        .I1(i_left_dac_valid),
        .I2(i_resetn),
        .O(r_started_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    r_started_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(r_started_i_1_n_0),
        .Q(r_started),
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
