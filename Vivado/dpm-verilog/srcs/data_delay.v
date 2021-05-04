`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.05.2020 16:34:33
// Design Name: 
// Module Name: 1_cycle_delay
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


module data_delay#(
    DATA_WIDTH = 32,
    DELAY = 4
)(
    input i_clk,
    input signed [DATA_WIDTH - 1 : 0] i_data,
    input i_valid,
    output reg signed [DATA_WIDTH - 1 : 0] o_data,
    output reg o_valid
);

reg [DATA_WIDTH - 1 : 0] r_data [DELAY - 1 : 0];
reg r_valid;

genvar i;
generate
    for (i = DELAY - 1; i > 0; i = i - 1) begin
        always @(posedge i_clk) begin
            if(i_valid) begin
                r_data[i] <= r_data[i-1];
            end
        end
    end
endgenerate


always @(posedge i_clk) begin
    if(i_valid) begin     
        r_data[0] <= i_data;
    end
    r_valid <= i_valid;
end

always @(negedge i_clk) begin
    o_data <= r_data [DELAY - 1];
    o_valid <= r_valid;
end

endmodule
