`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.04.2020 14:30:38
// Design Name: 
// Module Name: fft_repeating_buffer_tb
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


module fft_repeating_buffer_tb();

reg r_clk;


initial begin
    r_clk = 0;
    r_data = 0;
    r_valid = 0;
    r_resetn = 0;
    r_counter = 0;
end

always begin
    #1 r_clk = ~r_clk;
end

reg [16:0] r_data;
reg r_valid;
reg r_resetn;
reg [4:0] r_counter;

always @(negedge r_clk) begin
    r_counter <= r_counter + 1;
    if(r_counter == 0) begin
        r_valid <= 1;
        r_data <= r_data + 1;
    end else begin
        r_valid <= 0;
    end
end

fft_repeating_buffer #(.FFT_LENGTH(8), .NEW_SAMPLES_PER_FFT(2)) uut (
    .i_clk(r_clk),
    .i_valid(r_valid),
    .i_data(r_data),
    .i_resetn(r_resetn)
);

initial begin
    #5 r_resetn = 1;
    #3000 $finish;
end

endmodule
