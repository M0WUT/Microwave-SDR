`timescale 1ns / 1ps
`default_nettype none
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.10.2021 21:16:13
// Design Name: 
// Module Name: vfo
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


module vfo #(
    RESET_VALUE = 193273528, // 3.6MHz
    STEP = 500
)(
    input wire i_clk,
    input wire i_resetn,
    input wire i_up,
    input wire i_down,
    output reg [31:0] o_value
);

always @(posedge i_clk or negedge i_resetn) begin
    if (~i_resetn) begin
        o_value <= RESET_VALUE;
    end else begin
        // Normal running
        if (i_up) begin
            o_value <= o_value + STEP;
        end else if (i_down) begin
            o_value <= o_value - STEP;
        end
    end
end 
endmodule
