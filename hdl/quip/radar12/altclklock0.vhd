-- megafunction wizard: %ALTCLKLOCK%
-- GENERATION: STANDARD
-- VERSION: WM1.0
-- MODULE: altpll 

-- ============================================================
-- File Name: altclklock0.vhd
-- Megafunction Name(s):
-- 			altpll
-- ============================================================
-- ************************************************************
-- THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
--
-- 4.1 Internal Build 160 05/17/2004 SJ Full Version
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

ENTITY altclklock0 IS
	PORT
	(
		inclk0		: IN STD_LOGIC  := '0';
		c0		: OUT STD_LOGIC ;
		c1		: OUT STD_LOGIC 
	);
END altclklock0;


ARCHITECTURE SYN OF altclklock0 IS

	SIGNAL sub_wire0	: STD_LOGIC_VECTOR (5 DOWNTO 0);
	SIGNAL sub_wire1	: STD_LOGIC ;
	SIGNAL sub_wire2	: STD_LOGIC ;
	SIGNAL sub_wire3_bv	: BIT_VECTOR (0 DOWNTO 0);
	SIGNAL sub_wire3	: STD_LOGIC_VECTOR (0 DOWNTO 0);
	SIGNAL sub_wire4	: STD_LOGIC_VECTOR (5 DOWNTO 0);
	SIGNAL sub_wire5_bv	: BIT_VECTOR (0 DOWNTO 0);
	SIGNAL sub_wire5	: STD_LOGIC_VECTOR (0 DOWNTO 0);
	SIGNAL sub_wire6	: STD_LOGIC ;
	SIGNAL sub_wire7	: STD_LOGIC_VECTOR (1 DOWNTO 0);
	SIGNAL sub_wire8	: STD_LOGIC_VECTOR (3 DOWNTO 0);



	COMPONENT altpll
	GENERIC (
		clk1_divide_by		: NATURAL;
		bandwidth_type		: STRING;
		clk1_phase_shift		: STRING;
		clk0_duty_cycle		: NATURAL;
		lpm_type		: STRING;
		clk0_multiply_by		: NATURAL;
		inclk0_input_frequency		: NATURAL;
		clk0_divide_by		: NATURAL;
		clk1_duty_cycle		: NATURAL;
		pll_type		: STRING;
		clk1_multiply_by		: NATURAL;
		clk0_time_delay		: STRING;
		spread_frequency		: NATURAL;
		intended_device_family		: STRING;
		operation_mode		: STRING;
		compensate_clock		: STRING;
		clk1_time_delay		: STRING;
		clk0_phase_shift		: STRING
	);
	PORT (
			clkena	: IN STD_LOGIC_VECTOR (5 DOWNTO 0);
			inclk	: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
			extclkena	: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
			clk	: OUT STD_LOGIC_VECTOR (5 DOWNTO 0)
	);
	END COMPONENT;

BEGIN
	sub_wire3_bv(0 DOWNTO 0) <= "0";
	sub_wire3    <= NOT(To_stdlogicvector(sub_wire3_bv));
	sub_wire5_bv(0 DOWNTO 0) <= "0";
	sub_wire5    <= To_stdlogicvector(sub_wire5_bv);
	sub_wire2    <= sub_wire0(1);
	sub_wire1    <= sub_wire0(0);
	c0    <= sub_wire1;
	c1    <= sub_wire2;
	sub_wire4    <= sub_wire5(0 DOWNTO 0) & sub_wire5(0 DOWNTO 0) & sub_wire5(0 DOWNTO 0) & sub_wire5(0 DOWNTO 0) & sub_wire3(0 DOWNTO 0) & sub_wire3(0 DOWNTO 0);
	sub_wire6    <= inclk0;
	sub_wire7    <= sub_wire5(0 DOWNTO 0) & sub_wire6;
	sub_wire8    <= sub_wire5(0 DOWNTO 0) & sub_wire5(0 DOWNTO 0) & sub_wire5(0 DOWNTO 0) & sub_wire5(0 DOWNTO 0);

	altpll_component : altpll
	GENERIC MAP (
		clk1_divide_by => 1,
		bandwidth_type => "AUTO",
		clk1_phase_shift => "0",
		clk0_duty_cycle => 50,
		lpm_type => "altpll",
		clk0_multiply_by => 1,
		inclk0_input_frequency => 10000,
		clk0_divide_by => 1,
		clk1_duty_cycle => 50,
		pll_type => "AUTO",
		clk1_multiply_by => 1,
		clk0_time_delay => "0",
		spread_frequency => 0,
		intended_device_family => "Stratix",
		operation_mode => "NORMAL",
		compensate_clock => "CLK0",
		clk1_time_delay => "0",
		clk0_phase_shift => "0"
	)
	PORT MAP (
		clkena => sub_wire4,
		inclk => sub_wire7,
		extclkena => sub_wire8,
		clk => sub_wire0
	);



END SYN;

-- ============================================================
-- CNX file retrieval info
-- ============================================================
-- Retrieval info: PRIVATE: MIRROR_CLK0 STRING "0"
-- Retrieval info: PRIVATE: PHASE_SHIFT_UNIT0 STRING "ps"
-- Retrieval info: PRIVATE: OUTPUT_FREQ_UNIT0 STRING "MHz"
-- Retrieval info: PRIVATE: INCLK1_FREQ_UNIT_COMBO STRING "MHz"
-- Retrieval info: PRIVATE: SPREAD_USE STRING "0"
-- Retrieval info: PRIVATE: SPREAD_FEATURE_ENABLED STRING "1"
-- Retrieval info: PRIVATE: GLOCKED_COUNTER_EDIT_CHANGED STRING "1"
-- Retrieval info: PRIVATE: GLOCK_COUNTER_EDIT NUMERIC "1"
-- Retrieval info: PRIVATE: SRC_SYNCH_COMP_RADIO STRING "0"
-- Retrieval info: PRIVATE: MIRROR_CLK1 STRING "0"
-- Retrieval info: PRIVATE: PHASE_SHIFT_UNIT1 STRING "ps"
-- Retrieval info: PRIVATE: OUTPUT_FREQ_UNIT1 STRING "MHz"
-- Retrieval info: PRIVATE: DUTY_CYCLE0 STRING "50.00000000"
-- Retrieval info: PRIVATE: PHASE_SHIFT0 STRING "0.00000000"
-- Retrieval info: PRIVATE: MULT_FACTOR0 NUMERIC "1"
-- Retrieval info: PRIVATE: OUTPUT_FREQ_MODE0 STRING "0"
-- Retrieval info: PRIVATE: SPREAD_PERCENT STRING "0.500"
-- Retrieval info: PRIVATE: LOCKED_OUTPUT_CHECK STRING "0"
-- Retrieval info: PRIVATE: PLL_ARESET_CHECK STRING "0"
-- Retrieval info: PRIVATE: DUTY_CYCLE1 STRING "50.00000000"
-- Retrieval info: PRIVATE: PHASE_SHIFT1 STRING "0.00000000"
-- Retrieval info: PRIVATE: MULT_FACTOR1 NUMERIC "1"
-- Retrieval info: PRIVATE: OUTPUT_FREQ_MODE1 STRING "0"
-- Retrieval info: PRIVATE: TIME_SHIFT0 STRING "0.00000000"
-- Retrieval info: PRIVATE: STICKY_CLK0 STRING "1"
-- Retrieval info: PRIVATE: BANDWIDTH STRING "0.000"
-- Retrieval info: PRIVATE: BANDWIDTH_USE_CUSTOM STRING "0"
-- Retrieval info: PRIVATE: DEVICE_SPEED_GRADE STRING "Any"
-- Retrieval info: PRIVATE: TIME_SHIFT1 STRING "0.00000000"
-- Retrieval info: PRIVATE: STICKY_CLK1 STRING "1"
-- Retrieval info: PRIVATE: SPREAD_FREQ STRING "50.000"
-- Retrieval info: PRIVATE: BANDWIDTH_FEATURE_ENABLED STRING "1"
-- Retrieval info: PRIVATE: LONG_SCAN_RADIO STRING "1"
-- Retrieval info: PRIVATE: PLL_ENHPLL_CHECK NUMERIC "0"
-- Retrieval info: PRIVATE: LVDS_MODE_DATA_RATE_DIRTY NUMERIC "0"
-- Retrieval info: PRIVATE: USE_CLK0 STRING "1"
-- Retrieval info: PRIVATE: INCLK1_FREQ_EDIT_CHANGED STRING "1"
-- Retrieval info: PRIVATE: SCAN_FEATURE_ENABLED STRING "1"
-- Retrieval info: PRIVATE: ZERO_DELAY_RADIO STRING "0"
-- Retrieval info: PRIVATE: PLL_PFDENA_CHECK STRING "0"
-- Retrieval info: PRIVATE: USE_CLK1 STRING "1"
-- Retrieval info: PRIVATE: CREATE_CLKBAD_CHECK STRING "0"
-- Retrieval info: PRIVATE: INCLK1_FREQ_EDIT STRING "0.000"
-- Retrieval info: PRIVATE: CUR_DEDICATED_CLK STRING "c0"
-- Retrieval info: PRIVATE: PLL_FASTPLL_CHECK NUMERIC "0"
-- Retrieval info: PRIVATE: ACTIVECLK_CHECK STRING "0"
-- Retrieval info: PRIVATE: BANDWIDTH_FREQ_UNIT STRING "MHz"
-- Retrieval info: PRIVATE: INCLK0_FREQ_UNIT_COMBO STRING "MHz"
-- Retrieval info: PRIVATE: GLOCKED_MODE_CHECK STRING "0"
-- Retrieval info: PRIVATE: NORMAL_MODE_RADIO STRING "1"
-- Retrieval info: PRIVATE: CUR_FBIN_CLK STRING ""
-- Retrieval info: PRIVATE: DIV_FACTOR0 NUMERIC "1"
-- Retrieval info: PRIVATE: INCLK1_FREQ_UNIT_CHANGED STRING "1"
-- Retrieval info: PRIVATE: HAS_MANUAL_SWITCHOVER STRING "1"
-- Retrieval info: PRIVATE: EXT_FEEDBACK_RADIO STRING "0"
-- Retrieval info: PRIVATE: PLL_AUTOPLL_CHECK NUMERIC "1"
-- Retrieval info: PRIVATE: DIV_FACTOR1 NUMERIC "1"
-- Retrieval info: PRIVATE: CLKLOSS_CHECK STRING "0"
-- Retrieval info: PRIVATE: BANDWIDTH_USE_AUTO STRING "1"
-- Retrieval info: PRIVATE: SHORT_SCAN_RADIO STRING "0"
-- Retrieval info: PRIVATE: LVDS_MODE_DATA_RATE STRING "300.000"
-- Retrieval info: PRIVATE: CLKSWITCH_CHECK STRING "0"
-- Retrieval info: PRIVATE: SPREAD_FREQ_UNIT STRING "KHz"
-- Retrieval info: PRIVATE: PLL_ENA_CHECK STRING "0"
-- Retrieval info: PRIVATE: INCLK0_FREQ_EDIT STRING "100.000"
-- Retrieval info: PRIVATE: CNX_NO_COMPENSATE_RADIO STRING "0"
-- Retrieval info: PRIVATE: INT_FEEDBACK__MODE_RADIO STRING "1"
-- Retrieval info: PRIVATE: OUTPUT_FREQ0 STRING "100.000"
-- Retrieval info: PRIVATE: PRIMARY_CLK_COMBO STRING "inclk0"
-- Retrieval info: PRIVATE: CREATE_INCLK1_CHECK STRING "0"
-- Retrieval info: PRIVATE: SACN_INPUTS_CHECK STRING "0"
-- Retrieval info: PRIVATE: DEV_FAMILY STRING "Stratix"
-- Retrieval info: PRIVATE: OUTPUT_FREQ1 STRING "100.000"
-- Retrieval info: PRIVATE: LOCK_LOSS_SWITCHOVER_CHECK STRING "0"
-- Retrieval info: PRIVATE: SWITCHOVER_COUNT_EDIT NUMERIC "1"
-- Retrieval info: PRIVATE: SWITCHOVER_FEATURE_ENABLED STRING "1"
-- Retrieval info: PRIVATE: BANDWIDTH_PRESET STRING "Low"
-- Retrieval info: PRIVATE: GLOCKED_FEATURE_ENABLED STRING "1"
-- Retrieval info: PRIVATE: USE_CLKENA0 STRING "0"
-- Retrieval info: PRIVATE: LVDS_PHASE_SHIFT_UNIT0 STRING "ps"
-- Retrieval info: PRIVATE: USE_CLKENA1 STRING "0"
-- Retrieval info: PRIVATE: LVDS_PHASE_SHIFT_UNIT1 STRING "ps"
-- Retrieval info: PRIVATE: CLKBAD_SWITCHOVER_CHECK STRING "0"
-- Retrieval info: PRIVATE: BANDWIDTH_USE_PRESET STRING "0"
-- Retrieval info: PRIVATE: PLL_LVDS_PLL_CHECK NUMERIC "0"
-- Retrieval info: PRIVATE: DEVICE_FAMILY NUMERIC "9"
-- Retrieval info: LIBRARY: altera_mf altera_mf.altera_mf_components.all
-- Retrieval info: CONSTANT: CLK1_DIVIDE_BY NUMERIC "1"
-- Retrieval info: CONSTANT: BANDWIDTH_TYPE STRING "AUTO"
-- Retrieval info: CONSTANT: CLK1_PHASE_SHIFT STRING "0"
-- Retrieval info: CONSTANT: CLK0_DUTY_CYCLE NUMERIC "50"
-- Retrieval info: CONSTANT: LPM_TYPE STRING "altpll"
-- Retrieval info: CONSTANT: CLK0_MULTIPLY_BY NUMERIC "1"
-- Retrieval info: CONSTANT: INCLK0_INPUT_FREQUENCY NUMERIC "10000"
-- Retrieval info: CONSTANT: CLK0_DIVIDE_BY NUMERIC "1"
-- Retrieval info: CONSTANT: CLK1_DUTY_CYCLE NUMERIC "50"
-- Retrieval info: CONSTANT: PLL_TYPE STRING "AUTO"
-- Retrieval info: CONSTANT: CLK1_MULTIPLY_BY NUMERIC "1"
-- Retrieval info: CONSTANT: CLK0_TIME_DELAY STRING "0"
-- Retrieval info: CONSTANT: SPREAD_FREQUENCY NUMERIC "0"
-- Retrieval info: CONSTANT: INTENDED_DEVICE_FAMILY STRING "Stratix"
-- Retrieval info: CONSTANT: OPERATION_MODE STRING "NORMAL"
-- Retrieval info: CONSTANT: COMPENSATE_CLOCK STRING "CLK0"
-- Retrieval info: CONSTANT: CLK1_TIME_DELAY STRING "0"
-- Retrieval info: CONSTANT: CLK0_PHASE_SHIFT STRING "0"
-- Retrieval info: USED_PORT: c0 0 0 0 0 OUTPUT VCC "c0"
-- Retrieval info: USED_PORT: @clk 0 0 6 0 OUTPUT VCC "@clk[5..0]"
-- Retrieval info: USED_PORT: c1 0 0 0 0 OUTPUT VCC "c1"
-- Retrieval info: USED_PORT: inclk0 0 0 0 0 INPUT GND "inclk0"
-- Retrieval info: USED_PORT: @extclk 0 0 4 0 OUTPUT VCC "@extclk[3..0]"
-- Retrieval info: USED_PORT: @inclk 0 0 2 0 INPUT VCC "@inclk[1..0]"
-- Retrieval info: CONNECT: @clkena 0 0 1 1 VCC 0 0 0 0
-- Retrieval info: CONNECT: @inclk 0 0 1 0 inclk0 0 0 0 0
-- Retrieval info: CONNECT: @extclkena 0 0 1 1 GND 0 0 0 0
-- Retrieval info: CONNECT: @clkena 0 0 1 4 GND 0 0 0 0
-- Retrieval info: CONNECT: c0 0 0 0 0 @clk 0 0 1 0
-- Retrieval info: CONNECT: c1 0 0 0 0 @clk 0 0 1 1
-- Retrieval info: CONNECT: @extclkena 0 0 1 2 GND 0 0 0 0
-- Retrieval info: CONNECT: @clkena 0 0 1 5 GND 0 0 0 0
-- Retrieval info: CONNECT: @clkena 0 0 1 2 GND 0 0 0 0
-- Retrieval info: CONNECT: @clkena 0 0 1 0 VCC 0 0 0 0
-- Retrieval info: CONNECT: @inclk 0 0 1 1 GND 0 0 0 0
-- Retrieval info: CONNECT: @extclkena 0 0 1 3 GND 0 0 0 0
-- Retrieval info: CONNECT: @extclkena 0 0 1 0 GND 0 0 0 0
-- Retrieval info: CONNECT: @clkena 0 0 1 3 GND 0 0 0 0
-- Retrieval info: GEN_FILE: TYPE_NORMAL altclklock0.vhd TRUE FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL altclklock0.inc FALSE FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL altclklock0.cmp FALSE FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL altclklock0.bsf FALSE FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL altclklock0_inst.vhd FALSE FALSE
