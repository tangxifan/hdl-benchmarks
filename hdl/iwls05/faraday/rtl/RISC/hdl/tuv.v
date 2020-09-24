



















































































module copif



































(
SYSCLK, TMODE, SEN, RESET1N, EXCEPTION, INSTM32_S_R_N,
COPNO,
INSTIF, ISTALLIF,
X_HALT_R,
IMISS, DMISS, IVAL, DVAL,
CMEMOPM, CONDINN, CPCONDN,
CRDADDR, RHOLD,
CRDGEN, CRDCON, CRDDATA,
CWRADDR, CWRGEN, CWRCON, CWRDATA,
CNTINST, CNTIMISS, CNTISTALL,
CNTDMISS, CNTDSTALL, CNTDLOAD, CNTDSTORE,
CDRIVERM, CRDDATAM,
DBUSM);



`include "core_symbols.vh"
`include "lxr_symbols.vh"



input SYSCLK;
input TMODE;
input SEN;
input RESET1N;
input EXCEPTION;
input INSTM32_S_R_N;

input [1:0] COPNO;

input [31:0] INSTIF;
input ISTALLIF;
input [`HALT_SIG_RANGE] X_HALT_R;

input CONDINN;
input [31:0] CRDDATA;

input [2:0] IMISS;
input [2:0] DMISS;
input [2:0] IVAL;
input [2:0] DVAL;

input [31:0] DBUSM;



output CMEMOPM;
output CPCONDN;

output [4:0] CRDADDR;
output CRDGEN;
output CRDCON;

output [4:0] CWRADDR;
output CWRGEN;
output CWRCON;
output [31:0] CWRDATA;

output CDRIVERM;
output [31:0] CRDDATAM;


output RHOLD;
output CNTINST;
output CNTIMISS;
output CNTISTALL;
output CNTDMISS;
output CNTDSTALL;
output CNTDLOAD;
output CNTDSTORE;



wire [31:0] CRDDATAM;
wire Dload;
wire [31:0] InstSF;


wire anyIval = | IVAL;
wire anyDval = | DVAL;
wire anyImiss = | IMISS;
wire anyDmiss = | DMISS;


wire NC_FOO = SEN;





coplogic COPLOGIC1
(

.SYSCLK (SYSCLK),
.TMODE (TMODE),
.RESET_D1_R_N (RESET1N),
.EXCEPTION (EXCEPTION),
.COPNO (COPNO),
.INSTSF (InstSF),
.INSTM32_S_R_N (INSTM32_S_R_N),
.RHOLD (RHOLD),
.DLOAD (Dload),
.CMEMOPM_R (CMEMOPM),
.CONDINN (CONDINN),
.CPCONDN_R (CPCONDN),
.CRDADDR (CRDADDR),
.CRDGEN (CRDGEN),
.CRDCON (CRDCON),
.CRDDATA (CRDDATA),
.CWRADDR_R (CWRADDR),
.CWRGEN_R (CWRGEN),
.CWRCON_R (CWRCON),
.CWRDATA_R (CWRDATA),
.CDRIVERM_R (CDRIVERM),
.CIDBUSINM (DBUSM),
.CRDDATAM_R (CRDDATAM)
);


pcont_copif PCONT3
(

.SYSCLK (SYSCLK),
.TMODE (TMODE),
.RESET_D1_R_N (RESET1N),
.INSTIF (INSTIF),
.ISTALLIF (ISTALLIF),
.IMISS (anyImiss),
.DMISS (anyDmiss),
.IVAL (anyIval),
.DVAL (anyDval),
.X_HALT_R (X_HALT_R),
.DLOAD (Dload),
.RHOLD (RHOLD),
.INSTSF_R (InstSF),
.CNTINST_R (CNTINST),
.CNTIMISS_R (CNTIMISS),
.CNTISTALL_R (CNTISTALL),
.CNTDMISS_R (CNTDMISS),
.CNTDSTALL_R (CNTDSTALL),
.CNTDLOAD_R (CNTDLOAD),
.CNTDSTORE_R (CNTDSTORE)
);


endmodule
