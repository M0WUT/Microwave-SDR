`timescale 1ns / 1ps
`default_nettype none
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.02.2020 11:55:22
// Design Name: 
// Module Name: af_data_buffer
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




module af_data_buffer(
        input wire i_clk,
        input wire i_valid,
        input wire [39:0] i_inputData,
        output reg [39:0] o_outputData
);

always @(posedge i_clk) begin
    o_outputData <= (i_valid ? i_inputData[39:32] : o_outputData);
end
endmodule
