`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.04.2021 20:42:57
// Design Name: 
// Module Name: level_limiter
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


module level_limiter#(
    DATA_WIDTH = 24,
    LIMIT_NUMBER_OF_BITS = 16
)(
    // Input channel
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DATA TDATA" *)
    input wire signed [DATA_WIDTH - 1 : 0] iS_data, // Transfer Data (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DATA TVALID" *)
    input wire i_valid, // Transfer valid (required)

    // Output channel
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TDATA" *)
    output reg signed [DATA_WIDTH - 1 : 0] oS_data, // Transfer Data (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TVALID" *)
    output reg o_valid, // Transfer valid (required)

    // AXI Clock
    (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 i_clk CLK" *)
    (* X_INTERFACE_PARAMETER = "ASSOCIATED_BUSIF S_AXIS_DATA : M_AXIS_DATA, ASSOCIATED_RESET i_resetn" *)
    input wire i_clk,
    input wire i_resetn,
    output reg o_clipping
);

localparam POSITIVE_LIMIT = $signed(2 ** (LIMIT_NUMBER_OF_BITS - 1));
localparam NEGATIVE_LIMIT = $signed(-1 * POSITIVE_LIMIT);

always @(posedge i_clk) begin
    if(~i_resetn) begin
        oS_data <= 0;
        o_valid <= 0;
        o_clipping <= 0;
    end else begin
        // Normal running
        o_valid <= i_valid;
        if(i_valid) begin
            if(iS_data > POSITIVE_LIMIT) begin
                oS_data <= POSITIVE_LIMIT;
                o_clipping <= 1;
            end else if(iS_data < NEGATIVE_LIMIT) begin
                oS_data <= NEGATIVE_LIMIT;
                o_clipping <= 1;
            end else begin
                oS_data <= iS_data;
                o_clipping <= 0;
            end
        end
    end
end

endmodule
