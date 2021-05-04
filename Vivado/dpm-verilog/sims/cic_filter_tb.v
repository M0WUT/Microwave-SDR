`timescale 1ns / 1ps
`default_nettype none
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.02.2020 11:57:36
// Design Name: 
// Module Name: cordic_tb
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


module cic_filter_tb();

reg r_clk;
reg r_resetn;
reg signed [15:0] r_data; 

always begin
    #1 r_clk = ~r_clk;
    r_data = r_data + 1;
end


wire [15:0] w_dataOut;
wire w_clockOut;

cic_filter uut(
    .i_clk(r_clk),
    .i_resetn(r_resetn),
    .i_data(r_data),
    .o_clk(w_clockOut),
    .o_data(w_dataOut)
);


initial begin
    r_resetn = 0;
    r_clk = 0;
    r_data = 0;
    #20 r_resetn = 1;
    
    #1000000 $finish;
end



endmodule
