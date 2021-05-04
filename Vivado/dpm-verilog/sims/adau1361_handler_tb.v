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
    #1 r_resetn <= 0;
    #5 r_resetn <= 1;
    #500000 $finish;
end

initial begin
    r_valid <= 0;
    #100
    while(1) begin
        r_valid <= 1;
        #2 r_valid <= 0;
        #4094;   
    end
end
integer i;
initial begin
    
    while(1) begin
        r_adcData <= 0;
        #256
        for(i = 0; i < 7; i = i + 1) begin
            r_adcData <= 1;
            #128 r_adcData <= 1;
            #128;
        end
        for(i = 0; i < 8; i = i + 1) begin
            r_adcData <= 0;
            #128 r_adcData <= 0;
            #128;
        end
    end

end

adau1361_handler UUT(
    .iS_left_dac_data(16'sd2000),
    .i_left_dac_valid(r_valid),
    .iS_right_dac_data(-16'sd2000),
    .i_right_dac_valid(r_valid),
    .i_clk(r_clk),
    .i_resetn(r_resetn),
    .i_adcData(r_adcData)

);

endmodule
