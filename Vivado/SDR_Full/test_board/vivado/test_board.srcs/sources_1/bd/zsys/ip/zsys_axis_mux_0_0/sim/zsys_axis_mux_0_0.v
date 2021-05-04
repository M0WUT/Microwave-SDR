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


// IP VLNV: xilinx.com:module_ref:axis_mux:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module zsys_axis_mux_0_0 (
  oS_data,
  o_valid,
  i_ctl,
  i_en_n,
  o_enabled,
  iS_data0,
  i_valid0,
  iS_data1,
  i_valid1,
  iS_data2,
  i_valid2,
  iS_data3,
  i_valid3,
  iS_data4,
  i_valid4,
  iS_data5,
  i_valid5,
  iS_data6,
  i_valid6,
  iS_data7,
  i_valid7,
  i_clk,
  i_resetn
);

(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT TDATA" *)
output wire [15 : 0] oS_data;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_OUTPUT, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 80000000, PHASE 0.000, CLK_DOMAIN zsys_adc_clk_n, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT TVALID" *)
output wire o_valid;
input wire [2 : 0] i_ctl;
input wire i_en_n;
output wire o_enabled;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_INPUT0 TDATA" *)
input wire [15 : 0] iS_data0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_INPUT0, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 80000000, PHASE 0.000, CLK_DOMAIN zsys_adc_clk_n, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_INPUT0 TVALID" *)
input wire i_valid0;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_INPUT1 TDATA" *)
input wire [15 : 0] iS_data1;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_INPUT1, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 80000000, PHASE 0.000, CLK_DOMAIN zsys_adc_clk_n, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_INPUT1 TVALID" *)
input wire i_valid1;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_INPUT2 TDATA" *)
input wire [15 : 0] iS_data2;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_INPUT2, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 80000000, PHASE 0.000, CLK_DOMAIN zsys_adc_clk_n, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_INPUT2 TVALID" *)
input wire i_valid2;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_INPUT3 TDATA" *)
input wire [15 : 0] iS_data3;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_INPUT3, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 80000000, PHASE 0.000, CLK_DOMAIN zsys_adc_clk_n, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_INPUT3 TVALID" *)
input wire i_valid3;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_INPUT4 TDATA" *)
input wire [15 : 0] iS_data4;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_INPUT4, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 80000000, PHASE 0.000, CLK_DOMAIN zsys_adc_clk_n, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_INPUT4 TVALID" *)
input wire i_valid4;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_INPUT5 TDATA" *)
input wire [15 : 0] iS_data5;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_INPUT5, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 80000000, PHASE 0.000, CLK_DOMAIN zsys_adc_clk_n, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_INPUT5 TVALID" *)
input wire i_valid5;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_INPUT6 TDATA" *)
input wire [15 : 0] iS_data6;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_INPUT6, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 80000000, PHASE 0.000, CLK_DOMAIN zsys_adc_clk_n, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_INPUT6 TVALID" *)
input wire i_valid6;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_INPUT7 TDATA" *)
input wire [15 : 0] iS_data7;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_INPUT7, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 80000000, PHASE 0.000, CLK_DOMAIN zsys_adc_clk_n, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_INPUT7 TVALID" *)
input wire i_valid7;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_clk, ASSOCIATED_RESET i_resetn, ASSOCIATED_BUSIF M_AXIS_OUTPUT:S_AXIS_INPUT0:S_AXIS_INPUT1:S_AXIS_INPUT2:S_AXIS_INPUT3:S_AXIS_INPUT4:S_AXIS_INPUT5:S_AXIS_INPUT6:S_AXIS_INPUT7, FREQ_HZ 80000000, PHASE 0.000, CLK_DOMAIN zsys_adc_clk_n, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 i_clk CLK" *)
input wire i_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 i_resetn RST" *)
input wire i_resetn;

  axis_mux #(
    .DATA_WIDTH(16)
  ) inst (
    .oS_data(oS_data),
    .o_valid(o_valid),
    .i_ctl(i_ctl),
    .i_en_n(i_en_n),
    .o_enabled(o_enabled),
    .iS_data0(iS_data0),
    .i_valid0(i_valid0),
    .iS_data1(iS_data1),
    .i_valid1(i_valid1),
    .iS_data2(iS_data2),
    .i_valid2(i_valid2),
    .iS_data3(iS_data3),
    .i_valid3(i_valid3),
    .iS_data4(iS_data4),
    .i_valid4(i_valid4),
    .iS_data5(iS_data5),
    .i_valid5(i_valid5),
    .iS_data6(iS_data6),
    .i_valid6(i_valid6),
    .iS_data7(iS_data7),
    .i_valid7(i_valid7),
    .i_clk(i_clk),
    .i_resetn(i_resetn)
  );
endmodule
