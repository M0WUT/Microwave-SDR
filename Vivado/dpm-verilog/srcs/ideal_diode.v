`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.09.2020 16:00:52
// Design Name: 
// Module Name: ideal_diode
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


module ideal_diode #(
    DATA_WIDTH=63
)(
    input wire i_clk,
    input wire i_valid,
    input wire signed [DATA_WIDTH - 1 : 0] iS_data,
    output reg signed [47 : 0] oS_data,
    output reg o_valid
);

reg signed [47 : 0] r_data ;
reg r_valid;

always @(posedge i_clk) begin
    r_data <= (iS_data > 0 ? iS_data [DATA_WIDTH -1 -: 48] : 0);
    r_valid <= i_valid;
end

always @ (negedge i_clk) begin
    oS_data <= r_data;
    o_valid <= r_valid;
end




endmodule
