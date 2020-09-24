



















































































module cop0




















`include "core_symbols.vh"
`include "lxr_symbols.vh"

(

CP0_XCPN_M_C0, CP0_XCPN_M_C1, CEI_XCPN_M_C0, CEI_XCPN_M_C1,
CP0_INULL_I, CP0_IADDR_I_P, CP0_LINK_E_R, CP0_PCREL_S, CP0_CCNTL_W_R,
CP0_CDBUS_M_R, CP0_CDBUSOE_R, CP0_INSTM32_S_R_N,
CP0_INSTM32_S_R_C1_N, CP0_INSTM32_I_R_C1_N, CP0_M16IADDRB1_I,
JPT_DBM2PCSTSET_P, JPT_PCST_DR, JPT_TPC_DR, JPT_HALT_M_R,
CP0_JCTRLJRST_R, CP0_JCTRLDM_M_R, CP0_JCTRLDM_I_R, CP0_IEJORDM_I,
CP0_DBRKSETIFDMBH, CP0_DBREAKCLR, CP0_JXCPN1STIFDMBH_M_P,
CP0_JXCPN1STIFNOTDMBH_M_P, CP0_DDBXIFDMBH_M_P, CP0_DDBXUNCOND_M_P,
CP0_DIBIFNOTDMBH_M_P, CP0_SLEEP_M_R, CP0_IM_W_R,

SYSCLK, TMODE, SEN, RESET1N, CFG_INSTM16EN, INST_I, RALU_JRA_E_R,
INTREQN, RALU_V_E, RALU_Z_E, CI1_COND, CI2_COND, CI3_COND,
CE0_SEL_E_R, CE1_SEL_E_R, RALU_DADDR_E, RALU_DADALERR_E,
RALU_DREAD_E_R, RALU_DWRITE_E_R, RALU_ADATAREG_M_R, CLMI_SELINST_S_P,
CLMI_RHOLD, CFG_EJTMLOG2, CFG_EJTBIT0M16, EJT_DREN_R, EJC_DINT_R,
EJIM_BREAKHIT_S, EJIM_TRACEHIT_S, EJDM_BREAKHIT_W, EJDM_TRACEHIT_W,
EJPM_BREAKHIT_R, EJPM_TRACEHIT_R, EJC_ECRPROBEEN_R, EJC_DCRMINT_R,
EJC_ECRPCAS_R, EJC_DCRTM_R, EJC_PCTRON_R, CLMI_JPTHOLD
);



input SYSCLK;
input TMODE;
input SEN;
input RESET1N;
input CFG_INSTM16EN;
input [31:0] INST_I;
input [31:0] RALU_JRA_E_R;
input [5:0] INTREQN;
input RALU_V_E;
input RALU_Z_E;
input CI1_COND;
input CI2_COND;
input CI3_COND;
input CE0_SEL_E_R;
input CE1_SEL_E_R;
input [31:0] RALU_DADDR_E;
input RALU_DADALERR_E;
input RALU_DREAD_E_R;
input RALU_DWRITE_E_R;
input [31:0] RALU_ADATAREG_M_R;

input [`CLMI_SEL_INST_HI:0] CLMI_SELINST_S_P;

input CLMI_RHOLD;

input [1:0] CFG_EJTMLOG2;
input CFG_EJTBIT0M16;
input EJT_DREN_R;
input EJC_DINT_R;

input EJIM_BREAKHIT_S;
input EJIM_TRACEHIT_S;
input EJDM_BREAKHIT_W;
input EJDM_TRACEHIT_W;
input EJPM_BREAKHIT_R;
input EJPM_TRACEHIT_R;
input EJC_ECRPROBEEN_R;
input EJC_DCRMINT_R;
input EJC_ECRPCAS_R;
input EJC_DCRTM_R;
input EJC_PCTRON_R;
input CLMI_JPTHOLD;

output CP0_XCPN_M_C0;
output CP0_XCPN_M_C1;
output CEI_XCPN_M_C0;
output CEI_XCPN_M_C1;

output CP0_INULL_I;
output [31:0] CP0_IADDR_I_P;
output [31:0] CP0_LINK_E_R;
output [31:0] CP0_PCREL_S;
output [7:0] CP0_CCNTL_W_R;
output [31:0] CP0_CDBUS_M_R;
output CP0_CDBUSOE_R;

output CP0_INSTM32_S_R_N;
output CP0_INSTM32_S_R_C1_N;
output CP0_INSTM32_I_R_C1_N;
output CP0_M16IADDRB1_I;

output JPT_DBM2PCSTSET_P;
output [11:0] JPT_PCST_DR;
output [8:1] JPT_TPC_DR;
output [`HALT_DRV_RANGE] JPT_HALT_M_R;
output CP0_JCTRLJRST_R;
output CP0_JCTRLDM_M_R;
output CP0_JCTRLDM_I_R;
output CP0_IEJORDM_I;
output CP0_DBRKSETIFDMBH;
output CP0_DBREAKCLR;
output CP0_JXCPN1STIFDMBH_M_P;
output CP0_JXCPN1STIFNOTDMBH_M_P;
output CP0_DDBXIFDMBH_M_P;
output CP0_DDBXUNCOND_M_P;
output CP0_DIBIFNOTDMBH_M_P;
output CP0_SLEEP_M_R;
output [7:0] CP0_IM_W_R;






wire [`CP0_WSELST:0] STCOP0_E_R;
wire [`CP0_WIMUX:0] IMUXNOXB_I_P;
wire [`CP0_WPCSEL:0] SELPC_S;
wire [`CP0_WEPCSEL:0] LDEPC_M;
wire [`CP0_WLDCOP0:0] LDCOP0_M_R;


wire NC_FOO = SEN;




wire ADELDATA_M;
wire ADELINST_M_R;
wire ADESLDATA_M_R;
wire ADES_M;
wire BD_M_R;
wire [1:0] CE_M_R;
wire CP0_INSTM32_I_R_C2_N;
wire CP0_INSTM32_S_R_C2_N;
wire [31:1] CP0_IVATGT_I_R;
wire [31:1] CP0_IVATGT_S_R;
wire CP0_JCTRLDM_I_R_C0;
wire CP0_JCTRLDM_M_R_C0;
wire CP0_JPINDJ_E_R;
wire [1:0] CP0_JPTYPE_M_R;
wire CP0_JTRIG_M_R;
wire CP0_JXCPN_M_R;
wire CP0_NXCPN_M;
wire [2:0] CP0_XCPNVEC_M;
wire CP0_XCPN_M_C2;
wire [3:0] CU_W_R;
wire DSS_M_R;
wire [4:0] EXCCODEIN_M;
wire EXTEND_E_R;
wire EXTEND_M_R;
wire EXTEND_W_R;
wire IEC_W_R;
wire IMUXBKUPIFXZ00_I_P;
wire IMUXBKUPIFXZ01_I_P;
wire IMUXBKUPNOX_I_P;
wire IMUXXCPN_I_P;
wire [31:0] INST_S_R;
wire INT;
wire INULL_E_R;
wire JAL16_M_R;
wire JAL16_WP1_R;
wire KUC_W_R;
wire LDLINK_S;
wire MODE2LINK_S;
wire POP_E_R;
wire SDBBP_E_R;



















c0dpath C0DPATH1
(

.INT (INT),
.IEC_W_R (IEC_W_R),
.CU_W_R (CU_W_R[3:0]),
.KUC_W_R (KUC_W_R),
.CP0_IADDR_I_P (CP0_IADDR_I_P[31:0]),
.CP0_LINK_E_R (CP0_LINK_E_R[31:0]),
.CP0_PCREL_S (CP0_PCREL_S[31:0]),
.ADELINST_M_R (ADELINST_M_R),
.ADELDATA_M (ADELDATA_M),
.ADES_M (ADES_M),
.ADESLDATA_M_R (ADESLDATA_M_R),
.DSS_M_R (DSS_M_R),
.CP0_CCNTL_W_R (CP0_CCNTL_W_R[7:0]),
.CP0_INSTM32_S_R_N (CP0_INSTM32_S_R_N),
.CP0_INSTM32_S_R_C1_N (CP0_INSTM32_S_R_C1_N),
.CP0_INSTM32_S_R_C2_N (CP0_INSTM32_S_R_C2_N),
.CP0_INSTM32_I_R_C1_N (CP0_INSTM32_I_R_C1_N),
.CP0_INSTM32_I_R_C2_N (CP0_INSTM32_I_R_C2_N),
.CP0_M16IADDRB1_I (CP0_M16IADDRB1_I),
.CP0_CDBUS_M_R (CP0_CDBUS_M_R[31:0]),
.CP0_JCTRLDM_I_R_C0 (CP0_JCTRLDM_I_R_C0),
.CP0_JCTRLDM_I_R (CP0_JCTRLDM_I_R),
.CP0_IEJORDM_I (CP0_IEJORDM_I),
.CP0_JCTRLDM_M_R (CP0_JCTRLDM_M_R),
.CP0_JCTRLDM_M_R_C0 (CP0_JCTRLDM_M_R_C0),
.CP0_JXCPN_M_R (CP0_JXCPN_M_R),
.CP0_IVATGT_I_R (CP0_IVATGT_I_R[31:1]),
.CP0_IVATGT_S_R (CP0_IVATGT_S_R[31:1]),
.CP0_JTRIG_M_R (CP0_JTRIG_M_R),
.CP0_XCPNVEC_M (CP0_XCPNVEC_M[2:0]),
.CP0_JCTRLJRST_R (CP0_JCTRLJRST_R),
.CP0_IM_W_R (CP0_IM_W_R[7:0]),
.CP0_DBRKSETIFDMBH (CP0_DBRKSETIFDMBH),
.CP0_DBREAKCLR (CP0_DBREAKCLR),
.CP0_JXCPN1STIFDMBH_M_P (CP0_JXCPN1STIFDMBH_M_P),
.CP0_JXCPN1STIFNOTDMBH_M_P (CP0_JXCPN1STIFNOTDMBH_M_P),
.CP0_DDBXIFDMBH_M_P (CP0_DDBXIFDMBH_M_P),
.CP0_DDBXUNCOND_M_P (CP0_DDBXUNCOND_M_P),
.CP0_DIBIFNOTDMBH_M_P (CP0_DIBIFNOTDMBH_M_P),

.SYSCLK (SYSCLK),
.TMODE (TMODE),
.RESET_D1_R_N (RESET1N),
.CFG_INSTM16EN (CFG_INSTM16EN),
.INST_S_R (INST_S_R[31:0]),
.CLMI_RHOLD (CLMI_RHOLD),
.INTREQ_N (INTREQN),
.STCOP0_E_R (STCOP0_E_R[`CP0_WSELST:0]),
.LDCOP0_M_R (LDCOP0_M_R[`CP0_WLDCOP0:0]),
.IMUXNOXB_I_P (IMUXNOXB_I_P[`CP0_WIMUX:0]),
.IMUXBKUPNOX_I_P (IMUXBKUPNOX_I_P),
.IMUXBKUPIFXZ00_I_P (IMUXBKUPIFXZ00_I_P),
.IMUXBKUPIFXZ01_I_P (IMUXBKUPIFXZ01_I_P),
.IMUXXCPN_I_P (IMUXXCPN_I_P),
.LDEPC_M (LDEPC_M[`CP0_WEPCSEL:0]),
.SELPC_S (SELPC_S[`CP0_WPCSEL:0]),
.EXTEND_E_R (EXTEND_E_R),
.EXTEND_M_R (EXTEND_M_R),
.EXTEND_W_R (EXTEND_W_R),
.JAL16_M_R (JAL16_M_R),
.JAL16_WP1_R (JAL16_WP1_R),
.INULL_E_R (INULL_E_R),
.BD_M_R (BD_M_R),
.CE_M_R (CE_M_R[1:0]),
.EXCCODEIN_M (EXCCODEIN_M[4:0]),
.CP0_NXCPN_M (CP0_NXCPN_M),
.POP_E_R (POP_E_R),
.LDLINK_S (LDLINK_S),
.MODE2LINK_S (MODE2LINK_S),
.RALU_JRA_E_R (RALU_JRA_E_R[31:0]),
.RALU_Z_E (RALU_Z_E),
.RALU_DADDR_E (RALU_DADDR_E[31:0]),
.RALU_DADALERR_E (RALU_DADALERR_E),
.RALU_DREAD_E_R (RALU_DREAD_E_R),
.RALU_DWRITE_E_R (RALU_DWRITE_E_R),
.RALU_ADATAREG_M_R (RALU_ADATAREG_M_R[31:0]),
.EJC_DINT_R (EJC_DINT_R),
.EJIM_BREAKHIT_S (EJIM_BREAKHIT_S),
.EJIM_TRACEHIT_S (EJIM_TRACEHIT_S),
.EJDM_BREAKHIT_W (EJDM_BREAKHIT_W),
.EJDM_TRACEHIT_W (EJDM_TRACEHIT_W),
.EJPM_BREAKHIT_R (EJPM_BREAKHIT_R),
.EJPM_TRACEHIT_R (EJPM_TRACEHIT_R),
.EJC_ECRPROBEEN_R (EJC_ECRPROBEEN_R),
.EJC_DCRMINT_R (EJC_DCRMINT_R),
.SDBBP_E_R (SDBBP_E_R));













c0cont C0CONT1
(

.CP0_INULL_I (CP0_INULL_I),
.CP0_CDBUSOE_R (CP0_CDBUSOE_R),
.STCOP0_E_R (STCOP0_E_R[`CP0_WSELST:0]),
.LDCOP0_M_R (LDCOP0_M_R[`CP0_WLDCOP0:0]),
.IMUXNOXB_I_P (IMUXNOXB_I_P[`CP0_WIMUX:0]),
.IMUXBKUPNOX_I_P (IMUXBKUPNOX_I_P),
.IMUXBKUPIFXZ00_I_P (IMUXBKUPIFXZ00_I_P),
.IMUXBKUPIFXZ01_I_P (IMUXBKUPIFXZ01_I_P),
.IMUXXCPN_I_P (IMUXXCPN_I_P),
.LDEPC_M (LDEPC_M[`CP0_WEPCSEL:0]),
.SELPC_S (SELPC_S[`CP0_WPCSEL:0]),
.EXTEND_E_R (EXTEND_E_R),
.EXTEND_M_R (EXTEND_M_R),
.EXTEND_W_R (EXTEND_W_R),
.JAL16_M_R (JAL16_M_R),
.JAL16_WP1_R (JAL16_WP1_R),
.BD_M_R (BD_M_R),
.CE_M_R (CE_M_R[1:0]),
.EXCCODEIN_M (EXCCODEIN_M[4:0]),
.CP0_NXCPN_M (CP0_NXCPN_M),
.POP_E_R (POP_E_R),
.LDLINK_S (LDLINK_S),
.MODE2LINK_S (MODE2LINK_S),
.CP0_SLEEP_M_R (CP0_SLEEP_M_R),
.SDBBP_E_R (SDBBP_E_R),
.CP0_XCPN_M_C0 (CP0_XCPN_M_C0),
.CP0_XCPN_M_C1 (CP0_XCPN_M_C1),
.CP0_XCPN_M_C2 (CP0_XCPN_M_C2),
.CEI_XCPN_M_C0 (CEI_XCPN_M_C0),
.CEI_XCPN_M_C1 (CEI_XCPN_M_C1),
.CP0_JPINDJ_E_R (CP0_JPINDJ_E_R),
.CP0_JPTYPE_M_R (CP0_JPTYPE_M_R[1:0]),
.INULL_E_R (INULL_E_R),

.SYSCLK (SYSCLK),
.TMODE (TMODE),
.RESET_D1_R_N (RESET1N),
.CFG_INSTM16EN (CFG_INSTM16EN),
.INSTM32_S_R_N (CP0_INSTM32_S_R_C2_N),
.INST_S_R (INST_S_R[31:0]),
.CLMI_RHOLD (CLMI_RHOLD),
.RALU_V_E (RALU_V_E),
.RALU_N_E_R (RALU_JRA_E_R[31]),
.RALU_Z_E (RALU_Z_E),
.ADELINST_M_R (ADELINST_M_R),
.ADELDATA_M (ADELDATA_M),
.ADES_M (ADES_M),
.ADESLDATA_M_R (ADESLDATA_M_R),
.DSS_M_R (DSS_M_R),
.CI1_COND (CI1_COND),
.CI2_COND (CI2_COND),
.CI3_COND (CI3_COND),
.INT (INT),
.IEC_W_R (IEC_W_R),
.CU_W_R (CU_W_R[3:0]),
.KUC_W_R (KUC_W_R),
.CE0_SEL_E_R (CE0_SEL_E_R),
.CE1_SEL_E_R (CE1_SEL_E_R),
.CP0_JCTRLDM_M_R (CP0_JCTRLDM_M_R_C0),
.CP0_JXCPN_M_R (CP0_JXCPN_M_R));















pcont_cop0 PCONT2
(

.INST_S_R (INST_S_R[31:0]),

.SYSCLK (SYSCLK),
.TMODE (TMODE),
.RESET_D1_R_N (RESET1N),
.INST_I (INST_I[31:0]),
.CP0_INSTM32_I_R_N (CP0_INSTM32_I_R_C2_N),
.CP0_M16IADDRB1_I (CP0_M16IADDRB1_I),
.CLMI_RHOLD (CLMI_RHOLD),
.CLMI_SELINST_S_P (CLMI_SELINST_S_P[`CLMI_SEL_INST_HI:0]));





















jpt jpt
(

.JPT_DBM2PCSTSET_P (JPT_DBM2PCSTSET_P),
.JPT_PCST_DR (JPT_PCST_DR[11:0]),
.JPT_TPC_DR (JPT_TPC_DR[8:1]),
.JPT_HALT_M_R_C (JPT_HALT_M_R),

.CLK (SYSCLK),
.TMODE (TMODE),
.RESET_D1_R_N (RESET1N),
.CFG_EJTMLOG2 (CFG_EJTMLOG2[1:0]),
.CFG_EJTBIT0M16 (CFG_EJTBIT0M16),
.EJT_DREN_R (EJT_DREN_R),
.CFG_INSTM16EN (CFG_INSTM16EN),
.CP0_JCTRLDM_I_R (CP0_JCTRLDM_I_R_C0),
.CP0_JCTRLDM_M_R (CP0_JCTRLDM_M_R),
.EJC_ECRPCAS_R (EJC_ECRPCAS_R),
.EJC_DCRTM_R (EJC_DCRTM_R),
.EJC_PCTRON_R (EJC_PCTRON_R),
.CP0_JPINDJ_E_R (CP0_JPINDJ_E_R),
.CP0_JPTYPE_M_R (CP0_JPTYPE_M_R[1:0]),
.CP0_JXCPN_M_R (CP0_JXCPN_M_R),
.CP0_JTRIG_M_R (CP0_JTRIG_M_R),
.CP0_XCPN_M (CP0_XCPN_M_C2),
.CP0_XCPNVEC_M (CP0_XCPNVEC_M[2:0]),
.CP0_IVATGT_I_R (CP0_IVATGT_I_R[31:1]),
.CP0_IVATGT_S_R (CP0_IVATGT_S_R[31:1]),
.MMU_IASTGT_I_R (8'b0000_0000),
.MMU_IASTGT_S_R (8'b0000_0000),
.CP0_INSTM32_I_R_N (CP0_INSTM32_I_R_C2_N),
.CP0_INSTM32_S_R_N (CP0_INSTM32_S_R_C2_N),
.CLMI_JPTHOLD (CLMI_JPTHOLD));


endmodule



