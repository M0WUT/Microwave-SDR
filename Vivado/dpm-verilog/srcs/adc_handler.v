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
        input wire i_clk,
        input wire signed [15:0] i_data,
        input wire i_overflow,
        input wire i_random,    // These are passed through but are needed to allow 
                                // correct decode of the data                            
        input wire i_dither,
        output reg signed [15:0] o_data,
        output wire o_random,
        output wire o_dither
);

    assign o_random = i_random;
    assign o_dither = i_dither;


always @(negedge i_clk) begin
    o_data <= (i_random ? {
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
        } :(i_data <<< 1));
end
endmodule
