`timescale 1ns / 1ps
`default_nettype none
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.04.2021 16:55:36
// Design Name: 
// Module Name: cw_generator
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


module cw_generator#(
    DATA_WIDTH = 16
)(
    input wire i_clk,
    input wire i_key_n,
    input wire signed [DATA_WIDTH - 1 : 0] iS_amplitude,
    output reg signed [DATA_WIDTH - 1 : 0] oS_output
);

always @(posedge i_clk) begin
    if(i_key_n)
        oS_output <= 0;
    else
        oS_output <= iS_amplitude; 
end

endmodule
