library IEEE;
use IEEE.std_logic_1164.all;

-------------------------------------------------------------------

ENTITY AU_acceleration_update IS

	GENERIC(
		LOG_NUM_PARTICLES : INTEGER := 16;
		INTLENGTH : INTEGER := 64
	);
         
	PORT(
		RESET									: IN STD_LOGIC;
		CLK										: IN STD_LOGIC;
		LJFC_PARTICLE_A				: IN STD_LOGIC_VECTOR(LOG_NUM_PARTICLES-1 DOWNTO 0);
		LJFC_PARTICLE_B				: IN STD_LOGIC_VECTOR(LOG_NUM_PARTICLES-1 DOWNTO 0);
		LJFC_ACC_X						: IN STD_LOGIC_VECTOR(INTLENGTH-1 DOWNTO 0);
		LJFC_ACC_Y						: IN STD_LOGIC_VECTOR(INTLENGTH-1 DOWNTO 0);
		LJFC_ACC_Z						: IN STD_LOGIC_VECTOR(INTLENGTH-1 DOWNTO 0);
		LJFC_AU_FORCE_DIRECTION : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		LJFC_ACC_READY				: IN STD_LOGIC;

		VU_WRITE_COMPLETE		: IN STD_LOGIC;
		AA_WRITE_COMPLETE		: IN STD_LOGIC;
		AA_READ_DATA_READY	: IN STD_LOGIC;
		AA_READ_X						: IN STD_LOGIC_VECTOR(INTLENGTH-1 DOWNTO 0);
		AA_READ_Y							: IN STD_LOGIC_VECTOR(INTLENGTH-1 DOWNTO 0);
		AA_READ_Z						: IN STD_LOGIC_VECTOR(INTLENGTH-1 DOWNTO 0);    

		LJFC_ACC_ACCEPTED		: OUT STD_LOGIC;
		VU_WRITE_ENABLE			: OUT STD_LOGIC;
		AA_WRITE_ENABLE			: OUT STD_LOGIC;		
		AA_WRITE_X						: OUT STD_LOGIC_VECTOR(INTLENGTH-1 DOWNTO 0);
		AA_WRITE_Y						: OUT STD_LOGIC_VECTOR(INTLENGTH-1 DOWNTO 0);
		AA_WRITE_Z						: OUT STD_LOGIC_VECTOR(INTLENGTH-1 DOWNTO 0);    
		AA_PARTICLE_ID				: OUT STD_LOGIC_VECTOR(LOG_NUM_PARTICLES-1 DOWNTO 0);
		AA_READ_ENABLE				: OUT STD_LOGIC;
		SC_AU_IDLE						: OUT STD_LOGIC;
		LJFC_IDLE							: IN STD_LOGIC;
		PG_IDLE								: IN STD_LOGIC
	);
END AU_acceleration_update;

-------------------------------------------------------------------

ARCHITECTURE structure OF AU_acceleration_update IS

COMPONENT AU_register

	GENERIC(
		INTLENGTH : INTEGER := 64
	);
  
	PORT(
		Reset	: IN  STD_LOGIC;	
		D			: IN  STD_LOGIC_VECTOR(INTLENGTH-1  DOWNTO 0);
		Enable	: IN  STD_LOGIC;
		Clk		: IN  STD_LOGIC;
		Q			: OUT STD_LOGIC_VECTOR(INTLENGTH-1 DOWNTO 0)
	);
END COMPONENT;

-------------------------------------------------------------------

COMPONENT AU_addsub_3D 

	GENERIC(
		INTLENGTH : INTEGER := 64
	);

	PORT(
		ADDSUB		: IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		X_A				: IN STD_LOGIC_VECTOR(INTLENGTH-1 DOWNTO 0);
		Y_A				: IN STD_LOGIC_VECTOR(INTLENGTH-1 DOWNTO 0);
		Z_A				: IN STD_LOGIC_VECTOR(INTLENGTH-1 DOWNTO 0);
		X_B				: IN STD_LOGIC_VECTOR(INTLENGTH-1 DOWNTO 0);
		Y_B				: IN STD_LOGIC_VECTOR(INTLENGTH-1 DOWNTO 0);
		Z_B				: IN STD_LOGIC_VECTOR(INTLENGTH-1 DOWNTO 0);		
		OUTX			: OUT STD_LOGIC_VECTOR(INTLENGTH-1 DOWNTO 0);
		OUTY			: OUT STD_LOGIC_VECTOR(INTLENGTH-1 DOWNTO 0);
		OUTZ			: OUT STD_LOGIC_VECTOR(INTLENGTH-1 DOWNTO 0)		
	);
END COMPONENT;

-------------------------------------------------------------------

COMPONENT AU_comparator

	GENERIC(
		INTLENGTH : INTEGER := 64
	);

	PORT(
		INPUT_A				: IN STD_LOGIC_VECTOR(INTLENGTH-1 DOWNTO 0);
		INPUT_B				: IN STD_LOGIC_VECTOR(INTLENGTH-1 DOWNTO 0);
		OUTPUT				: OUT STD_LOGIC_VECTOR(0 DOWNTO 0)
	);
END COMPONENT;

-------------------------------------------------------------------

COMPONENT AU_controller
	PORT(
		reset									: IN STD_LOGIC;
		CLK										: IN STD_LOGIC;
		cachetag								: IN STD_LOGIC_VECTOR(0 DOWNTO 0);
		
		LJFC_ACC_READY				: IN STD_LOGIC;
		LJFC_ACC_ACCEPTED		: OUT STD_LOGIC;

		VU_WRITE_COMPLETE		: IN STD_LOGIC;
		AA_WRITE_COMPLETE		: IN STD_LOGIC;

		AA_READ_ENABLE				: OUT STD_LOGIC;
		VU_WRITE_ENABLE			: OUT STD_LOGIC;
		AA_WRITE_ENABLE			: OUT STD_LOGIC;
		
		SC_AU_IDLE						: OUT STD_LOGIC;

		delta_enable						: OUT STD_LOGIC;
		write_enable						: OUT STD_LOGIC;
		cache_enable						: OUT STD_LOGIC;
		cachetag_enable					: OUT STD_LOGIC;
		old_part_a_enable				: OUT STD_LOGIC;
		add_input_a_sel					: OUT STD_LOGIC;
		add_input_b_sel					: OUT STD_LOGIC;		
		LJFC_IDLE							: IN STD_LOGIC;
		PG_IDLE								: IN STD_LOGIC

	);
END COMPONENT;

-------------------------------------------------------------------

SIGNAL delta_enable			: STD_LOGIC;
SIGNAL read_enable			: STD_LOGIC;
SIGNAL write_enable			: STD_LOGIC;
SIGNAL addsub					: STD_LOGIC;
SIGNAL cache_enable		: STD_LOGIC;
SIGNAL cachetag_enable	: STD_LOGIC;
SIGNAL old_part_a_enable: STD_LOGIC;
SIGNAL cachetag				: STD_LOGIC_VECTOR(0 DOWNTO 0);
SIGNAL cachetagin				: STD_LOGIC_VECTOR(0 DOWNTO 0);
SIGNAL add_input_a_sel	: STD_LOGIC;
SIGNAL add_input_b_sel	: STD_LOGIC;
SIGNAL write_reg_sel			: STD_LOGIC;

SIGNAL DELTA_A_X			: STD_LOGIC_VECTOR(INTLENGTH-1 DOWNTO 0);
SIGNAL DELTA_A_Y			: STD_LOGIC_VECTOR(INTLENGTH-1 DOWNTO 0);
SIGNAL DELTA_A_Z			: STD_LOGIC_VECTOR(INTLENGTH-1 DOWNTO 0);

SIGNAL WRITE_A_X			: STD_LOGIC_VECTOR(INTLENGTH-1 DOWNTO 0);
SIGNAL WRITE_A_Y			: STD_LOGIC_VECTOR(INTLENGTH-1 DOWNTO 0);
SIGNAL WRITE_A_Z			: STD_LOGIC_VECTOR(INTLENGTH-1 DOWNTO 0);

SIGNAL REAL_WRITE_A_X	: STD_LOGIC_VECTOR(INTLENGTH-1 DOWNTO 0);
SIGNAL REAL_WRITE_A_Y	: STD_LOGIC_VECTOR(INTLENGTH-1 DOWNTO 0);
SIGNAL REAL_WRITE_A_Z	: STD_LOGIC_VECTOR(INTLENGTH-1 DOWNTO 0);

SIGNAL CACHE_X				: STD_LOGIC_VECTOR(INTLENGTH-1 DOWNTO 0);
SIGNAL CACHE_Y				: STD_LOGIC_VECTOR(INTLENGTH-1 DOWNTO 0);
SIGNAL CACHE_Z				: STD_LOGIC_VECTOR(INTLENGTH-1 DOWNTO 0);

SIGNAL ALU_X					: STD_LOGIC_VECTOR(INTLENGTH-1 DOWNTO 0);
SIGNAL ALU_Y					: STD_LOGIC_VECTOR(INTLENGTH-1 DOWNTO 0);
SIGNAL ALU_Z					: STD_LOGIC_VECTOR(INTLENGTH-1 DOWNTO 0);

SIGNAL ALU2_X					: STD_LOGIC_VECTOR(INTLENGTH-1 DOWNTO 0);
SIGNAL ALU2_Y					: STD_LOGIC_VECTOR(INTLENGTH-1 DOWNTO 0);
SIGNAL ALU2_Z					: STD_LOGIC_VECTOR(INTLENGTH-1 DOWNTO 0);


SIGNAL PART_A					: STD_LOGIC_VECTOR(LOG_NUM_PARTICLES-1 DOWNTO 0);
SIGNAL PART_B					: STD_LOGIC_VECTOR(LOG_NUM_PARTICLES-1 DOWNTO 0);
SIGNAL OLD_PART_A			: STD_LOGIC_VECTOR(LOG_NUM_PARTICLES-1 DOWNTO 0);

SIGNAL FORCE_DIRECTION : STD_LOGIC_VECTOR(2 DOWNTO 0);


-------------------------------------------------------------------

BEGIN

	-- controller
	control0 : AU_controller PORT MAP(RESET,CLK,cachetag,LJFC_ACC_READY,LJFC_ACC_ACCEPTED, VU_WRITE_COMPLETE, AA_WRITE_COMPLETE,   AA_READ_ENABLE, VU_WRITE_ENABLE,AA_WRITE_ENABLE, SC_AU_IDLE, delta_enable, write_enable, cache_enable,cachetag_enable,old_part_a_enable,add_input_a_sel,add_input_b_sel,LJFC_IDLE,PG_IDLE);

	--Registers to hold force direction
	force0 : AU_register GENERIC MAP(3) PORT MAP (RESET,LJFC_AU_FORCE_DIRECTION,delta_enable,CLK,FORCE_DIRECTION);

	-- Registers to hold delta acceleration
	deltaax0: AU_register GENERIC MAP(INTLENGTH) PORT MAP(RESET,LJFC_ACC_X,delta_enable,CLK,DELTA_A_X);
	deltaay0: AU_register GENERIC MAP(INTLENGTH) PORT MAP(RESET,LJFC_ACC_Y,delta_enable,CLK,DELTA_A_Y);
	deltaaz0: AU_register GENERIC MAP(INTLENGTH) PORT MAP(RESET,LJFC_ACC_Z,delta_enable,CLK,DELTA_A_Z);

	-- Registers to hold particle ids
	part_a0: AU_register GENERIC MAP(LOG_NUM_PARTICLES) PORT MAP(RESET,LJFC_PARTICLE_A,delta_enable,CLK,PART_A);
	part_b0: AU_register GENERIC MAP(LOG_NUM_PARTICLES) PORT MAP(RESET,LJFC_PARTICLE_B,delta_enable,CLK,PART_B);

	-- Registers to hold new acceleration
	writeax0:	AU_register GENERIC MAP(INTLENGTH) PORT MAP(RESET,CACHE_X,write_enable,CLK,AA_WRITE_X);
	writeay0:	AU_register GENERIC MAP(INTLENGTH) PORT MAP(RESET,CACHE_Y,write_enable,CLK,AA_WRITE_Y);
	writeaz0:	AU_register GENERIC MAP(INTLENGTH) PORT MAP(RESET,CACHE_Z,write_enable,CLK,AA_WRITE_Z);	

	-- Registers to hold cache copy of new acceleration
	cacheax0:	AU_register GENERIC MAP(INTLENGTH) PORT MAP(RESET,WRITE_A_X,cache_enable, CLK,CACHE_X);
	cacheay0:	AU_register GENERIC MAP(INTLENGTH) PORT MAP(RESET,WRITE_A_Y,cache_enable, CLK,CACHE_Y);
	cacheaz0:	AU_register GENERIC MAP(INTLENGTH) PORT MAP(RESET,WRITE_A_Z,cache_enable, CLK,CACHE_Z);
	old_part_a0: AU_register GENERIC MAP(LOG_NUM_PARTICLES) PORT MAP(RESET,PART_A,old_part_a_enable,CLK,OLD_PART_A);
	

	-- Adder/Subtractor
	addsub0: AU_addsub_3D GENERIC MAP(INTLENGTH) PORT MAP(FORCE_DIRECTION, ALU_X,ALU_Y,ALU_Z,ALU2_X,ALU2_Y,ALU2_Z,WRITE_A_X,WRITE_A_Y,WRITE_A_Z);


	-- Multiplexor for input of Adder/Subtractor
	WITH add_input_a_sel SELECT
		ALU_X	<=	CACHE_X WHEN '0',
							(OTHERS => '0') WHEN OTHERS;

	WITH add_input_a_sel SELECT
		ALU_Y	<=	CACHE_Y WHEN '0',
							(OTHERS => '0') WHEN OTHERS;

	WITH add_input_a_sel SELECT
		ALU_Z	<=	CACHE_Z WHEN '0',
							(OTHERS => '0') WHEN OTHERS;


	-- Multiplexor for input of Adder/Subtractor
	WITH add_input_b_sel SELECT
		ALU2_X	<=	DELTA_A_X WHEN '0',
							(OTHERS => '0') WHEN OTHERS;

	WITH add_input_b_sel SELECT
		ALU2_Y	<=	DELTA_A_Y WHEN '0',
							(OTHERS => '0') WHEN OTHERS;

	WITH add_input_b_sel SELECT
		ALU2_Z	<=	DELTA_A_Z WHEN '0',
							(OTHERS => '0') WHEN OTHERS;


	-- Register to hold particle id for write
	id_write: AU_register GENERIC MAP(LOG_NUM_PARTICLES) PORT MAP(RESET,OLD_PART_A,write_enable,CLK,AA_PARTICLE_ID);


	
	-- Comparator
	cachetag0 : AU_register GENERIC MAP(1) PORT MAP(RESET,cachetagin,cachetag_enable, CLK, cachetag);
	comp0: AU_comparator GENERIC MAP(LOG_NUM_PARTICLES) PORT MAP(OLD_PART_A, LJFC_PARTICLE_A, cachetagin);
	

END structure;
