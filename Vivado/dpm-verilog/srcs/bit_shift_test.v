`timescale 1ns / 1ps
`default_nettype none
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.02.2020 21:01:13
// Design Name: 
// Module Name: bit_shift_test
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


module bit_shift_test(
    input wire i_clk,
    output wire [7:0] o_data
);

reg [3:0] r_counter = 0;
reg [15:0] r_data;


always @(posedge i_clk) begin
    r_counter <= r_counter + 1;
    r_data <= (1 << r_counter);
end

assign o_data = r_data[7:0];

endmodule
