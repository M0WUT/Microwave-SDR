`timescale 1ns / 1ps
`default_nettype none
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: M0WUT
// 
// Create Date: 09.02.2020 16:56:38
// Design Name: 
// Module Name: binary_to_bcd
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: Converts a 37 bit binary number to 11 digit BCD
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module binary_to_bcd #(
    parameter INPUT_WIDTH = 37,
    parameter DECIMAL_DIGITS = 11
    )(
    input wire i_clk,
    input wire i_resetn,
    input wire [INPUT_WIDTH - 1 : 0] i_binary,
    output reg [(DECIMAL_DIGITS * 4) - 1 : 0] o_bcd
    ); 
    
reg [INPUT_WIDTH + 4 * DECIMAL_DIGITS - 1 : 0] r_shifter = 0;
reg[INPUT_WIDTH - 1 : 0] r_oldBinary = 0;

parameter s_IDLE = 0;
parameter s_SHIFTING = 1; 
parameter s_CHECKING = 2;
parameter s_DONE = 3;
reg [1:0] r_state = s_IDLE; 
reg [INPUT_WIDTH -1 : 0] r_bitsToShift = 0;
reg [$clog2(DECIMAL_DIGITS) : 0] r_digitsToCheck = 0;


always @(posedge i_clk or negedge i_resetn) 
begin 
    if(~i_resetn) begin
        r_state <= s_IDLE;
        r_oldBinary <= 0;
        r_bitsToShift <= 0;
        r_digitsToCheck <= 0;
        o_bcd = 0;
    end else begin
        case (r_state)
            s_IDLE: begin
                if (i_binary != r_oldBinary) begin
                    // New data to decode
                    r_shifter <= i_binary;
                    r_state <= s_SHIFTING;
                    r_oldBinary <= i_binary;
                    r_bitsToShift <= INPUT_WIDTH - 1;
                end else begin
                    r_state <= s_IDLE;
                end
            end  // case s_IDLE            
            
            s_SHIFTING: begin
                r_shifter <= r_shifter << 1;
                if(r_bitsToShift == 0) begin
                    r_state <= s_DONE;
                end else begin
                    r_digitsToCheck <= DECIMAL_DIGITS - 1;
                    r_bitsToShift <= r_bitsToShift - 1;
                    r_state <= s_CHECKING;
                end
            end  // case s_SHIFTING

            s_CHECKING: begin
                if(r_digitsToCheck == 0) begin
                    r_state <= s_SHIFTING;
                end else begin   
                    if(r_shifter[4 * (r_digitsToCheck - 1) + INPUT_WIDTH +: 4] > 4)
                        r_shifter[4 * (r_digitsToCheck - 1) + INPUT_WIDTH +: 4] <= r_shifter[4 * (r_digitsToCheck - 1) + INPUT_WIDTH +: 4] + 3;
                    r_digitsToCheck <= r_digitsToCheck - 1;
                end
            end  // case s_CHECKING
            
            s_DONE: begin
                o_bcd <= r_shifter[INPUT_WIDTH +: (4 * DECIMAL_DIGITS)];
                r_state <= s_IDLE;
            end  // case s_DONE
            
            default: begin
                r_state <= s_IDLE;
            end
        
        endcase
    end
end
endmodule
