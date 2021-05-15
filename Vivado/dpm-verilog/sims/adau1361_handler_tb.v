`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2021 18:56:29
// Design Name: 
// Module Name: adau1361_handler_tb
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


module adau1361_handler_tb();

reg r_clk;
reg r_resetn;
reg r_valid;
reg r_adcData;

always begin
    r_clk <= 0;
    #1 r_clk <= 1;
    #1;
end

initial begin
    r_resetn <= 1;
    #500000 $finish;
end

initial begin
    r_valid <= 0;
    #101
    while(1) begin
        r_valid <= 1;
        #2 r_valid <= 0;
        #4094;   
    end
end


adau1361_handler UUT(
    .iS_left_dac_data(16'sd2000),
    .i_left_dac_valid(r_valid),
    .iS_right_dac_data(-16'sd2000),
    .i_right_dac_valid(r_valid),
    .i_clk(r_clk),
    .i_resetn(r_resetn),
    .i_adcData(1'b0)

);

endmodule
