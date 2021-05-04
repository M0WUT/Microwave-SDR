// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Fri Apr 23 23:40:00 2021
// Host        : dan-Desktop running 64-bit Ubuntu 18.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/dan/Microwave-SDR/Vivado/SDR_Full/test_board/vivado/test_board.srcs/sources_1/bd/zsys/ip/zsys_ptt_mux_0_0/zsys_ptt_mux_0_0_sim_netlist.v
// Design      : zsys_ptt_mux_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "zsys_ptt_mux_0_0,ptt_mux,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "ptt_mux,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module zsys_ptt_mux_0_0
   (i_clk,
    i_ptt_n,
    i_ptt_cw_n,
    i_mode,
    o_ptt);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 i_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_clk, FREQ_HZ 80000000, PHASE 0.000, CLK_DOMAIN zsys_adc_clk_n, INSERT_VIP 0" *) input i_clk;
  input i_ptt_n;
  input i_ptt_cw_n;
  input [3:0]i_mode;
  output o_ptt;

  wire i_clk;
  wire [3:0]i_mode;
  wire i_ptt_cw_n;
  wire i_ptt_n;
  wire o_ptt;

  zsys_ptt_mux_0_0_ptt_mux inst
       (.i_clk(i_clk),
        .i_mode(i_mode),
        .i_ptt_cw_n(i_ptt_cw_n),
        .i_ptt_n(i_ptt_n),
        .o_ptt(o_ptt));
endmodule

(* ORIG_REF_NAME = "ptt_mux" *) 
module zsys_ptt_mux_0_0_ptt_mux
   (o_ptt,
    i_ptt_cw_n,
    i_mode,
    i_ptt_n,
    i_clk);
  output o_ptt;
  input i_ptt_cw_n;
  input [3:0]i_mode;
  input i_ptt_n;
  input i_clk;

  wire i_clk;
  wire [3:0]i_mode;
  wire i_ptt_cw_n;
  wire i_ptt_n;
  wire o_ptt;
  wire o_ptt__0_n_0;

  LUT6 #(
    .INIT(64'hFEFFFFFF02000000)) 
    o_ptt__0
       (.I0(i_ptt_cw_n),
        .I1(i_mode[3]),
        .I2(i_mode[2]),
        .I3(i_mode[1]),
        .I4(i_mode[0]),
        .I5(i_ptt_n),
        .O(o_ptt__0_n_0));
  FDRE o_ptt_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(o_ptt__0_n_0),
        .Q(o_ptt),
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
