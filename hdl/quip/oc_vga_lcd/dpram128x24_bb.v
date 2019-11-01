// megafunction wizard: %RAM: 2-PORT%
// GENERATION: STANDARD
// VERSION: WM1.0
// MODULE: altsyncram 

// ============================================================
// File Name: dpram128x24_bb.v
// Megafunction Name(s):
// 			altsyncram
// ============================================================
// ************************************************************
// THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
//
// 4.1 Build 208 09/10/2004 SP 2 SJ Full Version
// ************************************************************


//Copyright (C) 1991-2004 Altera Corporation
//Any  megafunction  design,  and related netlist (encrypted  or  decrypted),
//support information,  device programming or simulation file,  and any other
//associated  documentation or information  provided by  Altera  or a partner
//under  Altera's   Megafunction   Partnership   Program  may  be  used  only
//to program  PLD  devices (but not masked  PLD  devices) from  Altera.   Any
//other  use  of such  megafunction  design,  netlist,  support  information,
//device programming or simulation file,  or any other  related documentation
//or information  is prohibited  for  any  other purpose,  including, but not
//limited to  modification,  reverse engineering,  de-compiling, or use  with
//any other  silicon devices,  unless such use is  explicitly  licensed under
//a separate agreement with  Altera  or a megafunction partner.  Title to the
//intellectual property,  including patents,  copyrights,  trademarks,  trade
//secrets,  or maskworks,  embodied in any such megafunction design, netlist,
//support  information,  device programming or simulation file,  or any other
//related documentation or information provided by  Altera  or a megafunction
//partner, remains with Altera, the megafunction partner, or their respective
//licensors. No other licenses, including any licenses needed under any third
//party's intellectual property, are provided herein.


// synopsys translate_off
`timescale 1 ps / 1 ps
// synopsys translate_on
module dpram128x24_bb (
	data,
	wren,
	wraddress,
	rdaddress,
	wrclock,
	rdclock,
	q);

	input	[23:0]  data;
	input	  wren;
	input	[6:0]  wraddress;
	input	[6:0]  rdaddress;
	input	  wrclock;
	input	  rdclock;
	output	[23:0]  q;

	wire [23:0] sub_wire0;
	wire [23:0] q = sub_wire0[23:0];

	altsyncram	altsyncram_component (
				.wren_a (wren),
				.clock0 (wrclock),
				.clock1 (rdclock),
				.address_a (wraddress),
				.address_b (rdaddress),
				.data_a (data),
				.q_b (sub_wire0)
				// synopsys translate_off
				,
				.aclr0 (),
				.aclr1 (),
				.byteena_a (),
				.byteena_b (),
				.rden_b (),
				.data_b (),
				.wren_b (),
				.q_a (),
				.clocken0 (),
				.clocken1 (),
				.addressstall_a (),
				.addressstall_b ()
				// synopsys translate_on
				);
	defparam
		altsyncram_component.intended_device_family = "Stratix",
		altsyncram_component.operation_mode = "DUAL_PORT",
		altsyncram_component.width_a = 24,
		altsyncram_component.widthad_a = 7,
		altsyncram_component.numwords_a = 128,
		altsyncram_component.width_b = 24,
		altsyncram_component.widthad_b = 7,
		altsyncram_component.numwords_b = 128,
		altsyncram_component.lpm_type = "altsyncram",
		altsyncram_component.width_byteena_a = 1,
		altsyncram_component.outdata_reg_b = "UNREGISTERED",
		altsyncram_component.indata_aclr_a = "NONE",
		altsyncram_component.wrcontrol_aclr_a = "NONE",
		altsyncram_component.address_aclr_a = "NONE",
		altsyncram_component.address_reg_b = "CLOCK1",
		altsyncram_component.address_aclr_b = "NONE",
		altsyncram_component.outdata_aclr_b = "NONE";


endmodule

// ============================================================
// CNX file retrieval info
// ============================================================
// Retrieval info: PRIVATE: MEM_IN_BITS NUMERIC "0"
// Retrieval info: PRIVATE: OPERATION_MODE NUMERIC "2"
// Retrieval info: PRIVATE: UseDPRAM NUMERIC "1"
// Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Stratix"
// Retrieval info: PRIVATE: VarWidth NUMERIC "0"
// Retrieval info: PRIVATE: WIDTH_WRITE_A NUMERIC "24"
// Retrieval info: PRIVATE: WIDTH_WRITE_B NUMERIC "24"
// Retrieval info: PRIVATE: WIDTH_READ_A NUMERIC "24"
// Retrieval info: PRIVATE: WIDTH_READ_B NUMERIC "24"
// Retrieval info: PRIVATE: MEMSIZE NUMERIC "3072"
// Retrieval info: PRIVATE: Clock NUMERIC "1"
// Retrieval info: PRIVATE: rden NUMERIC "0"
// Retrieval info: PRIVATE: BYTE_ENABLE_A NUMERIC "0"
// Retrieval info: PRIVATE: BYTE_ENABLE_B NUMERIC "0"
// Retrieval info: PRIVATE: BYTE_SIZE NUMERIC "8"
// Retrieval info: PRIVATE: Clock_A NUMERIC "0"
// Retrieval info: PRIVATE: Clock_B NUMERIC "0"
// Retrieval info: PRIVATE: REGdata NUMERIC "1"
// Retrieval info: PRIVATE: REGwraddress NUMERIC "1"
// Retrieval info: PRIVATE: REGwren NUMERIC "1"
// Retrieval info: PRIVATE: REGrdaddress NUMERIC "1"
// Retrieval info: PRIVATE: REGrren NUMERIC "1"
// Retrieval info: PRIVATE: REGq NUMERIC "1"
// Retrieval info: PRIVATE: INDATA_REG_B NUMERIC "0"
// Retrieval info: PRIVATE: WRADDR_REG_B NUMERIC "0"
// Retrieval info: PRIVATE: OUTDATA_REG_B NUMERIC "0"
// Retrieval info: PRIVATE: CLRdata NUMERIC "0"
// Retrieval info: PRIVATE: CLRwren NUMERIC "0"
// Retrieval info: PRIVATE: CLRwraddress NUMERIC "0"
// Retrieval info: PRIVATE: CLRrdaddress NUMERIC "0"
// Retrieval info: PRIVATE: CLRrren NUMERIC "0"
// Retrieval info: PRIVATE: CLRq NUMERIC "0"
// Retrieval info: PRIVATE: BYTEENA_ACLR_A NUMERIC "0"
// Retrieval info: PRIVATE: INDATA_ACLR_B NUMERIC "0"
// Retrieval info: PRIVATE: WRCTRL_ACLR_B NUMERIC "0"
// Retrieval info: PRIVATE: WRADDR_ACLR_B NUMERIC "0"
// Retrieval info: PRIVATE: OUTDATA_ACLR_B NUMERIC "0"
// Retrieval info: PRIVATE: BYTEENA_ACLR_B NUMERIC "0"
// Retrieval info: PRIVATE: enable NUMERIC "0"
// Retrieval info: PRIVATE: CLOCK_ENABLE_INPUT_A NUMERIC "0"
// Retrieval info: PRIVATE: CLOCK_ENABLE_OUTPUT_A NUMERIC "0"
// Retrieval info: PRIVATE: CLOCK_ENABLE_INPUT_B NUMERIC "0"
// Retrieval info: PRIVATE: CLOCK_ENABLE_OUTPUT_B NUMERIC "0"
// Retrieval info: PRIVATE: ADDRESSSTALL_A NUMERIC "0"
// Retrieval info: PRIVATE: ADDRESSSTALL_B NUMERIC "0"
// Retrieval info: PRIVATE: READ_DURING_WRITE_MODE_MIXED_PORTS NUMERIC "2"
// Retrieval info: PRIVATE: BlankMemory NUMERIC "1"
// Retrieval info: PRIVATE: MIFfilename STRING ""
// Retrieval info: PRIVATE: UseLCs NUMERIC "0"
// Retrieval info: PRIVATE: RAM_BLOCK_TYPE NUMERIC "0"
// Retrieval info: PRIVATE: MAXIMUM_DEPTH NUMERIC "0"
// Retrieval info: PRIVATE: INIT_FILE_LAYOUT STRING "PORT_B"
// Retrieval info: PRIVATE: JTAG_ENABLED NUMERIC "0"
// Retrieval info: PRIVATE: JTAG_ID STRING "NONE"
// Retrieval info: CONSTANT: INTENDED_DEVICE_FAMILY STRING "Stratix"
// Retrieval info: CONSTANT: OPERATION_MODE STRING "DUAL_PORT"
// Retrieval info: CONSTANT: WIDTH_A NUMERIC "24"
// Retrieval info: CONSTANT: WIDTHAD_A NUMERIC "7"
// Retrieval info: CONSTANT: NUMWORDS_A NUMERIC "128"
// Retrieval info: CONSTANT: WIDTH_B NUMERIC "24"
// Retrieval info: CONSTANT: WIDTHAD_B NUMERIC "7"
// Retrieval info: CONSTANT: NUMWORDS_B NUMERIC "128"
// Retrieval info: CONSTANT: LPM_TYPE STRING "altsyncram"
// Retrieval info: CONSTANT: WIDTH_BYTEENA_A NUMERIC "1"
// Retrieval info: CONSTANT: OUTDATA_REG_B STRING "UNREGISTERED"
// Retrieval info: CONSTANT: INDATA_ACLR_A STRING "NONE"
// Retrieval info: CONSTANT: WRCONTROL_ACLR_A STRING "NONE"
// Retrieval info: CONSTANT: ADDRESS_ACLR_A STRING "NONE"
// Retrieval info: CONSTANT: ADDRESS_REG_B STRING "CLOCK1"
// Retrieval info: CONSTANT: ADDRESS_ACLR_B STRING "NONE"
// Retrieval info: CONSTANT: OUTDATA_ACLR_B STRING "NONE"
// Retrieval info: USED_PORT: data 0 0 24 0 INPUT NODEFVAL data[23..0]
// Retrieval info: USED_PORT: wren 0 0 0 0 INPUT VCC wren
// Retrieval info: USED_PORT: q 0 0 24 0 OUTPUT NODEFVAL q[23..0]
// Retrieval info: USED_PORT: wraddress 0 0 7 0 INPUT NODEFVAL wraddress[6..0]
// Retrieval info: USED_PORT: rdaddress 0 0 7 0 INPUT NODEFVAL rdaddress[6..0]
// Retrieval info: USED_PORT: wrclock 0 0 0 0 INPUT NODEFVAL wrclock
// Retrieval info: USED_PORT: rdclock 0 0 0 0 INPUT NODEFVAL rdclock
// Retrieval info: CONNECT: @data_a 0 0 24 0 data 0 0 24 0
// Retrieval info: CONNECT: @wren_a 0 0 0 0 wren 0 0 0 0
// Retrieval info: CONNECT: q 0 0 24 0 @q_b 0 0 24 0
// Retrieval info: CONNECT: @address_a 0 0 7 0 wraddress 0 0 7 0
// Retrieval info: CONNECT: @address_b 0 0 7 0 rdaddress 0 0 7 0
// Retrieval info: CONNECT: @clock0 0 0 0 0 wrclock 0 0 0 0
// Retrieval info: CONNECT: @clock1 0 0 0 0 rdclock 0 0 0 0
// Retrieval info: LIBRARY: altera_mf altera_mf.altera_mf_components.all
// Retrieval info: GEN_FILE: TYPE_NORMAL dpram128x24_bb.v TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL dpram128x24_bb.inc FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL dpram128x24_bb.cmp FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL dpram128x24_bb.bsf FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL dpram128x24_bb_inst.v FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL dpram128x24_bb_bb.v FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL dpram128x24_bb_waveforms.html FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL dpram128x24_bb_wave*.jpg FALSE

