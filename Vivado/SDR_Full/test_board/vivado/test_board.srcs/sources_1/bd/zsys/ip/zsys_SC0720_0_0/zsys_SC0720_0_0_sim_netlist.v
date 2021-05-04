// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Wed Apr 21 23:23:52 2021
// Host        : dan-Desktop running 64-bit Ubuntu 18.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/dan/Microwave-SDR/Vivado/SDR_Full/test_board/vivado/test_board.srcs/sources_1/bd/zsys/ip/zsys_SC0720_0_0/zsys_SC0720_0_0_sim_netlist.v
// Design      : zsys_SC0720_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "zsys_SC0720_0_0,SC0720,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "SC0720,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module zsys_SC0720_0_0
   (ext_sda_i,
    ext_sda_o,
    ext_sda_t,
    ext_scl_i,
    ext_scl_o,
    ext_scl_t,
    PHY_LED0,
    PHY_LED1,
    PHY_LED2,
    PL_pin_K16,
    PL_pin_K19,
    PL_pin_L16,
    PL_pin_M15,
    PL_pin_N15,
    PL_pin_P16,
    PL_pin_P22,
    PL_pin_K20,
    PL_pin_N22,
    sda_i,
    sda_o,
    sda_t,
    scl_i,
    scl_o,
    scl_t);
  (* x_interface_info = "xilinx.com:interface:iic:1.0 EXT_I2C SDA_I" *) input ext_sda_i;
  (* x_interface_info = "xilinx.com:interface:iic:1.0 EXT_I2C SDA_O" *) output ext_sda_o;
  (* x_interface_info = "xilinx.com:interface:iic:1.0 EXT_I2C SDA_T" *) output ext_sda_t;
  (* x_interface_info = "xilinx.com:interface:iic:1.0 EXT_I2C SCL_I" *) input ext_scl_i;
  (* x_interface_info = "xilinx.com:interface:iic:1.0 EXT_I2C SCL_O" *) output ext_scl_o;
  (* x_interface_info = "xilinx.com:interface:iic:1.0 EXT_I2C SCL_T" *) output ext_scl_t;
  output PHY_LED0;
  output PHY_LED1;
  output PHY_LED2;
  input PL_pin_K16;
  input PL_pin_K19;
  output PL_pin_L16;
  input PL_pin_M15;
  input PL_pin_N15;
  input PL_pin_P16;
  input PL_pin_P22;
  output PL_pin_K20;
  output PL_pin_N22;
  (* x_interface_info = "xilinx.com:interface:iic:1.0 EMIO_I2C1 SDA_I" *) output sda_i;
  (* x_interface_info = "xilinx.com:interface:iic:1.0 EMIO_I2C1 SDA_O" *) input sda_o;
  (* x_interface_info = "xilinx.com:interface:iic:1.0 EMIO_I2C1 SDA_T" *) input sda_t;
  (* x_interface_info = "xilinx.com:interface:iic:1.0 EMIO_I2C1 SCL_I" *) output scl_i;
  (* x_interface_info = "xilinx.com:interface:iic:1.0 EMIO_I2C1 SCL_O" *) input scl_o;
  (* x_interface_info = "xilinx.com:interface:iic:1.0 EMIO_I2C1 SCL_T" *) input scl_t;

  wire \<const0> ;
  wire PL_pin_L16;
  wire PL_pin_M15;
  wire PL_pin_N15;
  wire PL_pin_N22;
  wire PL_pin_P16;
  wire PL_pin_P22;
  wire ext_sda_i;
  wire scl_o;
  wire scl_t;
  wire sda_i;
  wire sda_o;
  wire sda_t;

  assign PHY_LED0 = PL_pin_M15;
  assign PHY_LED1 = PL_pin_N15;
  assign PHY_LED2 = PL_pin_P16;
  assign PL_pin_K20 = \<const0> ;
  assign ext_scl_t = scl_t;
  assign ext_sda_o = sda_o;
  assign ext_sda_t = sda_t;
  assign scl_i = PL_pin_L16;
  GND GND
       (.G(\<const0> ));
  LUT2 #(
    .INIT(4'hE)) 
    PL_pin_N22_INST_0
       (.I0(sda_o),
        .I1(sda_t),
        .O(PL_pin_N22));
  LUT2 #(
    .INIT(4'hE)) 
    scl_i_INST_0
       (.I0(scl_o),
        .I1(scl_t),
        .O(PL_pin_L16));
  LUT2 #(
    .INIT(4'h8)) 
    sda_i_INST_0
       (.I0(PL_pin_P22),
        .I1(ext_sda_i),
        .O(sda_i));
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
