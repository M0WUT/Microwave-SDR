`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.02.2020 14:18:21
// Design Name: 
// Module Name: Segment_Driver_tb
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


module Segment_Driver_tb();

reg r_resetn;
reg [43:0] r_data;
reg r_clk;

Segment_Driver uut(
    .i_clk(r_clk),
    .i_bcdData(r_data),
    .i_resetn(r_resetn),
    .o_ledClk(),
    .o_data(),
    .o_lat(),
    .o_blank()

);

initial begin
    r_resetn = 0;
    r_clk = 0;
    r_data = 44'h0123456789;
    #2 r_resetn = 1;
    #2000000 $finish;
end

always begin
    #1 r_clk = ~r_clk;
end

endmodule