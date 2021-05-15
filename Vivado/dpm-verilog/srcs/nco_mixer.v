`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.04.2021 15:48:42
// Design Name: 
// Module Name: nco_mixer
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module nco_mixer#(
    INPUT_DATA_WIDTH = 16
)(
    // X input
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_X TDATA" *)
    input wire signed [INPUT_DATA_WIDTH - 1:0] iS_xIn, // Transfer Data (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_X TVALID" *)
    input wire i_xValid, // Transfer valid (required)

    // Y input
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_Y TDATA" *)
    input wire signed [INPUT_DATA_WIDTH - 1:0] iS_yIn, // Transfer Data (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_Y TVALID" *)
    input wire i_yValid, // Transfer valid (required)

    // Phase Delta input
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_PHASE_DELTA TDATA" *)
    input wire signed [31:0] iS_phaseDelta, // Transfer Data (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_PHASE_DELTA TVALID" *)
    input wire i_phaseDeltaValid, // Transfer valid (required)

    // X.cos(theta) - Y.sin(theta) output
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_X_COS_THETA_MINUS_Y_SIN_THETA TDATA" *)
    output wire signed [INPUT_DATA_WIDTH - 1:0] oS_xOut, // Transfer Data (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_X_COS_THETA_MINUS_Y_SIN_THETA TVALID" *)
    output wire o_xValid, // Transfer valid (required)

    // X.sin(theta) + Y.cos(theta) output
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_X_SIN_THETA_PLUS_Y_COS_THETA TDATA" *)
    output wire signed [INPUT_DATA_WIDTH - 1:0] oS_yOut, // Transfer Data (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_X_SIN_THETA_PLUS_Y_COS_THETA TVALID" *)
    output wire o_yValid, // Transfer valid (required)

    // AXI Clock
    (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 i_clk CLK" *)
    (* X_INTERFACE_PARAMETER = "ASSOCIATED_BUSIF S_AXIS_X : S_AXIS_Y : S_AXIS_PHASE_DELTA : M_AXIS_X_COS_THETA_MINUS_Y_SIN_THETA : M_AXIS_X_SIN_THETA_PLUS_Y_COS_THETA, ASSOCIATED_RESET i_resetn" *)
    input wire i_clk,
    input wire i_resetn,

    output wire o_error
);

wire signed [31:0] w_phaseAngle;
wire w_phaseValid;

phase_accumulator acc(
    .iS_phaseDelta(iS_phaseDelta),
    .i_valid(i_phaseDeltaValid),
    .oS_phaseAngle(w_phaseAngle),
    .o_valid(w_phaseValid),
    .i_clk(i_clk),
    .i_resetn(i_resetn)
);

cordic #(INPUT_DATA_WIDTH) cor(
    .iS_xIn(iS_xIn),
    .i_xValid(i_xValid),
    .iS_yIn(iS_yIn),
    .i_yValid(i_yValid),
    .iS_angle(w_phaseAngle),
    .i_angleValid(w_phaseValid),
    .oS_xOut(oS_xOut),
    .o_xValid(o_xValid),
    .oS_yOut(oS_yOut),
    .o_yValid(o_yValid),
    .i_clk(i_clk),
    .i_resetn(i_resetn),
    .o_error(o_error)
);
endmodule
