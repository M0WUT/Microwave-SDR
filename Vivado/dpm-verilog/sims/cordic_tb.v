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


module cordic_tb();

reg r_clk;
reg r_resetn;
wire [31:0] w_angle;

always begin
    r_clk <= 0;
    #1 r_clk <= 1;
    #1;
end

initial begin
    r_resetn <= 1;
    #1 r_resetn <= 0;
    #5 r_resetn <= 1;
    #1000 $finish;
end

phase_accumulator SOURCE(
    .i_clk(r_clk),
    .i_resetn(r_resetn),
    .i_valid(1'b1),
    .iS_phaseDelta(32'd53687091),
    .oS_phaseAngle(w_angle)

);

cordic UUT(
    .i_clk(r_clk),
    .i_resetn(r_resetn),
    .i_xValid(1'b1),
    .i_yValid(1'b1),
    .i_angleValid(1'b1),
    .iS_xIn(32765),
    .iS_yIn(0),
    .iS_angle(w_angle)
);

endmodule
