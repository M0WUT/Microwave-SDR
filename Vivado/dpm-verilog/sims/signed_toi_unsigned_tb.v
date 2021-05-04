`timescale 1ns / 1ps
`default_nettype none
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.02.2020 15:30:17
// Design Name: 
// Module Name: signed_to_unsigned_tb
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


module signed_to_unsigned_tb();

reg r_clk;
reg signed [7:0] r_data;
wire [7:0] w_outputData;

signed_to_unsigned #(8) uut(
    .i_clk(r_clk),
    .i_valid(1'b1),
    .i_data(r_data),
    .o_data(w_outputData)
);

initial begin
    r_clk = 0;
    r_data = 0;
    #600 $finish;
end

always begin
    #1 r_clk = ~r_clk;
end

always begin
    #2 r_data <= r_data + 1;
    $display("%d,%d", r_data, w_outputData);
end



endmodule
