




















































































`include "../include/lxr_symbols.vh"

module lmi_iram_bus


















(
CLK, TMODE, RESET_D1_R_N,



SEN,

INVALIDATE,

MEMSEQUENTIAL, MEMZEROFIRST, CFG_IRAMISROM,

EXT_IWREQRAM_R, IW_GNTRAM_R,


DATAUPI, IW_DATAUPO,


IW_LBCOE,

NEXTADDR, RDOP_N, IS_VAL, IW_VAL,

X_HALT_R,

IW_ACK, IW_MISS_R, IW_MISS_P, IW_HALT_S_R,

IW_VALINDEX, IWR_VALRD, IW_VALWR,
IW_VALWE, IW_VALWEN, IW_VALRE, IW_VALREN, IW_VALCS, IW_VALCSN,

IW_DATAINDEX,
IW_DATAWE, IW_DATAWEN, IW_DATARE, IW_DATAREN, IW_DATACS, IW_DATACSN,
IWR_DATARD, IW_DATAWR,

CONFIGBASE, CONFIGTOP
);

parameter VAL_RINDEX_HI = `IW_ADDR_HI;
parameter VAL_RINDEX_LO = 9;
parameter BASE_HI = 31;
parameter BASE_LO = `LM_BASE_LO;
parameter TOP_HI = `LM_TOP_HI;
parameter TOP_LO = 4;
parameter DATA_INDEX_HI = `IW_ADDR_HI;
parameter DATA_INDEX_LO = 2;

input CLK;
input TMODE;
input RESET_D1_R_N;



input SEN;

input INVALIDATE;

input MEMSEQUENTIAL;
input MEMZEROFIRST;
input CFG_IRAMISROM;

input EXT_IWREQRAM_R;
output IW_GNTRAM_R;


input [31:0] DATAUPI;
output [31:0] IW_DATAUPO;


output IW_LBCOE;

input [31:0] NEXTADDR;
input RDOP_N;
input IS_VAL;
output IW_VAL;

output IW_ACK;
output IW_MISS_R;
output IW_MISS_P;

output [`HALT_DRV_RANGE] IW_HALT_S_R;
input [`HALT_SIG_RANGE] X_HALT_R;

output [VAL_RINDEX_HI:VAL_RINDEX_LO] IW_VALINDEX;
input [31:0] IWR_VALRD;
output [31:0] IW_VALWR;
output IW_VALWE;
output IW_VALWEN;
output IW_VALRE;
output IW_VALREN;
output IW_VALCS;
output IW_VALCSN;

output [DATA_INDEX_HI:DATA_INDEX_LO] IW_DATAINDEX;
output IW_DATAWE;
output IW_DATAWEN;
output IW_DATARE;
output IW_DATAREN;
output IW_DATACS;
output IW_DATACSN;

input [31:0] IWR_DATARD;
output [31:0] IW_DATAWR;

input [BASE_HI:BASE_LO] CONFIGBASE;
input [TOP_HI:TOP_LO] CONFIGTOP;

wire DATAOE;

lmi_iram IRAM
(

.CLK ( CLK ),

.TMODE ( TMODE ),
.RESET_D1_R_N ( RESET_D1_R_N ),
.INVALIDATE ( INVALIDATE ),
.MEMSEQUENTIAL ( MEMSEQUENTIAL ),
.MEMZEROFIRST ( MEMZEROFIRST ),
.CFG_IRAMISROM ( CFG_IRAMISROM ),
.EXT_IWREQRAM_R( EXT_IWREQRAM_R),
.IW_GNTRAM_R ( IW_GNTRAM_R ),
.IW_DATAOE ( DATAOE ),
.IW_LBCOE ( IW_LBCOE ),
.NEXTADDR ( NEXTADDR ),
.RDOP_N ( RDOP_N ),
.IS_VAL ( IS_VAL ),
.IW_VAL ( IW_VAL ),
.X_HALT_R ( X_HALT_R ),
.IW_ACK ( IW_ACK ),
.IW_MISS_R ( IW_MISS_R ),
.IW_MISS_P ( IW_MISS_P ),
.IW_HALT_S_R ( IW_HALT_S_R ),
.IW_VALINDEX ( IW_VALINDEX ),
.IWR_VALRD ( IWR_VALRD ),
.IW_VALWR ( IW_VALWR ),
.IW_VALWE ( IW_VALWE ),
.IW_VALWEN ( IW_VALWEN ),
.IW_VALRE ( IW_VALRE ),
.IW_VALREN ( IW_VALREN ),
.IW_VALCS ( IW_VALCS ),
.IW_VALCSN ( IW_VALCSN ),
.IW_DATAINDEX ( IW_DATAINDEX ),
.IW_DATAWE ( IW_DATAWE ),
.IW_DATAWEN ( IW_DATAWEN ),
.IW_DATARE ( IW_DATARE ),
.IW_DATAREN ( IW_DATAREN ),
.IW_DATACS ( IW_DATACS ),
.IW_DATACSN ( IW_DATACSN ),
.CONFIGBASE ( CONFIGBASE ),
.CONFIGTOP ( CONFIGTOP )
);

wire DATAOD = 1'b0;



assign IW_DATAWR = DATAUPI;

mux32 MUX_INSTW_UP
(
.OUT ( IW_DATAUPO ),
.THRU ( DATAUPI ),
.IN ( IWR_DATARD ),
.EN1 ( DATAOE ),
.DIS1 ( DATAOD ),
.DIS2 ( SEN )
);






endmodule






