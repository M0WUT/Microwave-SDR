`timescale 1ns / 1ps
`default_nettype none
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.04.2020 21:35:07
// Design Name: 
// Module Name: counter_with_tlast
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


module counter_with_tlast(
    input wire i_clk,
    output wire [7:0] o_data,
    output wire o_tlast
);

reg [10:0] r_counter = 0;

assign o_data = r_counter[7:0];
assign o_tlast = (r_counter == 2047);

always @(negedge i_clk) begin
    r_counter <= r_counter + 1;
end
    
endmodule
