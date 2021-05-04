`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.04.2021 20:50:16
// Design Name: 
// Module Name: level_limiter_tb
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


module level_limiter_tb();

reg r_clk;
reg r_resetn;
reg r_valid;
reg signed [23:0] r_data;

always begin
    r_clk <= 0;
    #1 r_clk <= 1;
    #1;
end

always @(negedge r_clk) begin
    r_data <= r_data + $signed(1);
end

initial begin
    r_resetn <= 1;
    r_data <= 0;
    #1 r_resetn <= 0;
    #5 r_resetn <= 1;
    #500000 $finish;
end


level_limiter #(.DATA_WIDTH(24), .LIMIT_NUMBER_OF_BITS(16)) UUT (
    .i_clk(r_clk),
    .i_resetn(r_resetn),
    .iS_data(r_data),
    .i_valid(1'b1)
);

endmodule
