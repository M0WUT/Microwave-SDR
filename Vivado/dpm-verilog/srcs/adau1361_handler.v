`timescale 1ns / 1ps
`default_nettype none
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: M0WUT
// 
// Create Date: 25.02.2020 20:29:15
// Design Name: 
// Module Name: adau1361_handler
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: Drives ADAU1361 Audio ADC/DAC
//              Doesn't handle I2C register setup, waits for i_enable to go
//              high, will assume everything is fine and chuck data out
//
//              Currently just creates clock signals with correct timing
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module adau1361_handler #(
    MCLK_DIVIDER = 8  // How much to divide i_clk to generate MCLK
)(
    // AXI bus for Left Channel DAC Data
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_LEFT_DAC TDATA" *)
    input wire signed [15:0] iS_left_dac_data, // Transfer Data (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_LEFT_DAC TVALID" *)
    input wire i_left_dac_valid, // Transfer valid (required)

    // AXI bus for Left Channel DAC Data
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_RIGHT_DAC TDATA" *)
    input wire signed [15:0] iS_right_dac_data, // Transfer Data (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_RIGHT_DAC TVALID" *)
    input wire i_right_dac_valid, // Transfer valid (required)

    // AXI bus for Left Channel ADC Data
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_LEFT_ADC TDATA" *)
    output reg signed [15:0] oS_left_adc_data, // Transfer Data (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_LEFT_ADC TVALID" *)
    output reg o_left_adc_valid, // Transfer valid (required)

    // AXI bus for Right Channel ADC Data
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_RIGHT_ADC TDATA" *)
    output reg signed [15:0] oS_right_adc_data, // Transfer Data (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_RIGHT_ADC TVALID" *)
    output reg o_right_adc_valid, // Transfer valid (required)

    // AXI Clock
    (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 i_clk CLK" *)
    (* X_INTERFACE_PARAMETER = "ASSOCIATED_BUSIF S_AXIS_LEFT_DAC : S_AXIS_RIGHT_DAC : M_AXIS_LEFT_ADC : M_AXIS_RIGHT_ADC, ASSOCIATED_RESET i_resetn" *)
    input wire i_clk,
    input wire i_resetn,

    output reg o_mclk,
    output reg o_bclk,
    output reg o_lrclk,
    input wire i_adcData,
    output reg o_dacData,

    output reg o_error

);

// o_mclk should run at 256 x fs
// o_bclk should run at 32 x fs (16 bits per channel per sample * 2 channels)
// o_lrclk should run at fs (one sample per sample)

// so need 8 bonus bits to perform extra division by 256 for o_lrclk

reg [$clog2(MCLK_DIVIDER) + 8 - 1 : 0] r_dividerCounter = 0;
reg r_started = 0;

reg signed [31:0] r_dacData = 0;
reg [31:0] r_adcData = 0;
reg [5:0] r_bitCounter = 0;

wire w_lrclk, w_bclk, w_mclk;
assign w_lrclk = (r_bitCounter != 0) && (r_bitCounter < 6'd17);  // MSB of r_dividerCounter
assign w_bclk = r_dividerCounter[$clog2(MCLK_DIVIDER) + 8 - 1 - 5];  // 5 bits in from MSB (32 times faster)
assign w_mclk = r_dividerCounter[$clog2(MCLK_DIVIDER) + 8 - 1 - 8];  // 8 bits in from MSB (256 times faster)

always @(posedge i_clk) begin
    if(~i_resetn) begin
        // Reset state
        o_mclk <= 0;
        o_bclk <= 1;
        o_lrclk <= 0;
        r_dacData <= 0;
        r_bitCounter <= 0;
        o_dacData <= 0;
        o_error <= 0;
        r_dividerCounter <= 0;
        r_started <= 0;
        o_left_adc_valid <= 0;
        o_right_adc_valid <= 0;
    end else if(!r_started) begin
        // Waiting for initial start of frame
        if (i_left_dac_valid) begin
            r_dividerCounter <= 1;
            o_mclk <= w_mclk;
            o_bclk <= w_bclk;
            o_lrclk <= w_lrclk;
            r_dacData <= {iS_left_dac_data, iS_right_dac_data};
            r_bitCounter <= 6'd31;
            o_dacData <= 0;
            o_error <= 0;
            r_started <= 1;
            o_left_adc_valid <= 0;
            o_right_adc_valid <= 0;
        end            
    end else begin
        // Running state

        r_dividerCounter <= r_dividerCounter + 1;

        o_mclk <= w_mclk;
        o_bclk <= w_bclk;
        o_lrclk <= w_lrclk;

        o_left_adc_valid <= 0;
        o_right_adc_valid <= 0;

        if(~w_bclk && o_bclk) begin
            // Falling edge of BCLK, update DAC Data
            if(r_bitCounter == 0) begin
                r_bitCounter <= 6'd31;
                if(i_left_dac_valid && i_right_dac_valid) begin
                    r_dacData <= {iS_left_dac_data, iS_right_dac_data};
                    o_error <= 0;
                    o_dacData <= iS_left_dac_data[15];
                end else begin
                    o_error <= 1;
                end
            end else begin
                o_dacData <= r_dacData[r_bitCounter - 1];
                r_bitCounter <= r_bitCounter - 1;
                o_error <= (i_left_dac_valid || i_right_dac_valid);
            end
        end

        if(w_bclk && ~o_bclk) begin
            // Rising edge of BCLK, read ADC Data
            r_adcData <= {r_adcData[30:0], i_adcData};
            if(r_bitCounter == 6'd31) begin
                oS_left_adc_data <= r_adcData[31:16];
                oS_right_adc_data <= r_adcData[15:0];
                o_left_adc_valid <= 1'b1;                
                o_right_adc_valid <= 1'b1;
            end
        end
    end

end
endmodule
