//*******************************************************************************
//  S Y N T H E S I Z A B L E      S D R A M     C O N T R O L L E R    C O R E
//
//  This core adheres to the GNU Public License  
// 
//  This is a synthesizable Synchronous DRAM controller Core.  As it stands,
//  it is ready to work with 8Mbyte SDRAMs, organized as 2M x 32 at 100MHz
//  and 125MHz. For example: Samsung KM432S2030CT,  Fujitsu MB81F643242B.
//
//  The core has been carefully coded so as to be "platform-independent".  
//  It has been successfully compiled and simulated under three separate
//  FPGA/CPLD platforms:
//      Xilinx Foundation Base Express V2.1i
//      Altera Max+PlusII V9.21
//      Lattice ispExpert V7.0
//  
//  The interface to the host (i.e. microprocessor, DSP, etc) is synchronous
//  and supports ony one transfer at a time.  That is, burst-mode transfers
//  are not yet supported.  In may ways, the interface to this core is much
//  like that of a typical SRAM.  The hand-shaking between the host and the 
//  SDRAM core is done through the "sdram_busy_l" signal generated by the 
//  core.  Whenever this signal is active low, the host must hold the address,
//  data (if doing a write), size and the controls (cs, rd/wr).  
//
//  Connection Diagram:
//  SDRAM side:
//  sd_wr_l                     connect to -WR pin of SDRAM
//  sd_cs_l                     connect to -CS pin of SDRAM
//  sd_ras_l                    connect to -RAS pin of SDRAM
//  sd_cas_l                    connect to -CAS pin of SDRAM
//  sd_dqm[3:0]                 connect to the DQM3,DQM2,DQM1,DQM0 pins
//  sd_addx[10:0]               connect to the Address bus [10:0]
//  sd_data[31:0]               connect to the data bus [31:0]
//  sd_ba[1:0]                  connect to BA1, BA0 pins of SDRAM
//   
//  HOST side:
//  mp_addx[22:0]               connect to the address bus of the host. 
//                              23 bit address bus give access to 8Mbyte
//                              of the SDRAM, as byte, half-word (16bit)
//                              or word (32bit)
//  mp_data_in[31:0]            Unidirectional bus connected to the data out
//                              of the host. To use this, enable 
//                              "databus_is_unidirectional" in INC.H
//  mp_data_out[31:0]           Unidirectional bus connected to the data in 
//                              of the host.  To use this, enable
//                              "databus_is_unidirectional" in INC.H
//  mp_data[31:0]               Bi-directional bus connected to the host's
//                              data bus.  To use the bi-directionla bus,
//                              disable "databus_is_unidirectional" in INC.H
//  mp_rd_l                     Connect to the -RD output of the host
//  mp_wr_l                     Connect to the -WR output of the host
//  mp_cs_l                     Connect to the -CS of the host
//  mp_size[1:0]                Connect to the size output of the host
//                              if there is one.  When set to 0
//                              all trasnfers are 32 bits, when set to 1
//                              all transfers are 8 bits, and when set to
//                              2 all xfers are 16 bits.  If you want the
//                              data to be lower order aligned, turn on
//                              "align_data_bus" option in INC.H
//  sdram_busy_l                Connect this to the wait or hold equivalent
//                              input of the host.  The host, must hold the
//                              bus if it samples this signal as low.
//  sdram_mode_set_l            When a write occurs with this set low,
//                              the SDRAM's mode set register will be programmed
//                              with the data supplied on the data_bus[10:0].
//
//
//  Author:  Jeung Joon Lee  joon.lee@quantum.com,  cmosexod@ix.netcom.com
//  
//*******************************************************************************
//
//  Hierarchy:
//
//  SDRAM.V         Top Level Module
//  HOSTCONT.V      Controls the interfacing between the micro and the SDRAM
//  SDRAMCNT.V      This is the SDRAM controller.  All data passed to and from
//                  is with the HOSTCONT.
//  optional
//  MICRO.V         This is the built in SDRAM tester.  This module generates 
//                  a number of test logics which is used to test the SDRAM
//                  It is basically a Micro bus generator. 
//  
/*
*/ 


// Uncomment below to use the microprocessor bus simulator
// This will allow the synthesis of a small tester, which sends
// a series of data sequences to the SDRAM controller, then reads
// back and verifies that the data is correct.
// Once you enable this option, choose the test mode in 
// the file "tst_inc.h"
// ====================
`define simulate_mp    

// Uncomment the below to enable the debug pins
// If you are in an FPGA/CPLD platform be *CAREFULL*.  This will 
// generate a lot of pins.  Use it with causion.
// ====================
//`define show_debug


`define clock_debug


// Common definition stuff
`define     HI          1'b1
`define     LO          1'b0
`define     X           1'bx

//***********************************************************
//  U  S  E  R    M  O  D  I  F  I  A  B  L  E  S
//***********************************************************

// The number of refreshses done at power up. 
// This varies by vendors.  Be sure to referer your DRAM vendor
// spec.  It is set to 3 by default 
`define power_up_ref_cntr_limit         10       

// The number of refreshes done during normal refresh cycle.
// Set this to be 2048 for "burst"   refreshes, and 
// set this to be 1    for "regular" refreshes
`define auto_ref_cntr_limit             1       

// Refresh Frequency in Hz.
//   For burst  refresh use 33Hz    (30mS)
//   For normal refresh use 66666Hz (15uS)
`define Frefresh                        66666       

// Type of Data Bus
// Unididrectiona:  the top hierachy module SDRAM.V will have seperate 32 bit
//                  data buses for reads and writes.  This is useful for embedding the 
//                  core in a larger core.
// Birectional:     the top hierarchy module SDRAM.V will have a biredirectional 32bit
//                  data bus.  This is useful if the SDRAM controller core is to be a 
//                  stand-alone module.
//
// Comment the below for bidirectional bus, and UNcomment for unidirectional
//`define    databus_is_unidirectional

// SDRAM DATA BUS TYPE
// 
//
`define      sdram_data_bus_is_unidirectional


// DATA BUS ALIGNING
// With this option enabled (uncomment below) half-word accesses are aligned to lower
// bus DATA[15:0], and byte accesses are aligned to DATA[7:0].  This is ideal when a
// 8 bit micro or host wants to access all of the space of the 16/32 bit SDRAM.

// data bus aligning ON:  (uncomment the below define)
//      a 16 bit write should have the data to the SDRAM controller on D[15:0].
//      a 16 bit read will have the data returned by the SDRAM conroller on D[15:0].
//      a 8  bit write should have the data to the SDRAM controller on D[7:0].
//      a 8  bit read will have the data returned by the SDRAM controller on D[7:0].
//
// data bus aligning OFF: (comment the below define)
//      a 16 bit write should have the data to the SDRAM controller on D[31:16] or
//           D[15:0] depending on the state of A[1] (A[1]=1, on D[31:16], A[1]=0 on 
//           D[15:0].
//      a 16 bit read will have the data returned by the SDRAM controller on D[31:16]
//           or D[15:0], based on the state of A[1].
//      similar thought process for 8 bit write and reads.
//
//`define align_data_bus


// SDRAM clock frequency in Hz.  
//  Set this to whatever the clock rate is, upto 100MHz

// lattice board
//`define Fsystem                            16700000    

// ideal
//`define Fsystem                         100000000      

// altera university-eval board div by 2
`define Fsystem                            12500000    


// DEFAULT MODE-REGISTER values
// The below is programmed to the mode regsiter at
// powerup
`define default_mode_reg_BURST_LENGHT   3'b000
`define defulat_mode_reg_BURST_TYPE     1'b0
`define default_mode_reg_CAS_LATENCY    3'b010


//***********************************************************
//  D O    N  O  T      M  O  D  I  F  Y
//***********************************************************
// Interval between refreshes in SDRAM clk ticks
`define RC                              `Fsystem/`Frefresh

// Width of the refresh counter. Default 20.  log2(`RC)/log2
// use 8  bits for 15uS interval with 12.5MHz clock
// use 11 bits for 15us interval with 100MHz clock
//`define BW                              8
`define BW              11

// The refresh delay counter width
`define     RD          3

// This sets the number of delay cycles right after the refresh command
`define         AUTO_REFRESH_WIDTH  1

// MAin SDRAM controller state machine definition
`define     TS          4
`define     TSn         `TS-1

`define state_idle             4'b0001
`define state_set_ras          4'b0011
`define state_ras_dly          4'b0010
`define state_set_cas          4'b0110
`define state_cas_latency1     4'b0111
`define state_cas_latency2     4'b0101
`define state_write            4'b0100
`define state_read             4'b1100
`define state_auto_refresh     4'b1101
`define state_auto_refresh_dly 4'b1111
`define state_precharge        4'b1110
`define state_powerup          4'b1010
`define state_modeset          4'b1011
`define state_delay_Trp        4'b0000
`define state_delay_Tras1      4'b1000
`define state_delay_Tras2      4'b1001

// Fresh timer states
`define   state_count                3'b001
`define   state_halt                 3'b010
`define   state_reset                3'b100

`define K 16
`define L `K-1
