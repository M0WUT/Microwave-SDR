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


module nco_mixer(
    // AXI bus for Left Channel DAC Data
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_LEFT_DAC TDATA" *)
    input wire signed [15:0] iS_left_dac_data, // Transfer Data (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_LEFT_DAC TVALID" *)
    input wire i_left_dac_valid, // Transfer valid (required)

    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_LEFT_DAC TDATA" *)
    input wire signed [15:0] iS_left_dac_data, // Transfer Data (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_LEFT_DAC TVALID" *)
    input wire i_left_dac_valid, // Transfer valid (required)

    // AXI bus for Left Channel ADC Data
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_LEFT_ADC TDATA" *)
    output reg signed [15:0] oS_left_adc_data, // Transfer Data (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_LEFT_ADC TVALID" *)
    output reg o_left_adc_valid, // Transfer valid (required)

    // AXI Clock
    (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 i_clk CLK" *)
    (* X_INTERFACE_PARAMETER = "ASSOCIATED_BUSIF S_AXIS_LEFT_DAC : S_AXIS_RIGHT_DAC : M_AXIS_LEFT_ADC : M_AXIS_RIGHT_ADC, ASSOCIATED_RESET i_resetn" *)
    input wire i_clk,
    input wire i_resetn,

    output reg o_error
    );
endmodule
