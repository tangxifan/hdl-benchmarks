



















































































module lbc_lbi










(

LBC_ADDR, LBC_DATA, LBC_IRDY, LBC_FRAME, LBC_CMD, LBC_UC, LBC_ID,
LBC_REQ, LBC_COE, LBC_TOE, LBC_XOE, LBC_DOE, CBUS_HALT_W_R,
CBUS_SWBEMPTY, CBUS_SIVAL, CBUS_SDVAL, CBUS_SIDATA, CBUS_SDDATA,
LBC_EJUMBILICAL,

BUSCLK, SYSCLK, RESET_D1_R_N, RESET_D1_LR_N, LBUS_DATA, LBUS_TRDY,
LBUS_IRDY, LBUS_FRAME, LBUS_SEL, LBUS_ABORT, LBUS_GNT, WBDISABLE,
RESET_DIS, SEN, MEMSEQUENTIAL, LBCSYNCMODE, CBUS_DREQ, CBUS_DADDR,
CBUS_DUC, CBUS_DRW, CBUS_DSZ, CBUS_DLINE, CBUS_DO, CBUS_DADDR_E1,
CBUS_DDM, CBUS_IREQ, CBUS_IADDR, CBUS_IUC, CBUS_IDM, EJ_LBCUMBILICAL
);

`include "lxr_symbols.vh"






input BUSCLK;
input SYSCLK;
input RESET_D1_R_N;
input RESET_D1_LR_N;


input [31:0] LBUS_DATA;
input LBUS_TRDY;
input LBUS_IRDY;
input LBUS_FRAME;
input LBUS_SEL;
input LBUS_ABORT;
input LBUS_GNT;

input WBDISABLE;

input RESET_DIS;
input SEN;


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


input MEMSEQUENTIAL;
input LBCSYNCMODE;

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


input [`EJ_LBCUMBILICAL_WIDTH-1:0] EJ_LBCUMBILICAL;
output [`LBC_EJUMBILICAL_WIDTH-1:0] LBC_EJUMBILICAL;











wire LC_CDRLOAD;
wire LC_CGO;
wire LC_CILOAD;
wire [`LBC_NSMUX:0] LC_CQSEL;
wire LC_DVALID_R;
wire LC_EJDONE;
wire LC_FCTLDOSHIFT;
wire [`LBC_NWRITES:0] LC_FCTLLOAD;
wire LC_GOTOGGLE_R;
wire LDN_CGOACK_R;
wire LDN_CGO_LR;
wire [31:0] LD_EJDATA;
wire LD_EVAL;
wire [`LBC_NWRITES:0] LD_FCTLHIT;
wire [31:0] LD_LADDR_LR;
wire [6:0] LD_LCMD_LR;
wire [31:0] LD_LDATA_LR;
wire LD_LEJ_LR;
wire LD_LID_LR;
wire LD_LLINE_LR;
wire LD_LRW;
wire LD_LUC_LR;
wire [31:0] LD_MADDR;
wire [31:0] LD_MDATA;
wire LD_MEJDEST;
wire LD_MID;
wire LD_MRW;
wire LD_MUC;
wire LL_CACK;
wire LL_CDATAEN;
wire LL_CHOLD;
wire [`LBC_COE-1:0] LL_COE_LR;
wire [`LBC_DOE-1:0] LL_DOE_LR;
wire LL_FCTLRDOSHIFT;
wire [`LBC_NREADS:0] LL_FCTLRLOAD;
wire LL_FRAME_LR;
wire LL_IDLE_LR;
wire LL_IRDY_LR;
wire LL_REQ;
wire [`LBC_TOE-1:0] LL_TOE_LR;
wire [`LBC_XOE-1:0] LL_XOE_LR;
wire LUP_CDATAACK_LR;
wire LUP_CDATAEN_R;




wire NC_FOO = SEN;





assign LBC_EJUMBILICAL [(32*1)-1:32*(1-1)] = LD_MADDR [31:0];
assign LBC_EJUMBILICAL [(32*2)-1:32*(2-1)] = LD_MDATA [31:0];
assign LBC_EJUMBILICAL [(32*3)-1:32*(3-1)] = LD_EJDATA [31:0];
assign LBC_EJUMBILICAL [(32*3)+0] = LD_MRW;
assign LBC_EJUMBILICAL [(32*3)+1] = LD_MEJDEST;
assign LBC_EJUMBILICAL [(32*3)+2] = LD_EVAL;
assign LBC_EJUMBILICAL [(32*3)+3] = LC_GOTOGGLE_R;
assign LBC_EJUMBILICAL [(32*3)+4] = LD_MID;
assign LBC_EJUMBILICAL [(32*3)+5] = LD_MUC;











wire [31:0] EJ_DMAADDR = EJ_LBCUMBILICAL [(32*1)-1:32*(1-1)];
wire [31:0] EJ_DMADATA = EJ_LBCUMBILICAL [(32*2)-1:32*(2-1)];
wire [31:0] EJ_SLAVEDATA = EJ_LBCUMBILICAL [(32*3)-1:32*(3-1)];
wire EJ_DMAREQ = EJ_LBCUMBILICAL [(32*3)+0];
wire EJ_DMARW = EJ_LBCUMBILICAL [(32*3)+1];
wire [1:0] EJ_DMASZ = EJ_LBCUMBILICAL [(32*3)+3:(32*3)+2];
wire EJ_DONE = EJ_LBCUMBILICAL [(32*3)+4];









assign LBC_ADDR = LD_LADDR_LR;
assign LBC_CMD = LD_LCMD_LR;
assign LBC_COE = LL_COE_LR;
assign LBC_DATA = LD_LDATA_LR;
assign LBC_DOE = LL_DOE_LR;
assign LBC_FRAME = LL_FRAME_LR;
assign LBC_ID = LD_LID_LR;
assign LBC_IRDY = LL_IRDY_LR;
assign LBC_REQ = LL_REQ;
assign LBC_TOE = LL_TOE_LR;
assign LBC_UC = LD_LUC_LR;
assign LBC_XOE = LL_XOE_LR;


lbc_lbus lbus
(

.LL_IRDY_LR (LL_IRDY_LR),
.LL_FRAME_LR (LL_FRAME_LR),
.LL_CDATAEN (LL_CDATAEN),
.LL_CACK (LL_CACK),
.LL_CHOLD (LL_CHOLD),
.LL_REQ (LL_REQ),
.LL_COE_LR (LL_COE_LR[`LBC_COE-1:0]),
.LL_XOE_LR (LL_XOE_LR[`LBC_XOE-1:0]),
.LL_TOE_LR (LL_TOE_LR[`LBC_TOE-1:0]),
.LL_DOE_LR (LL_DOE_LR[`LBC_DOE-1:0]),
.LL_FCTLRLOAD (LL_FCTLRLOAD[`LBC_NREADS:0]),
.LL_FCTLRDOSHIFT (LL_FCTLRDOSHIFT),
.LL_IDLE_LR (LL_IDLE_LR),

.BUSCLK (BUSCLK),
.LBUS_TRDY (LBUS_TRDY),
.LBUS_SEL (LBUS_SEL),
.LBUS_ABORT (LBUS_ABORT),
.LBUS_GNT (LBUS_GNT),
.LBUS_FRAME (LBUS_FRAME),
.LBUS_IRDY (LBUS_IRDY),
.LD_MEJDEST (LD_MEJDEST),
.LDN_CGO_LR (LDN_CGO_LR),
.LD_LRW (LD_LRW),
.LD_LLINE_LR (LD_LLINE_LR),
.LD_LEJ_LR (LD_LEJ_LR),
.LUP_CDATAACK_LR (LUP_CDATAACK_LR),
.LBCSYNCMODE (LBCSYNCMODE),
.RESET_D1_LR_N (RESET_D1_LR_N),
.RESET_DIS (RESET_DIS));











lbc_data data
(

.LD_LADDR_LR (LD_LADDR_LR[31:0]),
.LD_LDATA_LR (LD_LDATA_LR[31:0]),
.LD_CIDATA (CBUS_SIDATA[31:0]),
.LD_CDDATA (CBUS_SDDATA[31:0]),
.LD_EJDATA (LD_EJDATA[31:0]),
.LD_MADDR (LD_MADDR[31:0]),
.LD_MDATA (LD_MDATA[31:0]),
.LD_MRW (LD_MRW),
.LD_MID (LD_MID),
.LD_MUC (LD_MUC),
.LD_MEJDEST (LD_MEJDEST),
.LD_LRW (LD_LRW),
.LD_LLINE_LR (LD_LLINE_LR),
.LD_LUC_LR (LD_LUC_LR),
.LD_LID_LR (LD_LID_LR),
.LD_LEJ_LR (LD_LEJ_LR),
.LD_LCMD_LR (LD_LCMD_LR[6:0]),
.LD_FCTLHIT (LD_FCTLHIT[`LBC_NWRITES:0]),
.LD_IVAL (CBUS_SIVAL),
.LD_DVAL (CBUS_SDVAL),
.LD_EVAL (LD_EVAL),

.LBUS_DATA (LBUS_DATA[31:0]),
.CBUS_IADDR (CBUS_IADDR[31:0]),
.CBUS_DADDR (CBUS_DADDR[31:0]),
.CBUS_DADDR_E1 (CBUS_DADDR_E1[31:0]),
.CBUS_DO (CBUS_DO[31:0]),
.CBUS_DUC (CBUS_DUC),
.CBUS_IUC (CBUS_IUC),
.CBUS_DDM (CBUS_DDM),
.CBUS_IDM (CBUS_IDM),
.CBUS_DSZ (CBUS_DSZ[1:0]),
.CBUS_DLINE (CBUS_DLINE),
.EJ_DMAADDR (EJ_DMAADDR[31:0]),
.EJ_DMADATA (EJ_DMADATA[31:0]),
.EJ_DMARW (EJ_DMARW),
.EJ_DMASZ (EJ_DMASZ[1:0]),
.LC_EJDONE (LC_EJDONE),
.EJ_SLAVEDATA (EJ_SLAVEDATA[31:0]),
.LL_CHOLD (LL_CHOLD),
.SYSCLK (SYSCLK),
.BUSCLK (BUSCLK),
.MEMSEQUENTIAL (MEMSEQUENTIAL),
.RESET_D1_LR_N (RESET_D1_LR_N),
.RESET_D1_R_N (RESET_D1_R_N),
.LC_DVALID_R (LC_DVALID_R),
.LC_CILOAD (LC_CILOAD),
.LC_CDRLOAD (LC_CDRLOAD),
.LC_CQSEL (LC_CQSEL[`LBC_NSMUX:0]),
.LC_FCTLLOAD (LC_FCTLLOAD[`LBC_NWRITES:0]),
.LUP_CDATAEN_R (LUP_CDATAEN_R),
.LC_FCTLDOSHIFT (LC_FCTLDOSHIFT),
.LL_FCTLRLOAD (LL_FCTLRLOAD[`LBC_NREADS:0]),
.LL_FCTLRDOSHIFT (LL_FCTLRDOSHIFT),
.LBCSYNCMODE (LBCSYNCMODE),
.RESET_DIS (RESET_DIS));











lbc_cbus cbus
(

.LC_CGO (LC_CGO),
.LC_GOTOGGLE_R (LC_GOTOGGLE_R),
.LC_CILOAD (LC_CILOAD),
.LC_CDRLOAD (LC_CDRLOAD),
.LC_CQSEL (LC_CQSEL[`LBC_NSMUX:0]),
.LC_DVALID_R (LC_DVALID_R),
.LC_EJDONE (LC_EJDONE),
.CBUS_HALT_W_R (CBUS_HALT_W_R[`HALT_DRV_RANGE]),
.LC_DWEMPTY_P (CBUS_SWBEMPTY),
.LC_FCTLLOAD (LC_FCTLLOAD[`LBC_NWRITES:0]),
.LC_FCTLDOSHIFT (LC_FCTLDOSHIFT),

.CBUS_DREQ (CBUS_DREQ),
.CBUS_DRW (CBUS_DRW),
.CBUS_DUC (CBUS_DUC),
.CBUS_IREQ (CBUS_IREQ),
.EJ_DMAREQ (EJ_DMAREQ),
.EJ_DMARW (EJ_DMARW),
.EJ_DONE (EJ_DONE),
.SYSCLK (SYSCLK),
.RESET_DIS (RESET_DIS),
.RESET_D1_R_N (RESET_D1_R_N),
.LD_MEJDEST (LD_MEJDEST),
.LDN_CGOACK_R (LDN_CGOACK_R),
.LD_FCTLHIT (LD_FCTLHIT[`LBC_NWRITES:0]),
.WBDISABLE (WBDISABLE),
.LBCSYNCMODE (LBCSYNCMODE),
.LL_IDLE_LR (LL_IDLE_LR));
















lbc_async downasync
(

.VALIDO (LDN_CGO_LR),
.ACKO (LDN_CGOACK_R),

.VALIDI (LC_CGO),
.ACKI (LL_CACK),
.CLOCKII (SYSCLK),
.CLOCKOI (BUSCLK),
.RESET_D1_IR_N (RESET_D1_R_N),
.RESET_D1_OR_N (RESET_D1_LR_N),
.LBC_SYNC_MODE (LBCSYNCMODE));















lbc_async upasync
(

.VALIDO (LUP_CDATAEN_R),
.ACKO (LUP_CDATAACK_LR),

.VALIDI (LL_CDATAEN),
.ACKI (1'b1),
.CLOCKII (BUSCLK),
.CLOCKOI (SYSCLK),
.RESET_D1_IR_N (RESET_D1_LR_N),
.RESET_D1_OR_N (RESET_D1_R_N),
.LBC_SYNC_MODE (LBCSYNCMODE));

endmodule
