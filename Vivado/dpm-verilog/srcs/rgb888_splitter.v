`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: M0WUT
// 
// Create Date: 08.02.2020 15:47:30
// Design Name: 
// Module Name: rgb888_splitter
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: Splits a 24 bit video stream into RGB565 with a seperate output for each
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module rgb888_splitter(
    input [23:0] i_data,
    output wire [4:0] o_red,
    output wire [5:0] o_green,
    output wire [4:0] o_blue
);

assign o_red = i_data[23:19];
assign o_green = i_data[15:10];
assign o_blue = i_data[7:3];

endmodule
