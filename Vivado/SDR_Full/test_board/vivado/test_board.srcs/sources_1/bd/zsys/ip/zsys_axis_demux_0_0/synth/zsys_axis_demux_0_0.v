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


// IP VLNV: xilinx.com:module_ref:axis_demux:1.0
// IP Revision: 1

(* X_CORE_INFO = "axis_demux,Vivado 2019.2" *)
(* CHECK_LICENSE_TYPE = "zsys_axis_demux_0_0,axis_demux,{}" *)
(* CORE_GENERATION_INFO = "zsys_axis_demux_0_0,axis_demux,{x_ipProduct=Vivado 2019.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=axis_demux,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,DATA_WIDTH=16}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module zsys_axis_demux_0_0 (
  iS_data,
  i_valid,
  i_ctl,
  oS_data0,
  o_valid0,
  oS_data1,
  o_valid1,
  oS_data2,
  o_valid2,
  oS_data3,
  o_valid3,
  oS_data4,
  o_valid4,
  oS_data5,
  o_valid5,
  oS_data6,
  o_valid6,
  oS_data7,
  o_valid7,
  i_clk,
  i_resetn
);

(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DATA TDATA" *)
input wire [15 : 0] iS_data;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_DATA, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 80000000, PHASE 0.000, CLK_DOMAIN zsys_adc_clk_n, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DATA TVALID" *)
input wire i_valid;
input wire [2 : 0] i_ctl;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT0 TDATA" *)
output wire [15 : 0] oS_data0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_OUTPUT0, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 80000000, PHASE 0.000, CLK_DOMAIN zsys_adc_clk_n, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT0 TVALID" *)
output wire o_valid0;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT1 TDATA" *)
output wire [15 : 0] oS_data1;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_OUTPUT1, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 80000000, PHASE 0.000, CLK_DOMAIN zsys_adc_clk_n, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT1 TVALID" *)
output wire o_valid1;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT2 TDATA" *)
output wire [15 : 0] oS_data2;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_OUTPUT2, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 80000000, PHASE 0.000, CLK_DOMAIN zsys_adc_clk_n, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT2 TVALID" *)
output wire o_valid2;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT3 TDATA" *)
output wire [15 : 0] oS_data3;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_OUTPUT3, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 80000000, PHASE 0.000, CLK_DOMAIN zsys_adc_clk_n, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT3 TVALID" *)
output wire o_valid3;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT4 TDATA" *)
output wire [15 : 0] oS_data4;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_OUTPUT4, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 80000000, PHASE 0.000, CLK_DOMAIN zsys_adc_clk_n, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT4 TVALID" *)
output wire o_valid4;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT5 TDATA" *)
output wire [15 : 0] oS_data5;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_OUTPUT5, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 80000000, PHASE 0.000, CLK_DOMAIN zsys_adc_clk_n, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT5 TVALID" *)
output wire o_valid5;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT6 TDATA" *)
output wire [15 : 0] oS_data6;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_OUTPUT6, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 80000000, PHASE 0.000, CLK_DOMAIN zsys_adc_clk_n, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT6 TVALID" *)
output wire o_valid6;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT7 TDATA" *)
output wire [15 : 0] oS_data7;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_OUTPUT7, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 80000000, PHASE 0.000, CLK_DOMAIN zsys_adc_clk_n, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT7 TVALID" *)
output wire o_valid7;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_clk, ASSOCIATED_RESET i_resetn, ASSOCIATED_BUSIF S_AXIS_X:S_AXIS_DATA:M_AXIS_OUTPUT0:M_AXIS_OUTPUT1:M_AXIS_OUTPUT2:M_AXIS_OUTPUT3:M_AXIS_OUTPUT4:M_AXIS_OUTPUT5:M_AXIS_OUTPUT6:M_AXIS_OUTPUT7, FREQ_HZ 80000000, PHASE 0.000, CLK_DOMAIN zsys_adc_clk_n, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 i_clk CLK" *)
input wire i_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 i_resetn RST" *)
input wire i_resetn;

  axis_demux #(
    .DATA_WIDTH(16)
  ) inst (
    .iS_data(iS_data),
    .i_valid(i_valid),
    .i_ctl(i_ctl),
    .oS_data0(oS_data0),
    .o_valid0(o_valid0),
    .oS_data1(oS_data1),
    .o_valid1(o_valid1),
    .oS_data2(oS_data2),
    .o_valid2(o_valid2),
    .oS_data3(oS_data3),
    .o_valid3(o_valid3),
    .oS_data4(oS_data4),
    .o_valid4(o_valid4),
    .oS_data5(oS_data5),
    .o_valid5(o_valid5),
    .oS_data6(oS_data6),
    .o_valid6(o_valid6),
    .oS_data7(oS_data7),
    .o_valid7(o_valid7),
    .i_clk(i_clk),
    .i_resetn(i_resetn)
  );
endmodule
