`timescale 1ns / 1ps
`default_nettype none
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: M0WUT
// 
// Create Date: 10.02.2020 19:20:06
// Design Name: 
// Module Name: adc_handler
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: Takes data from LTC2216 and unscrambles (if needed) and outputs in 
//              whatever form it comes from the ADC in
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module adc_handler(
        // Output AXIS
        (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_S TDATA" *)
        output reg signed [15:0] oS_data, // Transfer Data (optional)
        (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_S TVALID" *)
        output reg o_valid, // Transfer valid (required)

        input wire signed [15:0] i_data,
        input wire i_overflow,  // TODO handler overflow warnings
        input wire i_random,    // These are passed through but are needed to allow 
                                // correct decode of the data                            
        input wire i_dither,
        output reg o_random,
        output reg o_dither,

        // AXI Clock
        (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 i_clk CLK" *)
        (* X_INTERFACE_PARAMETER = "ASSOCIATED_BUSIF M_AXIS_S" *)
        input wire i_clk
);



always @(negedge i_clk) begin
    o_random <= i_random;
    o_dither <= i_dither;
    o_valid <= 1'b1;
    oS_data <= (i_random ? {
            i_data[15] ^ i_data[0],
            i_data[14] ^ i_data[0],
            i_data[13] ^ i_data[0],
            i_data[12] ^ i_data[0],
            i_data[11] ^ i_data[0],
            i_data[10] ^ i_data[0],
            i_data[9] ^ i_data[0],
            i_data[8] ^ i_data[0],
            i_data[7] ^ i_data[0],
            i_data[6] ^ i_data[0],
            i_data[5] ^ i_data[0],
            i_data[4] ^ i_data[0],
            i_data[3] ^ i_data[0],
            i_data[2] ^ i_data[0],
            i_data[1] ^ i_data[0],
            i_data[0]
        } : i_data);
end
endmodule
