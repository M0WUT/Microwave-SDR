-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
-- Date        : Mon Jun 21 19:29:56 2021
-- Host        : dan-Desktop running 64-bit Ubuntu 18.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/dan/Microwave-SDR/Vivado/SDR_Full/test_board/vivado/test_board.srcs/sources_1/bd/zsys/ip/zsys_adau1361_handler_0_1/zsys_adau1361_handler_0_1_sim_netlist.vhdl
-- Design      : zsys_adau1361_handler_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zsys_adau1361_handler_0_1_adau1361_handler is
  port (
    o_bclk_reg_0 : out STD_LOGIC;
    oS_left_adc_data : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_left_adc_valid : out STD_LOGIC;
    oS_right_adc_data : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_right_adc_valid : out STD_LOGIC;
    o_error : out STD_LOGIC;
    o_dacData : out STD_LOGIC;
    o_lrclk : out STD_LOGIC;
    o_mclk : out STD_LOGIC;
    i_resetn : in STD_LOGIC;
    i_clk : in STD_LOGIC;
    i_left_dac_valid : in STD_LOGIC;
    i_adcData : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_right_dac_valid : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of zsys_adau1361_handler_0_1_adau1361_handler : entity is "adau1361_handler";
end zsys_adau1361_handler_0_1_adau1361_handler;

architecture STRUCTURE of zsys_adau1361_handler_0_1_adau1361_handler is
  signal \oS_left_adc_data[15]_i_1_n_0\ : STD_LOGIC;
  signal \oS_left_adc_data[15]_i_2_n_0\ : STD_LOGIC;
  signal o_bclk_i_1_n_0 : STD_LOGIC;
  signal \^o_bclk_reg_0\ : STD_LOGIC;
  signal \^o_dacdata\ : STD_LOGIC;
  signal o_dacData_0 : STD_LOGIC;
  signal o_dacData_i_10_n_0 : STD_LOGIC;
  signal o_dacData_i_11_n_0 : STD_LOGIC;
  signal o_dacData_i_12_n_0 : STD_LOGIC;
  signal o_dacData_i_13_n_0 : STD_LOGIC;
  signal o_dacData_i_14_n_0 : STD_LOGIC;
  signal o_dacData_i_15_n_0 : STD_LOGIC;
  signal o_dacData_i_16_n_0 : STD_LOGIC;
  signal o_dacData_i_17_n_0 : STD_LOGIC;
  signal o_dacData_i_18_n_0 : STD_LOGIC;
  signal o_dacData_i_1_n_0 : STD_LOGIC;
  signal o_dacData_i_2_n_0 : STD_LOGIC;
  signal o_dacData_i_5_n_0 : STD_LOGIC;
  signal o_dacData_i_6_n_0 : STD_LOGIC;
  signal o_dacData_i_7_n_0 : STD_LOGIC;
  signal o_dacData_i_8_n_0 : STD_LOGIC;
  signal o_dacData_i_9_n_0 : STD_LOGIC;
  signal \^o_error\ : STD_LOGIC;
  signal o_error6_out : STD_LOGIC;
  signal o_error_i_1_n_0 : STD_LOGIC;
  signal o_error_i_2_n_0 : STD_LOGIC;
  signal o_error_i_3_n_0 : STD_LOGIC;
  signal o_left_adc_valid_i_1_n_0 : STD_LOGIC;
  signal o_left_adc_valid_i_2_n_0 : STD_LOGIC;
  signal o_left_adc_valid_i_3_n_0 : STD_LOGIC;
  signal \^o_lrclk\ : STD_LOGIC;
  signal o_lrclk_i_1_n_0 : STD_LOGIC;
  signal o_lrclk_i_2_n_0 : STD_LOGIC;
  signal o_lrclk_i_3_n_0 : STD_LOGIC;
  signal \^o_mclk\ : STD_LOGIC;
  signal o_mclk_i_1_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 5 downto 1 );
  signal \r_adcData[31]_i_1_n_0\ : STD_LOGIC;
  signal \r_adcData_reg_n_0_[0]\ : STD_LOGIC;
  signal \r_adcData_reg_n_0_[10]\ : STD_LOGIC;
  signal \r_adcData_reg_n_0_[11]\ : STD_LOGIC;
  signal \r_adcData_reg_n_0_[12]\ : STD_LOGIC;
  signal \r_adcData_reg_n_0_[13]\ : STD_LOGIC;
  signal \r_adcData_reg_n_0_[14]\ : STD_LOGIC;
  signal \r_adcData_reg_n_0_[15]\ : STD_LOGIC;
  signal \r_adcData_reg_n_0_[1]\ : STD_LOGIC;
  signal \r_adcData_reg_n_0_[2]\ : STD_LOGIC;
  signal \r_adcData_reg_n_0_[3]\ : STD_LOGIC;
  signal \r_adcData_reg_n_0_[4]\ : STD_LOGIC;
  signal \r_adcData_reg_n_0_[5]\ : STD_LOGIC;
  signal \r_adcData_reg_n_0_[6]\ : STD_LOGIC;
  signal \r_adcData_reg_n_0_[7]\ : STD_LOGIC;
  signal \r_adcData_reg_n_0_[8]\ : STD_LOGIC;
  signal \r_adcData_reg_n_0_[9]\ : STD_LOGIC;
  signal \r_bitCounter[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_bitCounter[1]_i_1_n_0\ : STD_LOGIC;
  signal \r_bitCounter[2]_i_1_n_0\ : STD_LOGIC;
  signal \r_bitCounter[3]_i_1_n_0\ : STD_LOGIC;
  signal \r_bitCounter[4]_i_1_n_0\ : STD_LOGIC;
  signal \r_bitCounter[4]_i_2_n_0\ : STD_LOGIC;
  signal \r_bitCounter[4]_i_3_n_0\ : STD_LOGIC;
  signal \r_bitCounter[4]_i_4_n_0\ : STD_LOGIC;
  signal \r_bitCounter[5]_i_1_n_0\ : STD_LOGIC;
  signal \r_bitCounter[5]_i_2_n_0\ : STD_LOGIC;
  signal \r_bitCounter_reg_n_0_[0]\ : STD_LOGIC;
  signal \r_bitCounter_reg_n_0_[1]\ : STD_LOGIC;
  signal \r_bitCounter_reg_n_0_[2]\ : STD_LOGIC;
  signal \r_bitCounter_reg_n_0_[3]\ : STD_LOGIC;
  signal \r_bitCounter_reg_n_0_[4]\ : STD_LOGIC;
  signal \r_bitCounter_reg_n_0_[5]\ : STD_LOGIC;
  signal \r_dacData1__0\ : STD_LOGIC;
  signal \r_dacData[31]_i_1_n_0\ : STD_LOGIC;
  signal \r_dacData[31]_i_2_n_0\ : STD_LOGIC;
  signal \r_dacData_reg_n_0_[0]\ : STD_LOGIC;
  signal \r_dacData_reg_n_0_[10]\ : STD_LOGIC;
  signal \r_dacData_reg_n_0_[11]\ : STD_LOGIC;
  signal \r_dacData_reg_n_0_[12]\ : STD_LOGIC;
  signal \r_dacData_reg_n_0_[13]\ : STD_LOGIC;
  signal \r_dacData_reg_n_0_[14]\ : STD_LOGIC;
  signal \r_dacData_reg_n_0_[15]\ : STD_LOGIC;
  signal \r_dacData_reg_n_0_[16]\ : STD_LOGIC;
  signal \r_dacData_reg_n_0_[17]\ : STD_LOGIC;
  signal \r_dacData_reg_n_0_[18]\ : STD_LOGIC;
  signal \r_dacData_reg_n_0_[19]\ : STD_LOGIC;
  signal \r_dacData_reg_n_0_[1]\ : STD_LOGIC;
  signal \r_dacData_reg_n_0_[20]\ : STD_LOGIC;
  signal \r_dacData_reg_n_0_[21]\ : STD_LOGIC;
  signal \r_dacData_reg_n_0_[22]\ : STD_LOGIC;
  signal \r_dacData_reg_n_0_[23]\ : STD_LOGIC;
  signal \r_dacData_reg_n_0_[24]\ : STD_LOGIC;
  signal \r_dacData_reg_n_0_[25]\ : STD_LOGIC;
  signal \r_dacData_reg_n_0_[26]\ : STD_LOGIC;
  signal \r_dacData_reg_n_0_[27]\ : STD_LOGIC;
  signal \r_dacData_reg_n_0_[28]\ : STD_LOGIC;
  signal \r_dacData_reg_n_0_[29]\ : STD_LOGIC;
  signal \r_dacData_reg_n_0_[2]\ : STD_LOGIC;
  signal \r_dacData_reg_n_0_[30]\ : STD_LOGIC;
  signal \r_dacData_reg_n_0_[31]\ : STD_LOGIC;
  signal \r_dacData_reg_n_0_[3]\ : STD_LOGIC;
  signal \r_dacData_reg_n_0_[4]\ : STD_LOGIC;
  signal \r_dacData_reg_n_0_[5]\ : STD_LOGIC;
  signal \r_dacData_reg_n_0_[6]\ : STD_LOGIC;
  signal \r_dacData_reg_n_0_[7]\ : STD_LOGIC;
  signal \r_dacData_reg_n_0_[8]\ : STD_LOGIC;
  signal \r_dacData_reg_n_0_[9]\ : STD_LOGIC;
  signal \r_dividerCounter[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_dividerCounter_reg_n_0_[0]\ : STD_LOGIC;
  signal \r_dividerCounter_reg_n_0_[1]\ : STD_LOGIC;
  signal \r_dividerCounter_reg_n_0_[3]\ : STD_LOGIC;
  signal \r_dividerCounter_reg_n_0_[4]\ : STD_LOGIC;
  signal r_started : STD_LOGIC;
  signal r_started_i_1_n_0 : STD_LOGIC;
  signal w_bclk : STD_LOGIC;
  signal w_lrclk012_in : STD_LOGIC;
  signal w_mclk : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \oS_left_adc_data[15]_i_2\ : label is "soft_lutpair2";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of \oS_left_adc_data_reg[0]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_LEFT_ADC TDATA";
  attribute X_INTERFACE_INFO of \oS_left_adc_data_reg[10]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_LEFT_ADC TDATA";
  attribute X_INTERFACE_INFO of \oS_left_adc_data_reg[11]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_LEFT_ADC TDATA";
  attribute X_INTERFACE_INFO of \oS_left_adc_data_reg[12]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_LEFT_ADC TDATA";
  attribute X_INTERFACE_INFO of \oS_left_adc_data_reg[13]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_LEFT_ADC TDATA";
  attribute X_INTERFACE_INFO of \oS_left_adc_data_reg[14]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_LEFT_ADC TDATA";
  attribute X_INTERFACE_INFO of \oS_left_adc_data_reg[15]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_LEFT_ADC TDATA";
  attribute X_INTERFACE_INFO of \oS_left_adc_data_reg[1]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_LEFT_ADC TDATA";
  attribute X_INTERFACE_INFO of \oS_left_adc_data_reg[2]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_LEFT_ADC TDATA";
  attribute X_INTERFACE_INFO of \oS_left_adc_data_reg[3]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_LEFT_ADC TDATA";
  attribute X_INTERFACE_INFO of \oS_left_adc_data_reg[4]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_LEFT_ADC TDATA";
  attribute X_INTERFACE_INFO of \oS_left_adc_data_reg[5]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_LEFT_ADC TDATA";
  attribute X_INTERFACE_INFO of \oS_left_adc_data_reg[6]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_LEFT_ADC TDATA";
  attribute X_INTERFACE_INFO of \oS_left_adc_data_reg[7]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_LEFT_ADC TDATA";
  attribute X_INTERFACE_INFO of \oS_left_adc_data_reg[8]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_LEFT_ADC TDATA";
  attribute X_INTERFACE_INFO of \oS_left_adc_data_reg[9]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_LEFT_ADC TDATA";
  attribute X_INTERFACE_INFO of \oS_right_adc_data_reg[0]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_RIGHT_ADC TDATA";
  attribute X_INTERFACE_INFO of \oS_right_adc_data_reg[10]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_RIGHT_ADC TDATA";
  attribute X_INTERFACE_INFO of \oS_right_adc_data_reg[11]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_RIGHT_ADC TDATA";
  attribute X_INTERFACE_INFO of \oS_right_adc_data_reg[12]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_RIGHT_ADC TDATA";
  attribute X_INTERFACE_INFO of \oS_right_adc_data_reg[13]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_RIGHT_ADC TDATA";
  attribute X_INTERFACE_INFO of \oS_right_adc_data_reg[14]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_RIGHT_ADC TDATA";
  attribute X_INTERFACE_INFO of \oS_right_adc_data_reg[15]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_RIGHT_ADC TDATA";
  attribute X_INTERFACE_INFO of \oS_right_adc_data_reg[1]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_RIGHT_ADC TDATA";
  attribute X_INTERFACE_INFO of \oS_right_adc_data_reg[2]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_RIGHT_ADC TDATA";
  attribute X_INTERFACE_INFO of \oS_right_adc_data_reg[3]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_RIGHT_ADC TDATA";
  attribute X_INTERFACE_INFO of \oS_right_adc_data_reg[4]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_RIGHT_ADC TDATA";
  attribute X_INTERFACE_INFO of \oS_right_adc_data_reg[5]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_RIGHT_ADC TDATA";
  attribute X_INTERFACE_INFO of \oS_right_adc_data_reg[6]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_RIGHT_ADC TDATA";
  attribute X_INTERFACE_INFO of \oS_right_adc_data_reg[7]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_RIGHT_ADC TDATA";
  attribute X_INTERFACE_INFO of \oS_right_adc_data_reg[8]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_RIGHT_ADC TDATA";
  attribute X_INTERFACE_INFO of \oS_right_adc_data_reg[9]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS_RIGHT_ADC TDATA";
  attribute SOFT_HLUTNM of o_bclk_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of o_dacData_i_12 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of o_dacData_i_2 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of o_dacData_i_3 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of o_dacData_i_5 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of o_error_i_2 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of o_error_i_3 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of o_left_adc_valid_i_2 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of o_left_adc_valid_i_3 : label is "soft_lutpair7";
  attribute X_INTERFACE_INFO of o_left_adc_valid_reg : label is "xilinx.com:interface:axis:1.0 M_AXIS_LEFT_ADC TVALID";
  attribute SOFT_HLUTNM of o_lrclk_i_2 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of o_lrclk_i_3 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of o_mclk_i_1 : label is "soft_lutpair4";
  attribute X_INTERFACE_INFO of o_right_adc_valid_reg : label is "xilinx.com:interface:axis:1.0 M_AXIS_RIGHT_ADC TVALID";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of o_right_adc_valid_reg : label is "no";
  attribute SOFT_HLUTNM of \r_bitCounter[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \r_bitCounter[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \r_bitCounter[4]_i_4\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \r_bitCounter[5]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \r_dacData[31]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \r_dividerCounter[0]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \r_dividerCounter[1]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \r_dividerCounter[2]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \r_dividerCounter[3]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \r_dividerCounter[4]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of r_started_i_1 : label is "soft_lutpair4";
begin
  o_bclk_reg_0 <= \^o_bclk_reg_0\;
  o_dacData <= \^o_dacdata\;
  o_error <= \^o_error\;
  o_lrclk <= \^o_lrclk\;
  o_mclk <= \^o_mclk\;
\oS_left_adc_data[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => r_started,
      I1 => i_resetn,
      I2 => \oS_left_adc_data[15]_i_2_n_0\,
      O => \oS_left_adc_data[15]_i_1_n_0\
    );
\oS_left_adc_data[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFBFFF"
    )
        port map (
      I0 => \r_bitCounter_reg_n_0_[5]\,
      I1 => \r_bitCounter_reg_n_0_[1]\,
      I2 => \r_bitCounter_reg_n_0_[2]\,
      I3 => \r_bitCounter_reg_n_0_[0]\,
      I4 => o_left_adc_valid_i_3_n_0,
      O => \oS_left_adc_data[15]_i_2_n_0\
    );
\oS_left_adc_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \oS_left_adc_data[15]_i_1_n_0\,
      D => p_0_in(0),
      Q => oS_left_adc_data(0),
      R => '0'
    );
\oS_left_adc_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \oS_left_adc_data[15]_i_1_n_0\,
      D => p_0_in(10),
      Q => oS_left_adc_data(10),
      R => '0'
    );
\oS_left_adc_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \oS_left_adc_data[15]_i_1_n_0\,
      D => p_0_in(11),
      Q => oS_left_adc_data(11),
      R => '0'
    );
\oS_left_adc_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \oS_left_adc_data[15]_i_1_n_0\,
      D => p_0_in(12),
      Q => oS_left_adc_data(12),
      R => '0'
    );
\oS_left_adc_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \oS_left_adc_data[15]_i_1_n_0\,
      D => p_0_in(13),
      Q => oS_left_adc_data(13),
      R => '0'
    );
\oS_left_adc_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \oS_left_adc_data[15]_i_1_n_0\,
      D => p_0_in(14),
      Q => oS_left_adc_data(14),
      R => '0'
    );
\oS_left_adc_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \oS_left_adc_data[15]_i_1_n_0\,
      D => p_0_in(15),
      Q => oS_left_adc_data(15),
      R => '0'
    );
\oS_left_adc_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \oS_left_adc_data[15]_i_1_n_0\,
      D => p_0_in(1),
      Q => oS_left_adc_data(1),
      R => '0'
    );
\oS_left_adc_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \oS_left_adc_data[15]_i_1_n_0\,
      D => p_0_in(2),
      Q => oS_left_adc_data(2),
      R => '0'
    );
\oS_left_adc_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \oS_left_adc_data[15]_i_1_n_0\,
      D => p_0_in(3),
      Q => oS_left_adc_data(3),
      R => '0'
    );
\oS_left_adc_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \oS_left_adc_data[15]_i_1_n_0\,
      D => p_0_in(4),
      Q => oS_left_adc_data(4),
      R => '0'
    );
\oS_left_adc_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \oS_left_adc_data[15]_i_1_n_0\,
      D => p_0_in(5),
      Q => oS_left_adc_data(5),
      R => '0'
    );
\oS_left_adc_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \oS_left_adc_data[15]_i_1_n_0\,
      D => p_0_in(6),
      Q => oS_left_adc_data(6),
      R => '0'
    );
\oS_left_adc_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \oS_left_adc_data[15]_i_1_n_0\,
      D => p_0_in(7),
      Q => oS_left_adc_data(7),
      R => '0'
    );
\oS_left_adc_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \oS_left_adc_data[15]_i_1_n_0\,
      D => p_0_in(8),
      Q => oS_left_adc_data(8),
      R => '0'
    );
\oS_left_adc_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \oS_left_adc_data[15]_i_1_n_0\,
      D => p_0_in(9),
      Q => oS_left_adc_data(9),
      R => '0'
    );
\oS_right_adc_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \oS_left_adc_data[15]_i_1_n_0\,
      D => \r_adcData_reg_n_0_[0]\,
      Q => oS_right_adc_data(0),
      R => '0'
    );
\oS_right_adc_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \oS_left_adc_data[15]_i_1_n_0\,
      D => \r_adcData_reg_n_0_[10]\,
      Q => oS_right_adc_data(10),
      R => '0'
    );
\oS_right_adc_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \oS_left_adc_data[15]_i_1_n_0\,
      D => \r_adcData_reg_n_0_[11]\,
      Q => oS_right_adc_data(11),
      R => '0'
    );
\oS_right_adc_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \oS_left_adc_data[15]_i_1_n_0\,
      D => \r_adcData_reg_n_0_[12]\,
      Q => oS_right_adc_data(12),
      R => '0'
    );
\oS_right_adc_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \oS_left_adc_data[15]_i_1_n_0\,
      D => \r_adcData_reg_n_0_[13]\,
      Q => oS_right_adc_data(13),
      R => '0'
    );
\oS_right_adc_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \oS_left_adc_data[15]_i_1_n_0\,
      D => \r_adcData_reg_n_0_[14]\,
      Q => oS_right_adc_data(14),
      R => '0'
    );
\oS_right_adc_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \oS_left_adc_data[15]_i_1_n_0\,
      D => \r_adcData_reg_n_0_[15]\,
      Q => oS_right_adc_data(15),
      R => '0'
    );
\oS_right_adc_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \oS_left_adc_data[15]_i_1_n_0\,
      D => \r_adcData_reg_n_0_[1]\,
      Q => oS_right_adc_data(1),
      R => '0'
    );
\oS_right_adc_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \oS_left_adc_data[15]_i_1_n_0\,
      D => \r_adcData_reg_n_0_[2]\,
      Q => oS_right_adc_data(2),
      R => '0'
    );
\oS_right_adc_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \oS_left_adc_data[15]_i_1_n_0\,
      D => \r_adcData_reg_n_0_[3]\,
      Q => oS_right_adc_data(3),
      R => '0'
    );
\oS_right_adc_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \oS_left_adc_data[15]_i_1_n_0\,
      D => \r_adcData_reg_n_0_[4]\,
      Q => oS_right_adc_data(4),
      R => '0'
    );
\oS_right_adc_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \oS_left_adc_data[15]_i_1_n_0\,
      D => \r_adcData_reg_n_0_[5]\,
      Q => oS_right_adc_data(5),
      R => '0'
    );
\oS_right_adc_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \oS_left_adc_data[15]_i_1_n_0\,
      D => \r_adcData_reg_n_0_[6]\,
      Q => oS_right_adc_data(6),
      R => '0'
    );
\oS_right_adc_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \oS_left_adc_data[15]_i_1_n_0\,
      D => \r_adcData_reg_n_0_[7]\,
      Q => oS_right_adc_data(7),
      R => '0'
    );
\oS_right_adc_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \oS_left_adc_data[15]_i_1_n_0\,
      D => \r_adcData_reg_n_0_[8]\,
      Q => oS_right_adc_data(8),
      R => '0'
    );
\oS_right_adc_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \oS_left_adc_data[15]_i_1_n_0\,
      D => \r_adcData_reg_n_0_[9]\,
      Q => oS_right_adc_data(9),
      R => '0'
    );
o_bclk_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE02FFFF"
    )
        port map (
      I0 => \^o_bclk_reg_0\,
      I1 => i_left_dac_valid,
      I2 => r_started,
      I3 => w_bclk,
      I4 => i_resetn,
      O => o_bclk_i_1_n_0
    );
o_bclk_reg: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => o_bclk_i_1_n_0,
      Q => \^o_bclk_reg_0\,
      R => '0'
    );
o_dacData_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EAAA2AAA"
    )
        port map (
      I0 => \^o_dacdata\,
      I1 => o_dacData_i_2_n_0,
      I2 => \r_dacData1__0\,
      I3 => r_started,
      I4 => o_dacData_0,
      I5 => o_left_adc_valid_i_1_n_0,
      O => o_dacData_i_1_n_0
    );
o_dacData_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFC0AFCFA0C0A0"
    )
        port map (
      I0 => \r_dacData_reg_n_0_[12]\,
      I1 => \r_dacData_reg_n_0_[14]\,
      I2 => \r_bitCounter_reg_n_0_[0]\,
      I3 => \r_bitCounter_reg_n_0_[1]\,
      I4 => \r_dacData_reg_n_0_[13]\,
      I5 => \r_dacData_reg_n_0_[15]\,
      O => o_dacData_i_10_n_0
    );
o_dacData_i_11: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => \r_bitCounter_reg_n_0_[0]\,
      I1 => \r_bitCounter_reg_n_0_[1]\,
      I2 => \r_bitCounter_reg_n_0_[2]\,
      O => o_dacData_i_11_n_0
    );
o_dacData_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE01"
    )
        port map (
      I0 => \r_bitCounter_reg_n_0_[2]\,
      I1 => \r_bitCounter_reg_n_0_[1]\,
      I2 => \r_bitCounter_reg_n_0_[0]\,
      I3 => \r_bitCounter_reg_n_0_[3]\,
      O => o_dacData_i_12_n_0
    );
o_dacData_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFC0AFCFA0C0A0"
    )
        port map (
      I0 => \r_dacData_reg_n_0_[0]\,
      I1 => \r_dacData_reg_n_0_[2]\,
      I2 => \r_bitCounter_reg_n_0_[0]\,
      I3 => \r_bitCounter_reg_n_0_[1]\,
      I4 => \r_dacData_reg_n_0_[1]\,
      I5 => \r_dacData_reg_n_0_[3]\,
      O => o_dacData_i_13_n_0
    );
o_dacData_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFC0AFCFA0C0A0"
    )
        port map (
      I0 => \r_dacData_reg_n_0_[8]\,
      I1 => \r_dacData_reg_n_0_[10]\,
      I2 => \r_bitCounter_reg_n_0_[0]\,
      I3 => \r_bitCounter_reg_n_0_[1]\,
      I4 => \r_dacData_reg_n_0_[9]\,
      I5 => \r_dacData_reg_n_0_[11]\,
      O => o_dacData_i_14_n_0
    );
o_dacData_i_15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFC0AFCFA0C0A0"
    )
        port map (
      I0 => \r_dacData_reg_n_0_[20]\,
      I1 => \r_dacData_reg_n_0_[22]\,
      I2 => \r_bitCounter_reg_n_0_[0]\,
      I3 => \r_bitCounter_reg_n_0_[1]\,
      I4 => \r_dacData_reg_n_0_[21]\,
      I5 => \r_dacData_reg_n_0_[23]\,
      O => o_dacData_i_15_n_0
    );
o_dacData_i_16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFC0AFCFA0C0A0"
    )
        port map (
      I0 => \r_dacData_reg_n_0_[28]\,
      I1 => \r_dacData_reg_n_0_[30]\,
      I2 => \r_bitCounter_reg_n_0_[0]\,
      I3 => \r_bitCounter_reg_n_0_[1]\,
      I4 => \r_dacData_reg_n_0_[29]\,
      I5 => \r_dacData_reg_n_0_[31]\,
      O => o_dacData_i_16_n_0
    );
o_dacData_i_17: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFC0AFCFA0C0A0"
    )
        port map (
      I0 => \r_dacData_reg_n_0_[16]\,
      I1 => \r_dacData_reg_n_0_[18]\,
      I2 => \r_bitCounter_reg_n_0_[0]\,
      I3 => \r_bitCounter_reg_n_0_[1]\,
      I4 => \r_dacData_reg_n_0_[17]\,
      I5 => \r_dacData_reg_n_0_[19]\,
      O => o_dacData_i_17_n_0
    );
o_dacData_i_18: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFC0AFCFA0C0A0"
    )
        port map (
      I0 => \r_dacData_reg_n_0_[24]\,
      I1 => \r_dacData_reg_n_0_[26]\,
      I2 => \r_bitCounter_reg_n_0_[0]\,
      I3 => \r_bitCounter_reg_n_0_[1]\,
      I4 => \r_dacData_reg_n_0_[25]\,
      I5 => \r_dacData_reg_n_0_[27]\,
      O => o_dacData_i_18_n_0
    );
o_dacData_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEEE"
    )
        port map (
      I0 => \r_bitCounter_reg_n_0_[4]\,
      I1 => \r_bitCounter_reg_n_0_[5]\,
      I2 => i_right_dac_valid,
      I3 => i_left_dac_valid,
      I4 => o_lrclk_i_3_n_0,
      O => o_dacData_i_2_n_0
    );
o_dacData_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^o_bclk_reg_0\,
      I1 => w_bclk,
      O => \r_dacData1__0\
    );
o_dacData_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE400E4"
    )
        port map (
      I0 => o_dacData_i_5_n_0,
      I1 => o_dacData_i_6_n_0,
      I2 => o_dacData_i_7_n_0,
      I3 => o_dacData_i_8_n_0,
      I4 => D(31),
      O => o_dacData_0
    );
o_dacData_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0001"
    )
        port map (
      I0 => \r_bitCounter_reg_n_0_[3]\,
      I1 => \r_bitCounter_reg_n_0_[0]\,
      I2 => \r_bitCounter_reg_n_0_[1]\,
      I3 => \r_bitCounter_reg_n_0_[2]\,
      I4 => \r_bitCounter_reg_n_0_[4]\,
      O => o_dacData_i_5_n_0
    );
o_dacData_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => o_dacData_i_9_n_0,
      I1 => o_dacData_i_10_n_0,
      I2 => o_dacData_i_11_n_0,
      I3 => o_dacData_i_12_n_0,
      I4 => o_dacData_i_13_n_0,
      I5 => o_dacData_i_14_n_0,
      O => o_dacData_i_6_n_0
    );
o_dacData_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => o_dacData_i_15_n_0,
      I1 => o_dacData_i_16_n_0,
      I2 => o_dacData_i_11_n_0,
      I3 => o_dacData_i_12_n_0,
      I4 => o_dacData_i_17_n_0,
      I5 => o_dacData_i_18_n_0,
      O => o_dacData_i_7_n_0
    );
o_dacData_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \r_bitCounter_reg_n_0_[4]\,
      I1 => \r_bitCounter_reg_n_0_[5]\,
      I2 => \r_bitCounter_reg_n_0_[2]\,
      I3 => \r_bitCounter_reg_n_0_[3]\,
      I4 => \r_bitCounter_reg_n_0_[0]\,
      I5 => \r_bitCounter_reg_n_0_[1]\,
      O => o_dacData_i_8_n_0
    );
o_dacData_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFC0AFCFA0C0A0"
    )
        port map (
      I0 => \r_dacData_reg_n_0_[4]\,
      I1 => \r_dacData_reg_n_0_[6]\,
      I2 => \r_bitCounter_reg_n_0_[0]\,
      I3 => \r_bitCounter_reg_n_0_[1]\,
      I4 => \r_dacData_reg_n_0_[5]\,
      I5 => \r_dacData_reg_n_0_[7]\,
      O => o_dacData_i_9_n_0
    );
o_dacData_reg: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => o_dacData_i_1_n_0,
      Q => \^o_dacdata\,
      R => '0'
    );
o_error_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AA8AAA80"
    )
        port map (
      I0 => i_resetn,
      I1 => o_error_i_2_n_0,
      I2 => o_error_i_3_n_0,
      I3 => o_error6_out,
      I4 => \^o_error\,
      I5 => \r_dacData[31]_i_1_n_0\,
      O => o_error_i_1_n_0
    );
o_error_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => i_left_dac_valid,
      I1 => i_right_dac_valid,
      O => o_error_i_2_n_0
    );
o_error_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => r_started,
      I1 => w_bclk,
      I2 => \^o_bclk_reg_0\,
      O => o_error_i_3_n_0
    );
o_error_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001000000"
    )
        port map (
      I0 => \r_bitCounter_reg_n_0_[4]\,
      I1 => \r_bitCounter_reg_n_0_[5]\,
      I2 => w_bclk,
      I3 => \^o_bclk_reg_0\,
      I4 => r_started,
      I5 => o_lrclk_i_3_n_0,
      O => o_error6_out
    );
o_error_reg: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => o_error_i_1_n_0,
      Q => \^o_error\,
      R => '0'
    );
o_left_adc_valid_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => r_started,
      I1 => i_left_dac_valid,
      I2 => i_resetn,
      O => o_left_adc_valid_i_1_n_0
    );
o_left_adc_valid_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => o_left_adc_valid_i_3_n_0,
      I1 => \r_bitCounter_reg_n_0_[0]\,
      I2 => \r_bitCounter_reg_n_0_[2]\,
      I3 => \r_bitCounter_reg_n_0_[1]\,
      I4 => \r_bitCounter_reg_n_0_[5]\,
      O => o_left_adc_valid_i_2_n_0
    );
o_left_adc_valid_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => \r_bitCounter_reg_n_0_[4]\,
      I1 => \r_bitCounter_reg_n_0_[3]\,
      I2 => w_bclk,
      I3 => \^o_bclk_reg_0\,
      O => o_left_adc_valid_i_3_n_0
    );
o_left_adc_valid_reg: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_started,
      D => o_left_adc_valid_i_2_n_0,
      Q => o_left_adc_valid,
      R => o_left_adc_valid_i_1_n_0
    );
o_lrclk_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"222E22E200000000"
    )
        port map (
      I0 => \^o_lrclk\,
      I1 => o_lrclk_i_2_n_0,
      I2 => o_lrclk_i_3_n_0,
      I3 => \r_bitCounter_reg_n_0_[5]\,
      I4 => \r_bitCounter_reg_n_0_[4]\,
      I5 => i_resetn,
      O => o_lrclk_i_1_n_0
    );
o_lrclk_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => r_started,
      I1 => i_left_dac_valid,
      O => o_lrclk_i_2_n_0
    );
o_lrclk_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \r_bitCounter_reg_n_0_[3]\,
      I1 => \r_bitCounter_reg_n_0_[2]\,
      I2 => \r_bitCounter_reg_n_0_[0]\,
      I3 => \r_bitCounter_reg_n_0_[1]\,
      O => o_lrclk_i_3_n_0
    );
o_lrclk_reg: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => o_lrclk_i_1_n_0,
      Q => \^o_lrclk\,
      R => '0'
    );
o_mclk_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE020000"
    )
        port map (
      I0 => \^o_mclk\,
      I1 => i_left_dac_valid,
      I2 => r_started,
      I3 => w_mclk,
      I4 => i_resetn,
      O => o_mclk_i_1_n_0
    );
o_mclk_reg: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => o_mclk_i_1_n_0,
      Q => \^o_mclk\,
      R => '0'
    );
o_right_adc_valid_reg: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_started,
      D => o_left_adc_valid_i_2_n_0,
      Q => o_right_adc_valid,
      R => o_left_adc_valid_i_1_n_0
    );
\r_adcData[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => r_started,
      I1 => i_resetn,
      I2 => w_bclk,
      I3 => \^o_bclk_reg_0\,
      O => \r_adcData[31]_i_1_n_0\
    );
\r_adcData_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_adcData[31]_i_1_n_0\,
      D => i_adcData,
      Q => \r_adcData_reg_n_0_[0]\,
      R => '0'
    );
\r_adcData_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_adcData[31]_i_1_n_0\,
      D => \r_adcData_reg_n_0_[9]\,
      Q => \r_adcData_reg_n_0_[10]\,
      R => '0'
    );
\r_adcData_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_adcData[31]_i_1_n_0\,
      D => \r_adcData_reg_n_0_[10]\,
      Q => \r_adcData_reg_n_0_[11]\,
      R => '0'
    );
\r_adcData_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_adcData[31]_i_1_n_0\,
      D => \r_adcData_reg_n_0_[11]\,
      Q => \r_adcData_reg_n_0_[12]\,
      R => '0'
    );
\r_adcData_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_adcData[31]_i_1_n_0\,
      D => \r_adcData_reg_n_0_[12]\,
      Q => \r_adcData_reg_n_0_[13]\,
      R => '0'
    );
\r_adcData_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_adcData[31]_i_1_n_0\,
      D => \r_adcData_reg_n_0_[13]\,
      Q => \r_adcData_reg_n_0_[14]\,
      R => '0'
    );
\r_adcData_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_adcData[31]_i_1_n_0\,
      D => \r_adcData_reg_n_0_[14]\,
      Q => \r_adcData_reg_n_0_[15]\,
      R => '0'
    );
\r_adcData_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_adcData[31]_i_1_n_0\,
      D => \r_adcData_reg_n_0_[15]\,
      Q => p_0_in(0),
      R => '0'
    );
\r_adcData_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_adcData[31]_i_1_n_0\,
      D => p_0_in(0),
      Q => p_0_in(1),
      R => '0'
    );
\r_adcData_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_adcData[31]_i_1_n_0\,
      D => p_0_in(1),
      Q => p_0_in(2),
      R => '0'
    );
\r_adcData_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_adcData[31]_i_1_n_0\,
      D => p_0_in(2),
      Q => p_0_in(3),
      R => '0'
    );
\r_adcData_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_adcData[31]_i_1_n_0\,
      D => \r_adcData_reg_n_0_[0]\,
      Q => \r_adcData_reg_n_0_[1]\,
      R => '0'
    );
\r_adcData_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_adcData[31]_i_1_n_0\,
      D => p_0_in(3),
      Q => p_0_in(4),
      R => '0'
    );
\r_adcData_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_adcData[31]_i_1_n_0\,
      D => p_0_in(4),
      Q => p_0_in(5),
      R => '0'
    );
\r_adcData_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_adcData[31]_i_1_n_0\,
      D => p_0_in(5),
      Q => p_0_in(6),
      R => '0'
    );
\r_adcData_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_adcData[31]_i_1_n_0\,
      D => p_0_in(6),
      Q => p_0_in(7),
      R => '0'
    );
\r_adcData_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_adcData[31]_i_1_n_0\,
      D => p_0_in(7),
      Q => p_0_in(8),
      R => '0'
    );
\r_adcData_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_adcData[31]_i_1_n_0\,
      D => p_0_in(8),
      Q => p_0_in(9),
      R => '0'
    );
\r_adcData_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_adcData[31]_i_1_n_0\,
      D => p_0_in(9),
      Q => p_0_in(10),
      R => '0'
    );
\r_adcData_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_adcData[31]_i_1_n_0\,
      D => p_0_in(10),
      Q => p_0_in(11),
      R => '0'
    );
\r_adcData_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_adcData[31]_i_1_n_0\,
      D => p_0_in(11),
      Q => p_0_in(12),
      R => '0'
    );
\r_adcData_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_adcData[31]_i_1_n_0\,
      D => p_0_in(12),
      Q => p_0_in(13),
      R => '0'
    );
\r_adcData_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_adcData[31]_i_1_n_0\,
      D => \r_adcData_reg_n_0_[1]\,
      Q => \r_adcData_reg_n_0_[2]\,
      R => '0'
    );
\r_adcData_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_adcData[31]_i_1_n_0\,
      D => p_0_in(13),
      Q => p_0_in(14),
      R => '0'
    );
\r_adcData_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_adcData[31]_i_1_n_0\,
      D => p_0_in(14),
      Q => p_0_in(15),
      R => '0'
    );
\r_adcData_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_adcData[31]_i_1_n_0\,
      D => \r_adcData_reg_n_0_[2]\,
      Q => \r_adcData_reg_n_0_[3]\,
      R => '0'
    );
\r_adcData_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_adcData[31]_i_1_n_0\,
      D => \r_adcData_reg_n_0_[3]\,
      Q => \r_adcData_reg_n_0_[4]\,
      R => '0'
    );
\r_adcData_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_adcData[31]_i_1_n_0\,
      D => \r_adcData_reg_n_0_[4]\,
      Q => \r_adcData_reg_n_0_[5]\,
      R => '0'
    );
\r_adcData_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_adcData[31]_i_1_n_0\,
      D => \r_adcData_reg_n_0_[5]\,
      Q => \r_adcData_reg_n_0_[6]\,
      R => '0'
    );
\r_adcData_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_adcData[31]_i_1_n_0\,
      D => \r_adcData_reg_n_0_[6]\,
      Q => \r_adcData_reg_n_0_[7]\,
      R => '0'
    );
\r_adcData_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_adcData[31]_i_1_n_0\,
      D => \r_adcData_reg_n_0_[7]\,
      Q => \r_adcData_reg_n_0_[8]\,
      R => '0'
    );
\r_adcData_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_adcData[31]_i_1_n_0\,
      D => \r_adcData_reg_n_0_[8]\,
      Q => \r_adcData_reg_n_0_[9]\,
      R => '0'
    );
\r_bitCounter[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F77"
    )
        port map (
      I0 => \r_bitCounter_reg_n_0_[0]\,
      I1 => w_lrclk012_in,
      I2 => r_started,
      I3 => i_left_dac_valid,
      O => \r_bitCounter[0]_i_1_n_0\
    );
\r_bitCounter[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D7FFD7D7"
    )
        port map (
      I0 => w_lrclk012_in,
      I1 => \r_bitCounter_reg_n_0_[0]\,
      I2 => \r_bitCounter_reg_n_0_[1]\,
      I3 => r_started,
      I4 => i_left_dac_valid,
      O => \r_bitCounter[1]_i_1_n_0\
    );
\r_bitCounter[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD57FFFFFD57FD57"
    )
        port map (
      I0 => w_lrclk012_in,
      I1 => \r_bitCounter_reg_n_0_[0]\,
      I2 => \r_bitCounter_reg_n_0_[1]\,
      I3 => \r_bitCounter_reg_n_0_[2]\,
      I4 => r_started,
      I5 => i_left_dac_valid,
      O => \r_bitCounter[2]_i_1_n_0\
    );
\r_bitCounter[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFD5557"
    )
        port map (
      I0 => w_lrclk012_in,
      I1 => \r_bitCounter_reg_n_0_[2]\,
      I2 => \r_bitCounter_reg_n_0_[1]\,
      I3 => \r_bitCounter_reg_n_0_[0]\,
      I4 => \r_bitCounter_reg_n_0_[3]\,
      I5 => \r_bitCounter[4]_i_4_n_0\,
      O => \r_bitCounter[3]_i_1_n_0\
    );
\r_bitCounter[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \r_bitCounter_reg_n_0_[5]\,
      I1 => \r_bitCounter_reg_n_0_[4]\,
      I2 => \r_bitCounter_reg_n_0_[1]\,
      I3 => \r_bitCounter_reg_n_0_[0]\,
      I4 => \r_bitCounter_reg_n_0_[2]\,
      I5 => \r_bitCounter_reg_n_0_[3]\,
      O => w_lrclk012_in
    );
\r_bitCounter[4]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_resetn,
      O => \r_bitCounter[4]_i_1_n_0\
    );
\r_bitCounter[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => \^o_bclk_reg_0\,
      I1 => w_bclk,
      I2 => r_started,
      I3 => i_left_dac_valid,
      O => \r_bitCounter[4]_i_2_n_0\
    );
\r_bitCounter[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF0F0F0E1"
    )
        port map (
      I0 => \r_bitCounter_reg_n_0_[1]\,
      I1 => \r_bitCounter_reg_n_0_[0]\,
      I2 => \r_bitCounter_reg_n_0_[4]\,
      I3 => \r_bitCounter_reg_n_0_[2]\,
      I4 => \r_bitCounter_reg_n_0_[3]\,
      I5 => \r_bitCounter[4]_i_4_n_0\,
      O => \r_bitCounter[4]_i_3_n_0\
    );
\r_bitCounter[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_left_dac_valid,
      I1 => r_started,
      O => \r_bitCounter[4]_i_4_n_0\
    );
\r_bitCounter[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000A2620000"
    )
        port map (
      I0 => \r_bitCounter_reg_n_0_[5]\,
      I1 => o_error_i_3_n_0,
      I2 => w_lrclk012_in,
      I3 => \r_bitCounter[5]_i_2_n_0\,
      I4 => i_resetn,
      I5 => \r_bitCounter[4]_i_4_n_0\,
      O => \r_bitCounter[5]_i_1_n_0\
    );
\r_bitCounter[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \r_bitCounter_reg_n_0_[3]\,
      I1 => \r_bitCounter_reg_n_0_[0]\,
      I2 => \r_bitCounter_reg_n_0_[1]\,
      I3 => \r_bitCounter_reg_n_0_[2]\,
      I4 => \r_bitCounter_reg_n_0_[4]\,
      O => \r_bitCounter[5]_i_2_n_0\
    );
\r_bitCounter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_bitCounter[4]_i_2_n_0\,
      D => \r_bitCounter[0]_i_1_n_0\,
      Q => \r_bitCounter_reg_n_0_[0]\,
      R => \r_bitCounter[4]_i_1_n_0\
    );
\r_bitCounter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_bitCounter[4]_i_2_n_0\,
      D => \r_bitCounter[1]_i_1_n_0\,
      Q => \r_bitCounter_reg_n_0_[1]\,
      R => \r_bitCounter[4]_i_1_n_0\
    );
\r_bitCounter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_bitCounter[4]_i_2_n_0\,
      D => \r_bitCounter[2]_i_1_n_0\,
      Q => \r_bitCounter_reg_n_0_[2]\,
      R => \r_bitCounter[4]_i_1_n_0\
    );
\r_bitCounter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_bitCounter[4]_i_2_n_0\,
      D => \r_bitCounter[3]_i_1_n_0\,
      Q => \r_bitCounter_reg_n_0_[3]\,
      R => \r_bitCounter[4]_i_1_n_0\
    );
\r_bitCounter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_bitCounter[4]_i_2_n_0\,
      D => \r_bitCounter[4]_i_3_n_0\,
      Q => \r_bitCounter_reg_n_0_[4]\,
      R => \r_bitCounter[4]_i_1_n_0\
    );
\r_bitCounter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => '1',
      D => \r_bitCounter[5]_i_1_n_0\,
      Q => \r_bitCounter_reg_n_0_[5]\,
      R => '0'
    );
\r_dacData[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040FFFF00000000"
    )
        port map (
      I0 => o_lrclk_i_3_n_0,
      I1 => \r_dacData1__0\,
      I2 => i_right_dac_valid,
      I3 => \r_dacData[31]_i_2_n_0\,
      I4 => r_started,
      I5 => i_left_dac_valid,
      O => \r_dacData[31]_i_1_n_0\
    );
\r_dacData[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \r_bitCounter_reg_n_0_[4]\,
      I1 => \r_bitCounter_reg_n_0_[5]\,
      O => \r_dacData[31]_i_2_n_0\
    );
\r_dacData_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_dacData[31]_i_1_n_0\,
      D => D(0),
      Q => \r_dacData_reg_n_0_[0]\,
      R => \r_bitCounter[4]_i_1_n_0\
    );
\r_dacData_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_dacData[31]_i_1_n_0\,
      D => D(10),
      Q => \r_dacData_reg_n_0_[10]\,
      R => \r_bitCounter[4]_i_1_n_0\
    );
\r_dacData_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_dacData[31]_i_1_n_0\,
      D => D(11),
      Q => \r_dacData_reg_n_0_[11]\,
      R => \r_bitCounter[4]_i_1_n_0\
    );
\r_dacData_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_dacData[31]_i_1_n_0\,
      D => D(12),
      Q => \r_dacData_reg_n_0_[12]\,
      R => \r_bitCounter[4]_i_1_n_0\
    );
\r_dacData_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_dacData[31]_i_1_n_0\,
      D => D(13),
      Q => \r_dacData_reg_n_0_[13]\,
      R => \r_bitCounter[4]_i_1_n_0\
    );
\r_dacData_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_dacData[31]_i_1_n_0\,
      D => D(14),
      Q => \r_dacData_reg_n_0_[14]\,
      R => \r_bitCounter[4]_i_1_n_0\
    );
\r_dacData_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_dacData[31]_i_1_n_0\,
      D => D(15),
      Q => \r_dacData_reg_n_0_[15]\,
      R => \r_bitCounter[4]_i_1_n_0\
    );
\r_dacData_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_dacData[31]_i_1_n_0\,
      D => D(16),
      Q => \r_dacData_reg_n_0_[16]\,
      R => \r_bitCounter[4]_i_1_n_0\
    );
\r_dacData_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_dacData[31]_i_1_n_0\,
      D => D(17),
      Q => \r_dacData_reg_n_0_[17]\,
      R => \r_bitCounter[4]_i_1_n_0\
    );
\r_dacData_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_dacData[31]_i_1_n_0\,
      D => D(18),
      Q => \r_dacData_reg_n_0_[18]\,
      R => \r_bitCounter[4]_i_1_n_0\
    );
\r_dacData_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_dacData[31]_i_1_n_0\,
      D => D(19),
      Q => \r_dacData_reg_n_0_[19]\,
      R => \r_bitCounter[4]_i_1_n_0\
    );
\r_dacData_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_dacData[31]_i_1_n_0\,
      D => D(1),
      Q => \r_dacData_reg_n_0_[1]\,
      R => \r_bitCounter[4]_i_1_n_0\
    );
\r_dacData_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_dacData[31]_i_1_n_0\,
      D => D(20),
      Q => \r_dacData_reg_n_0_[20]\,
      R => \r_bitCounter[4]_i_1_n_0\
    );
\r_dacData_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_dacData[31]_i_1_n_0\,
      D => D(21),
      Q => \r_dacData_reg_n_0_[21]\,
      R => \r_bitCounter[4]_i_1_n_0\
    );
\r_dacData_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_dacData[31]_i_1_n_0\,
      D => D(22),
      Q => \r_dacData_reg_n_0_[22]\,
      R => \r_bitCounter[4]_i_1_n_0\
    );
\r_dacData_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_dacData[31]_i_1_n_0\,
      D => D(23),
      Q => \r_dacData_reg_n_0_[23]\,
      R => \r_bitCounter[4]_i_1_n_0\
    );
\r_dacData_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_dacData[31]_i_1_n_0\,
      D => D(24),
      Q => \r_dacData_reg_n_0_[24]\,
      R => \r_bitCounter[4]_i_1_n_0\
    );
\r_dacData_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_dacData[31]_i_1_n_0\,
      D => D(25),
      Q => \r_dacData_reg_n_0_[25]\,
      R => \r_bitCounter[4]_i_1_n_0\
    );
\r_dacData_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_dacData[31]_i_1_n_0\,
      D => D(26),
      Q => \r_dacData_reg_n_0_[26]\,
      R => \r_bitCounter[4]_i_1_n_0\
    );
\r_dacData_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_dacData[31]_i_1_n_0\,
      D => D(27),
      Q => \r_dacData_reg_n_0_[27]\,
      R => \r_bitCounter[4]_i_1_n_0\
    );
\r_dacData_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_dacData[31]_i_1_n_0\,
      D => D(28),
      Q => \r_dacData_reg_n_0_[28]\,
      R => \r_bitCounter[4]_i_1_n_0\
    );
\r_dacData_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_dacData[31]_i_1_n_0\,
      D => D(29),
      Q => \r_dacData_reg_n_0_[29]\,
      R => \r_bitCounter[4]_i_1_n_0\
    );
\r_dacData_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_dacData[31]_i_1_n_0\,
      D => D(2),
      Q => \r_dacData_reg_n_0_[2]\,
      R => \r_bitCounter[4]_i_1_n_0\
    );
\r_dacData_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_dacData[31]_i_1_n_0\,
      D => D(30),
      Q => \r_dacData_reg_n_0_[30]\,
      R => \r_bitCounter[4]_i_1_n_0\
    );
\r_dacData_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_dacData[31]_i_1_n_0\,
      D => D(31),
      Q => \r_dacData_reg_n_0_[31]\,
      R => \r_bitCounter[4]_i_1_n_0\
    );
\r_dacData_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_dacData[31]_i_1_n_0\,
      D => D(3),
      Q => \r_dacData_reg_n_0_[3]\,
      R => \r_bitCounter[4]_i_1_n_0\
    );
\r_dacData_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_dacData[31]_i_1_n_0\,
      D => D(4),
      Q => \r_dacData_reg_n_0_[4]\,
      R => \r_bitCounter[4]_i_1_n_0\
    );
\r_dacData_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_dacData[31]_i_1_n_0\,
      D => D(5),
      Q => \r_dacData_reg_n_0_[5]\,
      R => \r_bitCounter[4]_i_1_n_0\
    );
\r_dacData_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_dacData[31]_i_1_n_0\,
      D => D(6),
      Q => \r_dacData_reg_n_0_[6]\,
      R => \r_bitCounter[4]_i_1_n_0\
    );
\r_dacData_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_dacData[31]_i_1_n_0\,
      D => D(7),
      Q => \r_dacData_reg_n_0_[7]\,
      R => \r_bitCounter[4]_i_1_n_0\
    );
\r_dacData_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_dacData[31]_i_1_n_0\,
      D => D(8),
      Q => \r_dacData_reg_n_0_[8]\,
      R => \r_bitCounter[4]_i_1_n_0\
    );
\r_dacData_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \r_dacData[31]_i_1_n_0\,
      D => D(9),
      Q => \r_dacData_reg_n_0_[9]\,
      R => \r_bitCounter[4]_i_1_n_0\
    );
\r_dividerCounter[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5E00"
    )
        port map (
      I0 => \r_dividerCounter_reg_n_0_[0]\,
      I1 => i_left_dac_valid,
      I2 => r_started,
      I3 => i_resetn,
      O => \r_dividerCounter[0]_i_1_n_0\
    );
\r_dividerCounter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \r_dividerCounter_reg_n_0_[0]\,
      I1 => \r_dividerCounter_reg_n_0_[1]\,
      O => p_1_in(1)
    );
\r_dividerCounter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \r_dividerCounter_reg_n_0_[0]\,
      I1 => \r_dividerCounter_reg_n_0_[1]\,
      I2 => w_mclk,
      O => p_1_in(2)
    );
\r_dividerCounter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \r_dividerCounter_reg_n_0_[1]\,
      I1 => \r_dividerCounter_reg_n_0_[0]\,
      I2 => w_mclk,
      I3 => \r_dividerCounter_reg_n_0_[3]\,
      O => p_1_in(3)
    );
\r_dividerCounter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => w_mclk,
      I1 => \r_dividerCounter_reg_n_0_[0]\,
      I2 => \r_dividerCounter_reg_n_0_[1]\,
      I3 => \r_dividerCounter_reg_n_0_[3]\,
      I4 => \r_dividerCounter_reg_n_0_[4]\,
      O => p_1_in(4)
    );
\r_dividerCounter[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \r_dividerCounter_reg_n_0_[3]\,
      I1 => \r_dividerCounter_reg_n_0_[1]\,
      I2 => \r_dividerCounter_reg_n_0_[0]\,
      I3 => w_mclk,
      I4 => \r_dividerCounter_reg_n_0_[4]\,
      I5 => w_bclk,
      O => p_1_in(5)
    );
\r_dividerCounter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => '1',
      D => \r_dividerCounter[0]_i_1_n_0\,
      Q => \r_dividerCounter_reg_n_0_[0]\,
      R => '0'
    );
\r_dividerCounter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => r_started,
      D => p_1_in(1),
      Q => \r_dividerCounter_reg_n_0_[1]\,
      R => o_left_adc_valid_i_1_n_0
    );
\r_dividerCounter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => r_started,
      D => p_1_in(2),
      Q => w_mclk,
      R => o_left_adc_valid_i_1_n_0
    );
\r_dividerCounter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => r_started,
      D => p_1_in(3),
      Q => \r_dividerCounter_reg_n_0_[3]\,
      R => o_left_adc_valid_i_1_n_0
    );
\r_dividerCounter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => r_started,
      D => p_1_in(4),
      Q => \r_dividerCounter_reg_n_0_[4]\,
      R => o_left_adc_valid_i_1_n_0
    );
\r_dividerCounter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => r_started,
      D => p_1_in(5),
      Q => w_bclk,
      R => o_left_adc_valid_i_1_n_0
    );
r_started_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => r_started,
      I1 => i_left_dac_valid,
      I2 => i_resetn,
      O => r_started_i_1_n_0
    );
r_started_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => '1',
      D => r_started_i_1_n_0,
      Q => r_started,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zsys_adau1361_handler_0_1 is
  port (
    iS_left_dac_data : in STD_LOGIC_VECTOR ( 15 downto 0 );
    i_left_dac_valid : in STD_LOGIC;
    iS_right_dac_data : in STD_LOGIC_VECTOR ( 15 downto 0 );
    i_right_dac_valid : in STD_LOGIC;
    oS_left_adc_data : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_left_adc_valid : out STD_LOGIC;
    oS_right_adc_data : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_right_adc_valid : out STD_LOGIC;
    i_clk : in STD_LOGIC;
    i_resetn : in STD_LOGIC;
    o_mclk : out STD_LOGIC;
    o_bclk : out STD_LOGIC;
    o_lrclk : out STD_LOGIC;
    i_adcData : in STD_LOGIC;
    o_dacData : out STD_LOGIC;
    o_error : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of zsys_adau1361_handler_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of zsys_adau1361_handler_0_1 : entity is "zsys_adau1361_handler_0_1,adau1361_handler,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of zsys_adau1361_handler_0_1 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of zsys_adau1361_handler_0_1 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of zsys_adau1361_handler_0_1 : entity is "adau1361_handler,Vivado 2019.2";
end zsys_adau1361_handler_0_1;

architecture STRUCTURE of zsys_adau1361_handler_0_1 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of i_clk : signal is "xilinx.com:signal:clock:1.0 i_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of i_clk : signal is "XIL_INTERFACENAME i_clk, ASSOCIATED_RESET i_resetn, ASSOCIATED_BUSIF S_AXIS_LEFT_DAC:S_AXIS_RIGHT_DAC:M_AXIS_LEFT_ADC:M_AXIS_RIGHT_ADC, FREQ_HZ 80000000, PHASE 0.000, CLK_DOMAIN zsys_adc_clk_n, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of i_left_dac_valid : signal is "xilinx.com:interface:axis:1.0 S_AXIS_LEFT_DAC TVALID";
  attribute X_INTERFACE_PARAMETER of i_left_dac_valid : signal is "XIL_INTERFACENAME S_AXIS_LEFT_DAC, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 80000000, PHASE 0.000, CLK_DOMAIN zsys_adc_clk_n, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of i_resetn : signal is "xilinx.com:signal:reset:1.0 i_resetn RST";
  attribute X_INTERFACE_PARAMETER of i_resetn : signal is "XIL_INTERFACENAME i_resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of i_right_dac_valid : signal is "xilinx.com:interface:axis:1.0 S_AXIS_RIGHT_DAC TVALID";
  attribute X_INTERFACE_PARAMETER of i_right_dac_valid : signal is "XIL_INTERFACENAME S_AXIS_RIGHT_DAC, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 80000000, PHASE 0.000, CLK_DOMAIN zsys_adc_clk_n, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of o_left_adc_valid : signal is "xilinx.com:interface:axis:1.0 M_AXIS_LEFT_ADC TVALID";
  attribute X_INTERFACE_PARAMETER of o_left_adc_valid : signal is "XIL_INTERFACENAME M_AXIS_LEFT_ADC, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 80000000, PHASE 0.000, CLK_DOMAIN zsys_adc_clk_n, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of o_right_adc_valid : signal is "xilinx.com:interface:axis:1.0 M_AXIS_RIGHT_ADC TVALID";
  attribute X_INTERFACE_PARAMETER of o_right_adc_valid : signal is "XIL_INTERFACENAME M_AXIS_RIGHT_ADC, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 80000000, PHASE 0.000, CLK_DOMAIN zsys_adc_clk_n, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of iS_left_dac_data : signal is "xilinx.com:interface:axis:1.0 S_AXIS_LEFT_DAC TDATA";
  attribute X_INTERFACE_INFO of iS_right_dac_data : signal is "xilinx.com:interface:axis:1.0 S_AXIS_RIGHT_DAC TDATA";
  attribute X_INTERFACE_INFO of oS_left_adc_data : signal is "xilinx.com:interface:axis:1.0 M_AXIS_LEFT_ADC TDATA";
  attribute X_INTERFACE_INFO of oS_right_adc_data : signal is "xilinx.com:interface:axis:1.0 M_AXIS_RIGHT_ADC TDATA";
begin
inst: entity work.zsys_adau1361_handler_0_1_adau1361_handler
     port map (
      D(31 downto 16) => iS_left_dac_data(15 downto 0),
      D(15 downto 0) => iS_right_dac_data(15 downto 0),
      i_adcData => i_adcData,
      i_clk => i_clk,
      i_left_dac_valid => i_left_dac_valid,
      i_resetn => i_resetn,
      i_right_dac_valid => i_right_dac_valid,
      oS_left_adc_data(15 downto 0) => oS_left_adc_data(15 downto 0),
      oS_right_adc_data(15 downto 0) => oS_right_adc_data(15 downto 0),
      o_bclk_reg_0 => o_bclk,
      o_dacData => o_dacData,
      o_error => o_error,
      o_left_adc_valid => o_left_adc_valid,
      o_lrclk => o_lrclk,
      o_mclk => o_mclk,
      o_right_adc_valid => o_right_adc_valid
    );
end STRUCTURE;
