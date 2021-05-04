`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.02.2021 16:06:32
// Design Name: 
// Module Name: data_switch
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


module data_switch#(
    DATA_WIDTH=16
)(
    input wire i_clk,
    input wire signed [DATA_WIDTH - 1 : 0] iS_data0,
    input wire signed [DATA_WIDTH - 1 : 0] iS_data1,
    input wire signed [DATA_WIDTH - 1 : 0] iS_data2,
    input wire signed [DATA_WIDTH - 1 : 0] iS_data3,
    input wire signed [DATA_WIDTH - 1 : 0] iS_data4,
    input wire signed [DATA_WIDTH - 1 : 0] iS_data5,
    input wire signed [DATA_WIDTH - 1 : 0] iS_data6,
    input wire signed [DATA_WIDTH - 1 : 0] iS_data7,
    input wire [2:0] i_switch,
    output reg signed [DATA_WIDTH - 1 : 0] oS_data
);

always @(posedge i_clk) begin
    case(i_switch)
        3'd0: oS_data <= iS_data0;
        3'd1: oS_data <= iS_data1;
        3'd2: oS_data <= iS_data2;
        3'd3: oS_data <= iS_data3;
        3'd4: oS_data <= iS_data4;
        3'd5: oS_data <= iS_data5;
        3'd6: oS_data <= iS_data6;
        3'd7: oS_data <= iS_data7;
    endcase
end

endmodule
