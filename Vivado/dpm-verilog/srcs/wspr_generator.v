`timescale 1ns / 1ps
`default_nettype none
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.02.2021 21:12:18
// Design Name: 
// Module Name: wspr_generator
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


module wspr_generator#(
    SAMPLE_FREQ = 80e6,
    OUTPUT_AMPLITUDE = 32765
)(
    input wire i_clk,
    input wire i_resetn,
    input wire i_start,
    output wire signed [31:0] oS_phaseAngle,
    output wire signed [15:0] oS_amplitude
);

// WSPR Tone shift
localparam TX_SHIFT = 1.4648;

// Tone time (number of clock cycles per tone)
localparam TONE_TIME = 54613333;

// TX Frequency for each symbol
localparam TONE0 = 756834978;
localparam TONE1 = 756835056;
localparam TONE2 = 756835135;
localparam TONE3 = 756835214;

wire [31:0] r_txTones [3:0];

assign r_txTones[0] = TONE0;
assign r_txTones[1] = TONE1;
assign r_txTones[2] = TONE2;
assign r_txTones[3] = TONE3;

wire [1:0] r_wsprValues [161:0];

assign r_wsprValues[0] = 3;
assign r_wsprValues[1] = 1;
assign r_wsprValues[2] = 2;
assign r_wsprValues[3] = 2;
assign r_wsprValues[4] = 2;
assign r_wsprValues[5] = 0;
assign r_wsprValues[6] = 2;
assign r_wsprValues[7] = 0;
assign r_wsprValues[8] = 1;
assign r_wsprValues[9] = 0;
assign r_wsprValues[10] = 2;
assign r_wsprValues[11] = 2;
assign r_wsprValues[12] = 1;
assign r_wsprValues[13] = 1;
assign r_wsprValues[14] = 3;
assign r_wsprValues[15] = 0;
assign r_wsprValues[16] = 2;
assign r_wsprValues[17] = 0;
assign r_wsprValues[18] = 1;
assign r_wsprValues[19] = 2;
assign r_wsprValues[20] = 0;
assign r_wsprValues[21] = 3;
assign r_wsprValues[22] = 0;
assign r_wsprValues[23] = 3;
assign r_wsprValues[24] = 1;
assign r_wsprValues[25] = 1;
assign r_wsprValues[26] = 1;
assign r_wsprValues[27] = 2;
assign r_wsprValues[28] = 0;
assign r_wsprValues[29] = 0;
assign r_wsprValues[30] = 0;
assign r_wsprValues[31] = 0;
assign r_wsprValues[32] = 0;
assign r_wsprValues[33] = 0;
assign r_wsprValues[34] = 3;
assign r_wsprValues[35] = 0;
assign r_wsprValues[36] = 0;
assign r_wsprValues[37] = 1;
assign r_wsprValues[38] = 2;
assign r_wsprValues[39] = 1;
assign r_wsprValues[40] = 2;
assign r_wsprValues[41] = 2;
assign r_wsprValues[42] = 0;
assign r_wsprValues[43] = 0;
assign r_wsprValues[44] = 0;
assign r_wsprValues[45] = 2;
assign r_wsprValues[46] = 3;
assign r_wsprValues[47] = 0;
assign r_wsprValues[48] = 1;
assign r_wsprValues[49] = 1;
assign r_wsprValues[50] = 0;
assign r_wsprValues[51] = 2;
assign r_wsprValues[52] = 3;
assign r_wsprValues[53] = 3;
assign r_wsprValues[54] = 2;
assign r_wsprValues[55] = 1;
assign r_wsprValues[56] = 2;
assign r_wsprValues[57] = 0;
assign r_wsprValues[58] = 0;
assign r_wsprValues[59] = 3;
assign r_wsprValues[60] = 3;
assign r_wsprValues[61] = 2;
assign r_wsprValues[62] = 1;
assign r_wsprValues[63] = 0;
assign r_wsprValues[64] = 2;
assign r_wsprValues[65] = 2;
assign r_wsprValues[66] = 0;
assign r_wsprValues[67] = 3;
assign r_wsprValues[68] = 3;
assign r_wsprValues[69] = 2;
assign r_wsprValues[70] = 1;
assign r_wsprValues[71] = 0;
assign r_wsprValues[72] = 3;
assign r_wsprValues[73] = 0;
assign r_wsprValues[74] = 3;
assign r_wsprValues[75] = 2;
assign r_wsprValues[76] = 3;
assign r_wsprValues[77] = 0;
assign r_wsprValues[78] = 0;
assign r_wsprValues[79] = 1;
assign r_wsprValues[80] = 2;
assign r_wsprValues[81] = 0;
assign r_wsprValues[82] = 1;
assign r_wsprValues[83] = 2;
assign r_wsprValues[84] = 1;
assign r_wsprValues[85] = 3;
assign r_wsprValues[86] = 2;
assign r_wsprValues[87] = 2;
assign r_wsprValues[88] = 2;
assign r_wsprValues[89] = 3;
assign r_wsprValues[90] = 1;
assign r_wsprValues[91] = 2;
assign r_wsprValues[92] = 3;
assign r_wsprValues[93] = 2;
assign r_wsprValues[94] = 3;
assign r_wsprValues[95] = 0;
assign r_wsprValues[96] = 2;
assign r_wsprValues[97] = 2;
assign r_wsprValues[98] = 1;
assign r_wsprValues[99] = 2;
assign r_wsprValues[100] = 0;
assign r_wsprValues[101] = 2;
assign r_wsprValues[102] = 2;
assign r_wsprValues[103] = 2;
assign r_wsprValues[104] = 1;
assign r_wsprValues[105] = 2;
assign r_wsprValues[106] = 0;
assign r_wsprValues[107] = 1;
assign r_wsprValues[108] = 0;
assign r_wsprValues[109] = 0;
assign r_wsprValues[110] = 1;
assign r_wsprValues[111] = 1;
assign r_wsprValues[112] = 1;
assign r_wsprValues[113] = 2;
assign r_wsprValues[114] = 3;
assign r_wsprValues[115] = 1;
assign r_wsprValues[116] = 0;
assign r_wsprValues[117] = 2;
assign r_wsprValues[118] = 1;
assign r_wsprValues[119] = 1;
assign r_wsprValues[120] = 0;
assign r_wsprValues[121] = 3;
assign r_wsprValues[122] = 0;
assign r_wsprValues[123] = 2;
assign r_wsprValues[124] = 2;
assign r_wsprValues[125] = 1;
assign r_wsprValues[126] = 1;
assign r_wsprValues[127] = 1;
assign r_wsprValues[128] = 2;
assign r_wsprValues[129] = 2;
assign r_wsprValues[130] = 2;
assign r_wsprValues[131] = 2;
assign r_wsprValues[132] = 0;
assign r_wsprValues[133] = 3;
assign r_wsprValues[134] = 0;
assign r_wsprValues[135] = 3;
assign r_wsprValues[136] = 2;
assign r_wsprValues[137] = 2;
assign r_wsprValues[138] = 1;
assign r_wsprValues[139] = 3;
assign r_wsprValues[140] = 0;
assign r_wsprValues[141] = 0;
assign r_wsprValues[142] = 0;
assign r_wsprValues[143] = 0;
assign r_wsprValues[144] = 2;
assign r_wsprValues[145] = 2;
assign r_wsprValues[146] = 2;
assign r_wsprValues[147] = 3;
assign r_wsprValues[148] = 1;
assign r_wsprValues[149] = 2;
assign r_wsprValues[150] = 3;
assign r_wsprValues[151] = 2;
assign r_wsprValues[152] = 3;
assign r_wsprValues[153] = 1;
assign r_wsprValues[154] = 0;
assign r_wsprValues[155] = 2;
assign r_wsprValues[156] = 2;
assign r_wsprValues[157] = 3;
assign r_wsprValues[158] = 3;
assign r_wsprValues[159] = 0;
assign r_wsprValues[160] = 2;
assign r_wsprValues[161] = 0;


reg [$clog2(752640000) - 1 : 0] r_delayCounter;
reg [7:0] r_toneCounter;
reg r_state;

wire [1:0] w_wsprTone;
assign w_wsprTone = r_wsprValues[r_toneCounter];



assign oS_phaseAngle = r_txTones[w_wsprTone];
assign oS_amplitude = (r_state ? OUTPUT_AMPLITUDE : 0);  

always @(posedge i_clk or negedge i_resetn) begin
    if(~i_resetn) begin
        r_toneCounter <= 0;
        r_delayCounter <= 0;
        r_state <= 1;
    end else begin
        if(r_state == 0) begin
            if(r_delayCounter >= 752640000) begin
                r_toneCounter <= 0;
                r_delayCounter <= 0;
                r_state <= 1;
            end else begin
                r_delayCounter <= r_delayCounter + 1;
            end
        end else begin
            if(r_delayCounter >= TONE_TIME) begin
                r_delayCounter <= 0;
                if(r_toneCounter >= 161)
                    r_state <= 0;
                else
                    r_toneCounter <= r_toneCounter + 1;
            end else begin
                r_delayCounter <= r_delayCounter + 1;
            end
        end
    end
end

endmodule
