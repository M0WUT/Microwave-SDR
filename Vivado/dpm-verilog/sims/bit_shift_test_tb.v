`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.02.2020 21:04:51
// Design Name: 
// Module Name: bit_shift_test_tb
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


module bit_shift_test_tb();

reg r_clk;
wire [7:0] w_data;


bit_shift_test uut(
    .i_clk(r_clk),
    .o_data(w_data)
);

initial begin
    r_clk = 0;
    #200 $finish;
end

always begin
    #1 r_clk = ~r_clk;
end


endmodule
