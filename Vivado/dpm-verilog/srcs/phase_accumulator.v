`timescale 1ns / 1ps
//`default_nettype none
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: M0WUT
// 
// Create Date: 15.02.2020 09:59:21
// Design Name: 
// Module Name: phase_accumulator
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description:     Ouput oS_phaseAngle is a signed angle scaled to 32 bits. -2^31 <= oS_phaseAngle <= 2^31 - 1  
//                  oS_phaseAngle is increased on every posedge of i_adcClock by iS_phaseDelta which is expected to use the 
//                  same units
// 
// Dependencies:    
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module phase_accumulator(

    // Phase delta input
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_ANGLE_DELTA TDATA" *)
    input wire signed [31:0] iS_phaseDelta, // Transfer Data (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_ANGLE_DELTA TVALID" *)
    input wire i_valid, // Transfer valid (required)

    // X.sin(theta) + Y.cos(theta) output
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_ANGLE TDATA" *)
    output reg signed [31:0] oS_phaseAngle, // Transfer Data (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_ANGLE TVALID" *)
    output reg o_valid, // Transfer valid (required)

    // AXI Clock
    (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 i_clk CLK" *)
    (* X_INTERFACE_PARAMETER = "ASSOCIATED_BUSIF S_AXIS_X : S_AXIS_ANGLE_DELTA : M_AXIS_ANGLE, ASSOCIATED_RESET i_resetn" *)
    input wire i_clk,
    input wire i_resetn
);

reg signed [31:0] r_phaseDelta;

always @(posedge i_clk) begin
    if(~i_resetn) begin
        oS_phaseAngle <= 0;
        r_phaseDelta <= 0;
        o_valid <= 0;
    end else begin
        if(i_valid) begin
            r_phaseDelta <= iS_phaseDelta;
        end
        oS_phaseAngle <= oS_phaseAngle + (i_valid ? iS_phaseDelta : r_phaseDelta);
        o_valid <= i_valid;
    end
end

endmodule
