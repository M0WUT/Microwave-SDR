-- (c) Copyright 1995-2020 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: trenz.biz:user:SC0720:1.0
-- IP Revision: 9

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY zsys_SC0720_0_0 IS
  PORT (
    ext_sda_i : IN STD_LOGIC;
    ext_sda_o : OUT STD_LOGIC;
    ext_sda_t : OUT STD_LOGIC;
    ext_scl_i : IN STD_LOGIC;
    ext_scl_o : OUT STD_LOGIC;
    ext_scl_t : OUT STD_LOGIC;
    PHY_LED0 : OUT STD_LOGIC;
    PHY_LED1 : OUT STD_LOGIC;
    PHY_LED2 : OUT STD_LOGIC;
    PL_pin_K16 : IN STD_LOGIC;
    PL_pin_K19 : IN STD_LOGIC;
    PL_pin_L16 : OUT STD_LOGIC;
    PL_pin_M15 : IN STD_LOGIC;
    PL_pin_N15 : IN STD_LOGIC;
    PL_pin_P16 : IN STD_LOGIC;
    PL_pin_P22 : IN STD_LOGIC;
    PL_pin_K20 : OUT STD_LOGIC;
    PL_pin_N22 : OUT STD_LOGIC;
    sda_i : OUT STD_LOGIC;
    sda_o : IN STD_LOGIC;
    sda_t : IN STD_LOGIC;
    scl_i : OUT STD_LOGIC;
    scl_o : IN STD_LOGIC;
    scl_t : IN STD_LOGIC
  );
END zsys_SC0720_0_0;

ARCHITECTURE zsys_SC0720_0_0_arch OF zsys_SC0720_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF zsys_SC0720_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT SC0720 IS
    PORT (
      ext_sda_i : IN STD_LOGIC;
      ext_sda_o : OUT STD_LOGIC;
      ext_sda_t : OUT STD_LOGIC;
      ext_scl_i : IN STD_LOGIC;
      ext_scl_o : OUT STD_LOGIC;
      ext_scl_t : OUT STD_LOGIC;
      PHY_LED0 : OUT STD_LOGIC;
      PHY_LED1 : OUT STD_LOGIC;
      PHY_LED2 : OUT STD_LOGIC;
      PL_pin_K16 : IN STD_LOGIC;
      PL_pin_K19 : IN STD_LOGIC;
      PL_pin_L16 : OUT STD_LOGIC;
      PL_pin_M15 : IN STD_LOGIC;
      PL_pin_N15 : IN STD_LOGIC;
      PL_pin_P16 : IN STD_LOGIC;
      PL_pin_P22 : IN STD_LOGIC;
      PL_pin_K20 : OUT STD_LOGIC;
      PL_pin_N22 : OUT STD_LOGIC;
      sda_i : OUT STD_LOGIC;
      sda_o : IN STD_LOGIC;
      sda_t : IN STD_LOGIC;
      scl_i : OUT STD_LOGIC;
      scl_o : IN STD_LOGIC;
      scl_t : IN STD_LOGIC
    );
  END COMPONENT SC0720;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF scl_t: SIGNAL IS "xilinx.com:interface:iic:1.0 EMIO_I2C1 SCL_T";
  ATTRIBUTE X_INTERFACE_INFO OF scl_o: SIGNAL IS "xilinx.com:interface:iic:1.0 EMIO_I2C1 SCL_O";
  ATTRIBUTE X_INTERFACE_INFO OF scl_i: SIGNAL IS "xilinx.com:interface:iic:1.0 EMIO_I2C1 SCL_I";
  ATTRIBUTE X_INTERFACE_INFO OF sda_t: SIGNAL IS "xilinx.com:interface:iic:1.0 EMIO_I2C1 SDA_T";
  ATTRIBUTE X_INTERFACE_INFO OF sda_o: SIGNAL IS "xilinx.com:interface:iic:1.0 EMIO_I2C1 SDA_O";
  ATTRIBUTE X_INTERFACE_INFO OF sda_i: SIGNAL IS "xilinx.com:interface:iic:1.0 EMIO_I2C1 SDA_I";
  ATTRIBUTE X_INTERFACE_INFO OF ext_scl_t: SIGNAL IS "xilinx.com:interface:iic:1.0 EXT_I2C SCL_T";
  ATTRIBUTE X_INTERFACE_INFO OF ext_scl_o: SIGNAL IS "xilinx.com:interface:iic:1.0 EXT_I2C SCL_O";
  ATTRIBUTE X_INTERFACE_INFO OF ext_scl_i: SIGNAL IS "xilinx.com:interface:iic:1.0 EXT_I2C SCL_I";
  ATTRIBUTE X_INTERFACE_INFO OF ext_sda_t: SIGNAL IS "xilinx.com:interface:iic:1.0 EXT_I2C SDA_T";
  ATTRIBUTE X_INTERFACE_INFO OF ext_sda_o: SIGNAL IS "xilinx.com:interface:iic:1.0 EXT_I2C SDA_O";
  ATTRIBUTE X_INTERFACE_INFO OF ext_sda_i: SIGNAL IS "xilinx.com:interface:iic:1.0 EXT_I2C SDA_I";
BEGIN
  U0 : SC0720
    PORT MAP (
      ext_sda_i => ext_sda_i,
      ext_sda_o => ext_sda_o,
      ext_sda_t => ext_sda_t,
      ext_scl_i => ext_scl_i,
      ext_scl_o => ext_scl_o,
      ext_scl_t => ext_scl_t,
      PHY_LED0 => PHY_LED0,
      PHY_LED1 => PHY_LED1,
      PHY_LED2 => PHY_LED2,
      PL_pin_K16 => PL_pin_K16,
      PL_pin_K19 => PL_pin_K19,
      PL_pin_L16 => PL_pin_L16,
      PL_pin_M15 => PL_pin_M15,
      PL_pin_N15 => PL_pin_N15,
      PL_pin_P16 => PL_pin_P16,
      PL_pin_P22 => PL_pin_P22,
      PL_pin_K20 => PL_pin_K20,
      PL_pin_N22 => PL_pin_N22,
      sda_i => sda_i,
      sda_o => sda_o,
      sda_t => sda_t,
      scl_i => scl_i,
      scl_o => scl_o,
      scl_t => scl_t
    );
END zsys_SC0720_0_0_arch;
