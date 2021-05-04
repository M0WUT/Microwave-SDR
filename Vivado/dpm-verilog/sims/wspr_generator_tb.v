`timescale 10ps / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.02.2021 21:17:11
// Design Name: 
// Module Name: wspr_generator_tb
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


module wspr_generator_tb();

reg r_clk, r_resetn;

always begin
    r_clk = 0;
    #625 r_clk = 1;
    #625;
end

initial begin
    r_resetn <= 1;
    #1 r_resetn <= 0;
    #5 r_resetn <= 1;
    while(w_amp == 0) begin
        #10;
    end
    $display("TX Started");
    #10 while(w_amp > 0) begin
        #100000;
    end
    $display("TX Complete");
    while(w_amp == 0) begin
        #100000;
    end
    $display("TX Restarted");
    #100 $finish;
end

wire signed [15:0] w_amp;
wire signed [31:0] w_phaseAngle;

wspr_generator UUT(
    .i_clk(r_clk),
    .i_resetn(r_resetn),
    .oS_amplitude(w_amp),
    .oS_phaseAngle(w_phaseAngle)
);

endmodule

