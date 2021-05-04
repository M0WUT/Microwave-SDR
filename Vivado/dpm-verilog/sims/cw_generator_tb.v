`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.04.2021 18:08:52
// Design Name: 
// Module Name: cw_generator_tb
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


module cw_generator_tb();

reg r_clk;
reg r_key;
reg r_resetn;
wire signed [31:0] w_angle;
wire signed [15:0] w_envelope;

always begin
    r_clk <= 0;
    #1 r_clk <= 1;
    #1;
end

always begin
    r_key <= 0;
    #20000 r_key <= 1;
    #20000;
end

initial begin
    r_resetn <= 0;
    #5 r_resetn <= 1;
    #200000 $finish;
end

cw_generator UUT(
    .i_clk(r_clk),
    .i_key_n(r_key),
    .iS_amplitude(16'sd32000),
    .oS_output(w_envelope)
);

phase_accumulator SOURCEUUT1(
    .i_clk(r_clk),
    .i_resetn(r_resetn),
    .i_valid(1'b1),
    .iS_phaseDelta(32'd53687091),
    .oS_phaseAngle(w_angle)

);

cordic UUT2(
    .i_clk(r_clk),
    .i_resetn(r_resetn),
    .i_angleValid(1'b1),
    .i_dataValid(1'b1),
    .iS_xIn(w_envelope),
    .iS_yIn(0),
    .iS_angle(w_angle)
);

endmodule
