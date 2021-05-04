// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Wed Apr 21 23:24:36 2021
// Host        : dan-Desktop running 64-bit Ubuntu 18.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/dan/Microwave-SDR/Vivado/SDR_Full/test_board/vivado/test_board.srcs/sources_1/bd/zsys/ip/zsys_c_addsub_0_0/zsys_c_addsub_0_0_sim_netlist.v
// Design      : zsys_c_addsub_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "zsys_c_addsub_0_0,c_addsub_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_14,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module zsys_c_addsub_0_0
   (A,
    B,
    CLK,
    ADD,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [15:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [15:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 80000000, PHASE 0.000, CLK_DOMAIN zsys_adc_clk_n, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 add_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME add_intf, LAYERED_METADATA undef" *) input ADD;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type generated dependency signed format bool minimum {} maximum {}} value TRUE}}}} DATA_WIDTH 16}" *) output [15:0]S;

  wire [15:0]A;
  wire ADD;
  wire [15:0]B;
  wire CLK;
  wire [15:0]S;
  wire NLW_U0_C_OUT_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* c_a_type = "0" *) 
  (* c_a_width = "16" *) 
  (* c_add_mode = "2" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "0" *) 
  (* c_b_value = "0000000000000000" *) 
  (* c_b_width = "16" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "16" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  zsys_c_addsub_0_0_c_addsub_v12_0_14 U0
       (.A(A),
        .ADD(ADD),
        .B(B),
        .BYPASS(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .C_IN(1'b0),
        .C_OUT(NLW_U0_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* C_ADD_MODE = "2" *) (* C_AINIT_VAL = "0" *) (* C_A_TYPE = "0" *) 
(* C_A_WIDTH = "16" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "0" *) (* C_B_VALUE = "0000000000000000" *) 
(* C_B_WIDTH = "16" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) 
(* C_OUT_WIDTH = "16" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "c_addsub_v12_0_14" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module zsys_c_addsub_0_0_c_addsub_v12_0_14
   (A,
    B,
    CLK,
    ADD,
    C_IN,
    CE,
    BYPASS,
    SCLR,
    SSET,
    SINIT,
    C_OUT,
    S);
  input [15:0]A;
  input [15:0]B;
  input CLK;
  input ADD;
  input C_IN;
  input CE;
  input BYPASS;
  input SCLR;
  input SSET;
  input SINIT;
  output C_OUT;
  output [15:0]S;

  wire \<const0> ;
  wire [15:0]A;
  wire ADD;
  wire [15:0]B;
  wire CLK;
  wire [15:0]S;
  wire NLW_xst_addsub_C_OUT_UNCONNECTED;

  assign C_OUT = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_AINIT_VAL = "0" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* c_a_type = "0" *) 
  (* c_a_width = "16" *) 
  (* c_add_mode = "2" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "0" *) 
  (* c_b_value = "0000000000000000" *) 
  (* c_b_width = "16" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "16" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  zsys_c_addsub_0_0_c_addsub_v12_0_14_viv xst_addsub
       (.A(A),
        .ADD(ADD),
        .B(B),
        .BYPASS(1'b0),
        .CE(1'b0),
        .CLK(CLK),
        .C_IN(1'b0),
        .C_OUT(NLW_xst_addsub_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2019.1"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
dmmXCzwxW2FLu/vVGpJzoQ/uTl0t/oirVzDN8rGCQ/cshHIr5KZa8hMP1zjDcrW6js/9tSBuCaB1
Ioj63zjqZA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
N9Ijk+dhcsedFOz7GhClRR68iRquy2ZzjVLVhi5GByFuPpr/oGFn021AFcKE54GT1hqizIMvWGS0
qRbWSO/aiWGT8c930WMeayc4xm2b65tzi7UyXSjcZqyZqk5spgPewfSuL0LKD5R4+zccn3yeTyAR
Cpi6LZ2KmpRW5biXvss=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
M8NGALCMec7MmW5uPCxfU8HATjWU2XqyPU8phSDe3mtyor4pgfPtg5TJdKOytKhxa+fQwJxytwzI
KPxtYmaRH/KFiGrOvm7jO78NIlt31qN95S7sMYrLxORaZ4bbNMg4RfwEB0haV15qORczgxWEpvBX
6Qukl64ihp4NiBjXt4YYGoDiNMSczgOe3tLn7UWjfPQnsJ8aMxugelO5AciSBxAdohgLMRE3cu6p
gwakO6ytq1vAR8bqHLT8g/Kdsxn72SBHYdpkba0NfEvzzheOlZY7fNuWD48V6QefMjsX1taMkmQH
m38VdXlC6Ocia7H3zT8LvNLtxrpG8zyD+UI+sg==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
I1BukTJgP0oEpI/mdw6jwrYhUTr7MTzY5G/EvfuPKQfGzYRI1qLG+aEQeclA1P65+tkbstBEIIg8
ZhiouPVaom8KwKZHBX7eLpxvNBcYVFfnJb1ES5wdcph3sgGtaYKSpspp51oYPM6ZD7DmMGdoc/Wg
JVIUuIfRpo8AnEMfkayPkbwuB0VUKpz5BXS50B+5jvgK7cFe2gUp2ckThqzKUjViVB56Swsz+IQe
l7GvtTbuNcSwapfPtNHH0bWSQStfIzPZZm1A2IZ2WCYafRPkj7uibtKNgnKgIZs1197qomgXbb+b
fDx1iikgF8snJsPchukmgxkMSQtLntwbLs6H+w==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2019_02", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UNzBll4hVdQjkp7KJChMHZ9agdKjtTu8+3O75Phz7SpwUZ73Z533+9pCfaH7QI/cwqaVREb20HXT
ji2kU1DV7+Cwbshd08hvUBl23F60ITYS+3rluBLIFX3pzXhjjSu8HQpnxXppbCODvCiWrDLqRU/y
lcFf7B+yp5jK6vEY5xuh8is/oxSPNFwip6GSMqDnE45GU6kU+6n8FTk8pAZUNKnh3j0t6YzcwS3J
wYUhnJpEQYd7+0D/NPjEz0YFqzB8WCh70MxBRJzwdXpuRLiFzplysvw+eHjMPVeU/UPKJWuwWuwc
Bfxw0ThSXZit/SSD+BGhxjbEI9T6rh66FpqbTg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
F7AZy6dB5VKzcudhyRSKWKUbVrSs4vS9jtgDkM6KrVPs3ghP3AF2TeIDyl03EesBxeIQxHqq8thx
uVIGQN5wt92jkzGo61VyUoF2dYHY2dkK9PY4bicayI6rppCS18HnyCC5ODrTMKgOpoj+PEmghCZl
j8+i3NFWPAo6M/MAtVI=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
NQpRHEO/CEh2TWVl2zAKLb4TTDP4G4mQHrGzJeErDNbJ2L2B4iz3unsCjzHkoDagHoU9jeHYNzw1
EdgeGwokAwsWnHc0V18iEu5CZPPLrncpORhuc7qe0zJvoIFW4tgNZuIjFZI6bkrWzgxNYlkitGJ7
wQxgR+6ZenldybAjVF7d1R8FQmrEKWQ9ztmGHKMd9PfWD1VsbOoxbNA1tkQ3Suq2M9HDzUONaPQq
yMnGxLE4+4xTZZFVVFZeizNxqQcM1Y6s2MEUyS89U6rdAH95x9zDN8PGrif1SUWhpoz33cYp/IL8
acGyIWDbmuS0X+xsLC8cWcrO/MxKDk8bj12S7g==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
W2ZLxVMM2bO/6hqe8KRsBOYby+akb1JiKHhCv9fhS2DK483JVHKKDFtV5ZylpQSPfpmWVI6nDnNm
XtxOYqhOdd9wAHIVXly/nJQ3BORIgR42ZfKk3tkiYQd75XwTJmWjvIda5LTjKISy58Rg+7/yc6kX
SAKkQWzcaHy0VIrsbeLAK7Rz2vPrBQAwZijqUO1uD9pTa1ID2lBqRKOaN/lex50cPJ7PNmyesOUe
aisZi7+ubKWoKmZJmdUy4nKUk4a0FLkIqdFpmX+Bu5UVgWOF47nrEwh3c1MVRxWa1uvngQGGl026
FTa0G+nc1Q9KslAvMQ+fMbz+FbnTF3u/A9gizA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mxIJuWAoL/h8ZweujJVnkAuuLdM8BeBUTJ5dl8+xggYElhH5Sp5dBILFCODgC8Z+Uxkeey+1NiIr
3osv49VCv31W8VrXnCIeoZHdcKIudt3lKs6LgTzVjb+Cy/lBf3SX2xrMHN7Fph+WUHOSp0gdzKR3
h8FX9eLU7FW/IpwQlZEF2ivRI2Ei0ecKEQ8UDW9R48/pLrB0hwbiq7FdX2ZQli4n1lmWgr8O7Cc8
GIu3mN+puExllRyzIAyouhKCkJ2hQUEe8qMzDXm/ZnAa/VvLh+q5UilPwxqKipPivP/0L4S2o6OY
iF1PqmpkWZtfU1+UJnSsso2AllPuCNb4CWj8sA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YxkXATiXKLNx2QBIEE8+CoVERAYN0X4omb53saB0X49UDp9N5B0sGI0wIxn0wl1QGY9lQpLoXtiR
tIjNCNTKJmNjblMpYWk0/R+2I+pyfdNcjPQVJMifdnvcVbKs0JHW2q3zYISFKNKAVqqbntwzmexm
fOLK67R+F6tL/5eSLu/6UbxSF45jp/MpIWUbUTBnD8nEIHmJgKdK8gtYRWS+p4CW4ahNyvczLBe0
BVXyl2gKR26Fl60oMXQHucf5mfPvxw8A4upNeFz34Na3RYZcaiPRp8aYgQu0XFlMbe5FHaZL+nhL
WP3lw3OKk4l8m/kNrVgGIZKk3XnhWjvbWwOhEA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 13024)
`pragma protect data_block
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
syG1jYrpQf+CzCyCAeZhOJpMWr4qVCAAxmH9rA==
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
