`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.02.2021 20:04:53
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


module keying_circuit_tb();

reg r_clk;
reg r_resetn;

always begin
    r_clk <= 0;
    #1 r_clk <= 1;
    #1;
end

initial begin
    r_resetn <= 1;
    #1 r_resetn <= 0;
    #5 r_resetn <= 1;
    #5000000 $finish;
end

wire signed [15:0] w_output;
wire w_valid;

keying_circuit UUT(
    .i_clk(r_clk),
    .i_resetn(r_resetn),
    .i_outputAmplitude(16'd32765),
    .i_key(1'b1),
    .o_output(w_output),
    .o_valid(w_valid)
);

endmodule
