`timescale 1ns / 1ps
`default_nettype none
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: M0wUT
// 
// Create Date: 09.02.2020 12:59:47
// Design Name: 
// Module Name: 7_Segment_Driver
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: Converts 40 bit BCD input to control signals for TLC59281 LED drivers
//              with digits arranged as v1 schematic. If i_mode=0, 1 LSB = 1Hz,
//              If i_mode=1, 1 LSB = 10Hz That is as below with D2 being to the
//              right of D1 and the most significant LED receiving data first.
//
//  MSB(OUT15)                                                                                                          LSB (OUT0)
//  D2_B D2_DP   D2_A    D2_C    D2_F    D2_D    D2_G    D2_E    D1_B    D1_DP   D1_A    D1_C    D1_D    D1_F   D1_E    D1_G
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module Segment_Driver 
(
    input wire i_clk,
    input wire i_blank,
    input wire [39:0] i_bcdData,
    input wire i_mode,  // 0 = i_bcdData is BCD in Hz, 1 = i_bcdData is BCD in 10s of Hz
    input wire i_resetn,
    output wire o_ledClk,
    output wire o_data,
    output wire o_lat,
    output wire o_blank
);

// System clock is 100MHz, LED clock maximum is 35MHz, to reduce high speed interference
// will use a divider of 256 (400kHz)

reg [7:0] r_clockCounter = 0;
wire w_slowClock;
assign w_slowClock = r_clockCounter[7];

always @(posedge i_clk or negedge i_resetn) begin
    if(!i_resetn)
        r_clockCounter <= 0;
    else
        r_clockCounter <= r_clockCounter + 1;
end

// Annoyingly the two digits don't have the same pin order (and I can't be bothered with a 100 element look up
// so need 2x 10 elements look up tables
reg [7:0] r_digit1 [15:0];
reg [7:0] r_digit2 [15:0];
localparam LOW_RANGE_DP_MASK =     'h000040000040000040;
localparam HIGH_RANGE_DP_MASK =    'h004000004000004000;


initial begin
    r_digit1[0] = 8'hBE;
    r_digit1[1] = 8'h90;
    r_digit1[2] = 8'hAB;
    r_digit1[3] = 8'hB9;
    r_digit1[4] = 8'h95;
    r_digit1[5] = 8'h3D;
    r_digit1[6] = 8'h3F;
    r_digit1[7] = 8'hB0;
    r_digit1[8] = 8'hBF;
    r_digit1[9] = 8'hBD;
    r_digit1[10] = 8'h00;
    r_digit1[11] = 8'h00;
    r_digit1[12] = 8'h00;
    r_digit1[13] = 8'h00;
    r_digit1[14] = 8'h00;
    r_digit1[15] = 8'h00;
    r_digit2[0] = 8'hBD;
    r_digit2[1] = 8'h90;
    r_digit2[2] = 8'hA7;
    r_digit2[3] = 8'hB6;
    r_digit2[4] = 8'h9A;
    r_digit2[5] = 8'h3E;
    r_digit2[6] = 8'h3F;
    r_digit2[7] = 8'hB0;
    r_digit2[8] = 8'hBF;
    r_digit2[9] = 8'hBE;  
    r_digit2[10] = 8'h00;
    r_digit2[11] = 8'h00;
    r_digit2[12] = 8'h00;
    r_digit2[13] = 8'h00;
    r_digit2[14] = 8'h00;
    r_digit2[15] = 8'h00;
end

reg [39:0] r_oldBcdData = 0;
reg r_oldMode = 0;
reg [79:0] r_dataToSend = 0;
reg [7:0] r_bitCounter = 0; // Which bit is currently being sent

// State machine initialisation
localparam s_IDLE = 0;
localparam s_SENDING = 1;
localparam s_LATCH = 2;
reg [1:0] r_state = s_IDLE;

// Outputs
assign o_ledClk = (r_state == s_SENDING ? w_slowClock : 0);
assign o_data = (r_state == s_SENDING ? r_dataToSend[r_bitCounter] : 0);
assign o_lat = (r_state == s_LATCH);
assign o_blank = i_blank;


always @(negedge w_slowClock or negedge i_resetn) begin
    if(~i_resetn) begin
        r_state <= s_IDLE;
        r_oldBcdData <= 0;
        r_dataToSend <= 0;
        r_bitCounter <= 0;
    end else begin
        case (r_state)
            s_IDLE: begin
                if (i_bcdData != r_oldBcdData || i_mode != r_oldMode) begin
                    // Have new data to send
                    r_oldBcdData <= i_bcdData;
                    r_oldMode <= i_mode;
                    r_state <= s_SENDING;
                    r_bitCounter <= 'd79;
                    r_dataToSend <= ({
                        r_digit2[i_bcdData[3:0]],
                        r_digit1[i_bcdData[7:4]],                        
                        r_digit2[i_bcdData[11:8]],
                        r_digit1[i_bcdData[15:12]],
                        r_digit2[i_bcdData[19:16]],
                        r_digit1[i_bcdData[23:20]],
                        r_digit2[i_bcdData[27:24]],
                        r_digit1[i_bcdData[31:28]],
                        r_digit2[i_bcdData[35:32]],
                        r_digit1[i_bcdData[39:36]]}
                        | (i_mode ? HIGH_RANGE_DP_MASK : LOW_RANGE_DP_MASK)
                    );    
                end else begin
                    r_state <= s_IDLE;
                    r_bitCounter <= 0;
                end    
            end  // case s_IDLE

            s_SENDING: begin
                // Actual sending of data is handled in assign statements
                if(r_bitCounter == 0)
                    r_state <= s_LATCH;
                else
                    r_bitCounter <= r_bitCounter - 1;
            end  // case s_SENDING

            s_LATCH: begin
                // Used to assert Latch signal
                r_state <= s_IDLE;
            end  // case s_LATCH

            default: begin
                r_state <= s_IDLE;
            end

        endcase


    end
end
endmodule
