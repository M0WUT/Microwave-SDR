`timescale 1ns / 1ps
`default_nettype  none
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.10.2021 21:09:08
// Design Name: 
// Module Name: rotary_encoder_handler
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


module rotary_encoder_handler(
    input wire i_clk,
    input wire i_a,
    input wire i_b,
    output reg o_up,
    output reg o_down
);

reg old_a = 0;

always @(posedge i_clk) begin
    old_a <= i_a;
    o_up <= 1'b0;
    o_down <= 1'b0;
    if ((old_a == 1'b0) && (i_a == 1'b1)) begin
        if (i_b) begin
            o_down <= 1'b1;
        end else begin
            o_up <= 1'b1;
        end
    end

end


endmodule
