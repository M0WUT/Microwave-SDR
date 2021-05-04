`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.05.2020 15:50:26
// Design Name: 
// Module Name: fft_data_selector
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


module fft_data_selector #(
    DATA_WIDTH = 16,
    FFT_LENGTH = 2048,  // Must be a power of two
    START_INDEX = 512,  // First Address that will be sent
    STOP_INDEX = 1535  // Last address that will be sent
)(
    // AXIS IN
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TDATA" *)
    input wire signed [DATA_WIDTH - 1 : 0] i_data, // Transfer Data (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TVALID" *)
    input wire i_valid, // Transfer valid (required)

    // AXIS OUT
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *)
    output reg signed [DATA_WIDTH - 1 : 0] o_data,
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *)
    output reg o_valid, // Transfer valid (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TLAST" *)
    output reg o_last, // Transfer valid (required)

    // AXI Clock
    (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 i_clk CLK" *)
    (* X_INTERFACE_PARAMETER = "ASSOCIATED_BUSIF S_AXIS : M_AXIS, ASSOCIATED_RESET i_resetn" *)
    input wire i_clk,
    input wire i_resetn
);

reg signed [DATA_WIDTH - 1 : 0] r_data;
reg r_last;
reg r_valid;
reg [$clog2(FFT_LENGTH - 1) - 1 : 0] r_dataCounter = 0;


always @(posedge i_clk or negedge i_resetn) begin
    if (~i_resetn) begin
        // Reset
        r_data <= 0;
        r_last <= 0;
        r_valid <= 0;
        r_dataCounter <= 0;
    end else begin
        if(i_valid) begin         
            if(r_dataCounter >= START_INDEX && r_dataCounter <= STOP_INDEX) begin
                r_valid <= 1;
                r_data <= i_data;
                r_last <= (r_dataCounter == STOP_INDEX);
            end else begin
                r_valid <= 0;
                r_data <= 0;
                r_last <= 0;
            end
            // Increment data counter
            if(r_dataCounter == FFT_LENGTH - 1) begin
                r_dataCounter <= 0;
            end else begin
                r_dataCounter <= r_dataCounter + 1;
            end
        end else begin
            r_data <= 0;
            r_valid <= 0;
            r_last <= 0;
        end
    end
end

always @(negedge i_clk or negedge i_resetn) begin
    if (~i_resetn) begin
        // Reset
        o_data <= 0;
        o_last <= 0;
        o_valid <= 0;
    end else begin
        // Normal running
        o_data <= r_data;
        o_last <= r_last;
        o_valid <= r_valid;
    end
end

endmodule