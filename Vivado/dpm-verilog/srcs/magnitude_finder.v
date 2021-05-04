`timescale 1ns / 1ps
//`default_nettype none
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: M0WUT
// 
// Create Date: 15.02.2020 12:30:33
// Design Name: 
// Module Name: cordic
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


module magnitude_finder #(

    INPUT_DATA_WIDTH = 16,
    ITERATIONS = 16
)(
    input wire i_clk,
    input wire i_resetn,
    input wire i_valid,
    input wire i_last,
    input wire signed [INPUT_DATA_WIDTH - 1:0] iS_xIn,
    input wire signed [INPUT_DATA_WIDTH - 1:0] iS_yIn,
    output reg signed [INPUT_DATA_WIDTH - 1:0] oS_magnitude, 
    output reg o_valid,
    output reg o_last
);

localparam ANGLE_WIDTH = 32; // Doesn't nicely handle this changing yet.  

reg [ITERATIONS : 0] r_valid;
reg [ITERATIONS : 0] r_last;
// Need <ITERATIONS> inputs before output is valid
reg [31:0] r_counter = 0;

reg signed [INPUT_DATA_WIDTH:0] rS_x [ITERATIONS:0];
reg signed [INPUT_DATA_WIDTH:0] rS_y [ITERATIONS:0];


// This table is larger than we require, just saves re-generating
// it later if I change anything
wire signed [ANGLE_WIDTH - 1:0] w_cordicAngles [30:0];
assign w_cordicAngles[00] = 32'b00100000000000000000000000000000;
assign w_cordicAngles[01] = 32'b00010010111001000000010100011110;
assign w_cordicAngles[02] = 32'b00001001111110110011100001011011;
assign w_cordicAngles[03] = 32'b00000101000100010001000111010100;
assign w_cordicAngles[04] = 32'b00000010100010110000110101000011;
assign w_cordicAngles[05] = 32'b00000001010001011101011111100001;
assign w_cordicAngles[06] = 32'b00000000101000101111011000011110;
assign w_cordicAngles[07] = 32'b00000000010100010111110001010101;
assign w_cordicAngles[08] = 32'b00000000001010001011111001010011;
assign w_cordicAngles[09] = 32'b00000000000101000101111100101111;
assign w_cordicAngles[10] = 32'b00000000000010100010111110011000;
assign w_cordicAngles[11] = 32'b00000000000001010001011111001100;
assign w_cordicAngles[12] = 32'b00000000000000101000101111100110;
assign w_cordicAngles[13] = 32'b00000000000000010100010111110011;
assign w_cordicAngles[14] = 32'b00000000000000001010001011111010;
assign w_cordicAngles[15] = 32'b00000000000000000101000101111101;
assign w_cordicAngles[16] = 32'b00000000000000000010100010111110;
assign w_cordicAngles[17] = 32'b00000000000000000001010001011111;
assign w_cordicAngles[18] = 32'b00000000000000000000101000110000;
assign w_cordicAngles[19] = 32'b00000000000000000000010100011000;
assign w_cordicAngles[20] = 32'b00000000000000000000001010001100;
assign w_cordicAngles[21] = 32'b00000000000000000000000101000110;
assign w_cordicAngles[22] = 32'b00000000000000000000000010100011;
assign w_cordicAngles[23] = 32'b00000000000000000000000001010001;
assign w_cordicAngles[24] = 32'b00000000000000000000000000101001;
assign w_cordicAngles[25] = 32'b00000000000000000000000000010100;
assign w_cordicAngles[26] = 32'b00000000000000000000000000001010;
assign w_cordicAngles[27] = 32'b00000000000000000000000000000101;
assign w_cordicAngles[28] = 32'b00000000000000000000000000000011;
assign w_cordicAngles[29] = 32'b00000000000000000000000000000001;
assign w_cordicAngles[30] = 32'b00000000000000000000000000000001;



// Loading new data into CORDIC
always @(posedge i_clk or negedge i_resetn) begin
    if(~i_resetn) begin
        rS_x[0] <= 0;
        rS_y[0] <= 0;
        r_valid[0] <= 0;
        r_last[0] <= 0;
    end else begin
        rS_x[0] <= iS_xIn > 0 ? iS_xIn : -iS_xIn;
        rS_y[0] <= iS_yIn;
        r_valid[0] <= i_valid;        
        r_last[0] <= i_last;
    end
end

// Generating all of the stages of the CORDIC
genvar i;
generate
    for(i = 0; i < ITERATIONS; i = i + 1) begin
        wire w_angleSign;
        wire signed [INPUT_DATA_WIDTH : 0] wS_xShifted, wS_yShifted;

        assign wS_xShifted = rS_x[i] >>> i;
        assign wS_yShifted = rS_y[i] >>> i;

        assign w_angleSign = ~rS_y[i][INPUT_DATA_WIDTH];
        always @(posedge i_clk or negedge i_resetn) begin
            if(~i_resetn) begin
                rS_x[i+1] <= 0;
                rS_y[i+1] <= 0;
                r_valid[i+1] <= 0;
                r_last[i+1] <= 0;
            end else begin
                if(rS_y[i] == 0) begin
                    rS_x[i+1] <= rS_x[i];
                    rS_y[i+1] <= rS_y[i];
                end else begin
                    rS_x[i+1] <= (w_angleSign ? rS_x[i] + wS_yShifted : rS_x[i] - wS_yShifted);
                    rS_y[i+1] <= (w_angleSign ? rS_y[i] - wS_xShifted : rS_y[i] + wS_xShifted);
                end
                r_valid[i+1] <= r_valid[i];
                r_last[i+1] <= r_last[i];
            end
        end
    end
endgenerate

always @(negedge i_clk or negedge i_resetn) begin
    if(~i_resetn) begin
        oS_magnitude <= 0;
        o_valid <= 0;
        r_counter <= 0;
        o_last <= 0;
    end else begin
        o_valid <= r_valid[ITERATIONS];
        oS_magnitude <= (r_valid[ITERATIONS] ? rS_x[ITERATIONS][INPUT_DATA_WIDTH : 1] : oS_magnitude);
        r_counter <= ITERATIONS;
        o_last <= r_last[ITERATIONS];

    end
end

endmodule
