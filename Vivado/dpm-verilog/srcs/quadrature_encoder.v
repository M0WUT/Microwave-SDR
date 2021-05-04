`timescale 1ns / 1ps
`default_nettype none
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.03.2020 20:04:07
// Design Name: 
// Module Name: quadrature_encoder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: Handler for quadrature encoder. Up and Down signals should be read on posedge
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module quadrature_encoder#(
    DEBOUNCE_MS = 3
)(
    input wire i_clk,
    input wire i_resetn,
    input wire i_a,
    input wire i_b,
    input wire i_sw,

    output reg o_up,
    output reg o_down,
    output reg o_switch
);

reg r_oldA;
reg r_oldSw;
reg [$clog2(DEBOUNCE_MS) + $clog2(100000) - 1 : 0] r_debounceCounter = 0;
reg r_triggered = 0;  // Whether current high state has already trigger an up / down signal

always @(negedge i_clk or negedge i_resetn) begin
    if(~i_resetn) begin
        o_up <= 0;
        o_down <= 0;
        o_switch <= 0;
    end else begin  
        o_up <= 0;
        o_down <= 0;
        if(i_a) begin
            if(~r_triggered) begin
                if(r_debounceCounter == DEBOUNCE_MS * 100000) begin
                    r_triggered <= 1;
                    if(i_b) begin
                        o_down <= 1;
                    end else begin
                        o_up <= 1;
                    end
                end else begin
                    r_debounceCounter <= r_debounceCounter + 1;
                end
            end
        end else begin
            o_up <= 0;
            o_down <= 0;
            r_debounceCounter <= 0;
            r_triggered <= 0;
        end

    end
end

endmodule
