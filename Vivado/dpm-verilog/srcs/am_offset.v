`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.03.2021 20:56:01
// Design Name: 
// Module Name: am_offset
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


module am_offset #(
    DATA_WIDTH = 16
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
    input wire i_resetn 
);

localparam OFFSET = $signed(2 ** (DATA_WIDTH - 2));

wire signed [DATA_WIDTH - 1 : 0] wS_data;
assign wS_data = iS_data >>> 1;

always @(posedge i_clk) begin
    if(~i_resetn) begin
        oS_data <= 0;
        o_valid <= 0;
    end else begin
        oS_data <= wS_data + OFFSET;
        o_valid <= i_valid;
    end
end

endmodule
