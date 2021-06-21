//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
//Date        : Mon Jun 21 19:52:16 2021
//Host        : dan-Desktop running 64-bit Ubuntu 18.04.5 LTS
//Command     : generate_target zsys_wrapper.bd
//Design      : zsys_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module zsys_wrapper
   (DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    LED_Display_Blank,
    LED_Display_Clock,
    LED_Display_Data,
    LED_Display_Latch,
    Link_Active,
    Link_Activity,
    PL_pin_K16,
    PL_pin_K19,
    PL_pin_K20,
    PL_pin_L16,
    PL_pin_M15,
    PL_pin_N15,
    PL_pin_N22,
    PL_pin_P16,
    PL_pin_P22,
    adc_clk_n,
    adc_clk_p,
    af_adc_data,
    af_bclk,
    af_dac_data,
    af_i2c_scl_io,
    af_i2c_sda_io,
    af_lrclk,
    af_mclk,
    cw_key_n,
    debug_leds,
    gpio_rs485_tri_io,
    i_ptt_cw_n,
    i_ptt_n,
    oS_dacData,
    o_dacClk,
    o_dacMode,
    rf_adc_dither,
    rf_adc_random);
  inout [14:0]DDR_addr;
  inout [2:0]DDR_ba;
  inout DDR_cas_n;
  inout DDR_ck_n;
  inout DDR_ck_p;
  inout DDR_cke;
  inout DDR_cs_n;
  inout [3:0]DDR_dm;
  inout [31:0]DDR_dq;
  inout [3:0]DDR_dqs_n;
  inout [3:0]DDR_dqs_p;
  inout DDR_odt;
  inout DDR_ras_n;
  inout DDR_reset_n;
  inout DDR_we_n;
  inout FIXED_IO_ddr_vrn;
  inout FIXED_IO_ddr_vrp;
  inout [53:0]FIXED_IO_mio;
  inout FIXED_IO_ps_clk;
  inout FIXED_IO_ps_porb;
  inout FIXED_IO_ps_srstb;
  output LED_Display_Blank;
  output LED_Display_Clock;
  output LED_Display_Data;
  output LED_Display_Latch;
  output [0:0]Link_Active;
  output [0:0]Link_Activity;
  input PL_pin_K16;
  input PL_pin_K19;
  output PL_pin_K20;
  output PL_pin_L16;
  input PL_pin_M15;
  input PL_pin_N15;
  output PL_pin_N22;
  input PL_pin_P16;
  input PL_pin_P22;
  input adc_clk_n;
  input adc_clk_p;
  input af_adc_data;
  output af_bclk;
  output af_dac_data;
  inout af_i2c_scl_io;
  inout af_i2c_sda_io;
  output af_lrclk;
  output af_mclk;
  input cw_key_n;
  output [7:0]debug_leds;
  inout [2:0]gpio_rs485_tri_io;
  input i_ptt_cw_n;
  input i_ptt_n;
  output [13:0]oS_dacData;
  output [0:0]o_dacClk;
  output [0:0]o_dacMode;
  output rf_adc_dither;
  output rf_adc_random;

  wire [14:0]DDR_addr;
  wire [2:0]DDR_ba;
  wire DDR_cas_n;
  wire DDR_ck_n;
  wire DDR_ck_p;
  wire DDR_cke;
  wire DDR_cs_n;
  wire [3:0]DDR_dm;
  wire [31:0]DDR_dq;
  wire [3:0]DDR_dqs_n;
  wire [3:0]DDR_dqs_p;
  wire DDR_odt;
  wire DDR_ras_n;
  wire DDR_reset_n;
  wire DDR_we_n;
  wire FIXED_IO_ddr_vrn;
  wire FIXED_IO_ddr_vrp;
  wire [53:0]FIXED_IO_mio;
  wire FIXED_IO_ps_clk;
  wire FIXED_IO_ps_porb;
  wire FIXED_IO_ps_srstb;
  wire LED_Display_Blank;
  wire LED_Display_Clock;
  wire LED_Display_Data;
  wire LED_Display_Latch;
  wire [0:0]Link_Active;
  wire [0:0]Link_Activity;
  wire PL_pin_K16;
  wire PL_pin_K19;
  wire PL_pin_K20;
  wire PL_pin_L16;
  wire PL_pin_M15;
  wire PL_pin_N15;
  wire PL_pin_N22;
  wire PL_pin_P16;
  wire PL_pin_P22;
  wire adc_clk_n;
  wire adc_clk_p;
  wire af_adc_data;
  wire af_bclk;
  wire af_dac_data;
  wire af_i2c_scl_i;
  wire af_i2c_scl_io;
  wire af_i2c_scl_o;
  wire af_i2c_scl_t;
  wire af_i2c_sda_i;
  wire af_i2c_sda_io;
  wire af_i2c_sda_o;
  wire af_i2c_sda_t;
  wire af_lrclk;
  wire af_mclk;
  wire cw_key_n;
  wire [7:0]debug_leds;
  wire [0:0]gpio_rs485_tri_i_0;
  wire [1:1]gpio_rs485_tri_i_1;
  wire [2:2]gpio_rs485_tri_i_2;
  wire [0:0]gpio_rs485_tri_io_0;
  wire [1:1]gpio_rs485_tri_io_1;
  wire [2:2]gpio_rs485_tri_io_2;
  wire [0:0]gpio_rs485_tri_o_0;
  wire [1:1]gpio_rs485_tri_o_1;
  wire [2:2]gpio_rs485_tri_o_2;
  wire [0:0]gpio_rs485_tri_t_0;
  wire [1:1]gpio_rs485_tri_t_1;
  wire [2:2]gpio_rs485_tri_t_2;
  wire i_ptt_cw_n;
  wire i_ptt_n;
  wire [13:0]oS_dacData;
  wire [0:0]o_dacClk;
  wire [0:0]o_dacMode;
  wire rf_adc_dither;
  wire rf_adc_random;

  IOBUF af_i2c_scl_iobuf
       (.I(af_i2c_scl_o),
        .IO(af_i2c_scl_io),
        .O(af_i2c_scl_i),
        .T(af_i2c_scl_t));
  IOBUF af_i2c_sda_iobuf
       (.I(af_i2c_sda_o),
        .IO(af_i2c_sda_io),
        .O(af_i2c_sda_i),
        .T(af_i2c_sda_t));
  IOBUF gpio_rs485_tri_iobuf_0
       (.I(gpio_rs485_tri_o_0),
        .IO(gpio_rs485_tri_io[0]),
        .O(gpio_rs485_tri_i_0),
        .T(gpio_rs485_tri_t_0));
  IOBUF gpio_rs485_tri_iobuf_1
       (.I(gpio_rs485_tri_o_1),
        .IO(gpio_rs485_tri_io[1]),
        .O(gpio_rs485_tri_i_1),
        .T(gpio_rs485_tri_t_1));
  IOBUF gpio_rs485_tri_iobuf_2
       (.I(gpio_rs485_tri_o_2),
        .IO(gpio_rs485_tri_io[2]),
        .O(gpio_rs485_tri_i_2),
        .T(gpio_rs485_tri_t_2));
  zsys zsys_i
       (.DDR_addr(DDR_addr),
        .DDR_ba(DDR_ba),
        .DDR_cas_n(DDR_cas_n),
        .DDR_ck_n(DDR_ck_n),
        .DDR_ck_p(DDR_ck_p),
        .DDR_cke(DDR_cke),
        .DDR_cs_n(DDR_cs_n),
        .DDR_dm(DDR_dm),
        .DDR_dq(DDR_dq),
        .DDR_dqs_n(DDR_dqs_n),
        .DDR_dqs_p(DDR_dqs_p),
        .DDR_odt(DDR_odt),
        .DDR_ras_n(DDR_ras_n),
        .DDR_reset_n(DDR_reset_n),
        .DDR_we_n(DDR_we_n),
        .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
        .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
        .FIXED_IO_mio(FIXED_IO_mio),
        .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
        .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
        .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
        .LED_Display_Blank(LED_Display_Blank),
        .LED_Display_Clock(LED_Display_Clock),
        .LED_Display_Data(LED_Display_Data),
        .LED_Display_Latch(LED_Display_Latch),
        .Link_Active(Link_Active),
        .Link_Activity(Link_Activity),
        .PL_pin_K16(PL_pin_K16),
        .PL_pin_K19(PL_pin_K19),
        .PL_pin_K20(PL_pin_K20),
        .PL_pin_L16(PL_pin_L16),
        .PL_pin_M15(PL_pin_M15),
        .PL_pin_N15(PL_pin_N15),
        .PL_pin_N22(PL_pin_N22),
        .PL_pin_P16(PL_pin_P16),
        .PL_pin_P22(PL_pin_P22),
        .adc_clk_n(adc_clk_n),
        .adc_clk_p(adc_clk_p),
        .af_adc_data(af_adc_data),
        .af_bclk(af_bclk),
        .af_dac_data(af_dac_data),
        .af_i2c_scl_i(af_i2c_scl_i),
        .af_i2c_scl_o(af_i2c_scl_o),
        .af_i2c_scl_t(af_i2c_scl_t),
        .af_i2c_sda_i(af_i2c_sda_i),
        .af_i2c_sda_o(af_i2c_sda_o),
        .af_i2c_sda_t(af_i2c_sda_t),
        .af_lrclk(af_lrclk),
        .af_mclk(af_mclk),
        .cw_key_n(cw_key_n),
        .debug_leds(debug_leds),
        .gpio_rs485_tri_i({gpio_rs485_tri_i_2,gpio_rs485_tri_i_1,gpio_rs485_tri_i_0}),
        .gpio_rs485_tri_o({gpio_rs485_tri_o_2,gpio_rs485_tri_o_1,gpio_rs485_tri_o_0}),
        .gpio_rs485_tri_t({gpio_rs485_tri_t_2,gpio_rs485_tri_t_1,gpio_rs485_tri_t_0}),
        .i_ptt_cw_n(i_ptt_cw_n),
        .i_ptt_n(i_ptt_n),
        .oS_dacData(oS_dacData),
        .o_dacClk(o_dacClk),
        .o_dacMode(o_dacMode),
        .rf_adc_dither(rf_adc_dither),
        .rf_adc_random(rf_adc_random));
endmodule
