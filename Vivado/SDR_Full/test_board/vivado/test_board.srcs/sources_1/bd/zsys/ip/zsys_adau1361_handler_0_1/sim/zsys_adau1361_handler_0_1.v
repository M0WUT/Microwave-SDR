// (c) Copyright 1995-2021 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:adau1361_handler:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module zsys_adau1361_handler_0_1 (
  iS_left_dac_data,
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
  o_error
);

(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_LEFT_DAC TDATA" *)
input wire [15 : 0] iS_left_dac_data;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_LEFT_DAC, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 80000000, PHASE 0.000, CLK_DOMAIN zsys_adc_clk_n, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_LEFT_DAC TVALID" *)
input wire i_left_dac_valid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_RIGHT_DAC TDATA" *)
input wire [15 : 0] iS_right_dac_data;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_RIGHT_DAC, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 80000000, PHASE 0.000, CLK_DOMAIN zsys_adc_clk_n, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_RIGHT_DAC TVALID" *)
input wire i_right_dac_valid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_LEFT_ADC TDATA" *)
output wire [15 : 0] oS_left_adc_data;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_LEFT_ADC, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 80000000, PHASE 0.000, CLK_DOMAIN zsys_adc_clk_n, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_LEFT_ADC TVALID" *)
output wire o_left_adc_valid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_RIGHT_ADC TDATA" *)
output wire [15 : 0] oS_right_adc_data;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_RIGHT_ADC, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 80000000, PHASE 0.000, CLK_DOMAIN zsys_adc_clk_n, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_RIGHT_ADC TVALID" *)
output wire o_right_adc_valid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_clk, ASSOCIATED_RESET i_resetn, ASSOCIATED_BUSIF S_AXIS_LEFT_DAC:S_AXIS_RIGHT_DAC:M_AXIS_LEFT_ADC:M_AXIS_RIGHT_ADC, FREQ_HZ 80000000, PHASE 0.000, CLK_DOMAIN zsys_adc_clk_n, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 i_clk CLK" *)
input wire i_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 i_resetn RST" *)
input wire i_resetn;
output wire o_mclk;
output wire o_bclk;
output wire o_lrclk;
input wire i_adcData;
output wire o_dacData;
output wire o_error;

  adau1361_handler #(
    .MCLK_DIVIDER(8)
  ) inst (
    .iS_left_dac_data(iS_left_dac_data),
    .i_left_dac_valid(i_left_dac_valid),
    .iS_right_dac_data(iS_right_dac_data),
    .i_right_dac_valid(i_right_dac_valid),
    .oS_left_adc_data(oS_left_adc_data),
    .o_left_adc_valid(o_left_adc_valid),
    .oS_right_adc_data(oS_right_adc_data),
    .o_right_adc_valid(o_right_adc_valid),
    .i_clk(i_clk),
    .i_resetn(i_resetn),
    .o_mclk(o_mclk),
    .o_bclk(o_bclk),
    .o_lrclk(o_lrclk),
    .i_adcData(i_adcData),
    .o_dacData(o_dacData),
    .o_error(o_error)
  );
endmodule
