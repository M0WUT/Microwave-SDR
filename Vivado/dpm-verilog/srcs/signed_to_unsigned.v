`timescale 1ns / 1ps
`default_nettype none
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.02.2020 14:55:06
// Design Name: 
// Module Name: signed_to_unsigned
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: o_data should be read on falling edge
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module signed_to_unsigned #(
    WIDTH = 16
)(
    input wire i_clk,
    input wire i_valid,
    input wire signed [WIDTH - 1 : 0] i_data,
    output reg unsigned [WIDTH - 1 : 0] o_data,
    output reg o_valid
);



always @(posedge i_clk) begin
    o_data <= (i_valid ? i_data : o_data);
    o_valid <= i_valid; // Needed to shift by half a clock cycle to be aligned with o_data 
end




endmodule
