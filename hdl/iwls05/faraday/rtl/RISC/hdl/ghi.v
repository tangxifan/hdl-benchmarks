
























































































`include "../include/lxr_symbols.vh"

module lbc(

LBC_ADDR, LBC_DATA, LBC_IRDY, LBC_FRAME, LBC_CMD, LBC_UC, LBC_ID,
LBC_REQ, LBC_COE, LBC_TOE, LBC_XOE, LBC_DOE, LBC_EJUMBILICAL,
CBUS_HALT_W_R, CBUS_SWBEMPTY, CBUS_SIVAL, CBUS_SDVAL, CBUS_SIDATA,
CBUS_SDDATA,

SYSCLK, BUSCLK, RESET_D1_R_N, RESET_D1_LR_N, CFG_LBCWBDISABLE,
CFG_MEMSEQUENTIAL, CFG_LBCSYNCMODE, SEN, LBUS_DATA, LBUS_TRDY,
LBUS_IRDY, LBUS_FRAME, LBUS_SEL, LBUS_ABORT, LBUS_GNT,
EJ_LBCUMBILICAL, CBUS_DREQ, CBUS_DADDR, CBUS_DUC, CBUS_DRW, CBUS_DSZ,
CBUS_DLINE, CBUS_DO, CBUS_DADDR_E1, CBUS_DDM, CBUS_IREQ, CBUS_IADDR,
CBUS_IUC, CBUS_IDM
);

input SYSCLK;
input BUSCLK;
input RESET_D1_R_N;
input RESET_D1_LR_N;

input CFG_LBCWBDISABLE;
input CFG_MEMSEQUENTIAL;
input CFG_LBCSYNCMODE;

input SEN;


input [31:0] LBUS_DATA;
input LBUS_TRDY;
input LBUS_IRDY;
input LBUS_FRAME;
input LBUS_SEL;
input LBUS_ABORT;
input LBUS_GNT;


output [31:0] LBC_ADDR;
output [31:0] LBC_DATA;
output LBC_IRDY;
output LBC_FRAME;
output [6:0] LBC_CMD;
output LBC_UC;
output LBC_ID;
output LBC_REQ;
output [`LBC_COE-1:0] LBC_COE;
output [`LBC_TOE-1:0] LBC_TOE;
output [`LBC_XOE-1:0] LBC_XOE;
output [`LBC_DOE-1:0] LBC_DOE;



input [`EJ_LBCUMBILICAL_WIDTH-1:0] EJ_LBCUMBILICAL;
output [`LBC_EJUMBILICAL_WIDTH-1:0] LBC_EJUMBILICAL;


input CBUS_DREQ;
input [31:0] CBUS_DADDR;
input CBUS_DUC;
input CBUS_DRW;
input [1:0] CBUS_DSZ;
input CBUS_DLINE;
input [31:0] CBUS_DO;
input [31:0] CBUS_DADDR_E1;
input CBUS_DDM;

input CBUS_IREQ;
input [31:0] CBUS_IADDR;
input CBUS_IUC;
input CBUS_IDM;

output [`HALT_DRV_RANGE] CBUS_HALT_W_R;
output CBUS_SWBEMPTY;
output CBUS_SIVAL;
output CBUS_SDVAL;
output [31:0] CBUS_SIDATA;
output [31:0] CBUS_SDDATA;











lbc_lbi LBC1
(

.LBC_ADDR (LBC_ADDR[31:0]),
.LBC_DATA (LBC_DATA[31:0]),
.LBC_IRDY (LBC_IRDY),
.LBC_FRAME (LBC_FRAME),
.LBC_CMD (LBC_CMD[6:0]),
.LBC_UC (LBC_UC),
.LBC_ID (LBC_ID),
.LBC_REQ (LBC_REQ),
.LBC_COE (LBC_COE[`LBC_COE-1:0]),
.LBC_TOE (LBC_TOE[`LBC_TOE-1:0]),
.LBC_XOE (LBC_XOE[`LBC_XOE-1:0]),
.LBC_DOE (LBC_DOE[`LBC_DOE-1:0]),
.CBUS_HALT_W_R (CBUS_HALT_W_R[`HALT_DRV_RANGE]),
.CBUS_SWBEMPTY (CBUS_SWBEMPTY),
.CBUS_SIVAL (CBUS_SIVAL),
.CBUS_SDVAL (CBUS_SDVAL),
.CBUS_SIDATA (CBUS_SIDATA[31:0]),
.CBUS_SDDATA (CBUS_SDDATA[31:0]),
.LBC_EJUMBILICAL (LBC_EJUMBILICAL[`LBC_EJUMBILICAL_WIDTH-1:0]),

.BUSCLK (BUSCLK),
.SYSCLK (SYSCLK),
.RESET_D1_R_N (RESET_D1_R_N),
.RESET_D1_LR_N (RESET_D1_LR_N),
.LBUS_DATA (LBUS_DATA[31:0]),
.LBUS_TRDY (LBUS_TRDY),
.LBUS_IRDY (LBUS_IRDY),
.LBUS_FRAME (LBUS_FRAME),
.LBUS_SEL (LBUS_SEL),
.LBUS_ABORT (LBUS_ABORT),
.LBUS_GNT (LBUS_GNT),
.WBDISABLE (CFG_LBCWBDISABLE),
.RESET_DIS (1'b0),
.SEN (SEN),
.MEMSEQUENTIAL (CFG_MEMSEQUENTIAL),
.LBCSYNCMODE (CFG_LBCSYNCMODE),
.CBUS_DREQ (CBUS_DREQ),
.CBUS_DADDR (CBUS_DADDR[31:0]),
.CBUS_DUC (CBUS_DUC),
.CBUS_DRW (CBUS_DRW),
.CBUS_DSZ (CBUS_DSZ[1:0]),
.CBUS_DLINE (CBUS_DLINE),
.CBUS_DO (CBUS_DO[31:0]),
.CBUS_DADDR_E1 (CBUS_DADDR_E1[31:0]),
.CBUS_DDM (CBUS_DDM),
.CBUS_IREQ (CBUS_IREQ),
.CBUS_IADDR (CBUS_IADDR[31:0]),
.CBUS_IUC (CBUS_IUC),
.CBUS_IDM (CBUS_IDM),
.EJ_LBCUMBILICAL (EJ_LBCUMBILICAL[`EJ_LBCUMBILICAL_WIDTH-1:0]));

endmodule

