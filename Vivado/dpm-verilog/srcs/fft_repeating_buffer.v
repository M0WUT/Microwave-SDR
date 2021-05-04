`timescale 1ns / 1ps
`default_nettype none
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: M0WUT
// 
// Create Date: 18.04.2020 13:52:27
// Design Name: 
// Module Name: fft_repeating_buffer
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: Buffers data to an FFT but allows for data overlap in the time 
//  domain to reduce the sample rate required. Input data is read on the rising
//  edge. Output data should be read on the rising edge. Note this does not support
//  back pressure. An external FIFO should be used before the FFT
// 
//  NOTE: THIS ASSUMES ALL OUTPUT DATA CAN BE SENT BEFORE THE NEXT SAMPLE ARRIVES
//
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////




module fft_repeating_buffer #(
    DATA_WIDTH = 16,
    FFT_LENGTH = 2048,  // Must be a power of two
    NEW_SAMPLES_PER_FFT = 512
)(
    // AXIS IN
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TDATA" *)
    input wire [DATA_WIDTH - 1 : 0] i_data, // Transfer Data (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TVALID" *)
    input wire i_valid, // Transfer valid (required)

    // AXIS OUT
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *)
    output reg [2 * DATA_WIDTH - 1 : 0] o_data, // Twice becuase imaginary data in MSB
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *)
    output reg o_valid, // Transfer valid (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TLAST" *)
    output reg o_last, // Transfer valid (required)

    // AXI Clock
    (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 i_clk CLK" *)
    (* X_INTERFACE_PARAMETER = "ASSOCIATED_BUSIF S_AXIS : M_AXIS, ASSOCIATED_RESET i_resetn" *)
    input wire i_clk,
    input wire i_resetn,

    // BRAM
    output reg [$clog2(2 * FFT_LENGTH - 1) - 1 : 0] o_bramAddr,  // Same as MEMORY_ADDRESS_WIDTH
    output reg [DATA_WIDTH - 1 : 0] o_bramDataIn,
    input wire [DATA_WIDTH - 1 : 0] i_bramDataOut,
    output reg o_bramWriteEnable,
    output wire o_bramEnable
);

localparam BUFFER_LENGTH = 2 * FFT_LENGTH;
localparam MEMORY_ADDRESS_WIDTH = $clog2(BUFFER_LENGTH - 1);


//Addresses
reg [MEMORY_ADDRESS_WIDTH - 1 : 0] r_readAddress = 0;
reg [MEMORY_ADDRESS_WIDTH - 1 : 0] r_writeAddress = 0;
reg [MEMORY_ADDRESS_WIDTH - 1 : 0] r_startAddress = FFT_LENGTH + NEW_SAMPLES_PER_FFT; // Address to start reading from


reg [$clog2(NEW_SAMPLES_PER_FFT) - 1 : 0] r_newSamples = 0;
reg r_sending = 0;
reg [MEMORY_ADDRESS_WIDTH - 1 : 0] r_sentSamples = 0;

reg [DATA_WIDTH - 1 : 0] r_readData;

assign o_bramEnable = 1;

always @(posedge i_clk or negedge i_resetn) begin
    if(~i_resetn) begin
        // Reset
        r_readAddress <= 0;
        r_writeAddress <= 0;
        r_sending <= 0;
        r_newSamples <= 0;
        r_sentSamples <= 0;
        r_startAddress <= FFT_LENGTH + NEW_SAMPLES_PER_FFT;

    end else begin
        // Normal running
        if(r_sending) begin
            // Sending data i.e. reading from BRAM
            o_bramWriteEnable <= 0;
            o_bramAddr <= r_readAddress;
            o_valid <= 1;
            o_data <= r_readData;

            r_readAddress <= r_readAddress + 1;

            // Check whether all samples have been sent
            if(r_sentSamples == FFT_LENGTH - 1) begin
                // Yes
                o_last <= 1;
                r_sending <= 0;
                r_sentSamples <= 0;
            end else begin
                // No
                o_last <= 0;
                r_sending <= 1;
                r_sentSamples <= r_sentSamples + 1;
            end

        end else begin
            // Reading data i.e. writing to BRAM
            o_data <= 0;
            o_valid <= 0;
            o_last <= 0;


            if(i_valid) begin
                // Have data to write to BRAM
                o_bramWriteEnable <= 1;
                o_bramAddr <= r_writeAddress;
                o_bramDataIn <= i_data;

                r_writeAddress <= r_writeAddress + 1;

                // Check whether data needs to be sent to the FFT
                if(r_newSamples == NEW_SAMPLES_PER_FFT - 1) begin
                    // Yes, starting sending data
                    r_sending <= 1;
                    r_newSamples <= 0;
                    r_readAddress <= r_startAddress;
                end else begin
                    // Nope, keep going
                    r_newSamples <= r_newSamples + 1;
                    r_sending <= 0;
                end
            end else begin
                // Nothing to write
                o_bramWriteEnable <= 0;
                o_bramDataIn <= 0;
            end
        end
    end
end


// Deals with stupid BRAM write on negedge, read on posedge crap. 
// Adds a half cycle delay so the BRAM is written and read on negedge
always @(posedge i_clk or negedge i_resetn) begin
    if(~i_resetn) begin
        r_readData <= 0;
    end else begin
        r_readData <= i_bramDataOut;
    end
end

endmodule