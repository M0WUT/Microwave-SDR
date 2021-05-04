`timescale 1ns / 1ps
`default_nettype none
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.03.2021 20:31:00
// Design Name: 
// Module Name: overdrive_warning
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


module overdrive_warning #(
    DATA_WIDTH = 16,
    OVERDRIVE_LEVEL = 0.95  // Fraction of maximum to trigger overload
)(
    // Input
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DATA TDATA" *)
    input wire signed [DATA_WIDTH - 1 : 0] iS_data, // Transfer Data (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DATA TVALID" *)
    input wire i_valid, // Transfer valid (required)

    // Output
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TDATA" *)
    output reg signed [DATA_WIDTH - 1 : 0] oS_data, // Transfer Data (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TVALID" *)
    output reg o_valid, // Transfer valid (required)

    (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 i_clk CLK" *)
    (* X_INTERFACE_PARAMETER = "ASSOCIATED_BUSIF S_AXIS_DATA : M_AXIS_DATA, ASSOCIATED_RESET i_resetn" *)

    input wire i_clk,
    input wire i_resetn,

    output reg o_positiveOverload,
    output reg o_negativeOverload
);

localparam POSITIVE_LIMIT = $signed($rtoi(OVERDRIVE_LEVEL * 2 ** (DATA_WIDTH - 1)));
localparam NEGATIVE_LIMIT = $signed(-1 * POSITIVE_LIMIT);

always @(posedge i_clk) begin
    if(~i_resetn) begin
        oS_data <= 0;
        o_valid <= 0;
        o_positiveOverload <= 0;
        o_negativeOverload <= 0;
    end else begin
        oS_data <= iS_data;
        o_valid <= i_valid;
        o_positiveOverload <= (iS_data > POSITIVE_LIMIT);
        o_negativeOverload <= (iS_data < NEGATIVE_LIMIT);
    end
end


endmodule
