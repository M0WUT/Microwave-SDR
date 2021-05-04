`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.06.2020 15:17:38
// Design Name: 
// Module Name: sign_extender
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


module sign_extender#(
    INPUT_DATA_WIDTH = 16,
    OUTPUT_DATA_WIDTH = 32
)(
    input wire [INPUT_DATA_WIDTH - 1 : 0] i_data,
    output wire [OUTPUT_DATA_WIDTH - 1 : 0] o_data
);

assign o_data = {{(OUTPUT_DATA_WIDTH - INPUT_DATA_WIDTH){i_data[INPUT_DATA_WIDTH - 1]}}, i_data};
endmodule
