`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.04.2021 22:59:14
// Design Name: 
// Module Name: axis_demux
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


module axis_demux#(
    DATA_WIDTH = 16
)(
    // AXIS Input
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DATA TDATA" *)
    input wire signed [DATA_WIDTH - 1:0] iS_data, // Transfer Data (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DATA TVALID" *)
    input wire i_valid, // Transfer valid (required)

    // Control Input
    input wire [2:0] i_ctl,

    // Output 0
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT0 TDATA" *)
    output reg signed [DATA_WIDTH - 1:0] oS_data0, // Transfer Data (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT0 TVALID" *)
    output reg o_valid0, // Transfer valid (required)

    // Output 1
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT1 TDATA" *)
    output reg signed [DATA_WIDTH - 1:0] oS_data1, // Transfer Data (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT1 TVALID" *)
    output reg o_valid1, // Transfer valid (required)

    // Output 2
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT2 TDATA" *)
    output reg signed [DATA_WIDTH - 1:0] oS_data2, // Transfer Data (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT2 TVALID" *)
    output reg o_valid2, // Transfer valid (required)

    // Output 3
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT3 TDATA" *)
    output reg signed [DATA_WIDTH - 1:0] oS_data3, // Transfer Data (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT3 TVALID" *)
    output reg o_valid3, // Transfer valid (required)

    // Output 4
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT4 TDATA" *)
    output reg signed [DATA_WIDTH - 1:0] oS_data4, // Transfer Data (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT4 TVALID" *)
    output reg o_valid4, // Transfer valid (required)

    // Output 5
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT5 TDATA" *)
    output reg signed [DATA_WIDTH - 1:0] oS_data5, // Transfer Data (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT5 TVALID" *)
    output reg o_valid5, // Transfer valid (required)

    // Output 6
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT6 TDATA" *)
    output reg signed [DATA_WIDTH - 1:0] oS_data6, // Transfer Data (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT6 TVALID" *)
    output reg o_valid6, // Transfer valid (required)

    // Output 7
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT7 TDATA" *)
    output reg signed [DATA_WIDTH - 1:0] oS_data7, // Transfer Data (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_OUTPUT7 TVALID" *)
    output reg o_valid7, // Transfer valid (required)

    // AXI Clock
    (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 i_clk CLK" *)
    (* X_INTERFACE_PARAMETER = "ASSOCIATED_BUSIF S_AXIS_X : S_AXIS_DATA : M_AXIS_OUTPUT0 : M_AXIS_OUTPUT1 : M_AXIS_OUTPUT2 : M_AXIS_OUTPUT3 : M_AXIS_OUTPUT4 : M_AXIS_OUTPUT5 : M_AXIS_OUTPUT6 : M_AXIS_OUTPUT7, ASSOCIATED_RESET i_resetn" *)
    input wire i_clk,
    input wire i_resetn
);

always @(posedge i_clk) begin
    oS_data0 <= 0;
    oS_data1 <= 0;
    oS_data2 <= 0;
    oS_data3 <= 0;
    oS_data4 <= 0;
    oS_data5 <= 0;
    oS_data6 <= 0;
    oS_data7 <= 0;

    o_valid0 <= 0;
    o_valid1 <= 0;
    o_valid2 <= 0;
    o_valid3 <= 0;
    o_valid4 <= 0;
    o_valid5 <= 0;
    o_valid6 <= 0;
    o_valid7 <= 0;

    case (i_ctl)
        3'd0: begin
            oS_data0 <= iS_data;
            o_valid0 <= i_valid;
        end
        3'd1: begin
            oS_data1 <= iS_data;
            o_valid1 <= i_valid;
        end
        3'd2: begin
            oS_data2 <= iS_data;
            o_valid2 <= i_valid;
        end
        3'd3: begin
            oS_data3 <= iS_data;
            o_valid3 <= i_valid;
        end
        3'd4: begin
            oS_data4 <= iS_data;
            o_valid4 <= i_valid;
        end
        3'd5: begin
            oS_data5 <= iS_data;
            o_valid5 <= i_valid;
        end
        3'd6: begin
            oS_data6 <= iS_data;
            o_valid6 <= i_valid;
        end
        3'd7: begin
            oS_data7 <= iS_data;
            o_valid7 <= i_valid;
        end
    endcase
    

end
endmodule
