`timescale 1ns / 1ps
`default_nettype none
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: M0WUT
// 
// Create Date: 10.02.2020 19:20:06
// Design Name: 
// Module Name: adc_handler
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: Takes data from LTC2216 and unscrambles (if needed) and outputs in 
//              whatever form it comes from the ADC in
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module adc_handler(
        // Output AXIS
        (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_S TDATA" *)
        output reg signed [15:0] oS_data, // Transfer Data (optional)
        (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_S TVALID" *)
        output wire o_valid, // Transfer valid (required)

        input wire signed [15:0] iS_data,
        input wire i_overflow,  // TODO handler overflow warnings
        input wire i_random,    // These are passed through but are needed to allow 
                                // correct decode of the data                            
        input wire i_dither,
        output reg o_random,
        output reg o_dither,

        // AXI Clock
        (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 i_clk CLK" *)
        (* X_INTERFACE_PARAMETER = "ASSOCIATED_BUSIF M_AXIS_S" *)
        input wire i_clk
);

reg r_random;
reg r_dither;

reg signed [15:0] rS_data;

assign o_valid = 1;


always @(negedge i_clk) begin
    r_random <= i_random;
    r_dither <= i_dither;
    rS_data <= iS_data; 
end

always @(posedge i_clk) begin
        oS_data <= (r_random ? {
            rS_data[15] ^ rS_data[0],
            rS_data[14] ^ rS_data[0],
            rS_data[13] ^ rS_data[0],
            rS_data[12] ^ rS_data[0],
            rS_data[11] ^ rS_data[0],
            rS_data[10] ^ rS_data[0],
            rS_data[9] ^ rS_data[0],
            rS_data[8] ^ rS_data[0],
            rS_data[7] ^ rS_data[0],
            rS_data[6] ^ rS_data[0],
            rS_data[5] ^ rS_data[0],
            rS_data[4] ^ rS_data[0],
            rS_data[3] ^ rS_data[0],
            rS_data[2] ^ rS_data[0],
            rS_data[1] ^ rS_data[0],
            rS_data[0]
        } : rS_data);
        o_random <= r_random;
        o_dither <= r_dither;
end

endmodule
