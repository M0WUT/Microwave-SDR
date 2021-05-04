`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.06.2020 20:35:16
// Design Name: 
// Module Name: magnitude_finder_tb
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


module magnitude_finder_tb();

reg r_clk;

initial begin
    r_clk = 0;
end

always begin
    #1 r_clk = ~r_clk;
end


magnitude_finder #(
    .INPUT_DATA_WIDTH(32),
    .ITERATIONS(20)
) uut (
    .i_clk(r_clk),
    .i_resetn(1'b1),
    .i_valid(1'b1),
    .iS_xIn(-600000),
    .iS_yIn(-800000)
);

initial begin
    #100 $finish;
end

endmodule
