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


module cordic #(

    INPUT_DATA_WIDTH = 16,
    ITERATIONS = 16
)(
    // X input
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_X TDATA" *)
    input wire signed [INPUT_DATA_WIDTH - 1:0] iS_xIn, // Transfer Data (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_X TVALID" *)
    input wire i_xValid, // Transfer valid (required)

    // Y input
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_Y TDATA" *)
    input wire signed [INPUT_DATA_WIDTH - 1:0] iS_yIn, // Transfer Data (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_Y TVALID" *)
    input wire i_yValid, // Transfer valid (required)

    // Theta input
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_THETA TDATA" *)
    input wire signed [31:0] iS_angle, // Transfer Data (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_THETA TVALID" *)
    input wire i_angleValid, // Transfer valid (required)

    // X.cos(theta) - Y.sin(theta) output
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_X_COS_THETA_MINUS_Y_SIN_THETA TDATA" *)
    output reg signed [INPUT_DATA_WIDTH - 1:0] oS_xOut, // Transfer Data (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_X_COS_THETA_MINUS_Y_SIN_THETA TVALID" *)
    output reg o_xValid, // Transfer valid (required)

    // X.sin(theta) + Y.cos(theta) output
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_X_SIN_THETA_PLUS_Y_COS_THETA TDATA" *)
    output reg signed [INPUT_DATA_WIDTH - 1:0] oS_yOut, // Transfer Data (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_X_SIN_THETA_PLUS_Y_COS_THETA TVALID" *)
    output reg o_yValid, // Transfer valid (required)

    // AXI Clock
    (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 i_clk CLK" *)
    (* X_INTERFACE_PARAMETER = "ASSOCIATED_BUSIF S_AXIS_X : S_AXIS_Y : S_AXIS_THETA : M_AXIS_X_COS_THETA_MINUS_Y_SIN_THETA : M_AXIS_X_SIN_THETA_PLUS_Y_COS_THETA, ASSOCIATED_RESET i_resetn" *)
    input wire i_clk,
    input wire i_resetn,

    output reg o_error
);

reg r_valid = 0;
// Need <ITERATIONS> inputs before output is valid
reg [$clog2(ITERATIONS) + 1 : 0] r_counter = 0;

localparam ANGLE_WIDTH = 32;

reg signed [INPUT_DATA_WIDTH:0] rS_x [ITERATIONS:0];
reg signed [INPUT_DATA_WIDTH:0] rS_y [ITERATIONS:0];
reg signed [31:0] rS_angleErrors [ITERATIONS:0];
reg signed [32 + INPUT_DATA_WIDTH : 0] r_calcX;
reg signed [32 + INPUT_DATA_WIDTH : 0] r_calcY;
wire signed [32 + INPUT_DATA_WIDTH : 0] w_gainConstant;
reg r_bufValid;

// Magic number that allows CORDIC gain to be normalised to 1
assign w_gainConstant = 'h9b74edae;

// This table is larger than we require, just saves re-generating
// it later if I change anything
wire signed [31:0] w_cordicAngles [30:0];
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
always @(posedge i_clk) begin
    if(~i_resetn) begin
        rS_x[0] <= 0;
        rS_y[0] <= 0;
        rS_angleErrors[0] <= 0;
        r_valid <= 0;
        o_error <= 0;
    end else begin
        if(i_xValid & i_yValid && i_angleValid) begin
            // Copy new data into first position in the pipeline
            // CORDIC on works in the range -90<x<90 degrees so need to pre-rotate at start
            // Luckily top 2 bits in iS_angle divide the circle into the 4 quadrants
            // 00: 0<=x<90
            // 01: 90<=x<180
            // 10: 180<=x<270
            // 11: 270<=x<360
            
            case(iS_angle[ANGLE_WIDTH - 1 -: 2])
                // These two are valid inputs to CORDIC
                2'b00: begin
                    rS_x[0] <= iS_xIn;
                    rS_y[0] <= iS_yIn;
                    rS_angleErrors[0] <= iS_angle;
                end
                
                2'b11: begin
                    rS_x[0] <= iS_xIn;
                    rS_y[0] <= iS_yIn;
                    rS_angleErrors[0] <= iS_angle;
                end  

                2'b01: begin
                    // 90<=x<180

                    // Pre-rotate vector by 90 degrees
                    rS_x[0] <= -iS_yIn;
                    rS_y[0] <= iS_xIn;
                    // Subtract 90 from angle to be rotated by
                    rS_angleErrors[0] <= {2'b00, iS_angle[ANGLE_WIDTH - 3:0]};
                end

                2'b10: begin
                    // 180<=x<270

                    // Pre-rotate vector by -90 degrees
                    rS_x[0] <= iS_yIn;
                    rS_y[0] <= -iS_xIn; 

                    // Add 90 degrees to the angle to be rotated by
                    rS_angleErrors[0] <= {2'b11, iS_angle[ANGLE_WIDTH - 3:0]};
                end
            endcase
            r_valid <= 1;
        end else begin
            r_valid <= 0;
        end

        // Think this is sufficient to check - data must be valid together and
        // valid data without valid angle is a problem. Angle is likely to always be
        // valid so don't worry if angle is valid and data is not
        if((i_xValid != i_yValid) || (i_xValid && ~i_angleValid)) begin
            o_error <= 1;
        end else begin
            o_error <= 0;
        end
        
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

        assign w_angleSign = rS_angleErrors[i][ANGLE_WIDTH - 1];
        always @(posedge i_clk) begin
            if(i_xValid & i_yValid && i_angleValid) begin
                rS_x[i+1] <= (w_angleSign ? rS_x[i] + wS_yShifted : rS_x[i] - wS_yShifted);
                rS_y[i+1] <= (w_angleSign ? rS_y[i] - wS_xShifted : rS_y[i] + wS_xShifted);
                rS_angleErrors[i+1] <= (w_angleSign ? rS_angleErrors[i] + w_cordicAngles[i] : rS_angleErrors[i] - w_cordicAngles[i]);
            end
        end
    end
endgenerate

always @(posedge i_clk) begin
    if(~i_resetn) begin
        oS_xOut <= 0;
        oS_yOut <= 0;
        o_xValid <= 0;
        o_yValid <= 0;
        r_calcX <= 0;
        r_calcY <= 0;
        r_bufValid <= 0;
    end else begin
        // Copy raw values to intermediate buffer
        r_calcX <= rS_x[ITERATIONS] * w_gainConstant;
        r_calcY <= rS_y[ITERATIONS] * w_gainConstant;
        r_bufValid <= r_valid;
        // Copy intermediate buffer to output
        oS_xOut <= r_calcX[32 +: INPUT_DATA_WIDTH];
        oS_yOut <= r_calcY[32 +: INPUT_DATA_WIDTH];
        o_xValid <= r_bufValid;
        o_yValid <= r_bufValid;
    end
end

endmodule
