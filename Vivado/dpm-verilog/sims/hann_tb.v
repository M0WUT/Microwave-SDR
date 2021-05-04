`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.05.2020 11:12:07
// Design Name: 
// Module Name: hann_tb
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


module hann_tb();

reg r_clk;
reg r_resetn;
reg[5:0] r_counter;
wire signed [15:0] w_data;
wire w_last;

reg signed [31:0] sine [19:0];

assign w_data = sine[r_counter];

always begin
    #1 r_clk = ~r_clk;
end


hann_multiplier #(32)uut (
    .i_data(-2147483647),
    .i_resetn(r_resetn),
    .i_clk(r_clk),
    .i_valid(1'b1),
    .o_last(w_last)
);

initial begin
    r_resetn = 1;
    r_clk = 0;
    r_counter = 0;
    
    #5 r_resetn = 1;
    while(w_last == 0)
        #1;
    $finish;
end

endmodule
