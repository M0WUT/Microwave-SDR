
`timescale 1 ns / 1 ps

	module SDR_Status_Registers_v0_1 #
	(
		// Users to add parameters here
		parameter integer MAJOR_VERSION = 0,

		parameter integer MINOR_VERSION = 1,
		// User parameters ends
		// Do not modify the parameters beyond this line


		// Parameters of Axi Slave Bus Interface S00_AXI
		parameter integer C_S00_AXI_DATA_WIDTH	= 32,
		parameter integer C_S00_AXI_ADDR_WIDTH	= 7
	)
	(
		// Users to add ports here


		/////////////////////////////
		// Frequency control stuff //
		/////////////////////////////
		output wire [31:0] o_displayFrequency,  // Binary, to be interpreted according to o_displayFrequencyMode
		output wire o_displayFrequencyMode,  // 0 = o_frequency is expressed in Hz, 1 = o_frequency is expressed in 10s of Hz
		output wire o_displayFrequencyBlank,  // 0 = LED Display enabled, 1 = LED Display blanked NB. This is inverted compared to reg


		///////////////////////////
		// Receive chain control //
		///////////////////////////
		output wire o_adcRandom,
		output wire o_adcDither,
		output wire [7:0] o_demodMode,  // If K1JT invents more than 255 modes, we're all in trouble
		output wire [31:0] o_rfPhaseAccumulatorAngle1,
		
	    ///////////////////
		// Stuff for FFT //
		///////////////////
		output wire [31:0] o_fftPhaseAccumulatorAngle,	
		output wire [7:0] o_spanDivider,


		// User ports ends
		// Do not modify the ports beyond this line


		// Ports of Axi Slave Bus Interface S00_AXI
		input wire  s00_axi_aclk,
		input wire  s00_axi_aresetn,
		input wire [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_awaddr,
		input wire [2 : 0] s00_axi_awprot,
		input wire  s00_axi_awvalid,
		output wire  s00_axi_awready,
		input wire [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_wdata,
		input wire [(C_S00_AXI_DATA_WIDTH/8)-1 : 0] s00_axi_wstrb,
		input wire  s00_axi_wvalid,
		output wire  s00_axi_wready,
		output wire [1 : 0] s00_axi_bresp,
		output wire  s00_axi_bvalid,
		input wire  s00_axi_bready,
		input wire [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_araddr,
		input wire [2 : 0] s00_axi_arprot,
		input wire  s00_axi_arvalid,
		output wire  s00_axi_arready,
		output wire [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_rdata,
		output wire [1 : 0] s00_axi_rresp,
		output wire  s00_axi_rvalid,
		input wire  s00_axi_rready
	);
// Instantiation of Axi Bus Interface S00_AXI
	SDR_Status_Registers_v0_1_S00_AXI # ( 
		.C_S_AXI_DATA_WIDTH(C_S00_AXI_DATA_WIDTH),
		.C_S_AXI_ADDR_WIDTH(C_S00_AXI_ADDR_WIDTH),
		.MAJOR_VERSION(MAJOR_VERSION),
		.MINOR_VERSION(MINOR_VERSION)
	) SDR_Status_Registers_v0_1_S00_AXI_inst (
		.S_AXI_ACLK(s00_axi_aclk),
		.S_AXI_ARESETN(s00_axi_aresetn),
		.S_AXI_AWADDR(s00_axi_awaddr),
		.S_AXI_AWPROT(s00_axi_awprot),
		.S_AXI_AWVALID(s00_axi_awvalid),
		.S_AXI_AWREADY(s00_axi_awready),
		.S_AXI_WDATA(s00_axi_wdata),
		.S_AXI_WSTRB(s00_axi_wstrb),
		.S_AXI_WVALID(s00_axi_wvalid),
		.S_AXI_WREADY(s00_axi_wready),
		.S_AXI_BRESP(s00_axi_bresp),
		.S_AXI_BVALID(s00_axi_bvalid),
		.S_AXI_BREADY(s00_axi_bready),
		.S_AXI_ARADDR(s00_axi_araddr),
		.S_AXI_ARPROT(s00_axi_arprot),
		.S_AXI_ARVALID(s00_axi_arvalid),
		.S_AXI_ARREADY(s00_axi_arready),
		.S_AXI_RDATA(s00_axi_rdata),
		.S_AXI_RRESP(s00_axi_rresp),
		.S_AXI_RVALID(s00_axi_rvalid),
		.S_AXI_RREADY(s00_axi_rready),

		// M0WUT added IO
		.o_displayFrequency(o_displayFrequency),
		.o_displayFrequencyMode(o_displayFrequencyMode),
		.o_displayFrequencyBlank(o_displayFrequencyBlank),
		.o_adcRandom(o_adcRandom),
		.o_adcDither(o_adcDither),
		.o_demodMode(o_demodMode),
		.o_rfPhaseAccumulatorAngle1(o_rfPhaseAccumulatorAngle1),
		.o_fftPhaseAccumulatorAngle(o_fftPhaseAccumulatorAngle),
		.o_spanDivider(o_spanDivider)
	);

	// Add user logic here

	// User logic ends

	endmodule
