// IWLS benchmark module "s820.bench" printed on Wed May 29 21:45:09 2002
module \s820.bench (G0, G1, G2, G3, G4, G5, G6, G7, G8, G9, G10, G11, G12, G13, G14, G15, G16, G18, G290, G327, G47, G55, G288, G296, G310, G312, G325, G300, G43, G53, G298, G315, G322, G49, G45, G292, G302);
input
  G10,
  G11,
  G12,
  G13,
  G14,
  G15,
  G16,
  G18,
  G0,
  G1,
  G2,
  G3,
  G4,
  G5,
  G6,
  G7,
  G8,
  G9;
output
  G43,
  G45,
  G47,
  G49,
  G53,
  G55,
  G288,
  G290,
  G292,
  G296,
  G298,
  G300,
  G302,
  G310,
  G312,
  G315,
  G322,
  G325,
  G327;
reg
  G38,
  G39,
  G40,
  G41,
  G42;
wire
  \[40] ,
  \[26] ,
  \[27] ,
  \[28] ,
  \[43] ,
  \[29] ,
  G211,
  G218,
  \[44] ,
  \[10] ,
  G224,
  \[46] ,
  \[12] ,
  G250,
  G251,
  \[13] ,
  G58,
  G263,
  \[14] ,
  G264,
  G269,
  G272,
  \[15] ,
  \[30] ,
  \[16] ,
  G90,
  \[31] ,
  G93,
  \[17] ,
  G96,
  \[66] ,
  G99,
  \[32] ,
  \[18] ,
  \[67] ,
  G102,
  \[33] ,
  \[19] ,
  \[68] ,
  \[34] ,
  \[5] ,
  \[35] ,
  \[6] ,
  \[50] ,
  \[7] ,
  \[37] ,
  \[8] ,
  G150,
  \[52] ,
  \[38] ,
  \[9] ,
  \[39] ,
  \[20] ,
  G185,
  \[21] ,
  G199,
  \[22] ,
  \[23] ,
  \[24] ,
  \[25] ;
assign
  \[40]  = \[33]  & ~G18,
  \[26]  = G96,
  \[27]  = G99,
  \[28]  = G102,
  \[43]  = ~G42 | G41,
  \[29]  = ~G18 & G16,
  G211 = (~G269 & (~G251 & (~G41 & (~G16 & ~G4)))) | ((~G269 & (~G42 & (~G16 & ~G4))) | ((~G269 & (G41 & (G15 & ~G4))) | (\[6]  & ~G4))),
  G218 = (\[37]  & (~G16 & (~G3 & (G2 & ~G1)))) | (~\[30]  & (~G3 & (G2 & ~G1))),
  \[44]  = ~G39 & G15,
  \[10]  = \[68]  & \[33] ,
  G224 = (~G42 & (~G40 & (G15 & ~G14))) | ((~G42 & (~G41 & ~G40)) | (\[32]  & G4)),
  \[46]  = G42 | G15,
  G43 = \[15] ,
  G45 = \[21] ,
  \[12]  = G250 & (G41 & (~G38 & G16)),
  G47 = \[7] ,
  G49 = \[20] ,
  G250 = \[33]  & G42,
  G53 = \[16] ,
  G251 = ~G41 & ~G39,
  G55 = \[8] ,
  \[13]  = ~\[30]  & ~G38,
  G58 = (~G42 & (~G12 & (~G11 & G10))) | ((~G42 & (~G12 & (G11 & ~G10))) | \[50] ),
  G263 = (G39 & (G38 & (G9 & (G8 & (G7 & G6))))) | (\[33]  & G38),
  \[14]  = \[66]  & (~G16 & (G3 & ~G1)),
  G264 = (\[44]  & (G42 & G13)) | ((\[50]  & ~G39) | ((~\[46]  & ~G39) | (~G40 & ~G39))),
  G269 = (G42 & (G39 & G15)) | ((\[43]  & ~G39) | G40),
  G272 = ~G39 & G4,
  \[15]  = \[16]  & G15,
  \[30]  = ~G250 | G41,
  \[16]  = \[68]  & (~G40 & ~G39),
  G288 = \[9] ,
  G90 = (\[50]  & (\[37]  & (~G18 & ~G0))) | ((\[37]  & (\[29]  & (G42 & G38))) | ((\[34]  & (G38 & \[20] )) | ((\[29]  & (G251 & \[18] )) | ((G150 & ~G18) | ((\[19]  & ~G18) | \[52] ))))),
  \[31]  = ~G42 & ~G38,
  G290 = \[5] ,
  G93 = (\[67]  & (~G58 & (~G272 & (~G251 & G40)))) | ((\[35]  & (~G211 & (~G18 & ~G4))) | ((\[40]  & (\[30]  & G199)) | ((\[40]  & (\[20]  & ~G4)) | ((G218 & (\[18]  & ~G18)) | ((\[40]  & G185) | (\[35]  & \[34] )))))),
  G292 = \[22] ,
  \[17]  = \[15]  & G14,
  G96 = (~\[67]  & (\[34]  & (G40 & \[20] ))) | ((\[67]  & (\[34]  & (~G40 & \[20] ))) | ((\[34]  & (G185 & (G40 & G11))) | ((\[34]  & (G185 & (G40 & G10))) | ((\[40]  & (\[20]  & ~G4)) | ((\[34]  & (G251 & \[20] )) | ((\[31]  & (G218 & ~G18)) | ((~\[17]  & (\[15]  & ~G18)) | ((\[40]  & G185) | ((\[22]  & ~G18) | \[52] ))))))))),
  \[66]  = \[37]  & \[31] ,
  G296 = \[10] ,
  G99 = (\[39]  & (~G272 & (~G263 & (G42 & (G40 & ~G16))))) | ((\[39]  & (\[34]  & (~G264 & (~G263 & \[20] )))) | ((\[34]  & (G251 & (G42 & (\[20]  & G15)))) | ((~G224 & (~G39 & (~G38 & (~G18 & ~G16)))) | ((\[39]  & (~\[38]  & (\[34]  & \[20] ))) | ((\[39]  & (~\[35]  & (\[31]  & ~G224))) | ((\[39]  & (\[31]  & (G40 & ~\[20] ))) | ((G218 & (~G38 & ~G18)) | ((G211 & ~G18) | ((\[8]  & ~G18) | \[52] ))))))))),
  G298 = \[17] ,
  \[32]  = (G42 & G41) | G40,
  \[18]  = (G250 & (G41 & ~G38)) | \[66] ,
  \[67]  = \[44]  & \[29] ,
  G102 = (\[67]  & (~G264 & (~G42 & (G9 & (~G8 & (~G7 & G6)))))) | ((\[46]  & (\[29]  & (~G264 & (~G263 & G41)))) | ((~G264 & (G185 & (~G42 & (~\[20]  & ~G18)))) | ((\[46]  & (\[29]  & (\[20]  & ~G15))) | ((\[37]  & (\[29]  & (~G38 & ~G1))) | ((G185 & (G250 & (~G18 & ~G2))) | ((\[46]  & (\[29]  & ~G269)) | ((\[20]  & (~G18 & G4)) | ((\[17]  & ~G18) | \[52] )))))))),
  \[33]  = G40 & G39,
  \[19]  = (\[66]  & G1) | (\[13]  & G1),
  \[68]  = \[31]  & G41,
  \[34]  = \[29]  & ~G4,
  \[5]  = \[35]  & (~G42 & (~G41 & G15)),
  \[35]  = ~G40 & G39,
  \[6]  = ~\[43]  & (\[35]  & G15),
  \[50]  = ~G42 & G38,
  \[7]  = \[9]  & ~\[8] ,
  \[37]  = G251 & ~G40,
  \[8]  = \[9]  & G5,
  G150 = (\[68]  & (\[44]  & (\[32]  & (~G58 & (G16 & (G10 & ~G4)))))) | (\[68]  & (\[44]  & (\[32]  & (G16 & (G11 & ~G4))))),
  \[52]  = \[39]  & (G199 & G250),
  \[38]  = G40 | G15,
  \[9]  = \[33]  & (\[31]  & ~G41),
  G300 = \[14] ,
  G302 = \[23] ,
  \[39]  = G41 & ~G18,
  G310 = \[13] ,
  G312 = \[12] ,
  G315 = \[18] ,
  G322 = \[19] ,
  \[20]  = (G42 & (G41 & (G40 & ~G39))) | ((\[50]  & (~G41 & G39)) | ((\[32]  & (~G39 & ~G38)) | \[35] )),
  G325 = \[13] ,
  G327 = \[6] ,
  G185 = (~\[43]  & (~G38 & (~G3 & ~G1))) | ((\[31]  & ~G5) | \[68] ),
  \[21]  = ~G58 & G150,
  G199 = G42 & (G38 & ~G0),
  \[22]  = (G269 & (~G211 & (G263 & (~G40 & ~G4)))) | (\[35]  & (~G211 & (~G16 & ~G4))),
  \[23]  = (G251 & (~\[19]  & (\[18]  & G16))) | ((~\[43]  & (\[20]  & ~G16)) | ((\[35]  & (~G42 & ~G16)) | ((~G39 & (\[20]  & ~G16)) | (\[20]  & G4)))),
  \[24]  = G90,
  \[25]  = G93;
always begin
  G38 = \[24] ;
  G39 = \[25] ;
  G40 = \[26] ;
  G41 = \[27] ;
  G42 = \[28] ;
end
initial begin
  G38 = 0;
  G39 = 0;
  G40 = 0;
  G41 = 0;
  G42 = 0;
end
endmodule
