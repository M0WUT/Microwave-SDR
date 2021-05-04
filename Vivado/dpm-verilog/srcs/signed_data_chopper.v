`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.02.2020 22:18:27
// Design Name: 
// Module Name: signed_data_chopper
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


module signed_data_chopper#(
    INPUT_FIRST_BIT = 60,
    OUTPUT_WIDTH = 8

)(
    input wire[63:0] i_data,
    output wire [OUTPUT_WIDTH - 1:0] o_data
);

assign o_data = {i_data[62], i_data[INPUT_FIRST_BIT -: (OUTPUT_WIDTH - 1)]};

endmodule
