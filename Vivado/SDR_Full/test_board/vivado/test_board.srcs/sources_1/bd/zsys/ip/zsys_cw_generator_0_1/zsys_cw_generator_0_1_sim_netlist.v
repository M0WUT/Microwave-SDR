// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Fri Apr 23 22:45:46 2021
// Host        : dan-Desktop running 64-bit Ubuntu 18.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/dan/Microwave-SDR/Vivado/SDR_Full/test_board/vivado/test_board.srcs/sources_1/bd/zsys/ip/zsys_cw_generator_0_1/zsys_cw_generator_0_1_sim_netlist.v
// Design      : zsys_cw_generator_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "zsys_cw_generator_0_1,cw_generator,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "cw_generator,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module zsys_cw_generator_0_1
   (i_clk,
    i_key_n,
    iS_amplitude,
    oS_output);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 i_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_clk, FREQ_HZ 80000000, PHASE 0.000, CLK_DOMAIN zsys_adc_clk_n, INSERT_VIP 0" *) input i_clk;
  input i_key_n;
  input [15:0]iS_amplitude;
  output [15:0]oS_output;

  wire [15:0]iS_amplitude;
  wire i_clk;
  wire i_key_n;
  wire [15:0]oS_output;

  zsys_cw_generator_0_1_cw_generator inst
       (.iS_amplitude(iS_amplitude),
        .i_clk(i_clk),
        .i_key_n(i_key_n),
        .oS_output(oS_output));
endmodule

(* ORIG_REF_NAME = "cw_generator" *) 
module zsys_cw_generator_0_1_cw_generator
   (oS_output,
    i_key_n,
    iS_amplitude,
    i_clk);
  output [15:0]oS_output;
  input i_key_n;
  input [15:0]iS_amplitude;
  input i_clk;

  wire [15:0]iS_amplitude;
  wire i_clk;
  wire i_key_n;
  wire [15:0]oS_output;

  FDRE \oS_output_reg[0] 
       (.C(i_clk),
        .CE(1'b1),
        .D(iS_amplitude[0]),
        .Q(oS_output[0]),
        .R(i_key_n));
  FDRE \oS_output_reg[10] 
       (.C(i_clk),
        .CE(1'b1),
        .D(iS_amplitude[10]),
        .Q(oS_output[10]),
        .R(i_key_n));
  FDRE \oS_output_reg[11] 
       (.C(i_clk),
        .CE(1'b1),
        .D(iS_amplitude[11]),
        .Q(oS_output[11]),
        .R(i_key_n));
  FDRE \oS_output_reg[12] 
       (.C(i_clk),
        .CE(1'b1),
        .D(iS_amplitude[12]),
        .Q(oS_output[12]),
        .R(i_key_n));
  FDRE \oS_output_reg[13] 
       (.C(i_clk),
        .CE(1'b1),
        .D(iS_amplitude[13]),
        .Q(oS_output[13]),
        .R(i_key_n));
  FDRE \oS_output_reg[14] 
       (.C(i_clk),
        .CE(1'b1),
        .D(iS_amplitude[14]),
        .Q(oS_output[14]),
        .R(i_key_n));
  FDRE \oS_output_reg[15] 
       (.C(i_clk),
        .CE(1'b1),
        .D(iS_amplitude[15]),
        .Q(oS_output[15]),
        .R(i_key_n));
  FDRE \oS_output_reg[1] 
       (.C(i_clk),
        .CE(1'b1),
        .D(iS_amplitude[1]),
        .Q(oS_output[1]),
        .R(i_key_n));
  FDRE \oS_output_reg[2] 
       (.C(i_clk),
        .CE(1'b1),
        .D(iS_amplitude[2]),
        .Q(oS_output[2]),
        .R(i_key_n));
  FDRE \oS_output_reg[3] 
       (.C(i_clk),
        .CE(1'b1),
        .D(iS_amplitude[3]),
        .Q(oS_output[3]),
        .R(i_key_n));
  FDRE \oS_output_reg[4] 
       (.C(i_clk),
        .CE(1'b1),
        .D(iS_amplitude[4]),
        .Q(oS_output[4]),
        .R(i_key_n));
  FDRE \oS_output_reg[5] 
       (.C(i_clk),
        .CE(1'b1),
        .D(iS_amplitude[5]),
        .Q(oS_output[5]),
        .R(i_key_n));
  FDRE \oS_output_reg[6] 
       (.C(i_clk),
        .CE(1'b1),
        .D(iS_amplitude[6]),
        .Q(oS_output[6]),
        .R(i_key_n));
  FDRE \oS_output_reg[7] 
       (.C(i_clk),
        .CE(1'b1),
        .D(iS_amplitude[7]),
        .Q(oS_output[7]),
        .R(i_key_n));
  FDRE \oS_output_reg[8] 
       (.C(i_clk),
        .CE(1'b1),
        .D(iS_amplitude[8]),
        .Q(oS_output[8]),
        .R(i_key_n));
  FDRE \oS_output_reg[9] 
       (.C(i_clk),
        .CE(1'b1),
        .D(iS_amplitude[9]),
        .Q(oS_output[9]),
        .R(i_key_n));
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
