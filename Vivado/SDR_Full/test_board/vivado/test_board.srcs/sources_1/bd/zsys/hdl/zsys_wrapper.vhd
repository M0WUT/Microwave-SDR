--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
--Date        : Tue Mar 17 22:28:00 2020
--Host        : dan-Desktop running 64-bit Ubuntu 18.04.4 LTS
--Command     : generate_target zsys_wrapper.bd
--Design      : zsys_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zsys_wrapper is
  port (
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    LED_Display_Blank : out STD_LOGIC;
    LED_Display_Clock : out STD_LOGIC;
    LED_Display_Data : out STD_LOGIC;
    LED_Display_Latch : out STD_LOGIC;
    Link_Active : out STD_LOGIC_VECTOR ( 0 to 0 );
    Link_Activity : out STD_LOGIC_VECTOR ( 0 to 0 );
    PL_pin_K16 : in STD_LOGIC;
    PL_pin_K19 : in STD_LOGIC;
    PL_pin_K20 : out STD_LOGIC;
    PL_pin_L16 : out STD_LOGIC;
    PL_pin_M15 : in STD_LOGIC;
    PL_pin_N15 : in STD_LOGIC;
    PL_pin_N22 : out STD_LOGIC;
    PL_pin_P16 : in STD_LOGIC;
    PL_pin_P22 : in STD_LOGIC;
    adc_clk_n : in STD_LOGIC;
    adc_clk_p : in STD_LOGIC;
    af_bclk : out STD_LOGIC;
    af_dac_data : out STD_LOGIC;
    af_i2c_scl_io : inout STD_LOGIC;
    af_i2c_sda_io : inout STD_LOGIC;
    af_lrclk : out STD_LOGIC;
    af_mclk : out STD_LOGIC;
    hdmi_active : out STD_LOGIC;
    hdmi_blue : out STD_LOGIC_VECTOR ( 4 downto 0 );
    hdmi_clk : out STD_LOGIC;
    hdmi_green : out STD_LOGIC_VECTOR ( 5 downto 0 );
    hdmi_hSync : out STD_LOGIC;
    hdmi_red : out STD_LOGIC_VECTOR ( 4 downto 0 );
    hdmi_vSync : out STD_LOGIC;
    rf_adc_data : in STD_LOGIC_VECTOR ( 15 downto 0 );
    rf_adc_dither : out STD_LOGIC;
    rf_adc_overflow : in STD_LOGIC;
    rf_adc_random : out STD_LOGIC;
    vdma_lock_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    vdma_underflow_n : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
end zsys_wrapper;

architecture STRUCTURE of zsys_wrapper is
  component zsys is
  port (
    PL_pin_K16 : in STD_LOGIC;
    PL_pin_K19 : in STD_LOGIC;
    PL_pin_K20 : out STD_LOGIC;
    PL_pin_L16 : out STD_LOGIC;
    PL_pin_M15 : in STD_LOGIC;
    PL_pin_N15 : in STD_LOGIC;
    PL_pin_N22 : out STD_LOGIC;
    PL_pin_P16 : in STD_LOGIC;
    PL_pin_P22 : in STD_LOGIC;
    Link_Activity : out STD_LOGIC_VECTOR ( 0 to 0 );
    Link_Active : out STD_LOGIC_VECTOR ( 0 to 0 );
    adc_clk_p : in STD_LOGIC;
    adc_clk_n : in STD_LOGIC;
    vdma_lock_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    vdma_underflow_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    hdmi_clk : out STD_LOGIC;
    hdmi_active : out STD_LOGIC;
    hdmi_hSync : out STD_LOGIC;
    hdmi_vSync : out STD_LOGIC;
    hdmi_red : out STD_LOGIC_VECTOR ( 4 downto 0 );
    hdmi_green : out STD_LOGIC_VECTOR ( 5 downto 0 );
    hdmi_blue : out STD_LOGIC_VECTOR ( 4 downto 0 );
    LED_Display_Clock : out STD_LOGIC;
    LED_Display_Data : out STD_LOGIC;
    LED_Display_Latch : out STD_LOGIC;
    LED_Display_Blank : out STD_LOGIC;
    rf_adc_data : in STD_LOGIC_VECTOR ( 15 downto 0 );
    rf_adc_dither : out STD_LOGIC;
    rf_adc_overflow : in STD_LOGIC;
    rf_adc_random : out STD_LOGIC;
    af_bclk : out STD_LOGIC;
    af_mclk : out STD_LOGIC;
    af_lrclk : out STD_LOGIC;
    af_dac_data : out STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    af_i2c_scl_i : in STD_LOGIC;
    af_i2c_scl_o : out STD_LOGIC;
    af_i2c_scl_t : out STD_LOGIC;
    af_i2c_sda_i : in STD_LOGIC;
    af_i2c_sda_o : out STD_LOGIC;
    af_i2c_sda_t : out STD_LOGIC;
    DDR_cas_n : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component zsys;
  component IOBUF is
  port (
    I : in STD_LOGIC;
    O : out STD_LOGIC;
    T : in STD_LOGIC;
    IO : inout STD_LOGIC
  );
  end component IOBUF;
  signal af_i2c_scl_i : STD_LOGIC;
  signal af_i2c_scl_o : STD_LOGIC;
  signal af_i2c_scl_t : STD_LOGIC;
  signal af_i2c_sda_i : STD_LOGIC;
  signal af_i2c_sda_o : STD_LOGIC;
  signal af_i2c_sda_t : STD_LOGIC;
begin
af_i2c_scl_iobuf: component IOBUF
     port map (
      I => af_i2c_scl_o,
      IO => af_i2c_scl_io,
      O => af_i2c_scl_i,
      T => af_i2c_scl_t
    );
af_i2c_sda_iobuf: component IOBUF
     port map (
      I => af_i2c_sda_o,
      IO => af_i2c_sda_io,
      O => af_i2c_sda_i,
      T => af_i2c_sda_t
    );
zsys_i: component zsys
     port map (
      DDR_addr(14 downto 0) => DDR_addr(14 downto 0),
      DDR_ba(2 downto 0) => DDR_ba(2 downto 0),
      DDR_cas_n => DDR_cas_n,
      DDR_ck_n => DDR_ck_n,
      DDR_ck_p => DDR_ck_p,
      DDR_cke => DDR_cke,
      DDR_cs_n => DDR_cs_n,
      DDR_dm(3 downto 0) => DDR_dm(3 downto 0),
      DDR_dq(31 downto 0) => DDR_dq(31 downto 0),
      DDR_dqs_n(3 downto 0) => DDR_dqs_n(3 downto 0),
      DDR_dqs_p(3 downto 0) => DDR_dqs_p(3 downto 0),
      DDR_odt => DDR_odt,
      DDR_ras_n => DDR_ras_n,
      DDR_reset_n => DDR_reset_n,
      DDR_we_n => DDR_we_n,
      FIXED_IO_ddr_vrn => FIXED_IO_ddr_vrn,
      FIXED_IO_ddr_vrp => FIXED_IO_ddr_vrp,
      FIXED_IO_mio(53 downto 0) => FIXED_IO_mio(53 downto 0),
      FIXED_IO_ps_clk => FIXED_IO_ps_clk,
      FIXED_IO_ps_porb => FIXED_IO_ps_porb,
      FIXED_IO_ps_srstb => FIXED_IO_ps_srstb,
      LED_Display_Blank => LED_Display_Blank,
      LED_Display_Clock => LED_Display_Clock,
      LED_Display_Data => LED_Display_Data,
      LED_Display_Latch => LED_Display_Latch,
      Link_Active(0) => Link_Active(0),
      Link_Activity(0) => Link_Activity(0),
      PL_pin_K16 => PL_pin_K16,
      PL_pin_K19 => PL_pin_K19,
      PL_pin_K20 => PL_pin_K20,
      PL_pin_L16 => PL_pin_L16,
      PL_pin_M15 => PL_pin_M15,
      PL_pin_N15 => PL_pin_N15,
      PL_pin_N22 => PL_pin_N22,
      PL_pin_P16 => PL_pin_P16,
      PL_pin_P22 => PL_pin_P22,
      adc_clk_n => adc_clk_n,
      adc_clk_p => adc_clk_p,
      af_bclk => af_bclk,
      af_dac_data => af_dac_data,
      af_i2c_scl_i => af_i2c_scl_i,
      af_i2c_scl_o => af_i2c_scl_o,
      af_i2c_scl_t => af_i2c_scl_t,
      af_i2c_sda_i => af_i2c_sda_i,
      af_i2c_sda_o => af_i2c_sda_o,
      af_i2c_sda_t => af_i2c_sda_t,
      af_lrclk => af_lrclk,
      af_mclk => af_mclk,
      hdmi_active => hdmi_active,
      hdmi_blue(4 downto 0) => hdmi_blue(4 downto 0),
      hdmi_clk => hdmi_clk,
      hdmi_green(5 downto 0) => hdmi_green(5 downto 0),
      hdmi_hSync => hdmi_hSync,
      hdmi_red(4 downto 0) => hdmi_red(4 downto 0),
      hdmi_vSync => hdmi_vSync,
      rf_adc_data(15 downto 0) => rf_adc_data(15 downto 0),
      rf_adc_dither => rf_adc_dither,
      rf_adc_overflow => rf_adc_overflow,
      rf_adc_random => rf_adc_random,
      vdma_lock_n(0) => vdma_lock_n(0),
      vdma_underflow_n(0) => vdma_underflow_n(0)
    );
end STRUCTURE;
