`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: M0wUT
// 
// Create Date: 08.02.2020 15:27:30
// Design Name: 
// Module Name: rgb565_to_rgb888_expander
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: Zero pads a 16 bit stream (RGB565) to 24 bit (RGB888) for the Axi Stream Video-Out block 

// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module rgb565_to_rgb888_expander(
  input wire [15:0] i_data,
  output wire [23:0] o_data
 );

//  user logic here

// Put the 16 bits of video data in the most significant bits for each colour and zero pad
assign o_data = {i_data[15:11], 3'b0, i_data[10:5], 2'b0, i_data[4:0], 3'b0};

endmodule
