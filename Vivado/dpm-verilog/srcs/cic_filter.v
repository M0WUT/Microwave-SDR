`timescale 1ns / 1ps
`default_nettype none
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: M0WUT
// 
// Create Date: 19.02.2020 19:31:50
// Design Name: 
// Module Name: cic_filter
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: Decimating CIC filter
//              Expects signed data in/out
//              Automagically calculates output width (truncates to 32 if wider than that)
//              Reads on negedge, output should be read on posedge
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////




module cic_filter# (
INPUT_DATA_WIDTH = 16,
DECIMATION_RATIO_R = 2048,
NUMBER_OF_STAGES_N = 5,
OUTPUT_DATA_WIDTH = 16
)(
    input wire i_clk,
    input wire i_resetn,
    input wire signed [INPUT_DATA_WIDTH - 1 : 0] i_data,
    output wire o_clk,
    output reg signed [OUTPUT_DATA_WIDTH - 1 : 0] o_data
);

localparam DATA_WIDTH = INPUT_DATA_WIDTH + NUMBER_OF_STAGES_N * $clog2(DECIMATION_RATIO_R);

// Registers to hold pipelined data
reg signed [DATA_WIDTH - 1 : 0] r_integratorData [NUMBER_OF_STAGES_N : 0];
reg signed [DATA_WIDTH - 1: 0] r_combData [NUMBER_OF_STAGES_N : 0];
reg signed [DATA_WIDTH - 1: 0] r_oldCombData [NUMBER_OF_STAGES_N : 0];

// Input stage
always @(negedge i_clk or negedge i_resetn) begin
    if(~i_resetn) begin
        r_integratorData[0] <= 0;
    end else begin
        r_integratorData[0] <= i_data;
    end
end

// Generate all of the integrators
genvar i;
generate
    for(i = 0; i < NUMBER_OF_STAGES_N; i = i + 1) begin
        always @(posedge i_clk or negedge i_resetn) begin
            if(~i_resetn) begin
                r_integratorData[i+1] <= 0;
            end else begin
                r_integratorData[i+1] <= r_integratorData[i+1] + r_integratorData[i];
            end
        end
    end
endgenerate

// Clock divider
reg [$clog2(DECIMATION_RATIO_R - 1) - 2: 0] r_clockCounter = 0;
wire w_slowClock;
assign w_slowClock = r_clockCounter[$clog2(DECIMATION_RATIO_R - 1) - 2];

always @(negedge i_clk or negedge i_resetn) begin
    if(~i_resetn) begin
        r_clockCounter <= 0;
    end else begin
        r_clockCounter <= r_clockCounter + 1;
    end
end


// Load integrator data in comb registers
always @(posedge w_slowClock or negedge i_resetn) begin
    if(~i_resetn) begin 
        r_combData[0] <= 0;
    end else begin
        r_combData[0] <= r_integratorData[NUMBER_OF_STAGES_N];
    end
end

// Generate all of the comb sections

genvar j;
generate
    for(j = 0; j < NUMBER_OF_STAGES_N; j = j + 1) begin
        always @(posedge w_slowClock or negedge i_resetn) begin
            if (~i_resetn) begin
                r_combData[j+1] <= 0;
            end else begin
                r_combData[j+1] <= r_combData[j] - r_oldCombData[j];
                r_oldCombData[j] <= r_combData[j];
            end
        end
    end
endgenerate

// Output data
always @(negedge w_slowClock or negedge i_resetn) begin
    if(~i_resetn) begin
        o_data <= 0;
    end else begin
        o_data <= r_combData[NUMBER_OF_STAGES_N][(DATA_WIDTH - 1) -: 32];
        r_oldCombData[NUMBER_OF_STAGES_N] <= r_combData[NUMBER_OF_STAGES_N];
    end
end

assign o_clk = w_slowClock;

endmodule
