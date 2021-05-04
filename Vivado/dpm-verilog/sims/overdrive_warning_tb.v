`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.03.2021 20:42:32
// Design Name: 
// Module Name: overdrive_warning_tb
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


module overdrive_warning_tb();

reg r_clk;
reg r_resetn;
reg signed [15:0] rS_data;

always begin
    r_clk <= 0;
    #1 r_clk <= 1;
    #1;
end

initial begin
    r_resetn <= 1;
    #1 r_resetn <= 0;
    #5 r_resetn <= 1;
    #500000 $finish;
end

initial begin
    rS_data <= 0;
end

always begin
    #2 rS_data <= rS_data + 1;
end

overdrive_warning UUT(
    .iS_data(rS_data),
    .i_valid(1'b1),
    .i_clk(r_clk),
    .i_resetn(r_resetn)
);



endmodule
