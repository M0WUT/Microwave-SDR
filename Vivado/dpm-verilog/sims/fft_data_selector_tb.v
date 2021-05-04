`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.06.2020 19:25:44
// Design Name: 
// Module Name: fft_data_selector_tb
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


module fft_data_selector_tb();

reg r_clk;
reg r_resetn;
reg r_valid;
reg [15:0] r_data;
reg [3:0] r_counter;

initial begin
    r_clk = 0;
    r_data = 0;
    r_resetn = 0;
    r_valid = 0;
    r_counter = 0;
end

always begin
    #1 r_clk = ~r_clk;
end

fft_data_selector uut(
    .i_clk(r_clk),
    .i_resetn(r_resetn),
    .i_valid(r_valid),
    .i_data(r_data)
);

always @(negedge r_clk) begin
    r_counter <= r_counter + 1;
    if(r_counter == 0) begin
        r_data <= r_data + 1;
        r_valid <= 1;
    end else begin
        r_valid <= 0;
    end
end

initial begin
    #5 r_resetn = 1;
    #1000 $finish;
end

endmodule
