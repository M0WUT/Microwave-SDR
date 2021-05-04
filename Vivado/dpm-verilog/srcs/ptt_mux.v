`timescale 1ns / 1ps
`default_nettype none
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.04.2021 23:29:54
// Design Name: 
// Module Name: ptt_mux
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


module ptt_mux(
    input wire i_clk,
    input wire i_ptt_n,
    input wire i_ptt_cw_n,
    input wire [3:0] i_mode,
    output reg o_ptt
);

always @(posedge i_clk) begin
    if(i_mode == 3'd3)
        o_ptt <= i_ptt_cw_n;
    else
        o_ptt <= i_ptt_n;
end

endmodule
