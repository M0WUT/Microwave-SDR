
// Normally AXI is automatically inferred.  However, if the names of your ports do not match, you can force the
// the creation of an interface and map the physical ports to the logical ports by using the X_INTERFACE_INFO
// attribute before each physical port
// Parameters are typically computed by the Block Diagram and annotated onto the cell (no need to specify these)
// axis - AMBA AXI4-Stream Interface (slave directions)
// 
// Allowed parameters:
//  CLK_DOMAIN                - Clk Domain                (string default: <blank>) 
//  PHASE                     - Phase                     (float) 
//  FREQ_HZ                   - Frequency                 (float default: 100000000) 
//  LAYERED_METADATA          - Layered Metadata          (string default: <blank>) 
//  HAS_TLAST                 - Has Tlast                 (long) {false - 0, true - 1}
//  HAS_TKEEP                 - Has Tkeep                 (long) {false - 0, true - 1}
//  HAS_TSTRB                 - Has Tstrb                 (long) {false - 0, true - 1}
//  HAS_TREADY                - Has Tready                (long) {false - 0, true - 1}
//  TUSER_WIDTH               - Tuser Width               (long) 
//  TID_WIDTH                 - Tid Width                 (long) 
//  TDEST_WIDTH               - Tdest Width               (long) 
//  TDATA_NUM_BYTES           - Tdata Num Bytes           (long) 
module axis_breakout #(
    DATA_WIDTH = 16
)(  
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TDATA" *)
  input signed [DATA_WIDTH - 1 : 0] s_tdata, // Transfer Data (optional) 
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TVALID" *)
  input s_tvalid, // Transfer valid (required)
  input s_axis_aclk,  // Don't need this but it stops Vivado complaining about clock frequencies
  input s_axis_aresetn,

  output wire signed [DATA_WIDTH - 1 : 0] o_data,
  output wire o_valid
);

assign o_data = s_tdata;
assign o_valid = s_tvalid;

endmodule
			