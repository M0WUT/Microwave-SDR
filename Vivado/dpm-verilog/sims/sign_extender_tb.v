`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.06.2020 20:00:42
// Design Name: 
// Module Name: sign_extender_tb
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


module sign_extender_tb();

reg r_clk;
reg signed [7:0] rS_data;

initial begin
    rS_data = 0;
end

always begin
    #1 rS_data = rS_data + 1;
end

initial begin
    #300 $finish;
end


sign_extender #(
    .INPUT_DATA_WIDTH(8),
    .OUTPUT_DATA_WIDTH(16)
) uut (
    .i_data(rS_data)
);



endmodule
