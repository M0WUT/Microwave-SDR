// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Wed Apr 21 23:23:52 2021
// Host        : dan-Desktop running 64-bit Ubuntu 18.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/dan/Microwave-SDR/Vivado/SDR_Full/test_board/vivado/test_board.srcs/sources_1/bd/zsys/ip/zsys_overdrive_warning_1_0/zsys_overdrive_warning_1_0_sim_netlist.v
// Design      : zsys_overdrive_warning_1_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "zsys_overdrive_warning_1_0,overdrive_warning,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "overdrive_warning,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module zsys_overdrive_warning_1_0
   (iS_data,
    i_valid,
    oS_data,
    o_valid,
    i_clk,
    i_resetn,
    o_positiveOverload,
    o_negativeOverload);
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DATA TDATA" *) input [15:0]iS_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DATA TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_DATA, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 80000000, PHASE 0.000, CLK_DOMAIN zsys_adc_clk_n, LAYERED_METADATA undef, INSERT_VIP 0" *) input i_valid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TDATA" *) output [15:0]oS_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_DATA, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 80000000, PHASE 0.000, CLK_DOMAIN zsys_adc_clk_n, LAYERED_METADATA undef, INSERT_VIP 0" *) output o_valid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 i_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_clk, ASSOCIATED_RESET i_resetn, ASSOCIATED_BUSIF S_AXIS_DATA:M_AXIS_DATA, FREQ_HZ 80000000, PHASE 0.000, CLK_DOMAIN zsys_adc_clk_n, INSERT_VIP 0" *) input i_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 i_resetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input i_resetn;
  output o_positiveOverload;
  output o_negativeOverload;

  wire [15:0]iS_data;
  wire i_clk;
  wire i_resetn;
  wire i_valid;
  wire [15:0]oS_data;
  wire o_negativeOverload;
  wire o_positiveOverload;
  wire o_valid;

  zsys_overdrive_warning_1_0_overdrive_warning inst
       (.iS_data(iS_data),
        .i_clk(i_clk),
        .i_resetn(i_resetn),
        .i_valid(i_valid),
        .oS_data(oS_data),
        .o_negativeOverload(o_negativeOverload),
        .o_positiveOverload(o_positiveOverload),
        .o_valid(o_valid));
endmodule

(* ORIG_REF_NAME = "overdrive_warning" *) 
module zsys_overdrive_warning_1_0_overdrive_warning
   (oS_data,
    o_valid,
    o_positiveOverload,
    o_negativeOverload,
    iS_data,
    i_clk,
    i_valid,
    i_resetn);
  output [15:0]oS_data;
  output o_valid;
  output o_positiveOverload;
  output o_negativeOverload;
  input [15:0]iS_data;
  input i_clk;
  input i_valid;
  input i_resetn;

  wire [15:0]iS_data;
  wire i_clk;
  wire i_resetn;
  wire i_valid;
  wire [15:0]oS_data;
  wire o_negativeOverload;
  wire o_negativeOverload0_carry__0_i_1_n_0;
  wire o_negativeOverload0_carry__0_i_2_n_0;
  wire o_negativeOverload0_carry__0_i_3_n_0;
  wire o_negativeOverload0_carry__0_i_4_n_0;
  wire o_negativeOverload0_carry__0_i_5_n_0;
  wire o_negativeOverload0_carry__0_i_6_n_0;
  wire o_negativeOverload0_carry__0_n_0;
  wire o_negativeOverload0_carry__0_n_1;
  wire o_negativeOverload0_carry__0_n_2;
  wire o_negativeOverload0_carry__0_n_3;
  wire o_negativeOverload0_carry_i_1_n_0;
  wire o_negativeOverload0_carry_i_2_n_0;
  wire o_negativeOverload0_carry_i_3_n_0;
  wire o_negativeOverload0_carry_i_4_n_0;
  wire o_negativeOverload0_carry_i_5_n_0;
  wire o_negativeOverload0_carry_i_6_n_0;
  wire o_negativeOverload0_carry_i_7_n_0;
  wire o_negativeOverload0_carry_i_8_n_0;
  wire o_negativeOverload0_carry_n_0;
  wire o_negativeOverload0_carry_n_1;
  wire o_negativeOverload0_carry_n_2;
  wire o_negativeOverload0_carry_n_3;
  wire o_positiveOverload;
  wire o_positiveOverload0_carry__0_i_1_n_0;
  wire o_positiveOverload0_carry__0_i_2_n_0;
  wire o_positiveOverload0_carry__0_i_3_n_0;
  wire o_positiveOverload0_carry__0_i_4_n_0;
  wire o_positiveOverload0_carry__0_i_5_n_0;
  wire o_positiveOverload0_carry__0_n_1;
  wire o_positiveOverload0_carry__0_n_2;
  wire o_positiveOverload0_carry__0_n_3;
  wire o_positiveOverload0_carry_i_1_n_0;
  wire o_positiveOverload0_carry_i_2_n_0;
  wire o_positiveOverload0_carry_i_3_n_0;
  wire o_positiveOverload0_carry_i_4_n_0;
  wire o_positiveOverload0_carry_i_5_n_0;
  wire o_positiveOverload0_carry_i_6_n_0;
  wire o_positiveOverload0_carry_n_0;
  wire o_positiveOverload0_carry_n_1;
  wire o_positiveOverload0_carry_n_2;
  wire o_positiveOverload0_carry_n_3;
  wire o_valid;
  wire p_0_in;
  wire p_1_in;
  wire [3:0]NLW_o_negativeOverload0_carry_O_UNCONNECTED;
  wire [3:0]NLW_o_negativeOverload0_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_o_positiveOverload0_carry_O_UNCONNECTED;
  wire [3:0]NLW_o_positiveOverload0_carry__0_O_UNCONNECTED;

  LUT1 #(
    .INIT(2'h1)) 
    \oS_data[15]_i_1 
       (.I0(i_resetn),
        .O(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TDATA" *) 
  FDRE \oS_data_reg[0] 
       (.C(i_clk),
        .CE(1'b1),
        .D(iS_data[0]),
        .Q(oS_data[0]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TDATA" *) 
  FDRE \oS_data_reg[10] 
       (.C(i_clk),
        .CE(1'b1),
        .D(iS_data[10]),
        .Q(oS_data[10]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TDATA" *) 
  FDRE \oS_data_reg[11] 
       (.C(i_clk),
        .CE(1'b1),
        .D(iS_data[11]),
        .Q(oS_data[11]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TDATA" *) 
  FDRE \oS_data_reg[12] 
       (.C(i_clk),
        .CE(1'b1),
        .D(iS_data[12]),
        .Q(oS_data[12]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TDATA" *) 
  FDRE \oS_data_reg[13] 
       (.C(i_clk),
        .CE(1'b1),
        .D(iS_data[13]),
        .Q(oS_data[13]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TDATA" *) 
  FDRE \oS_data_reg[14] 
       (.C(i_clk),
        .CE(1'b1),
        .D(iS_data[14]),
        .Q(oS_data[14]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TDATA" *) 
  FDRE \oS_data_reg[15] 
       (.C(i_clk),
        .CE(1'b1),
        .D(iS_data[15]),
        .Q(oS_data[15]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TDATA" *) 
  FDRE \oS_data_reg[1] 
       (.C(i_clk),
        .CE(1'b1),
        .D(iS_data[1]),
        .Q(oS_data[1]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TDATA" *) 
  FDRE \oS_data_reg[2] 
       (.C(i_clk),
        .CE(1'b1),
        .D(iS_data[2]),
        .Q(oS_data[2]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TDATA" *) 
  FDRE \oS_data_reg[3] 
       (.C(i_clk),
        .CE(1'b1),
        .D(iS_data[3]),
        .Q(oS_data[3]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TDATA" *) 
  FDRE \oS_data_reg[4] 
       (.C(i_clk),
        .CE(1'b1),
        .D(iS_data[4]),
        .Q(oS_data[4]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TDATA" *) 
  FDRE \oS_data_reg[5] 
       (.C(i_clk),
        .CE(1'b1),
        .D(iS_data[5]),
        .Q(oS_data[5]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TDATA" *) 
  FDRE \oS_data_reg[6] 
       (.C(i_clk),
        .CE(1'b1),
        .D(iS_data[6]),
        .Q(oS_data[6]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TDATA" *) 
  FDRE \oS_data_reg[7] 
       (.C(i_clk),
        .CE(1'b1),
        .D(iS_data[7]),
        .Q(oS_data[7]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TDATA" *) 
  FDRE \oS_data_reg[8] 
       (.C(i_clk),
        .CE(1'b1),
        .D(iS_data[8]),
        .Q(oS_data[8]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TDATA" *) 
  FDRE \oS_data_reg[9] 
       (.C(i_clk),
        .CE(1'b1),
        .D(iS_data[9]),
        .Q(oS_data[9]),
        .R(p_0_in));
  CARRY4 o_negativeOverload0_carry
       (.CI(1'b0),
        .CO({o_negativeOverload0_carry_n_0,o_negativeOverload0_carry_n_1,o_negativeOverload0_carry_n_2,o_negativeOverload0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({o_negativeOverload0_carry_i_1_n_0,o_negativeOverload0_carry_i_2_n_0,o_negativeOverload0_carry_i_3_n_0,o_negativeOverload0_carry_i_4_n_0}),
        .O(NLW_o_negativeOverload0_carry_O_UNCONNECTED[3:0]),
        .S({o_negativeOverload0_carry_i_5_n_0,o_negativeOverload0_carry_i_6_n_0,o_negativeOverload0_carry_i_7_n_0,o_negativeOverload0_carry_i_8_n_0}));
  CARRY4 o_negativeOverload0_carry__0
       (.CI(o_negativeOverload0_carry_n_0),
        .CO({o_negativeOverload0_carry__0_n_0,o_negativeOverload0_carry__0_n_1,o_negativeOverload0_carry__0_n_2,o_negativeOverload0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,o_negativeOverload0_carry__0_i_1_n_0,o_negativeOverload0_carry__0_i_2_n_0}),
        .O(NLW_o_negativeOverload0_carry__0_O_UNCONNECTED[3:0]),
        .S({o_negativeOverload0_carry__0_i_3_n_0,o_negativeOverload0_carry__0_i_4_n_0,o_negativeOverload0_carry__0_i_5_n_0,o_negativeOverload0_carry__0_i_6_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    o_negativeOverload0_carry__0_i_1
       (.I0(iS_data[10]),
        .I1(iS_data[11]),
        .O(o_negativeOverload0_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    o_negativeOverload0_carry__0_i_2
       (.I0(iS_data[9]),
        .O(o_negativeOverload0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    o_negativeOverload0_carry__0_i_3
       (.I0(iS_data[15]),
        .I1(iS_data[14]),
        .O(o_negativeOverload0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    o_negativeOverload0_carry__0_i_4
       (.I0(iS_data[12]),
        .I1(iS_data[13]),
        .O(o_negativeOverload0_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    o_negativeOverload0_carry__0_i_5
       (.I0(iS_data[10]),
        .I1(iS_data[11]),
        .O(o_negativeOverload0_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    o_negativeOverload0_carry__0_i_6
       (.I0(iS_data[9]),
        .I1(iS_data[8]),
        .O(o_negativeOverload0_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    o_negativeOverload0_carry_i_1
       (.I0(iS_data[6]),
        .I1(iS_data[7]),
        .O(o_negativeOverload0_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    o_negativeOverload0_carry_i_2
       (.I0(iS_data[5]),
        .O(o_negativeOverload0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    o_negativeOverload0_carry_i_3
       (.I0(iS_data[2]),
        .I1(iS_data[3]),
        .O(o_negativeOverload0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    o_negativeOverload0_carry_i_4
       (.I0(iS_data[0]),
        .I1(iS_data[1]),
        .O(o_negativeOverload0_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    o_negativeOverload0_carry_i_5
       (.I0(iS_data[6]),
        .I1(iS_data[7]),
        .O(o_negativeOverload0_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    o_negativeOverload0_carry_i_6
       (.I0(iS_data[5]),
        .I1(iS_data[4]),
        .O(o_negativeOverload0_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    o_negativeOverload0_carry_i_7
       (.I0(iS_data[2]),
        .I1(iS_data[3]),
        .O(o_negativeOverload0_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    o_negativeOverload0_carry_i_8
       (.I0(iS_data[0]),
        .I1(iS_data[1]),
        .O(o_negativeOverload0_carry_i_8_n_0));
  FDRE o_negativeOverload_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(o_negativeOverload0_carry__0_n_0),
        .Q(o_negativeOverload),
        .R(p_0_in));
  CARRY4 o_positiveOverload0_carry
       (.CI(1'b0),
        .CO({o_positiveOverload0_carry_n_0,o_positiveOverload0_carry_n_1,o_positiveOverload0_carry_n_2,o_positiveOverload0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({o_positiveOverload0_carry_i_1_n_0,iS_data[5],o_positiveOverload0_carry_i_2_n_0,iS_data[1]}),
        .O(NLW_o_positiveOverload0_carry_O_UNCONNECTED[3:0]),
        .S({o_positiveOverload0_carry_i_3_n_0,o_positiveOverload0_carry_i_4_n_0,o_positiveOverload0_carry_i_5_n_0,o_positiveOverload0_carry_i_6_n_0}));
  CARRY4 o_positiveOverload0_carry__0
       (.CI(o_positiveOverload0_carry_n_0),
        .CO({p_1_in,o_positiveOverload0_carry__0_n_1,o_positiveOverload0_carry__0_n_2,o_positiveOverload0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,o_positiveOverload0_carry__0_i_1_n_0,iS_data[9]}),
        .O(NLW_o_positiveOverload0_carry__0_O_UNCONNECTED[3:0]),
        .S({o_positiveOverload0_carry__0_i_2_n_0,o_positiveOverload0_carry__0_i_3_n_0,o_positiveOverload0_carry__0_i_4_n_0,o_positiveOverload0_carry__0_i_5_n_0}));
  LUT2 #(
    .INIT(4'h8)) 
    o_positiveOverload0_carry__0_i_1
       (.I0(iS_data[10]),
        .I1(iS_data[11]),
        .O(o_positiveOverload0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    o_positiveOverload0_carry__0_i_2
       (.I0(iS_data[14]),
        .I1(iS_data[15]),
        .O(o_positiveOverload0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    o_positiveOverload0_carry__0_i_3
       (.I0(iS_data[12]),
        .I1(iS_data[13]),
        .O(o_positiveOverload0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    o_positiveOverload0_carry__0_i_4
       (.I0(iS_data[11]),
        .I1(iS_data[10]),
        .O(o_positiveOverload0_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    o_positiveOverload0_carry__0_i_5
       (.I0(iS_data[8]),
        .I1(iS_data[9]),
        .O(o_positiveOverload0_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    o_positiveOverload0_carry_i_1
       (.I0(iS_data[6]),
        .I1(iS_data[7]),
        .O(o_positiveOverload0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    o_positiveOverload0_carry_i_2
       (.I0(iS_data[2]),
        .I1(iS_data[3]),
        .O(o_positiveOverload0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    o_positiveOverload0_carry_i_3
       (.I0(iS_data[7]),
        .I1(iS_data[6]),
        .O(o_positiveOverload0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    o_positiveOverload0_carry_i_4
       (.I0(iS_data[4]),
        .I1(iS_data[5]),
        .O(o_positiveOverload0_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    o_positiveOverload0_carry_i_5
       (.I0(iS_data[3]),
        .I1(iS_data[2]),
        .O(o_positiveOverload0_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    o_positiveOverload0_carry_i_6
       (.I0(iS_data[0]),
        .I1(iS_data[1]),
        .O(o_positiveOverload0_carry_i_6_n_0));
  FDRE o_positiveOverload_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(p_1_in),
        .Q(o_positiveOverload),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TVALID" *) 
  FDRE o_valid_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(i_valid),
        .Q(o_valid),
        .R(p_0_in));
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
