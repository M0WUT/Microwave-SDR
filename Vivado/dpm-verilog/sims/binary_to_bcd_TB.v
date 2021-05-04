`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.02.2020 18:02:46
// Design Name: 
// Module Name: binary_to_bcd_TB
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


module binary_to_bcd_TB();

reg r_clk;
reg [36:0] r_data;
reg r_resetn;

binary_to_bcd #(
     .INPUT_WIDTH(37),
     .DECIMAL_DIGITS(11)
     )uut(
    .i_clk(r_clk),
    .i_resetn(r_resetn),
    .i_binary(r_data),
    .o_bcd()
);

initial begin
    r_clk = 0;
    r_resetn = 1;
    r_data = 1234567890;
    
    r_resetn = 0;
    #5 r_resetn = 1;
    
    #3000 $finish;
end

always begin
    #1 r_clk = ~r_clk;
end



endmodule
