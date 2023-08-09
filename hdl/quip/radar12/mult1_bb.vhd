-- megafunction wizard: %ALTMULT_ADD%
-- GENERATION: STANDARD
-- VERSION: WM1.0
-- MODULE: ALTMULT_ADD 

-- ============================================================
-- File Name: mult1_bb.vhd
-- Megafunction Name(s):
-- 			ALTMULT_ADD
-- ============================================================
-- ************************************************************
-- THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
--
-- 4.1 Build 181 06/29/2004 SJ Full Version
-- ************************************************************


--Copyright (C) 1991-2004 Altera Corporation
--Any  megafunction  design,  and related netlist (encrypted  or  decrypted),
--support information,  device programming or simulation file,  and any other
--associated  documentation or information  provided by  Altera  or a partner
--under  Altera's   Megafunction   Partnership   Program  may  be  used  only
--to program  PLD  devices (but not masked  PLD  devices) from  Altera.   Any
--other  use  of such  megafunction  design,  netlist,  support  information,
--device programming or simulation file,  or any other  related documentation
--or information  is prohibited  for  any  other purpose,  including, but not
--limited to  modification,  reverse engineering,  de-compiling, or use  with
--any other  silicon devices,  unless such use is  explicitly  licensed under
--a separate agreement with  Altera  or a megafunction partner.  Title to the
--intellectual property,  including patents,  copyrights,  trademarks,  trade
--secrets,  or maskworks,  embodied in any such megafunction design, netlist,
--support  information,  device programming or simulation file,  or any other
--related documentation or information provided by  Altera  or a megafunction
--partner, remains with Altera, the megafunction partner, or their respective
--licensors. No other licenses, including any licenses needed under any third
--party's intellectual property, are provided herein.


LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY altera_mf;
USE altera_mf.altera_mf_components.all;

ENTITY mult1_bb IS
	PORT
	(
		clock0		: IN STD_LOGIC  := '1';
		dataa_0		: IN STD_LOGIC_VECTOR (15 DOWNTO 0) :=  (OTHERS => '0');
		datab_0		: IN STD_LOGIC_VECTOR (15 DOWNTO 0) :=  (OTHERS => '0');
		result		: OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
	);
END mult1_bb;


ARCHITECTURE SYN OF mult1_bb IS

	SIGNAL sub_wire0	: STD_LOGIC_VECTOR (31 DOWNTO 0);



	COMPONENT altmult_add
	GENERIC (
		multiplier_register0		: STRING;
		signed_aclr_a		: STRING;
		signed_register_a		: STRING;
		number_of_multipliers		: NATURAL;
		multiplier_aclr0		: STRING;
		signed_aclr_b		: STRING;
		signed_register_b		: STRING;
		lpm_type		: STRING;
		input_aclr_b0		: STRING;
		output_register		: STRING;
		width_result		: NATURAL;
		representation_a		: STRING;
		signed_pipeline_register_a		: STRING;
		input_source_b0		: STRING;
		input_aclr_a0		: STRING;
		addnsub_multiplier_register1		: STRING;
		representation_b		: STRING;
		signed_pipeline_register_b		: STRING;
		input_source_a0		: STRING;
		dedicated_multiplier_circuitry		: STRING;
		addnsub_multiplier_aclr1		: STRING;
		intended_device_family		: STRING;
		addnsub_multiplier_pipeline_register1		: STRING;
		width_a		: NATURAL;
		input_register_b0		: STRING;
		width_b		: NATURAL;
		input_register_a0		: STRING;
		multiplier1_direction		: STRING
	);
	PORT (
			dataa	: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
			datab	: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
			clock0	: IN STD_LOGIC ;
			result	: OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
	);
	END COMPONENT;

BEGIN
	result    <= sub_wire0(31 DOWNTO 0);

	ALTMULT_ADD_component : altmult_add
	GENERIC MAP (
		multiplier_register0 => "CLOCK0",
		signed_aclr_a => "UNUSED",
		signed_register_a => "CLOCK0",
		number_of_multipliers => 1,
		multiplier_aclr0 => "UNUSED",
		signed_aclr_b => "UNUSED",
		signed_register_b => "CLOCK0",
		lpm_type => "altmult_add",
		input_aclr_b0 => "UNUSED",
		output_register => "UNREGISTERED",
		width_result => 32,
		representation_a => "SIGNED",
		signed_pipeline_register_a => "UNREGISTERED",
		input_source_b0 => "DATAB",
		input_aclr_a0 => "UNUSED",
		addnsub_multiplier_register1 => "CLOCK0",
		representation_b => "SIGNED",
		signed_pipeline_register_b => "UNREGISTERED",
		input_source_a0 => "DATAA",
		dedicated_multiplier_circuitry => "AUTO",
		addnsub_multiplier_aclr1 => "UNUSED",
		intended_device_family => "Stratix",
		addnsub_multiplier_pipeline_register1 => "UNREGISTERED",
		width_a => 16,
		input_register_b0 => "CLOCK0",
		width_b => 16,
		input_register_a0 => "CLOCK0",
		multiplier1_direction => "ADD"
	)
	PORT MAP (
		dataa => dataa_0,
		datab => datab_0,
		clock0 => clock0,
		result => sub_wire0
	);



END SYN;

-- ============================================================
-- CNX file retrieval info
-- ============================================================
-- Retrieval info: PRIVATE: Q_CLK_SRC_MULT0 NUMERIC "0"
-- Retrieval info: PRIVATE: SRCA0 STRING "Multiplier input"
-- Retrieval info: PRIVATE: ADDNSUB3_REG STRING "1"
-- Retrieval info: PRIVATE: SIGNA_PIPE_REG STRING "0"
-- Retrieval info: PRIVATE: SIGNA STRING "Signed"
-- Retrieval info: PRIVATE: RQFORMAT STRING "Q1.15"
-- Retrieval info: PRIVATE: MULT_REGOUT0 NUMERIC "1"
-- Retrieval info: PRIVATE: ADDNSUB1_PIPE_CLK_SRC NUMERIC "0"
-- Retrieval info: PRIVATE: ADDNSUB1_CLK_SRC NUMERIC "0"
-- Retrieval info: PRIVATE: SIGNA_PIPE_ACLR_SRC NUMERIC "3"
-- Retrieval info: PRIVATE: SIGNA_PIPE_CLK_SRC NUMERIC "0"
-- Retrieval info: PRIVATE: SIGNA_CLK_SRC NUMERIC "0"
-- Retrieval info: PRIVATE: SIGNB STRING "Signed"
-- Retrieval info: PRIVATE: Q_ACLR_SRC_MULT0 NUMERIC "3"
-- Retrieval info: PRIVATE: SIGNB_PIPE_CLK_SRC NUMERIC "0"
-- Retrieval info: PRIVATE: SAME_CONFIG NUMERIC "1"
-- Retrieval info: PRIVATE: A_CLK_SRC_MULT0 NUMERIC "0"
-- Retrieval info: PRIVATE: MULT_REGB0 NUMERIC "1"
-- Retrieval info: PRIVATE: ADDNSUB3_PIPE_CLK_SRC NUMERIC "0"
-- Retrieval info: PRIVATE: HAS_SAT_ROUND STRING "0"
-- Retrieval info: PRIVATE: MULT_REGA0 NUMERIC "1"
-- Retrieval info: PRIVATE: ADDNSUB3_ACLR_SRC NUMERIC "3"
-- Retrieval info: PRIVATE: ADDNSUB1_PIPE_REG STRING "0"
-- Retrieval info: PRIVATE: OUTPUT_EXTRA_LAT NUMERIC "0"
-- Retrieval info: PRIVATE: IMPL_STYLE_DEDICATED NUMERIC "0"
-- Retrieval info: PRIVATE: SIGNB_PIPE_REG STRING "0"
-- Retrieval info: PRIVATE: RTS_WIDTH STRING "32"
-- Retrieval info: PRIVATE: OUTPUT_REG_CLK_SRC NUMERIC "0"
-- Retrieval info: PRIVATE: IMPL_STYLE_LCELL NUMERIC "0"
-- Retrieval info: PRIVATE: NUM_MULT STRING "1"
-- Retrieval info: PRIVATE: A_ACLR_SRC_MULT0 NUMERIC "3"
-- Retrieval info: PRIVATE: SCANOUTA NUMERIC "0"
-- Retrieval info: PRIVATE: SIGNA_ACLR_SRC NUMERIC "3"
-- Retrieval info: PRIVATE: SCANOUTB NUMERIC "0"
-- Retrieval info: PRIVATE: REG_OUT NUMERIC "0"
-- Retrieval info: PRIVATE: SIGNB_PIPE_ACLR_SRC NUMERIC "3"
-- Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Stratix"
-- Retrieval info: PRIVATE: IMPL_STYLE_DEFAULT NUMERIC "1"
-- Retrieval info: PRIVATE: B_ACLR_SRC_MULT0 NUMERIC "3"
-- Retrieval info: PRIVATE: B_CLK_SRC_MULT0 NUMERIC "0"
-- Retrieval info: PRIVATE: ADDNSUB3_CLK_SRC NUMERIC "0"
-- Retrieval info: PRIVATE: ADDNSUB1_ACLR_SRC NUMERIC "3"
-- Retrieval info: PRIVATE: OUTPUT_REG_ACLR_SRC NUMERIC "3"
-- Retrieval info: PRIVATE: ADD_ENABLE NUMERIC "0"
-- Retrieval info: PRIVATE: SAME_CONTROL_SRC_B0 NUMERIC "1"
-- Retrieval info: PRIVATE: ADDNSUB3_PIPE_ACLR_SRC NUMERIC "3"
-- Retrieval info: PRIVATE: ADDNSUB1_PIPE_ACLR_SRC NUMERIC "3"
-- Retrieval info: PRIVATE: SIGNB_ACLR_SRC NUMERIC "3"
-- Retrieval info: PRIVATE: SIGNA_REG STRING "1"
-- Retrieval info: PRIVATE: ALL_REG_ACLR NUMERIC "0"
-- Retrieval info: PRIVATE: WIDTHA STRING "16"
-- Retrieval info: PRIVATE: SAME_CONTROL_SRC_A0 NUMERIC "1"
-- Retrieval info: PRIVATE: SIGNB_REG STRING "1"
-- Retrieval info: PRIVATE: WIDTHB STRING "16"
-- Retrieval info: PRIVATE: ADDNSUB3_PIPE_REG STRING "0"
-- Retrieval info: PRIVATE: OP1 STRING "Add"
-- Retrieval info: PRIVATE: ADDNSUB1_REG STRING "1"
-- Retrieval info: PRIVATE: SIGNB_CLK_SRC NUMERIC "0"
-- Retrieval info: PRIVATE: RNFORMAT STRING "32"
-- Retrieval info: PRIVATE: SRCB0 STRING "Multiplier input"
-- Retrieval info: PRIVATE: OP3 STRING "Add"
-- Retrieval info: LIBRARY: altera_mf altera_mf.altera_mf_components.all
-- Retrieval info: CONSTANT: MULTIPLIER_REGISTER0 STRING "CLOCK0"
-- Retrieval info: CONSTANT: SIGNED_ACLR_A STRING "UNUSED"
-- Retrieval info: CONSTANT: SIGNED_REGISTER_A STRING "CLOCK0"
-- Retrieval info: CONSTANT: NUMBER_OF_MULTIPLIERS NUMERIC "1"
-- Retrieval info: CONSTANT: MULTIPLIER_ACLR0 STRING "UNUSED"
-- Retrieval info: CONSTANT: SIGNED_ACLR_B STRING "UNUSED"
-- Retrieval info: CONSTANT: SIGNED_REGISTER_B STRING "CLOCK0"
-- Retrieval info: CONSTANT: LPM_TYPE STRING "altmult_add"
-- Retrieval info: CONSTANT: INPUT_ACLR_B0 STRING "UNUSED"
-- Retrieval info: CONSTANT: OUTPUT_REGISTER STRING "UNREGISTERED"
-- Retrieval info: CONSTANT: WIDTH_RESULT NUMERIC "32"
-- Retrieval info: CONSTANT: REPRESENTATION_A STRING "SIGNED"
-- Retrieval info: CONSTANT: SIGNED_PIPELINE_REGISTER_A STRING "UNREGISTERED"
-- Retrieval info: CONSTANT: INPUT_SOURCE_B0 STRING "DATAB"
-- Retrieval info: CONSTANT: INPUT_ACLR_A0 STRING "UNUSED"
-- Retrieval info: CONSTANT: ADDNSUB_MULTIPLIER_REGISTER1 STRING "CLOCK0"
-- Retrieval info: CONSTANT: REPRESENTATION_B STRING "SIGNED"
-- Retrieval info: CONSTANT: SIGNED_PIPELINE_REGISTER_B STRING "UNREGISTERED"
-- Retrieval info: CONSTANT: INPUT_SOURCE_A0 STRING "DATAA"
-- Retrieval info: CONSTANT: DEDICATED_MULTIPLIER_CIRCUITRY STRING "AUTO"
-- Retrieval info: CONSTANT: ADDNSUB_MULTIPLIER_ACLR1 STRING "UNUSED"
-- Retrieval info: CONSTANT: INTENDED_DEVICE_FAMILY STRING "Stratix"
-- Retrieval info: CONSTANT: ADDNSUB_MULTIPLIER_PIPELINE_REGISTER1 STRING "UNREGISTERED"
-- Retrieval info: CONSTANT: WIDTH_A NUMERIC "16"
-- Retrieval info: CONSTANT: INPUT_REGISTER_B0 STRING "CLOCK0"
-- Retrieval info: CONSTANT: WIDTH_B NUMERIC "16"
-- Retrieval info: CONSTANT: INPUT_REGISTER_A0 STRING "CLOCK0"
-- Retrieval info: CONSTANT: MULTIPLIER1_DIRECTION STRING "ADD"
-- Retrieval info: USED_PORT: clock0 0 0 0 0 INPUT VCC "clock0"
-- Retrieval info: USED_PORT: dataa_0 0 0 16 0 INPUT GND "dataa_0[15..0]"
-- Retrieval info: USED_PORT: datab_0 0 0 16 0 INPUT GND "datab_0[15..0]"
-- Retrieval info: USED_PORT: result 0 0 32 0 OUTPUT GND "result[31..0]"
-- Retrieval info: CONNECT: @clock0 0 0 0 0 clock0 0 0 0 0
-- Retrieval info: CONNECT: result 0 0 32 0 @result 0 0 32 0
-- Retrieval info: CONNECT: @dataa 0 0 16 0 dataa_0 0 0 16 0
-- Retrieval info: CONNECT: @datab 0 0 16 0 datab_0 0 0 16 0
-- Retrieval info: GEN_FILE: TYPE_NORMAL mult1_bb.vhd TRUE FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL mult1_bb.inc FALSE FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL mult1_bb.cmp FALSE FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL mult1_bb.bsf FALSE FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL mult1_bb_inst.vhd FALSE FALSE
