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


// IP VLNV: xilinx.com:module_ref:cordic:1.0
// IP Revision: 1

(* X_CORE_INFO = "cordic,Vivado 2019.2" *)
(* CHECK_LICENSE_TYPE = "zsys_cordic_0_2,cordic,{}" *)
(* CORE_GENERATION_INFO = "zsys_cordic_0_2,cordic,{x_ipProduct=Vivado 2019.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=cordic,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,INPUT_DATA_WIDTH=16,ITERATIONS=16}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module zsys_cordic_0_2 (
  iS_xIn,
  i_xValid,
  iS_yIn,
  i_yValid,
  iS_angle,
  i_angleValid,
  oS_xOut,
  o_xValid,
  oS_yOut,
  o_yValid,
  i_clk,
  i_resetn,
  o_error
);

(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_X TDATA" *)
input wire [15 : 0] iS_xIn;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_X, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 80000000, PHASE 0.000, CLK_DOMAIN zsys_adc_clk_n, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_X TVALID" *)
input wire i_xValid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_Y TDATA" *)
input wire [15 : 0] iS_yIn;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_Y, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 80000000, PHASE 0.000, CLK_DOMAIN zsys_adc_clk_n, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_Y TVALID" *)
input wire i_yValid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_THETA TDATA" *)
input wire [31 : 0] iS_angle;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_THETA, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 80000000, PHASE 0.000, CLK_DOMAIN zsys_adc_clk_n, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_THETA TVALID" *)
input wire i_angleValid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_X_COS_THETA_MINUS_Y_SIN_THETA TDATA" *)
output wire [15 : 0] oS_xOut;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_X_COS_THETA_MINUS_Y_SIN_THETA, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 80000000, PHASE 0.000, CLK_DOMAIN zsys_adc_clk_n, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_X_COS_THETA_MINUS_Y_SIN_THETA TVALID" *)
output wire o_xValid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_X_SIN_THETA_PLUS_Y_COS_THETA TDATA" *)
output wire [15 : 0] oS_yOut;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_X_SIN_THETA_PLUS_Y_COS_THETA, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 80000000, PHASE 0.000, CLK_DOMAIN zsys_adc_clk_n, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_X_SIN_THETA_PLUS_Y_COS_THETA TVALID" *)
output wire o_yValid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_clk, ASSOCIATED_RESET i_resetn, ASSOCIATED_BUSIF S_AXIS_X:S_AXIS_Y:S_AXIS_THETA:M_AXIS_X_COS_THETA_MINUS_Y_SIN_THETA:M_AXIS_X_SIN_THETA_PLUS_Y_COS_THETA, FREQ_HZ 80000000, PHASE 0.000, CLK_DOMAIN zsys_adc_clk_n, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 i_clk CLK" *)
input wire i_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 i_resetn RST" *)
input wire i_resetn;
output wire o_error;

  cordic #(
    .INPUT_DATA_WIDTH(16),
    .ITERATIONS(16)
  ) inst (
    .iS_xIn(iS_xIn),
    .i_xValid(i_xValid),
    .iS_yIn(iS_yIn),
    .i_yValid(i_yValid),
    .iS_angle(iS_angle),
    .i_angleValid(i_angleValid),
    .oS_xOut(oS_xOut),
    .o_xValid(o_xValid),
    .oS_yOut(oS_yOut),
    .o_yValid(o_yValid),
    .i_clk(i_clk),
    .i_resetn(i_resetn),
    .o_error(o_error)
  );
endmodule
