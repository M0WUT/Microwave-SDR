`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.05.2020 18:17:35
// Design Name: 
// Module Name: adder_with_valid
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


module adder_with_valid #(
    DATA_WIDTH = 33
)(
    input wire i_clk,
    input wire i_resetn,
    input wire signed [DATA_WIDTH - 1 : 0] i_data_a,
    input wire i_valid_a,
    input wire signed [DATA_WIDTH - 1 : 0] i_data_b,
    input wire i_valid_b,
    output reg signed [DATA_WIDTH - 1 : 0] o_result,
    output wire signed [DATA_WIDTH : 0] o_testResult,
    output reg o_valid,
    output wire o_error
);

reg signed [DATA_WIDTH : 0] r_result;
reg r_valid;

assign o_error = i_valid_a ^ i_valid_b;
assign o_testResult = i_data_a + i_data_b;  // DEBUG

always @(posedge i_clk or negedge i_resetn) begin
    if(~i_resetn) begin
        r_valid <= 0;
        r_result <= 0;
    end else begin
        if(i_valid_a && i_valid_b) begin
            r_valid <= 1;
            r_result <= i_data_a + i_data_b;
        end else begin
            r_valid <= 0;
        end
    end
end

always @(negedge i_clk or negedge i_resetn) begin
    if(~i_resetn) begin
        o_result <= 0;
        o_valid <= 0;
    end else begin
        o_result <= r_result[DATA_WIDTH : 1];
        o_valid <= r_valid;
    end
end

endmodule
