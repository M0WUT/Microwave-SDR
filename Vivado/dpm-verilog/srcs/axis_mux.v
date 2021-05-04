`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.04.2021 22:59:14
// Design Name: 
// Module Name: axis_mux
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


module axis_mux#(
    DATA_WIDTH = 16
)(
    // AXIS OUTPUT
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT TDATA" *)
    output reg signed [DATA_WIDTH - 1:0] oS_data, // Transfer Data (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT TVALID" *)
    output reg o_valid, // Transfer valid (required)

    // Control Input
    input wire [2:0] i_ctl,
    input wire i_en_n,

    // Output
    output reg o_enabled,

    // Input 0
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_INPUT0 TDATA" *)
    input wire signed [DATA_WIDTH - 1:0] iS_data0, // Transfer Data (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_INPUT0 TVALID" *)
    input wire i_valid0, // Transfer valid (required)

    // Input 1
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_INPUT1 TDATA" *)
    input wire signed [DATA_WIDTH - 1:0] iS_data1, // Transfer Data (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_INPUT1 TVALID" *)
    input wire i_valid1, // Transfer valid (required)

    // Input 2
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_INPUT2 TDATA" *)
    input wire signed [DATA_WIDTH - 1:0] iS_data2, // Transfer Data (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_INPUT2 TVALID" *)
    input wire i_valid2, // Transfer valid (required)

    // Input 3
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_INPUT3 TDATA" *)
    input wire signed [DATA_WIDTH - 1:0] iS_data3, // Transfer Data (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_INPUT3 TVALID" *)
    input wire i_valid3, // Transfer valid (required)

    // Input 4
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_INPUT4 TDATA" *)
    input wire signed [DATA_WIDTH - 1:0] iS_data4, // Transfer Data (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_INPUT4 TVALID" *)
    input wire i_valid4, // Transfer valid (required)

    // Input 5
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_INPUT5 TDATA" *)
    input wire signed [DATA_WIDTH - 1:0] iS_data5, // Transfer Data (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_INPUT5 TVALID" *)
    input wire i_valid5, // Transfer valid (required)

    // Input 6
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_INPUT6 TDATA" *)
    input wire signed [DATA_WIDTH - 1:0] iS_data6, // Transfer Data (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_INPUT6 TVALID" *)
    input wire i_valid6, // Transfer valid (required)

    // Input 7
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_INPUT7 TDATA" *)
    input wire signed [DATA_WIDTH - 1:0] iS_data7, // Transfer Data (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_INPUT7 TVALID" *)
    input wire i_valid7, // Transfer valid (required)

    // AXI Clock
    (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 i_clk CLK" *)
    (* X_INTERFACE_PARAMETER = "ASSOCIATED_BUSIF M_AXIS_OUTPUT : S_AXIS_INPUT0 : S_AXIS_INPUT1 : S_AXIS_INPUT2 : S_AXIS_INPUT3 : S_AXIS_INPUT4 : S_AXIS_INPUT5 : S_AXIS_INPUT6 : S_AXIS_INPUT7, ASSOCIATED_RESET i_resetn" *)
    input wire i_clk,
    input wire i_resetn
);

always @(posedge i_clk) begin
    if(i_en_n) begin
        oS_data <= 0;
        o_valid <= 0;
        o_enabled <= 0;
    end else begin
        o_enabled <= 1;
        case (i_ctl)
            3'd0: begin
                oS_data <= iS_data0;
                o_valid <= i_valid0;
            end
            3'd1: begin
                oS_data <= iS_data1;
                o_valid <= i_valid1;
            end
            3'd2: begin
                oS_data <= iS_data2;
                o_valid <= i_valid2;
            end
            3'd3: begin
                oS_data <= iS_data3;
                o_valid <= i_valid3;
            end
            3'd4: begin
                oS_data <= iS_data4;
                o_valid <= i_valid4;
            end
            3'd5: begin
                oS_data <= iS_data5;
                o_valid <= i_valid5;
            end
            3'd6: begin
                oS_data <= iS_data6;
                o_valid <= i_valid6;
            end
            3'd7: begin
                oS_data <= iS_data7;
                o_valid <= i_valid7;
            end
        endcase
    end
    

end
endmodule
