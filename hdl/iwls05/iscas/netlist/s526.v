//  
//  This design was downloaded from http://www.cbl.ncsu.edu.
//  (Currently available from: http://www.archive.org)
//  
//  Users may copy and distribute the benchmarks as long as they do not 
//  charge for these services.
//  All users of these benchmarks are request to refer to them in presentations 
//  and publications as named in the respective directories (e. g. ISCAS'95,
//  LayoutSynth92, etc.), while providing a pointer to the benchmark access by 
//  ftp from benchmarks@cbl.ncsu.edu.
//  
//  The design was synthesized with Cadence RTL Compiler in a quick 
//  synthesis run.
//  
//  
//  (c) Copyright 2005, Cadence Design Systems, Inc.  All rights reserved. 
//  
//  Permission is hereby granted, free of charge, to any person obtaining
//  a copy of this software and associated documentation files (the
//  "Software"), to deal in the Software without restriction, including
//  without limitation the rights to use, copy, modify, merge, publish,
//  distribute, or sublicense, the Software, and to permit persons to whom
//  the Software is furnished to do so, subject to the following conditions:
//  
//  The above copyright notice and this permission notice shall be included
//  in all copies or substantial portions of the Software.
//  
//  All other requirements of any other incorporated license or permissions
//  statements shall apply.
//  
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
//  EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
//  MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
//  USE OF THE SOFTWARE IS AT YOUR SOLE RISK AND EXPENSE.  IN NO EVENT SHALL
//  THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR
//  OTHER LIABILITY, OF ANY TYPE, WHETHER IN AN ACTION OF CONTRACT, TORT OR
//  OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR
//  THE USE OR OTHER DEALINGS IN THE SOFTWARE. 
//  

// Generated by Cadence RTL Compiler (RC) v05.10-b006_1

module s526(blif_clk_net, blif_reset_net, G0, G1, G2, G198, G213,
     G147, G199, G214, G148);
  input blif_clk_net, blif_reset_net, G0, G1, G2;
  output G198, G213, G147, G199, G214, G148;
  wire blif_clk_net, blif_reset_net, G0, G1, G2;
  wire G198, G213, G147, G199, G214, G148;
  wire G10, G11, G12, G13, G14, G15, G16, G17;
  wire G19, G20, G21, G22, G29, G30, n_0, n_1;
  wire n_2, n_5, n_11, n_12, n_17, n_21, n_22, n_27;
  wire n_30, n_35, n_39, n_42, n_45, n_46, n_47, n_49;
  wire n_52, n_53, n_57, n_58, n_62, n_63, n_65, n_66;
  wire n_69, n_70, n_71, n_72, n_73, n_74, n_75, n_76;
  wire n_78, n_79, n_81, n_87, n_89, n_91, n_92, n_93;
  wire n_94, n_95, n_96, n_97, n_98, n_100, n_102, n_103;
  wire n_104, n_106, n_107, n_108, n_111, n_112, n_114, n_115;
  wire n_117, n_118, n_119, n_120, n_121, n_124, n_125, n_126;
  wire n_127, n_128, n_130, n_131, n_133, n_134, n_135, n_138;
  wire n_139, n_142, n_143, n_144, n_145, n_146, n_147, n_149;
  wire n_150, n_153, n_156, n_157, n_158, n_159, n_160, n_161;
  wire n_162, n_164, n_168, n_169, n_170, n_171, n_172, n_173;
  wire n_174, n_175, n_176, n_177, n_179, n_180, n_183, n_188;
  wire n_189, n_190, n_191, n_192, n_194, n_195, n_196, n_197;
  wire n_198, n_199, n_201, n_202, n_203, n_207, n_209, n_211;
  wire n_212, n_214, n_215, n_216, n_220, n_221, n_222, n_224;
  wire n_225, n_226, n_227, n_228, n_229, n_233, n_234, n_235;
  wire n_236, n_237, n_238, n_241, n_243, n_245, n_246, n_247;
  wire n_248, n_249, n_250, n_251, n_253, n_254, n_255, n_256;
  wire n_262, n_263, n_264, n_272, n_284, n_285, n_287, n_289;
  wire n_290, n_291, n_294, n_295, n_297, n_298, n_303, n_312;
  wire n_314, n_315, n_317, n_318, n_319, n_322, n_324, n_325;
  wire n_330, n_331, n_332, n_333, n_334, n_335, n_336, n_337;
  wire n_353, n_355, n_356, n_359, n_360, n_361, n_371, n_372;
  wire n_386, n_395, n_396, n_397, n_398, n_400, n_402, n_404;
  wire n_405, n_406, n_410, n_411, n_412, n_413, n_414, n_415;
  wire n_416, n_417, n_418, n_419, n_420, n_421, n_423;
  DFFSRX1 G26_reg(.RN (n_256), .SN (1'b1), .CK (blif_clk_net), .D
       (n_255), .Q (G199), .QN ());
  DFFSRX1 G28_reg(.RN (n_256), .SN (1'b1), .CK (blif_clk_net), .D
       (n_253), .Q (G214), .QN ());
  DFFSRX1 G24_reg(.RN (n_256), .SN (1'b1), .CK (blif_clk_net), .D
       (n_254), .Q (G148), .QN ());
  INVX2 g976(.A (n_418), .Y (n_255));
  DFFSRX1 G25_reg(.RN (n_256), .SN (1'b1), .CK (blif_clk_net), .D
       (n_249), .Q (G198), .QN ());
  INVX2 g970(.A (n_250), .Y (n_254));
  INVX2 g974(.A (n_251), .Y (n_253));
  DFFSRX1 G12_reg(.RN (n_256), .SN (1'b1), .CK (blif_clk_net), .D
       (n_248), .Q (G12), .QN ());
  DFFSRX1 G19_reg(.RN (n_256), .SN (1'b1), .CK (blif_clk_net), .D
       (n_247), .Q (G19), .QN ());
  NAND3X1 g975(.A (n_263), .B (n_156), .C (n_264), .Y (n_251));
  NAND3X1 g971(.A (n_161), .B (n_235), .C (n_91), .Y (n_250));
  DFFSRX1 G27_reg(.RN (n_256), .SN (1'b1), .CK (blif_clk_net), .D
       (n_245), .Q (G213), .QN ());
  DFFSRX1 G13_reg(.RN (n_256), .SN (1'b1), .CK (blif_clk_net), .D
       (n_361), .Q (G13), .QN ());
  DFFSRX1 G18_reg(.RN (n_256), .SN (1'b1), .CK (blif_clk_net), .D
       (n_243), .Q (n_415), .QN ());
  INVX2 g972(.A (n_246), .Y (n_249));
  NAND2X1 g985(.A (n_220), .B (n_237), .Y (n_248));
  INVX1 g990(.A (n_241), .Y (n_247));
  DFFSRX1 G20_reg(.RN (n_256), .SN (1'b1), .CK (blif_clk_net), .D
       (n_238), .Q (G20), .QN ());
  DFFSRX1 G21_reg(.RN (n_256), .SN (1'b1), .CK (blif_clk_net), .D
       (n_234), .Q (G21), .QN ());
  DFFSRX1 G17_reg(.RN (n_256), .SN (1'b1), .CK (blif_clk_net), .D
       (n_233), .Q (G17), .QN ());
  DFFSRX1 G23_reg(.RN (n_256), .SN (1'b1), .CK (blif_clk_net), .D
       (n_236), .Q (G147), .QN ());
  NAND3X1 g973(.A (n_171), .B (n_115), .C (n_222), .Y (n_246));
  OAI21X1 g984(.A0 (n_226), .A1 (n_262), .B0 (n_225), .Y (n_245));
  AOI22X1 g1001(.A0 (n_371), .A1 (n_372), .B0 (n_92), .B1 (n_135), .Y
       (n_243));
  NAND3X1 g991(.A (n_188), .B (n_216), .C (n_169), .Y (n_241));
  DFFSRX1 G22_reg(.RN (n_256), .SN (1'b1), .CK (blif_clk_net), .D
       (n_229), .Q (G22), .QN ());
  DFFSRX1 G16_reg(.RN (n_256), .SN (1'b1), .CK (blif_clk_net), .D
       (n_224), .Q (G16), .QN ());
  OAI21X1 g1000(.A0 (n_203), .A1 (n_0), .B0 (n_191), .Y (n_263));
  NOR2X1 g1006(.A (n_209), .B (n_215), .Y (n_238));
  NAND3X1 g992(.A (n_228), .B (n_207), .C (n_315), .Y (n_237));
  NOR3X1 g993(.A (n_145), .B (n_414), .C (n_76), .Y (n_236));
  NOR3X1 g994(.A (n_153), .B (n_125), .C (n_221), .Y (n_235));
  OAI21X1 g983(.A0 (n_212), .A1 (n_138), .B0 (n_214), .Y (n_234));
  NOR3X1 g997(.A (n_79), .B (n_201), .C (n_172), .Y (n_233));
  AND2X1 g1008(.A (n_414), .B (n_228), .Y (n_229));
  INVX1 g1009(.A (n_226), .Y (n_227));
  NAND2X1 g1011(.A (n_414), .B (n_45), .Y (n_225));
  AOI21X1 g1012(.A0 (n_197), .A1 (n_159), .B0 (n_74), .Y (n_224));
  AOI21X1 g995(.A0 (n_89), .A1 (n_294), .B0 (n_221), .Y (n_222));
  NAND3X1 g996(.A (n_106), .B (n_190), .C (n_52), .Y (n_220));
  NAND2X2 g1010(.A (n_413), .B (n_294), .Y (n_226));
  NAND2X1 g1016(.A (n_192), .B (n_416), .Y (n_371));
  OAI21X1 g1017(.A0 (n_179), .A1 (n_168), .B0 (n_22), .Y (n_216));
  NAND2X1 g1019(.A (n_199), .B (n_211), .Y (n_215));
  NAND3X1 g1023(.A (n_195), .B (n_272), .C (n_228), .Y (n_214));
  NAND4X1 g1007(.A (n_423), .B (n_211), .C (n_303), .D (n_114), .Y
       (n_212));
  DFFSRX1 G15_reg(.RN (n_256), .SN (1'b1), .CK (blif_clk_net), .D
       (n_189), .Q (G15), .QN ());
  AOI21X1 g1018(.A0 (n_196), .A1 (n_423), .B0 (n_102), .Y (n_209));
  NAND2X1 g1021(.A (n_194), .B (n_272), .Y (n_207));
  INVX2 g1024(.A (n_413), .Y (n_221));
  INVX1 g1025(.A (n_413), .Y (n_203));
  INVX1 g1026(.A (n_413), .Y (n_202));
  OAI21X1 g1032(.A0 (n_196), .A1 (n_70), .B0 (n_174), .Y (n_201));
  NAND2X1 g1035(.A (n_198), .B (n_196), .Y (n_199));
  NAND2X1 g1038(.A (n_196), .B (n_39), .Y (n_197));
  INVX1 g1040(.A (n_194), .Y (n_195));
  NAND2X1 g1042(.A (n_196), .B (n_53), .Y (n_372));
  NAND2X1 g1043(.A (n_87), .B (n_196), .Y (n_192));
  NAND3X1 g1003(.A (n_356), .B (n_291), .C (n_402), .Y (n_191));
  DFFSRX1 G14_reg(.RN (n_256), .SN (1'b1), .CK (blif_clk_net), .D
       (n_177), .Q (G14), .QN ());
  DFFSRX1 G11_reg(.RN (n_256), .SN (1'b1), .CK (blif_clk_net), .D
       (n_180), .Q (G11), .QN ());
  INVX1 g1030(.A (n_183), .Y (n_190));
  AND2X1 g1036(.A (n_149), .B (n_175), .Y (n_189));
  NOR2X1 g1041(.A (n_160), .B (n_179), .Y (n_194));
  NAND2X1 g1044(.A (n_176), .B (n_133), .Y (n_188));
  NAND4X1 g1031(.A (n_303), .B (n_95), .C (n_162), .D (n_117), .Y
       (n_183));
  NOR2X1 g1056(.A (n_158), .B (n_164), .Y (n_180));
  INVX4 g1061(.A (n_179), .Y (n_196));
  NOR2X1 g1020(.A (n_93), .B (n_170), .Y (n_177));
  NAND2X1 g1049(.A (n_173), .B (n_73), .Y (n_176));
  AOI21X1 g1052(.A0 (n_146), .A1 (n_127), .B0 (n_147), .Y (n_175));
  OR2X1 g1057(.A (n_173), .B (n_71), .Y (n_174));
  NAND3X1 g1058(.A (n_228), .B (n_100), .C (n_118), .Y (n_172));
  INVX2 g1065(.A (n_285), .Y (n_179));
  DFFSRX1 G30_reg(.RN (n_256), .SN (1'b1), .CK (blif_clk_net), .D
       (n_150), .Q (G30), .QN ());
  AOI21X1 g1039(.A0 (n_111), .A1 (n_318), .B0 (n_144), .Y (n_171));
  AOI21X1 g1046(.A0 (n_157), .A1 (n_27), .B0 (n_143), .Y (n_170));
  NAND2X1 g1050(.A (n_168), .B (G0), .Y (n_169));
  DFFSRX1 G10_reg(.RN (n_256), .SN (1'b1), .CK (blif_clk_net), .D
       (n_139), .Q (G10), .QN ());
  NAND2X1 g1071(.A (n_130), .B (n_211), .Y (n_164));
  DFFSRX1 G29_reg(.RN (n_256), .SN (1'b1), .CK (blif_clk_net), .D
       (n_134), .Q (G29), .QN ());
  OR2X1 g1075(.A (n_120), .B (G148), .Y (n_161));
  NAND2X1 g1077(.A (n_423), .B (n_102), .Y (n_160));
  NAND2X1 g1078(.A (n_128), .B (n_11), .Y (n_159));
  NOR2X1 g1080(.A (n_131), .B (n_94), .Y (n_198));
  NAND2X1 g1090(.A (n_142), .B (n_157), .Y (n_158));
  NAND2X1 g1147(.A (n_104), .B (n_356), .Y (n_156));
  NAND2X1 g1045(.A (n_81), .B (n_103), .Y (n_262));
  AND2X1 g1055(.A (n_111), .B (n_318), .Y (n_153));
  AND2X1 g1068(.A (n_96), .B (n_228), .Y (n_150));
  AND2X1 g1072(.A (n_287), .B (n_211), .Y (n_149));
  AOI21X1 g1079(.A0 (n_146), .A1 (n_46), .B0 (G15), .Y (n_147));
  NAND2X1 g1082(.A (n_62), .B (n_98), .Y (n_173));
  AOI21X1 g1103(.A0 (n_119), .A1 (G147), .B0 (n_144), .Y (n_145));
  NOR2X1 g1135(.A (n_27), .B (n_47), .Y (n_143));
  NAND2X1 g1138(.A (n_335), .B (n_47), .Y (n_142));
  AND2X1 g1152(.A (n_47), .B (n_228), .Y (n_139));
  NAND2X1 g1136(.A (n_102), .B (n_319), .Y (n_138));
  AND2X1 g1060(.A (n_75), .B (n_112), .Y (n_264));
  OR2X1 g1067(.A (n_135), .B (n_419), .Y (n_168));
  AND2X1 g1070(.A (n_66), .B (n_228), .Y (n_134));
  OAI21X1 g1081(.A0 (n_70), .A1 (n_42), .B0 (n_72), .Y (n_133));
  OR2X1 g1088(.A (n_65), .B (n_22), .Y (n_131));
  NAND2X1 g1092(.A (n_334), .B (n_46), .Y (n_130));
  NAND2X1 g1097(.A (n_127), .B (n_49), .Y (n_128));
  NOR2X1 g1098(.A (n_325), .B (n_272), .Y (n_126));
  AND2X1 g1099(.A (n_162), .B (n_356), .Y (n_125));
  NAND3X1 g1100(.A (n_272), .B (n_119), .C (G199), .Y (n_124));
  AOI21X1 g1107(.A0 (n_272), .A1 (n_119), .B0 (n_107), .Y (n_120));
  NAND4X1 g1108(.A (G16), .B (n_117), .C (n_21), .D (n_419), .Y
       (n_118));
  OR2X1 g1120(.A (n_297), .B (G198), .Y (n_115));
  NAND2X1 g1125(.A (n_119), .B (n_297), .Y (n_114));
  INVX1 g1126(.A (n_112), .Y (n_144));
  INVX1 g1129(.A (n_325), .Y (n_111));
  AND2X1 g1132(.A (n_107), .B (n_2), .Y (n_108));
  AND2X1 g1150(.A (n_297), .B (n_211), .Y (n_106));
  INVX1 g1180(.A (n_102), .Y (n_104));
  NAND2X1 g1053(.A (n_102), .B (n_318), .Y (n_103));
  NAND2X1 g1087(.A (n_57), .B (n_70), .Y (n_100));
  NOR2X1 g1101(.A (n_333), .B (n_39), .Y (n_98));
  NAND2X1 g1106(.A (n_63), .B (n_69), .Y (n_121));
  XOR2X1 g1109(.A (n_297), .B (n_272), .Y (n_97));
  XOR2X1 g1111(.A (G1), .B (n_21), .Y (n_96));
  INVX1 g1114(.A (n_94), .Y (n_95));
  NAND2X1 g1095(.A (n_331), .B (n_211), .Y (n_93));
  NAND2X1 g1119(.A (n_416), .B (n_211), .Y (n_92));
  INVX1 g1121(.A (n_421), .Y (n_91));
  NAND2X1 g1127(.A (n_30), .B (n_315), .Y (n_112));
  AND2X1 g1128(.A (n_317), .B (n_1), .Y (n_89));
  OR2X1 g1142(.A (n_335), .B (n_47), .Y (n_157));
  NOR2X1 g1144(.A (n_78), .B (n_39), .Y (n_87));
  NOR2X1 g1148(.A (n_335), .B (n_314), .Y (n_146));
  NOR2X1 g1139(.A (n_47), .B (n_58), .Y (n_127));
  OR2X1 g1059(.A (n_318), .B (G213), .Y (n_81));
  AND2X1 g1149(.A (n_78), .B (n_39), .Y (n_79));
  NOR2X1 g1151(.A (n_324), .B (n_319), .Y (n_162));
  INVX1 g1083(.A (n_75), .Y (n_76));
  NAND2X1 g1086(.A (n_73), .B (n_211), .Y (n_74));
  NAND3X1 g1089(.A (n_70), .B (n_117), .C (n_415), .Y (n_72));
  NOR2X1 g1091(.A (n_70), .B (n_69), .Y (n_71));
  NAND3X1 g1102(.A (n_70), .B (n_11), .C (n_228), .Y (n_135));
  XOR2X1 g1110(.A (G2), .B (n_5), .Y (n_66));
  OR2X1 g1113(.A (n_415), .B (n_35), .Y (n_65));
  INVX1 g1115(.A (n_63), .Y (n_94));
  NOR2X1 g1118(.A (n_312), .B (n_47), .Y (n_62));
  INVX1 g1145(.A (n_73), .Y (n_57));
  INVX1 g1212(.A (G0), .Y (n_228));
  INVX2 g1182(.A (n_324), .Y (n_102));
  INVX1 g1192(.A (n_416), .Y (n_53));
  INVX1 g1193(.A (n_416), .Y (n_52));
  INVX4 g1224(.A (n_356), .Y (n_119));
  INVX1 g1140(.A (n_331), .Y (n_49));
  INVX1 g1084(.A (n_318), .Y (n_75));
  INVX1 g1173(.A (n_297), .Y (n_107));
  INVX1 g1200(.A (n_47), .Y (n_46));
  INVX1 g1194(.A (n_416), .Y (n_45));
  INVX1 g1116(.A (n_17), .Y (n_63));
  INVX1 g1211(.A (G0), .Y (n_211));
  INVX1 g1191(.A (n_419), .Y (n_42));
  OR2X1 g1146(.A (n_39), .B (n_284), .Y (n_73));
  INVX1 g1166(.A (n_70), .Y (n_78));
  INVX1 g1184(.A (n_397), .Y (n_35));
  INVX2 g1201(.A (G10), .Y (n_47));
  INVX1 g1219(.A (n_322), .Y (n_30));
  INVX1 g1230(.A (n_314), .Y (n_27));
  NOR2X1 g1137(.A (n_22), .B (n_415), .Y (n_69));
  INVX1 g1169(.A (n_284), .Y (n_21));
  INVX1 g1188(.A (G15), .Y (n_58));
  NAND2X1 g1117(.A (n_12), .B (G16), .Y (n_17));
  INVX1 g1167(.A (n_12), .Y (n_70));
  INVX1 g1160(.A (n_39), .Y (n_11));
  INVX1 g1208(.A (n_22), .Y (n_117));
  INVX1 g1157(.A (n_400), .Y (n_5));
  INVX1 g1168(.A (G17), .Y (n_12));
  INVX2 g1164(.A (G16), .Y (n_39));
  INVX1 g1205(.A (blif_reset_net), .Y (n_256));
  INVX1 g1218(.A (G199), .Y (n_2));
  INVX1 g1206(.A (G198), .Y (n_1));
  INVX2 g1209(.A (G19), .Y (n_22));
  INVX1 g1210(.A (G214), .Y (n_0));
  INVX4 g1268(.A (n_319), .Y (n_272));
  OAI21X1 g21(.A0 (n_386), .A1 (n_330), .B0 (n_284), .Y (n_285));
  NAND2X1 g23(.A (G15), .B (G10), .Y (n_386));
  INVX1 g25(.A (G30), .Y (n_284));
  OR2X1 g22(.A (n_47), .B (n_331), .Y (n_287));
  OAI21X1 g1271(.A0 (n_289), .A1 (n_290), .B0 (G22), .Y (n_291));
  NAND3X1 g1272(.A (n_395), .B (G20), .C (G12), .Y (n_289));
  NAND2X1 g1273(.A (n_400), .B (n_420), .Y (n_290));
  AOI21X1 g38(.A0 (n_284), .A1 (n_336), .B0 (n_294), .Y (n_295));
  INVX1 g54(.A (n_356), .Y (n_294));
  NOR2X1 g39(.A (G0), .B (n_297), .Y (n_298));
  INVX2 g43(.A (n_315), .Y (n_297));
  NAND2X1 g40(.A (n_336), .B (n_284), .Y (n_303));
  INVX1 g30(.A (n_335), .Y (n_312));
  CLKBUFX1 g1280(.A (n_332), .Y (n_314));
  NOR2X1 g6(.A (n_315), .B (n_317), .Y (n_318));
  CLKBUFX1 g1281(.A (G12), .Y (n_315));
  INVX1 g8(.A (n_395), .Y (n_317));
  INVX2 g7(.A (n_317), .Y (n_319));
  NAND2X1 g11(.A (n_322), .B (n_324), .Y (n_325));
  INVX1 g16(.A (n_355), .Y (n_322));
  INVX1 g13(.A (n_397), .Y (n_324));
  NAND2X1 g1282(.A (n_337), .B (n_332), .Y (n_330));
  CLKBUFX1 g1284(.A (n_330), .Y (n_331));
  NAND3X1 g1285(.A (n_334), .B (n_335), .C (G10), .Y (n_336));
  INVX1 g1286(.A (n_333), .Y (n_334));
  NAND2X1 g19(.A (n_332), .B (G15), .Y (n_333));
  INVX1 g20(.A (G14), .Y (n_332));
  INVX1 g1287(.A (G11), .Y (n_335));
  INVX1 g1288(.A (G11), .Y (n_337));
  NAND2X2 g1298(.A (n_359), .B (n_360), .Y (n_361));
  NAND3X1 g1299(.A (n_353), .B (n_119), .C (n_228), .Y (n_359));
  NAND3X1 g1300(.A (n_198), .B (n_97), .C (n_196), .Y (n_353));
  CLKBUFX3 g1302(.A (n_355), .Y (n_356));
  CLKBUFX1 g1303(.A (n_420), .Y (n_355));
  NAND4X1 g1306(.A (n_295), .B (n_298), .C (n_162), .D (n_423), .Y
       (n_360));
  NAND3X1 g1322(.A (n_398), .B (n_421), .C (n_5), .Y (n_402));
  NOR2X1 g1323(.A (n_396), .B (n_397), .Y (n_398));
  INVX1 g1324(.A (n_395), .Y (n_396));
  INVX2 g1325(.A (G21), .Y (n_395));
  CLKBUFX3 g1326(.A (G20), .Y (n_397));
  INVX1 g1329(.A (G29), .Y (n_400));
  NOR2X1 g29(.A (n_126), .B (n_404), .Y (n_405));
  NAND2X1 g1330(.A (n_124), .B (n_297), .Y (n_404));
  INVX1 g33(.A (n_202), .Y (n_406));
  NAND3X1 g1331(.A (n_410), .B (n_411), .C (n_417), .Y (n_418));
  NAND2X1 g1332(.A (n_227), .B (n_108), .Y (n_410));
  NAND2X1 g1333(.A (n_405), .B (n_406), .Y (n_411));
  NAND2X2 g26(.A (n_414), .B (n_416), .Y (n_417));
  INVX2 g1334(.A (n_413), .Y (n_414));
  INVX4 g1335(.A (n_412), .Y (n_413));
  NAND2X2 g1336(.A (n_291), .B (n_402), .Y (n_412));
  CLKBUFX1 g1337(.A (n_415), .Y (n_416));
  INVX1 g1338(.A (n_415), .Y (n_419));
  AND2X1 g5(.A (n_420), .B (G12), .Y (n_421));
  INVX1 g1339(.A (G13), .Y (n_420));
  INVX2 g1341(.A (n_121), .Y (n_423));
endmodule

