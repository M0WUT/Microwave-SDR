`timescale 1ns / 1ps
`default_nettype none
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.02.2021 16:12:55
// Design Name: 
// Module Name: keying_circuit
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


module keying_circuit #(
    SAMPLE_DIVIDER = 80e4
)(
    input wire i_clk,
    input wire i_resetn,
    input wire signed [15:0] i_outputAmplitude,
    input wire i_key,
    output reg signed [15:0] o_output,
    output reg o_valid
);

reg [$clog2(SAMPLE_DIVIDER) - 1 : 0] r_slowClockCounter;
reg signed [15:0] r_output;
reg r_valid;

always @(posedge i_clk or negedge i_resetn) begin
    if(~i_resetn) begin
        r_slowClockCounter <= 0;
        r_output <= 0;
        r_valid <= 0;
    end else begin
        if(r_slowClockCounter >= SAMPLE_DIVIDER) begin
            r_slowClockCounter <= 0;
            r_valid <= 1;
            r_output <= i_key ? i_outputAmplitude : 0;
        end else begin
            r_slowClockCounter <= r_slowClockCounter + 1;
            r_valid <= 0;
            r_output <= 0;
        end
    end
end

always @(negedge i_clk or negedge i_resetn) begin
    if(~i_resetn) begin
        o_output <= 0;
        o_valid <= 0;
    end else begin
        o_output <= r_output;
        o_valid <= r_valid;
    end
end

endmodule
