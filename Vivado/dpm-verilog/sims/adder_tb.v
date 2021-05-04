`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.05.2020 11:14:45
// Design Name: 
// Module Name: adder_tb
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


module adder_tb();

reg r_clk;
reg r_resetn;
reg r_valid;
reg[3:0] r_counter;
reg signed [31:0] r_data_a;
reg signed [31:0] r_data_b;

always begin
    #1 r_clk = ~r_clk;
end

always @(negedge r_clk) begin
    r_counter = r_counter + 1;
    r_valid = (r_counter == 0);
    if(r_counter == 0)
        r_data_a = r_data_a + 1;
 
end


adder_with_valid #(32) uut (
    .i_clk(r_clk),
    .i_resetn(r_resetn),
    .i_data_a(r_data_a),
    .i_valid_a(r_valid),
    .i_data_b(r_data_b),
    .i_valid_b(r_valid)
);

initial begin
    r_resetn = 1;
    r_clk = 0;
    r_valid = 0;
    r_counter = 0;
    r_data_a = -100;
    r_data_b = 23;
    #5 r_resetn = 1;
    #20000 $finish;
end
endmodule
