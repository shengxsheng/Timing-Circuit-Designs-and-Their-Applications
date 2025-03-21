/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : R-2020.09-SP5
// Date      : Sat Nov 11 22:47:31 2023
/////////////////////////////////////////////////////////////


module sa_DW01_inc_0_DW01_inc_1 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHX1 U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHX1 U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1 U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1 U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1 U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  XOR2X1 U1 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module sa_DW01_sub_2 ( A, DIFF, B_6_, B_5_, B_4_, B_3_, B_2_, B_1_, B_0_ );
  input [7:0] A;
  output [7:0] DIFF;
  input B_6_, B_5_, B_4_, B_3_, B_2_, B_1_, B_0_;
  wire   n1, n2, n3, n4, n5, n6, n7, n8;
  wire   [7:1] carry;

  ADDFX1 U2_6 ( .A(A[6]), .B(n2), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFX1 U2_2 ( .A(A[2]), .B(n6), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  ADDFX1 U2_3 ( .A(A[3]), .B(n5), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  ADDFX1 U2_5 ( .A(A[5]), .B(n3), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFX1 U2_4 ( .A(A[4]), .B(n4), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFX1 U2_1 ( .A(A[1]), .B(n7), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  NAND2BX2 U1 ( .AN(n8), .B(n1), .Y(carry[1]) );
  XNOR2X1 U2 ( .A(A[7]), .B(carry[7]), .Y(DIFF[7]) );
  INVX2 U3 ( .A(A[0]), .Y(n1) );
  INVX2 U4 ( .A(B_4_), .Y(n4) );
  INVX2 U5 ( .A(B_5_), .Y(n3) );
  INVX2 U6 ( .A(B_3_), .Y(n5) );
  INVX2 U7 ( .A(B_2_), .Y(n6) );
  INVX2 U8 ( .A(B_1_), .Y(n7) );
  INVX2 U9 ( .A(B_6_), .Y(n2) );
  INVX2 U10 ( .A(B_0_), .Y(n8) );
  XNOR2X1 U11 ( .A(n8), .B(A[0]), .Y(DIFF[0]) );
endmodule


module sa_DW01_add_0 ( A, SUM, B_6_, B_5_, B_4_, B_3_, B_2_, B_1_, B_0_ );
  input [7:0] A;
  output [7:0] SUM;
  input B_6_, B_5_, B_4_, B_3_, B_2_, B_1_, B_0_;
  wire   n1, n2;
  wire   [7:2] carry;

  ADDFX1 U1_1 ( .A(A[1]), .B(B_1_), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFX1 U1_2 ( .A(A[2]), .B(B_2_), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFX1 U1_5 ( .A(A[5]), .B(B_5_), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX1 U1_4 ( .A(A[4]), .B(B_4_), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX1 U1_3 ( .A(A[3]), .B(B_3_), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX1 U1_6 ( .A(A[6]), .B(B_6_), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  AND2X2 U1 ( .A(B_0_), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(A[7]), .B(carry[7]), .Y(SUM[7]) );
  XNOR2X1 U3 ( .A(B_0_), .B(n2), .Y(SUM[0]) );
  INVX2 U4 ( .A(A[0]), .Y(n2) );
endmodule


module sa_DW01_sub_3 ( A, B, DIFF );
  input [13:0] A;
  input [13:0] B;
  output [13:0] DIFF;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n15, n16, n17,
         n18, n19, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n51, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n66,
         n67, n68, n69, n71, n74, n76, n77, n79, n80, n81, n82, n83, n84, n85,
         n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n146, n147,
         n148, n149, n150;

  OAI21X1 U29 ( .A0(n30), .A1(n34), .B0(n31), .Y(n29) );
  OAI21X1 U35 ( .A0(n146), .A1(n33), .B0(n34), .Y(n32) );
  OAI21X1 U46 ( .A0(n41), .A1(n45), .B0(n42), .Y(n40) );
  OAI21X1 U52 ( .A0(n46), .A1(n44), .B0(n45), .Y(n43) );
  OAI21X1 U83 ( .A0(n148), .A1(n63), .B0(n64), .Y(n62) );
  CLKINVX2 U114 ( .A(B[4]), .Y(n92) );
  NOR2X2 U115 ( .A(n44), .B(n41), .Y(n39) );
  NOR2X2 U116 ( .A(A[9]), .B(n87), .Y(n30) );
  AOI21X1 U117 ( .A0(n39), .A1(n48), .B0(n40), .Y(n38) );
  AOI21X1 U118 ( .A0(n58), .A1(n66), .B0(n59), .Y(n57) );
  AOI21BX2 U119 ( .A0(n24), .A1(n149), .B0N(n23), .Y(n19) );
  NOR2X2 U120 ( .A(A[3]), .B(n93), .Y(n60) );
  NOR2X2 U121 ( .A(A[2]), .B(n94), .Y(n63) );
  AOI21X2 U122 ( .A0(n36), .A1(n28), .B0(n29), .Y(n27) );
  NOR2X2 U123 ( .A(A[7]), .B(n89), .Y(n41) );
  OA21X1 U124 ( .A0(n57), .A1(n37), .B0(n38), .Y(n146) );
  OAI21XL U125 ( .A0(n27), .A1(n25), .B0(n26), .Y(n147) );
  OAI21X2 U126 ( .A0(n57), .A1(n37), .B0(n38), .Y(n36) );
  INVXL U127 ( .A(n54), .Y(n79) );
  OAI21X1 U128 ( .A0(n19), .A1(n17), .B0(n18), .Y(n16) );
  OA21XL U129 ( .A0(n67), .A1(n69), .B0(n68), .Y(n148) );
  NOR2X2 U130 ( .A(A[1]), .B(n95), .Y(n67) );
  NAND2X2 U131 ( .A(A[1]), .B(n95), .Y(n68) );
  INVXL U132 ( .A(B[1]), .Y(n95) );
  INVXL U133 ( .A(n57), .Y(n56) );
  NAND2XL U134 ( .A(n82), .B(n68), .Y(n13) );
  NOR2X2 U135 ( .A(A[5]), .B(n91), .Y(n49) );
  NAND2XL U136 ( .A(A[3]), .B(n93), .Y(n61) );
  AOI21XL U137 ( .A0(n56), .A1(n47), .B0(n48), .Y(n46) );
  INVXL U138 ( .A(n60), .Y(n80) );
  AOI21BXL U139 ( .A0(n56), .A1(n79), .B0N(n55), .Y(n51) );
  INVXL U140 ( .A(n41), .Y(n76) );
  XOR2XL U141 ( .A(n148), .B(n12), .Y(DIFF[2]) );
  INVXL U142 ( .A(n63), .Y(n81) );
  INVXL U143 ( .A(n44), .Y(n77) );
  XOR2XL U144 ( .A(n13), .B(n69), .Y(DIFF[1]) );
  NAND2BXL U145 ( .AN(n49), .B(n50), .Y(n9) );
  NAND2XL U146 ( .A(n79), .B(n55), .Y(n10) );
  NAND2X2 U147 ( .A(A[2]), .B(n94), .Y(n64) );
  INVXL U148 ( .A(B[5]), .Y(n91) );
  NOR2XL U149 ( .A(A[4]), .B(n92), .Y(n54) );
  CLKNAND2X2 U150 ( .A(A[6]), .B(n90), .Y(n45) );
  NAND2XL U151 ( .A(A[7]), .B(n89), .Y(n42) );
  NAND2X2 U152 ( .A(n47), .B(n39), .Y(n37) );
  OAI21X1 U153 ( .A0(n49), .A1(n55), .B0(n50), .Y(n48) );
  NOR2X2 U154 ( .A(n33), .B(n30), .Y(n28) );
  OAI21X1 U155 ( .A0(n27), .A1(n25), .B0(n26), .Y(n24) );
  XOR2X1 U156 ( .A(n146), .B(n6), .Y(DIFF[8]) );
  NOR2X2 U157 ( .A(n63), .B(n60), .Y(n58) );
  OAI21X1 U158 ( .A0(n60), .A1(n64), .B0(n61), .Y(n59) );
  XOR2X1 U159 ( .A(n19), .B(n2), .Y(DIFF[12]) );
  NAND2X2 U160 ( .A(n71), .B(n18), .Y(n2) );
  INVX2 U161 ( .A(n17), .Y(n71) );
  XNOR2X1 U162 ( .A(n32), .B(n5), .Y(DIFF[9]) );
  NAND2X2 U163 ( .A(n74), .B(n31), .Y(n5) );
  NOR2X2 U164 ( .A(n54), .B(n49), .Y(n47) );
  NAND2X2 U165 ( .A(n149), .B(n23), .Y(n3) );
  XNOR2X1 U166 ( .A(n43), .B(n7), .Y(DIFF[7]) );
  NAND2X2 U167 ( .A(n76), .B(n42), .Y(n7) );
  XNOR2X1 U168 ( .A(n56), .B(n10), .Y(DIFF[4]) );
  XOR2X1 U169 ( .A(n51), .B(n9), .Y(DIFF[5]) );
  XOR2X1 U170 ( .A(n46), .B(n8), .Y(DIFF[6]) );
  NAND2X2 U171 ( .A(n77), .B(n45), .Y(n8) );
  XNOR2X1 U172 ( .A(n62), .B(n11), .Y(DIFF[3]) );
  NAND2X2 U173 ( .A(n80), .B(n61), .Y(n11) );
  NAND2X2 U174 ( .A(n81), .B(n64), .Y(n12) );
  NAND2BX2 U175 ( .AN(n25), .B(n26), .Y(n4) );
  INVX2 U176 ( .A(n30), .Y(n74) );
  NAND2BX2 U177 ( .AN(n33), .B(n34), .Y(n6) );
  NAND2X2 U178 ( .A(A[4]), .B(n92), .Y(n55) );
  XNOR2X1 U179 ( .A(n16), .B(n1), .Y(DIFF[13]) );
  NAND2X2 U180 ( .A(n150), .B(n15), .Y(n1) );
  NAND2X2 U181 ( .A(A[13]), .B(n83), .Y(n15) );
  INVX2 U182 ( .A(B[7]), .Y(n89) );
  NOR2X2 U183 ( .A(A[6]), .B(n90), .Y(n44) );
  NOR2X2 U184 ( .A(A[0]), .B(n96), .Y(n69) );
  INVX2 U185 ( .A(B[3]), .Y(n93) );
  INVX2 U186 ( .A(B[0]), .Y(n96) );
  INVX2 U187 ( .A(B[2]), .Y(n94) );
  INVX2 U188 ( .A(B[6]), .Y(n90) );
  INVX2 U189 ( .A(B[9]), .Y(n87) );
  NAND2X2 U190 ( .A(A[8]), .B(n88), .Y(n34) );
  NOR2X2 U191 ( .A(A[8]), .B(n88), .Y(n33) );
  NAND2X2 U192 ( .A(A[9]), .B(n87), .Y(n31) );
  INVX2 U193 ( .A(B[8]), .Y(n88) );
  NOR2X2 U194 ( .A(A[10]), .B(n86), .Y(n25) );
  INVX2 U195 ( .A(B[10]), .Y(n86) );
  NAND2X2 U196 ( .A(A[10]), .B(n86), .Y(n26) );
  OR2X2 U197 ( .A(A[11]), .B(n85), .Y(n149) );
  INVX2 U198 ( .A(B[11]), .Y(n85) );
  NAND2X2 U199 ( .A(A[11]), .B(n85), .Y(n23) );
  XNOR2XL U200 ( .A(A[0]), .B(n96), .Y(DIFF[0]) );
  NOR2X2 U201 ( .A(A[12]), .B(n84), .Y(n17) );
  INVX2 U202 ( .A(B[12]), .Y(n84) );
  OR2X2 U203 ( .A(A[13]), .B(n83), .Y(n150) );
  INVX2 U204 ( .A(B[13]), .Y(n83) );
  NAND2X2 U205 ( .A(A[12]), .B(n84), .Y(n18) );
  OAI21X1 U206 ( .A0(n67), .A1(n69), .B0(n68), .Y(n66) );
  NAND2XL U207 ( .A(A[5]), .B(n91), .Y(n50) );
  XNOR2XL U208 ( .A(n147), .B(n3), .Y(DIFF[11]) );
  XOR2XL U209 ( .A(n27), .B(n4), .Y(DIFF[10]) );
  INVX1 U210 ( .A(n67), .Y(n82) );
endmodule


module sa_DW01_sub_4 ( A, B, DIFF );
  input [13:0] A;
  input [13:0] B;
  output [13:0] DIFF;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n15, n16, n17,
         n18, n19, n21, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n71, n73, n75, n76, n77, n79, n80, n81,
         n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95,
         n96, n146, n147, n148;

  OAI21X1 U29 ( .A0(n30), .A1(n34), .B0(n31), .Y(n29) );
  OAI21X1 U35 ( .A0(n35), .A1(n33), .B0(n34), .Y(n32) );
  OAI21X1 U46 ( .A0(n41), .A1(n45), .B0(n42), .Y(n40) );
  OAI21X1 U52 ( .A0(n46), .A1(n44), .B0(n45), .Y(n43) );
  OAI21X1 U77 ( .A0(n60), .A1(n64), .B0(n61), .Y(n59) );
  OAI21X1 U83 ( .A0(n65), .A1(n146), .B0(n64), .Y(n62) );
  NAND2X2 U114 ( .A(n94), .B(A[2]), .Y(n64) );
  AOI21X1 U115 ( .A0(n24), .A1(n147), .B0(n21), .Y(n19) );
  NAND2X1 U116 ( .A(n79), .B(n55), .Y(n10) );
  NOR2X2 U117 ( .A(n90), .B(A[6]), .Y(n44) );
  NOR2X2 U118 ( .A(n89), .B(A[7]), .Y(n41) );
  XNOR2X1 U119 ( .A(n16), .B(n1), .Y(DIFF[13]) );
  NOR2X2 U120 ( .A(n91), .B(A[5]), .Y(n49) );
  OAI21X1 U121 ( .A0(n49), .A1(n55), .B0(n50), .Y(n48) );
  OAI21X2 U122 ( .A0(n27), .A1(n25), .B0(n26), .Y(n24) );
  AOI21X2 U123 ( .A0(n36), .A1(n28), .B0(n29), .Y(n27) );
  NOR2XL U124 ( .A(n94), .B(A[2]), .Y(n146) );
  XOR2X1 U125 ( .A(n19), .B(n2), .Y(DIFF[12]) );
  OAI21X2 U126 ( .A0(n19), .A1(n17), .B0(n18), .Y(n16) );
  NOR2XL U127 ( .A(n95), .B(A[1]), .Y(n67) );
  NAND2XL U128 ( .A(n95), .B(A[1]), .Y(n68) );
  NOR2XL U129 ( .A(n96), .B(A[0]), .Y(n69) );
  NOR2XL U130 ( .A(n54), .B(n49), .Y(n47) );
  INVX2 U131 ( .A(B[2]), .Y(n94) );
  INVX2 U132 ( .A(B[0]), .Y(n96) );
  INVX2 U133 ( .A(B[1]), .Y(n95) );
  NOR2XL U134 ( .A(n93), .B(A[3]), .Y(n60) );
  INVXL U135 ( .A(n66), .Y(n65) );
  XOR2XL U136 ( .A(n27), .B(n4), .Y(DIFF[10]) );
  NAND2BXL U137 ( .AN(n49), .B(n50), .Y(n9) );
  NAND2XL U138 ( .A(n92), .B(A[4]), .Y(n55) );
  NOR2XL U139 ( .A(n94), .B(A[2]), .Y(n63) );
  NAND2XL U140 ( .A(n93), .B(A[3]), .Y(n61) );
  NAND2XL U141 ( .A(n90), .B(A[6]), .Y(n45) );
  NAND2XL U142 ( .A(n89), .B(A[7]), .Y(n42) );
  NOR2XL U143 ( .A(n92), .B(A[4]), .Y(n54) );
  XNOR2XL U144 ( .A(n96), .B(A[0]), .Y(DIFF[0]) );
  AOI21X1 U145 ( .A0(n56), .A1(n47), .B0(n48), .Y(n46) );
  OAI21X1 U146 ( .A0(n67), .A1(n69), .B0(n68), .Y(n66) );
  AOI21X1 U147 ( .A0(n58), .A1(n66), .B0(n59), .Y(n57) );
  NOR2X2 U148 ( .A(n63), .B(n60), .Y(n58) );
  XNOR2X1 U149 ( .A(n43), .B(n7), .Y(DIFF[7]) );
  NAND2X2 U150 ( .A(n76), .B(n42), .Y(n7) );
  INVX2 U151 ( .A(n41), .Y(n76) );
  OAI21X1 U152 ( .A0(n57), .A1(n37), .B0(n38), .Y(n36) );
  NAND2X2 U153 ( .A(n47), .B(n39), .Y(n37) );
  AOI21X1 U154 ( .A0(n39), .A1(n48), .B0(n40), .Y(n38) );
  NOR2X2 U155 ( .A(n33), .B(n30), .Y(n28) );
  INVX2 U156 ( .A(n23), .Y(n21) );
  XNOR2X1 U157 ( .A(n56), .B(n10), .Y(DIFF[4]) );
  XOR2X1 U158 ( .A(n51), .B(n9), .Y(DIFF[5]) );
  AOI21BX2 U159 ( .A0(n56), .A1(n79), .B0N(n55), .Y(n51) );
  XOR2X1 U160 ( .A(n46), .B(n8), .Y(DIFF[6]) );
  NAND2X2 U161 ( .A(n77), .B(n45), .Y(n8) );
  INVX2 U162 ( .A(n44), .Y(n77) );
  XNOR2X1 U163 ( .A(n32), .B(n5), .Y(DIFF[9]) );
  NAND2X2 U164 ( .A(n73), .B(n26), .Y(n4) );
  NAND2X2 U165 ( .A(n71), .B(n18), .Y(n2) );
  INVX2 U166 ( .A(n17), .Y(n71) );
  XOR2X1 U167 ( .A(n35), .B(n6), .Y(DIFF[8]) );
  NAND2X2 U168 ( .A(n75), .B(n34), .Y(n6) );
  INVX2 U169 ( .A(n33), .Y(n75) );
  XNOR2X1 U170 ( .A(n62), .B(n11), .Y(DIFF[3]) );
  NAND2X2 U171 ( .A(n80), .B(n61), .Y(n11) );
  INVX2 U172 ( .A(n60), .Y(n80) );
  XOR2X1 U173 ( .A(n13), .B(n69), .Y(DIFF[1]) );
  NAND2X2 U174 ( .A(n82), .B(n68), .Y(n13) );
  INVX2 U175 ( .A(n67), .Y(n82) );
  XOR2X1 U176 ( .A(n65), .B(n12), .Y(DIFF[2]) );
  NAND2X2 U177 ( .A(n81), .B(n64), .Y(n12) );
  INVX2 U178 ( .A(n146), .Y(n81) );
  INVX2 U179 ( .A(n54), .Y(n79) );
  NAND2BX2 U180 ( .AN(n30), .B(n31), .Y(n5) );
  INVX2 U181 ( .A(n25), .Y(n73) );
  NAND2X2 U182 ( .A(n147), .B(n23), .Y(n3) );
  INVX2 U183 ( .A(B[3]), .Y(n93) );
  NAND2X2 U184 ( .A(n148), .B(n15), .Y(n1) );
  NAND2X2 U185 ( .A(n83), .B(A[13]), .Y(n15) );
  INVX2 U186 ( .A(B[7]), .Y(n89) );
  INVX2 U187 ( .A(B[6]), .Y(n90) );
  NOR2X2 U188 ( .A(n87), .B(A[9]), .Y(n30) );
  INVX2 U189 ( .A(B[9]), .Y(n87) );
  INVX2 U190 ( .A(B[4]), .Y(n92) );
  NOR2X2 U191 ( .A(n88), .B(A[8]), .Y(n33) );
  INVX2 U192 ( .A(B[8]), .Y(n88) );
  NAND2X2 U193 ( .A(n88), .B(A[8]), .Y(n34) );
  NAND2X2 U194 ( .A(n87), .B(A[9]), .Y(n31) );
  NOR2X2 U195 ( .A(n86), .B(A[10]), .Y(n25) );
  INVX2 U196 ( .A(B[10]), .Y(n86) );
  INVX2 U197 ( .A(B[11]), .Y(n85) );
  OR2X2 U198 ( .A(n85), .B(A[11]), .Y(n147) );
  NAND2X2 U199 ( .A(n86), .B(A[10]), .Y(n26) );
  NAND2X2 U200 ( .A(n85), .B(A[11]), .Y(n23) );
  NOR2X2 U201 ( .A(n84), .B(A[12]), .Y(n17) );
  INVX2 U202 ( .A(B[12]), .Y(n84) );
  INVX2 U203 ( .A(B[13]), .Y(n83) );
  OR2X2 U204 ( .A(n83), .B(A[13]), .Y(n148) );
  NAND2X2 U205 ( .A(n84), .B(A[12]), .Y(n18) );
  NOR2X2 U206 ( .A(n44), .B(n41), .Y(n39) );
  INVX2 U207 ( .A(B[5]), .Y(n91) );
  NAND2XL U208 ( .A(n91), .B(A[5]), .Y(n50) );
  XNOR2XL U209 ( .A(n24), .B(n3), .Y(DIFF[11]) );
  INVXL U210 ( .A(n36), .Y(n35) );
  INVXL U211 ( .A(n57), .Y(n56) );
endmodule


module sa_DW01_cmp6_1 ( A, B, LT, GT );
  input [13:0] A;
  input [13:0] B;
  output LT, GT;
  wire   n7, n8, n9, n10, n11, n12, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n62, n63, n64, n65, n66, n67, n68, n69,
         n70, n71, n72, n73, n74, n75, n76, n118, n119, n120, n121, n122, n123,
         n124, n125;

  OAI21X1 U27 ( .A0(n25), .A1(n28), .B0(n26), .Y(n24) );
  OAI21X1 U33 ( .A0(n46), .A1(n31), .B0(n32), .Y(n30) );
  OAI21X1 U37 ( .A0(n35), .A1(n38), .B0(n36), .Y(n34) );
  OAI21X1 U51 ( .A0(n49), .A1(n52), .B0(n50), .Y(n48) );
  NOR2X4 U83 ( .A(LT), .B(n123), .Y(GT) );
  AOI21X1 U84 ( .A0(n18), .A1(n124), .B0(n118), .Y(n12) );
  AOI21X2 U85 ( .A0(n8), .A1(n125), .B0(n119), .Y(LT) );
  NOR2X2 U86 ( .A(n11), .B(n9), .Y(n7) );
  OAI21X1 U87 ( .A0(n12), .A1(n9), .B0(n10), .Y(n8) );
  AND2X2 U88 ( .A(A[11]), .B(n65), .Y(n118) );
  AND2X2 U89 ( .A(A[13]), .B(n63), .Y(n119) );
  NAND2X2 U90 ( .A(A[5]), .B(n71), .Y(n121) );
  NAND2X2 U91 ( .A(n120), .B(B[5]), .Y(n122) );
  NAND2X2 U92 ( .A(n121), .B(n122), .Y(n41) );
  INVX2 U93 ( .A(A[5]), .Y(n120) );
  INVX1 U94 ( .A(B[5]), .Y(n71) );
  NOR2X1 U95 ( .A(n43), .B(n41), .Y(n39) );
  XNOR2X1 U96 ( .A(A[0]), .B(n76), .Y(n57) );
  XNOR2X1 U97 ( .A(A[1]), .B(n75), .Y(n55) );
  NOR2XL U98 ( .A(n45), .B(n31), .Y(n29) );
  NAND2XL U99 ( .A(n53), .B(n47), .Y(n45) );
  OAI21X1 U100 ( .A0(n22), .A1(n19), .B0(n20), .Y(n18) );
  INVXL U101 ( .A(B[0]), .Y(n76) );
  NAND2XL U102 ( .A(A[0]), .B(n76), .Y(n62) );
  CLKAND2X2 U103 ( .A(n57), .B(n62), .Y(n58) );
  OAI21X1 U104 ( .A0(n41), .A1(n44), .B0(n42), .Y(n40) );
  XNOR2XL U105 ( .A(A[2]), .B(n74), .Y(n51) );
  INVXL U106 ( .A(B[3]), .Y(n73) );
  INVXL U107 ( .A(B[1]), .Y(n75) );
  INVXL U108 ( .A(B[2]), .Y(n74) );
  INVXL U109 ( .A(B[7]), .Y(n69) );
  INVXL U110 ( .A(B[6]), .Y(n70) );
  INVXL U111 ( .A(B[4]), .Y(n72) );
  NAND2XL U112 ( .A(A[4]), .B(n72), .Y(n44) );
  NAND2XL U113 ( .A(A[2]), .B(n74), .Y(n52) );
  NAND2XL U114 ( .A(A[1]), .B(n75), .Y(n56) );
  NAND2XL U115 ( .A(A[6]), .B(n70), .Y(n38) );
  AND2X2 U116 ( .A(n7), .B(n125), .Y(n123) );
  NAND2X2 U117 ( .A(n17), .B(n124), .Y(n11) );
  NOR2X2 U118 ( .A(n21), .B(n19), .Y(n17) );
  NAND2X2 U119 ( .A(n29), .B(n23), .Y(n21) );
  AOI21X1 U120 ( .A0(n30), .A1(n23), .B0(n24), .Y(n22) );
  NAND2X2 U121 ( .A(A[9]), .B(n67), .Y(n26) );
  OAI21X1 U122 ( .A0(n58), .A1(n55), .B0(n56), .Y(n54) );
  NAND2X2 U123 ( .A(A[3]), .B(n73), .Y(n50) );
  NAND2X2 U124 ( .A(A[7]), .B(n69), .Y(n36) );
  XNOR2X1 U125 ( .A(A[3]), .B(n73), .Y(n49) );
  NOR2X2 U126 ( .A(n51), .B(n49), .Y(n47) );
  XNOR2X1 U127 ( .A(A[7]), .B(n69), .Y(n35) );
  NOR2X2 U128 ( .A(n37), .B(n35), .Y(n33) );
  XNOR2X1 U129 ( .A(A[6]), .B(n70), .Y(n37) );
  NAND2X2 U130 ( .A(n33), .B(n39), .Y(n31) );
  XNOR2X1 U131 ( .A(A[4]), .B(n72), .Y(n43) );
  XNOR2X1 U132 ( .A(A[9]), .B(n67), .Y(n25) );
  INVX2 U133 ( .A(B[9]), .Y(n67) );
  NOR2X2 U134 ( .A(n27), .B(n25), .Y(n23) );
  XNOR2X1 U135 ( .A(A[8]), .B(n68), .Y(n27) );
  NAND2X2 U136 ( .A(A[8]), .B(n68), .Y(n28) );
  INVX2 U137 ( .A(B[8]), .Y(n68) );
  XOR2X1 U138 ( .A(A[11]), .B(n65), .Y(n124) );
  XNOR2X1 U139 ( .A(A[10]), .B(n66), .Y(n19) );
  INVX2 U140 ( .A(B[11]), .Y(n65) );
  INVX2 U141 ( .A(B[10]), .Y(n66) );
  XOR2X1 U142 ( .A(A[13]), .B(n63), .Y(n125) );
  XNOR2X1 U143 ( .A(A[12]), .B(n64), .Y(n9) );
  NAND2X2 U144 ( .A(A[10]), .B(n66), .Y(n20) );
  INVX2 U145 ( .A(B[13]), .Y(n63) );
  INVX2 U146 ( .A(B[12]), .Y(n64) );
  NAND2X2 U147 ( .A(A[12]), .B(n64), .Y(n10) );
  NAND2XL U148 ( .A(A[5]), .B(n71), .Y(n42) );
  AOI21X1 U149 ( .A0(n54), .A1(n47), .B0(n48), .Y(n46) );
  NOR2XL U150 ( .A(n57), .B(n55), .Y(n53) );
  AOI21X1 U151 ( .A0(n33), .A1(n40), .B0(n34), .Y(n32) );
endmodule


module sa ( target_y, clk, rst_n, enable, done, x );
  input [9:0] target_y;
  output [7:0] x;
  input clk, rst_n, enable;
  output done;
  wire   n301, curr_state_2_, N37, x_temp_6_, x_temp_5_, x_temp_4_, x_temp_3_,
         x_temp_2_, x_temp_1_, x_temp_0_, N73, N75, N76, N77, N78, N79, N80,
         N81, N82, N83, N84, N85, N86, N87, N88, N89, N90, N133, N134, N135,
         N136, N138, N151, N152, N153, N154, N155, N156, N157, N158, N159,
         N160, N161, N162, N163, N164, N167, N168, N169, N170, N171, N172,
         N173, N174, N175, N176, N177, N178, N179, N180, N181, N195, N196,
         N197, N198, N199, N200, N201, N202, N242, N243, N244, N245, N246,
         N247, N248, N249, N250, N251, N252, n34, n35, n40, n47, n750, n780,
         n810, n820, n830, n840, n850, n860, n880, n890, n900, n91, n92, n93,
         n94, n95, n96, n99, n100, n101, n102, n103, n104, n105, n106, n107,
         n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, n120,
         n121, n122, n123, n124, n125, n126, n127, n128, n129, n130, n131,
         N1240, N1230, N1220, N1210, N1200, N1190, n132, n1330, n1340, n1350,
         n137, n1380, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n1510, n1520, n1530, n1540, n1550, n1560, n1570,
         n1580, n1590, n1600, n1610, n1620, n1630, n1640, n165, n166, n1670,
         n1680, n1690, n1700, n1710, n1720, n1730, n1740, n1750, n1760, n1770,
         n1780, n1790, n1800, n1810, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n1950, n1960, n1970, n1980, n1990,
         n2000, n2010, n2020, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n2420, n2430,
         n2440, n2450, n2460, n2470, n2480, n2490, n2500, n2510, n2520, n253,
         n254, n255, n256, n257, n258, n259, n260, n261, n262, n263, n264,
         n265, n266, n267, n268, n269, n270, n271, n272, n273, n274, n275,
         n276, n277, n278, n279, n280, n281, n282, n283, n284, n285, n286,
         n287, n288, n289, n290, n291, n292, n293, n294, n295, n296, n297,
         n298, n299, n300;
  wire   [1:0] next_state;
  wire   [2:0] count;
  wire   [13:0] target_y_range;
  wire   [13:0] target_y_comp;
  wire   [12:5] add_63_carry;

  sa_DW01_inc_0_DW01_inc_1 add_72_S2 ( .A({x[7:2], n137, x[0]}), .SUM({N202, 
        N201, N200, N199, N198, N197, N196, N195}) );
  sa_DW01_sub_2 sub_57 ( .A({x[7:2], n137, x[0]}), .DIFF({N90, N89, N88, N87, 
        N86, N85, N84, N83}), .B_6_(x_temp_6_), .B_5_(x_temp_5_), .B_4_(
        x_temp_4_), .B_3_(x_temp_3_), .B_2_(x_temp_2_), .B_1_(x_temp_1_), 
        .B_0_(x_temp_0_) );
  sa_DW01_add_0 add_56_S2 ( .A({x[7:2], n301, x[0]}), .SUM({N82, N81, N80, N79, 
        N78, N77, N76, N75}), .B_6_(x_temp_6_), .B_5_(x_temp_5_), .B_4_(
        x_temp_4_), .B_3_(x_temp_3_), .B_2_(x_temp_2_), .B_1_(x_temp_1_), 
        .B_0_(x_temp_0_) );
  sa_DW01_sub_3 sub_71 ( .A(target_y_range), .B(target_y_comp), .DIFF({N164, 
        N163, N162, N161, N160, N159, N158, N157, N156, N155, N154, N153, N152, 
        N151}) );
  sa_DW01_sub_4 sub_72 ( .A(target_y_comp), .B(target_y_range), .DIFF({N181, 
        N180, N179, N178, N177, N176, N175, N174, N173, N172, N171, N170, N169, 
        N168}) );
  sa_DW01_cmp6_1 r414 ( .A(target_y_range), .B({target_y_comp[13:7], n1350, 
        target_y_comp[5:0]}), .LT(N167), .GT(N73) );
  DFFQXL done_reg ( .D(n121), .CK(clk), .Q(done) );
  DFFQXL count_reg_3_ ( .D(n130), .CK(clk), .Q(N37) );
  DFFQXL count_reg_2_ ( .D(n128), .CK(clk), .Q(count[2]) );
  EDFFX2 x_temp_reg_6_ ( .D(n289), .E(n288), .CK(clk), .Q(x_temp_6_), .QN(n40)
         );
  DFFTRXL curr_state_reg_1_ ( .D(next_state[1]), .RN(rst_n), .CK(clk), .Q(), 
        .QN(n1670) );
  DFFTRXL curr_state_reg_0_ ( .D(next_state[0]), .RN(rst_n), .CK(clk), .Q(n150), .QN(n35) );
  EDFFX2 target_y_range_reg_13_ ( .D(N252), .E(n149), .CK(clk), .Q(
        target_y_range[13]), .QN() );
  EDFFX2 target_y_range_reg_12_ ( .D(N251), .E(n149), .CK(clk), .Q(
        target_y_range[12]), .QN() );
  EDFFX2 target_y_range_reg_11_ ( .D(N250), .E(n149), .CK(clk), .Q(
        target_y_range[11]), .QN() );
  EDFFX2 target_y_range_reg_10_ ( .D(N249), .E(n149), .CK(clk), .Q(
        target_y_range[10]), .QN() );
  DFFQX2 x_reg_0_ ( .D(n106), .CK(clk), .Q(x[0]) );
  EDFFX2 target_y_range_reg_8_ ( .D(N247), .E(n149), .CK(clk), .Q(
        target_y_range[8]), .QN() );
  EDFFX2 target_y_range_reg_9_ ( .D(N248), .E(n149), .CK(clk), .Q(
        target_y_range[9]), .QN() );
  EDFFX2 target_y_range_reg_2_ ( .D(target_y[1]), .E(n149), .CK(clk), .Q(
        target_y_range[2]), .QN() );
  EDFFX2 target_y_range_reg_1_ ( .D(target_y[0]), .E(n149), .CK(clk), .Q(
        target_y_range[1]), .QN() );
  DFFQXL count_reg_1_ ( .D(n129), .CK(clk), .Q(count[1]) );
  DFFQXL count_reg_0_ ( .D(n131), .CK(clk), .Q(count[0]) );
  DFFQXL x_temp_reg_5_ ( .D(n123), .CK(clk), .Q(x_temp_5_) );
  DFFQXL x_temp_reg_4_ ( .D(n124), .CK(clk), .Q(x_temp_4_) );
  DFFQXL x_temp_reg_3_ ( .D(n125), .CK(clk), .Q(x_temp_3_) );
  DFFQXL x_reg_7_ ( .D(n99), .CK(clk), .Q(x[7]) );
  DFFQXL x_reg_6_ ( .D(n100), .CK(clk), .Q(x[6]) );
  DFFQXL x_temp_reg_2_ ( .D(n126), .CK(clk), .Q(x_temp_2_) );
  DFFQXL x_temp_reg_1_ ( .D(n127), .CK(clk), .Q(x_temp_1_) );
  DFFQXL x_temp_reg_0_ ( .D(n122), .CK(clk), .Q(x_temp_0_) );
  DFFQXL target_y_comp_reg_13_ ( .D(n120), .CK(clk), .Q(target_y_comp[13]) );
  DFFQXL target_y_comp_reg_12_ ( .D(n119), .CK(clk), .Q(target_y_comp[12]) );
  DFFQXL x_reg_3_ ( .D(n103), .CK(clk), .Q(x[3]) );
  DFFQXL target_y_comp_reg_11_ ( .D(n118), .CK(clk), .Q(target_y_comp[11]) );
  DFFQXL x_reg_1_ ( .D(n105), .CK(clk), .Q(n301) );
  DFFQXL target_y_comp_reg_10_ ( .D(n117), .CK(clk), .Q(target_y_comp[10]) );
  DFFQXL x_reg_2_ ( .D(n104), .CK(clk), .Q(x[2]) );
  DFFQXL target_y_comp_reg_8_ ( .D(n115), .CK(clk), .Q(target_y_comp[8]) );
  DFFQXL target_y_comp_reg_9_ ( .D(n116), .CK(clk), .Q(target_y_comp[9]) );
  DFFTRXL curr_state_reg_2_ ( .D(n291), .RN(rst_n), .CK(clk), .Q(curr_state_2_), .QN(n34) );
  DFFQX2 target_y_comp_reg_3_ ( .D(n110), .CK(clk), .Q(target_y_comp[3]) );
  DFFQXL x_reg_4_ ( .D(n102), .CK(clk), .Q(x[4]) );
  DFFQXL x_reg_5_ ( .D(n101), .CK(clk), .Q(x[5]) );
  DFFX2 target_y_range_reg_0_ ( .D(n1340), .CK(clk), .Q(target_y_range[0]), 
        .QN() );
  EDFFX2 target_y_range_reg_7_ ( .D(N246), .E(n149), .CK(clk), .Q(
        target_y_range[7]), .QN() );
  EDFFX2 target_y_range_reg_6_ ( .D(N245), .E(n149), .CK(clk), .Q(
        target_y_range[6]), .QN() );
  EDFFX2 target_y_range_reg_5_ ( .D(N244), .E(n149), .CK(clk), .Q(
        target_y_range[5]), .QN() );
  EDFFX2 target_y_range_reg_4_ ( .D(N243), .E(n149), .CK(clk), .Q(
        target_y_range[4]), .QN() );
  EDFFX2 target_y_range_reg_3_ ( .D(N242), .E(n149), .CK(clk), .Q(
        target_y_range[3]), .QN() );
  DFFYQX2 target_y_comp_reg_5_ ( .D(n112), .CK(clk), .Q(target_y_comp[5]) );
  DFFQX2 target_y_comp_reg_0_ ( .D(n107), .CK(clk), .Q(target_y_comp[0]) );
  DFFQXL target_y_comp_reg_7_ ( .D(n114), .CK(clk), .Q(target_y_comp[7]) );
  DFFQXL target_y_comp_reg_4_ ( .D(n111), .CK(clk), .Q(target_y_comp[4]) );
  DFFQXL target_y_comp_reg_6_ ( .D(n113), .CK(clk), .Q(target_y_comp[6]) );
  DFFQX2 target_y_comp_reg_1_ ( .D(n295), .CK(clk), .Q(target_y_comp[1]) );
  DFFQX2 target_y_comp_reg_2_ ( .D(n294), .CK(clk), .Q(target_y_comp[2]) );
  NAND2BXL U116 ( .AN(n222), .B(n221), .Y(n101) );
  OR4X2 U117 ( .A(N179), .B(n190), .C(N181), .D(N180), .Y(n1960) );
  AO2B2X2 U118 ( .B0(n287), .B1(n232), .A0(n1350), .A1N(n288), .Y(n113) );
  MX2X1 U119 ( .A(n258), .B(n147), .S0(x[7]), .Y(n263) );
  AOI21BX2 U120 ( .A0(n142), .A1(n226), .B0N(n256), .Y(n132) );
  NAND3BX2 U121 ( .AN(n205), .B(n291), .C(n256), .Y(n2510) );
  INVX2 U122 ( .A(n2510), .Y(n142) );
  OAI21X1 U123 ( .A0(n207), .A1(n220), .B0(n142), .Y(n1330) );
  NOR2BX1 U124 ( .AN(target_y_range[0]), .B(n288), .Y(n1340) );
  BUFX2 U125 ( .A(target_y_comp[6]), .Y(n1350) );
  CLKBUFX1 U126 ( .A(n301), .Y(x[1]) );
  BUFX2 U127 ( .A(n301), .Y(n137) );
  OAI2B11XL U128 ( .A1N(n1970), .A0(n1960), .B0(N167), .C0(n205), .Y(n1380) );
  OAI2B11X1 U129 ( .A1N(N81), .A0(n255), .B0(n2500), .C0(n2490), .Y(n100) );
  INVXL U130 ( .A(target_y_comp[2]), .Y(n2440) );
  INVXL U131 ( .A(target_y_comp[1]), .Y(n2450) );
  AND2X2 U132 ( .A(N84), .B(n261), .Y(n139) );
  AND2XL U133 ( .A(n142), .B(n239), .Y(n140) );
  AND2X1 U134 ( .A(N196), .B(n259), .Y(n141) );
  NOR3X1 U135 ( .A(n139), .B(n140), .C(n141), .Y(n223) );
  INVXL U136 ( .A(N73), .Y(n2000) );
  MX2X1 U137 ( .A(n2480), .B(n147), .S0(x[6]), .Y(n2500) );
  AND2X2 U138 ( .A(n142), .B(x[5]), .Y(n143) );
  NOR2X2 U139 ( .A(n143), .B(n2470), .Y(n147) );
  OAI2BB1XL U140 ( .A0N(n142), .A1N(n218), .B0(n256), .Y(n2470) );
  CLKINVX2 U141 ( .A(n204), .Y(n259) );
  AO2B2XL U142 ( .B0(N79), .B1(n217), .A0(N87), .A1N(n216), .Y(n209) );
  NAND2BX2 U143 ( .AN(n209), .B(n208), .Y(n102) );
  AND3X2 U144 ( .A(n144), .B(n145), .C(n1330), .Y(n208) );
  NAND2BX2 U145 ( .AN(n230), .B(n229), .Y(n104) );
  NAND2BX2 U146 ( .AN(n224), .B(n223), .Y(n105) );
  INVXL U147 ( .A(target_y_comp[5]), .Y(n236) );
  INVXL U148 ( .A(n1380), .Y(n2020) );
  NAND2XL U149 ( .A(N199), .B(n259), .Y(n144) );
  NAND2X2 U150 ( .A(x[4]), .B(n212), .Y(n145) );
  CLKINVX2 U151 ( .A(n2480), .Y(n257) );
  INVXL U152 ( .A(n255), .Y(n217) );
  OAI2BB1XL U153 ( .A0N(n142), .A1N(n226), .B0(n256), .Y(n212) );
  INVXL U154 ( .A(n256), .Y(n225) );
  NAND3BX1 U155 ( .AN(n264), .B(n263), .C(n262), .Y(n99) );
  MX2XL U156 ( .A(n2510), .B(n256), .S0(x[0]), .Y(n253) );
  OAI2BB1XL U157 ( .A0N(x[2]), .A1N(x[1]), .B0(n233), .Y(n231) );
  NAND2BXL U158 ( .AN(n238), .B(n137), .Y(n233) );
  XNOR2XL U159 ( .A(n137), .B(x[0]), .Y(n239) );
  OAI2BB1XL U160 ( .A0N(target_y_comp[7]), .A1N(n235), .B0(n810), .Y(n114) );
  NAND2BX1 U161 ( .AN(n137), .B(n238), .Y(n227) );
  INVXL U162 ( .A(target_y_comp[3]), .Y(n2420) );
  INVXL U163 ( .A(target_y_comp[4]), .Y(n240) );
  INVXL U164 ( .A(target_y_comp[0]), .Y(n2460) );
  OAI2B11X4 U165 ( .A1N(n1970), .A0(n1960), .B0(N167), .C0(n205), .Y(n2010) );
  OAI2BB1X4 U166 ( .A0N(n1950), .A1N(n194), .B0(N73), .Y(n205) );
  INVX2 U167 ( .A(n235), .Y(n149) );
  INVX2 U168 ( .A(n2430), .Y(n287) );
  NAND2BX2 U169 ( .AN(n890), .B(n287), .Y(n900) );
  INVX2 U170 ( .A(n285), .Y(n780) );
  INVX2 U171 ( .A(n218), .Y(n220) );
  NAND2X2 U172 ( .A(n292), .B(n750), .Y(n93) );
  NOR4BX2 U173 ( .AN(n189), .B(N175), .C(N176), .D(N174), .Y(n1970) );
  NOR4BX2 U174 ( .AN(n192), .B(N158), .C(N159), .D(N157), .Y(n1950) );
  NOR4BX2 U175 ( .AN(n193), .B(N164), .C(N163), .D(N162), .Y(n194) );
  NOR3BX1 U176 ( .AN(n188), .B(N173), .C(N172), .Y(n189) );
  OAI211XL U177 ( .A0(N169), .A1(N168), .B0(N171), .C0(N170), .Y(n188) );
  NOR2X2 U178 ( .A(N161), .B(N160), .Y(n193) );
  OR2X2 U179 ( .A(N178), .B(N177), .Y(n190) );
  NOR3BX1 U180 ( .AN(n191), .B(N156), .C(N155), .Y(n192) );
  OAI211XL U181 ( .A0(N152), .A1(N151), .B0(N154), .C0(N153), .Y(n191) );
  OAI2BB1X1 U182 ( .A0N(n206), .A1N(n279), .B0(n276), .Y(n275) );
  INVX2 U183 ( .A(n206), .Y(n277) );
  AOI21BX2 U184 ( .A0(n266), .A1(n270), .B0N(n267), .Y(n146) );
  INVX2 U185 ( .A(n266), .Y(n268) );
  INVX2 U186 ( .A(n235), .Y(n288) );
  NAND2BX2 U187 ( .AN(n235), .B(n185), .Y(n2430) );
  INVX2 U188 ( .A(n203), .Y(n291) );
  NAND2BX2 U189 ( .AN(n235), .B(n289), .Y(n285) );
  INVX2 U190 ( .A(n283), .Y(n750) );
  NAND2BX2 U191 ( .AN(n226), .B(n277), .Y(n218) );
  INVX2 U192 ( .A(n1680), .Y(n185) );
  INVX2 U193 ( .A(n210), .Y(n289) );
  INVX2 U194 ( .A(n298), .Y(n292) );
  INVX2 U195 ( .A(n226), .Y(n211) );
  INVX2 U196 ( .A(n276), .Y(n207) );
  INVX2 U197 ( .A(n267), .Y(n260) );
  OAI2B1X1 U198 ( .A1N(n185), .A0(n297), .B0(n298), .Y(next_state[1]) );
  NAND2X2 U199 ( .A(n91), .B(n297), .Y(n890) );
  NOR3BX1 U200 ( .AN(n1690), .B(n166), .C(n165), .Y(N252) );
  INVX2 U201 ( .A(n1690), .Y(n1710) );
  AOI22XL U202 ( .A0(N201), .A1(n259), .B0(N89), .B1(n261), .Y(n2490) );
  AOI222XL U203 ( .A0(N90), .A1(n261), .B0(n260), .B1(n142), .C0(N202), .C1(
        n259), .Y(n262) );
  NAND2BX2 U204 ( .AN(x[6]), .B(n257), .Y(n258) );
  AOI22XL U205 ( .A0(N195), .A1(n259), .B0(N83), .B1(n261), .Y(n2520) );
  AOI222XL U206 ( .A0(N85), .A1(n261), .B0(n142), .B1(n228), .C0(N197), .C1(
        n259), .Y(n229) );
  OAI2BB1X1 U207 ( .A0N(x[2]), .A1N(n227), .B0(n226), .Y(n228) );
  OAI2B11X2 U208 ( .A1N(N78), .A0(n255), .B0(n215), .C0(n214), .Y(n103) );
  MX2X1 U209 ( .A(n213), .B(n132), .S0(x[3]), .Y(n215) );
  AOI22XL U210 ( .A0(N198), .A1(n259), .B0(N86), .B1(n261), .Y(n214) );
  AO2B2X2 U211 ( .B0(N80), .B1(n217), .A0(N88), .A1N(n216), .Y(n222) );
  OAI2BB1X1 U212 ( .A0N(target_y_comp[12]), .A1N(n235), .B0(n850), .Y(n119) );
  AOI21X1 U213 ( .A0(N138), .A1(n287), .B0(n780), .Y(n850) );
  INVX2 U214 ( .A(n265), .Y(n286) );
  XNOR3XL U215 ( .A(x[2]), .B(x[1]), .C(n233), .Y(n148) );
  INVX2 U216 ( .A(x[0]), .Y(n238) );
  NAND2BX2 U217 ( .AN(x[0]), .B(n239), .Y(add_63_carry[5]) );
  XOR3XL U218 ( .A(x[2]), .B(x[3]), .C(n231), .Y(N1190) );
  OAI2BB1X1 U219 ( .A0N(x[2]), .A1N(x[3]), .B0(n1810), .Y(n279) );
  OAI2BB1X1 U220 ( .A0N(n278), .A1N(n1800), .B0(n231), .Y(n1810) );
  INVX2 U221 ( .A(x[2]), .Y(n1800) );
  MX2X1 U222 ( .A(n282), .B(n281), .S0(n280), .Y(N1200) );
  XNOR2X1 U223 ( .A(x[4]), .B(n278), .Y(n281) );
  NAND2BX2 U224 ( .AN(n277), .B(n276), .Y(n282) );
  INVX2 U225 ( .A(n279), .Y(n280) );
  XOR3XL U226 ( .A(x[5]), .B(x[4]), .C(n275), .Y(N1210) );
  OAI32XL U227 ( .A0(n265), .A1(n2430), .A2(n187), .B0(n149), .B1(n186), .Y(
        n120) );
  INVX2 U228 ( .A(target_y_comp[13]), .Y(n186) );
  INVX2 U229 ( .A(add_63_carry[12]), .Y(n187) );
  OAI2BB1X1 U230 ( .A0N(x[6]), .A1N(x[5]), .B0(n184), .Y(n270) );
  OAI2BB1X1 U231 ( .A0N(n219), .A1N(n269), .B0(n274), .Y(n184) );
  OAI2BB1X1 U232 ( .A0N(x[5]), .A1N(x[4]), .B0(n183), .Y(n274) );
  OAI2BB1X1 U233 ( .A0N(n182), .A1N(n219), .B0(n275), .Y(n183) );
  INVX2 U234 ( .A(x[4]), .Y(n182) );
  MX2X1 U235 ( .A(n273), .B(n272), .S0(n271), .Y(N1230) );
  XNOR2X1 U236 ( .A(x[7]), .B(n269), .Y(n272) );
  NAND2BX2 U237 ( .AN(n268), .B(n267), .Y(n273) );
  INVX2 U238 ( .A(n270), .Y(n271) );
  NAND2BX2 U239 ( .AN(x[4]), .B(n278), .Y(n206) );
  INVX2 U240 ( .A(x[3]), .Y(n278) );
  XOR3XL U241 ( .A(x[6]), .B(x[5]), .C(n274), .Y(N1220) );
  AO2B2X2 U242 ( .B0(n287), .B1(n254), .A0(target_y_comp[11]), .A1N(n288), .Y(
        n118) );
  XNOR2X1 U243 ( .A(add_63_carry[11]), .B(N1240), .Y(n254) );
  NAND2BX2 U244 ( .AN(n278), .B(x[4]), .Y(n276) );
  XNOR2X1 U245 ( .A(x[7]), .B(n146), .Y(N1240) );
  OAI2BB1X1 U246 ( .A0N(target_y_comp[10]), .A1N(n235), .B0(n840), .Y(n117) );
  AOI21X1 U247 ( .A0(N136), .A1(n287), .B0(n780), .Y(n840) );
  OAI2BB1X1 U248 ( .A0N(target_y_comp[9]), .A1N(n235), .B0(n830), .Y(n116) );
  AOI21X1 U249 ( .A0(N135), .A1(n287), .B0(n780), .Y(n830) );
  NAND2BX2 U250 ( .AN(n146), .B(x[7]), .Y(n265) );
  INVX2 U251 ( .A(x[5]), .Y(n219) );
  OAI2BB1X1 U252 ( .A0N(n298), .A1N(n210), .B0(rst_n), .Y(n283) );
  NAND2BX2 U253 ( .AN(n284), .B(n34), .Y(n210) );
  NAND2BX2 U254 ( .AN(n150), .B(n1670), .Y(n284) );
  NAND3BX2 U255 ( .AN(curr_state_2_), .B(n150), .C(n1670), .Y(n298) );
  OAI2BB1X1 U256 ( .A0N(target_y_comp[8]), .A1N(n235), .B0(n820), .Y(n115) );
  AOI21X1 U257 ( .A0(N134), .A1(n287), .B0(n780), .Y(n820) );
  INVX2 U258 ( .A(x[6]), .Y(n269) );
  NAND3BX2 U259 ( .AN(n1670), .B(n150), .C(n34), .Y(n203) );
  NAND2BX2 U260 ( .AN(x[7]), .B(n269), .Y(n266) );
  NAND2BX2 U261 ( .AN(n269), .B(x[7]), .Y(n267) );
  OAI2BB1X1 U262 ( .A0N(n210), .A1N(n1680), .B0(rst_n), .Y(n235) );
  AO2B2X2 U263 ( .B0(x_temp_1_), .B1(n235), .A0(x_temp_2_), .A1N(n900), .Y(
        n127) );
  AO2B2X2 U264 ( .B0(x_temp_2_), .B1(n235), .A0(x_temp_3_), .A1N(n900), .Y(
        n126) );
  AO2B2X2 U265 ( .B0(x_temp_3_), .B1(n235), .A0(x_temp_4_), .A1N(n900), .Y(
        n125) );
  AO2B2X2 U266 ( .B0(x_temp_4_), .B1(n235), .A0(x_temp_5_), .A1N(n900), .Y(
        n124) );
  OAI2BB2X2 U267 ( .B0(n900), .B1(n40), .A0N(x_temp_5_), .A1N(n235), .Y(n123)
         );
  AOI21X1 U268 ( .A0(N133), .A1(n287), .B0(n780), .Y(n810) );
  NAND3BX2 U269 ( .AN(n1670), .B(n35), .C(n34), .Y(n1680) );
  XOR2X1 U270 ( .A(add_63_carry[6]), .B(N1190), .Y(n232) );
  OAI2BB1X1 U271 ( .A0N(x_temp_0_), .A1N(n235), .B0(n880), .Y(n122) );
  OAI21X1 U272 ( .A0(x_temp_1_), .A1(n890), .B0(n287), .Y(n880) );
  OAI221X2 U273 ( .A0(x[0]), .A1(n2430), .B0(n149), .B1(n2420), .C0(n285), .Y(
        n110) );
  OAI221X2 U274 ( .A0(n241), .A1(n2430), .B0(n149), .B1(n240), .C0(n285), .Y(
        n111) );
  OA21X1 U275 ( .A0(n239), .A1(n238), .B0(add_63_carry[5]), .Y(n241) );
  OAI221X2 U276 ( .A0(n237), .A1(n2430), .B0(n149), .B1(n236), .C0(n285), .Y(
        n112) );
  XNOR2X1 U277 ( .A(n148), .B(n234), .Y(n237) );
  INVX2 U278 ( .A(add_63_carry[5]), .Y(n234) );
  OAI32XL U279 ( .A0(n91), .A1(N37), .A2(n93), .B0(n96), .B1(n297), .Y(n130)
         );
  AOI21X1 U280 ( .A0(n292), .A1(n300), .B0(n94), .Y(n96) );
  OAI21X1 U281 ( .A0(count[1]), .A1(n298), .B0(n95), .Y(n94) );
  OA21X1 U282 ( .A0(count[0]), .A1(n298), .B0(n750), .Y(n95) );
  OR2X2 U283 ( .A(x[2]), .B(n227), .Y(n226) );
  OAI32XL U284 ( .A0(n92), .A1(n299), .A2(n93), .B0(n293), .B1(n300), .Y(n128)
         );
  NAND2X2 U285 ( .A(count[0]), .B(n300), .Y(n92) );
  INVX2 U286 ( .A(n94), .Y(n293) );
  OAI32XL U287 ( .A0(n93), .A1(count[1]), .A2(n296), .B0(n95), .B1(n299), .Y(
        n129) );
  NOR2X2 U288 ( .A(n149), .B(n2460), .Y(n107) );
  NOR2X2 U289 ( .A(n149), .B(n2450), .Y(n295) );
  NOR2X2 U290 ( .A(n149), .B(n2440), .Y(n294) );
  OAI22X1 U291 ( .A0(n750), .A1(n296), .B0(count[0]), .B1(n93), .Y(n131) );
  NAND3XL U292 ( .A(count[1]), .B(count[0]), .C(count[2]), .Y(n91) );
  NAND2BX2 U293 ( .AN(n185), .B(n47), .Y(next_state[0]) );
  NAND3XL U294 ( .A(n35), .B(n34), .C(enable), .Y(n47) );
  OAI2BB2X2 U295 ( .B0(n860), .B1(n34), .A0N(done), .A1N(n860), .Y(n121) );
  NAND2X2 U296 ( .A(n290), .B(rst_n), .Y(n860) );
  INVX2 U297 ( .A(n284), .Y(n290) );
  INVX2 U298 ( .A(N37), .Y(n297) );
  INVX2 U299 ( .A(count[0]), .Y(n296) );
  INVX2 U300 ( .A(count[1]), .Y(n299) );
  INVX2 U301 ( .A(count[2]), .Y(n300) );
  XNOR2X1 U302 ( .A(target_y[9]), .B(n1700), .Y(N251) );
  NAND2BX2 U303 ( .AN(n1710), .B(target_y[8]), .Y(n1700) );
  XNOR2X1 U304 ( .A(target_y[8]), .B(n1710), .Y(N250) );
  XNOR2X1 U305 ( .A(target_y[0]), .B(n1790), .Y(N242) );
  XOR3XL U306 ( .A(target_y[1]), .B(target_y[3]), .C(n1780), .Y(N243) );
  XOR3XL U307 ( .A(target_y[5]), .B(target_y[3]), .C(n1760), .Y(N245) );
  XOR3XL U308 ( .A(target_y[6]), .B(target_y[4]), .C(n1750), .Y(N246) );
  XOR3XL U309 ( .A(target_y[7]), .B(target_y[5]), .C(n1740), .Y(N247) );
  XOR3XL U310 ( .A(target_y[6]), .B(target_y[8]), .C(n1730), .Y(N248) );
  XOR3XL U311 ( .A(target_y[7]), .B(target_y[9]), .C(n1720), .Y(N249) );
  XOR3XL U312 ( .A(target_y[4]), .B(target_y[2]), .C(n1770), .Y(N244) );
  OAI2BB1X1 U313 ( .A0N(target_y[9]), .A1N(target_y[7]), .B0(n1640), .Y(n1690)
         );
  OAI2BB1X1 U314 ( .A0N(n165), .A1N(n1630), .B0(n1720), .Y(n1640) );
  OAI2BB1X1 U315 ( .A0N(target_y[1]), .A1N(target_y[3]), .B0(n1530), .Y(n1770)
         );
  OAI2BB1X1 U316 ( .A0N(n1550), .A1N(n1520), .B0(n1780), .Y(n1530) );
  INVX2 U317 ( .A(target_y[1]), .Y(n1520) );
  OAI2BB1X1 U318 ( .A0N(target_y[4]), .A1N(target_y[2]), .B0(n1540), .Y(n1760)
         );
  OAI2BB1X1 U319 ( .A0N(n1790), .A1N(n1570), .B0(n1770), .Y(n1540) );
  OAI2BB1X1 U320 ( .A0N(target_y[5]), .A1N(target_y[3]), .B0(n1560), .Y(n1750)
         );
  OAI2BB1X1 U321 ( .A0N(n1550), .A1N(n1590), .B0(n1760), .Y(n1560) );
  OAI2BB1X1 U322 ( .A0N(target_y[6]), .A1N(target_y[4]), .B0(n1580), .Y(n1740)
         );
  OAI2BB1X1 U323 ( .A0N(n1570), .A1N(n1610), .B0(n1750), .Y(n1580) );
  OAI2BB1X1 U324 ( .A0N(target_y[7]), .A1N(target_y[5]), .B0(n1600), .Y(n1730)
         );
  OAI2BB1X1 U325 ( .A0N(n1590), .A1N(n1630), .B0(n1740), .Y(n1600) );
  OAI2BB1X1 U326 ( .A0N(target_y[8]), .A1N(target_y[6]), .B0(n1620), .Y(n1720)
         );
  OAI2BB1X1 U327 ( .A0N(n166), .A1N(n1610), .B0(n1730), .Y(n1620) );
  INVX2 U328 ( .A(n1510), .Y(n1780) );
  NAND2BX2 U329 ( .AN(n1790), .B(target_y[0]), .Y(n1510) );
  INVX2 U330 ( .A(target_y[2]), .Y(n1790) );
  INVX2 U331 ( .A(target_y[8]), .Y(n166) );
  INVX2 U332 ( .A(target_y[9]), .Y(n165) );
  INVX2 U333 ( .A(target_y[3]), .Y(n1550) );
  INVX2 U334 ( .A(target_y[4]), .Y(n1570) );
  INVX2 U335 ( .A(target_y[5]), .Y(n1590) );
  INVX2 U336 ( .A(target_y[6]), .Y(n1610) );
  INVX2 U337 ( .A(target_y[7]), .Y(n1630) );
  AOI221XL U338 ( .A0(N200), .A1(n259), .B0(x[5]), .B1(n2470), .C0(n257), .Y(
        n221) );
  OAI2B11XL U339 ( .A1N(N75), .A0(n255), .B0(n253), .C0(n2520), .Y(n106) );
  AO2B2XL U340 ( .B0(n225), .B1(n137), .A0(N76), .A1N(n255), .Y(n224) );
  AO2B2XL U341 ( .B0(n225), .B1(x[2]), .A0(N77), .A1N(n255), .Y(n230) );
  INVX2 U342 ( .A(n216), .Y(n261) );
  AO2B2XL U343 ( .B0(n289), .B1(n256), .A0(N82), .A1N(n255), .Y(n264) );
  NAND3BXL U344 ( .AN(n298), .B(n256), .C(n2000), .Y(n216) );
  NAND3BX2 U345 ( .AN(n298), .B(N73), .C(n256), .Y(n255) );
  NAND3BXL U346 ( .AN(n203), .B(n2020), .C(n256), .Y(n204) );
  NAND2BX1 U347 ( .AN(n2510), .B(n211), .Y(n213) );
  NAND3BX2 U348 ( .AN(n2510), .B(n220), .C(n219), .Y(n2480) );
  NAND2BX8 U349 ( .AN(n1990), .B(n283), .Y(n256) );
  CLKINVX12 U350 ( .A(rst_n), .Y(n1980) );
  AOI211X4 U351 ( .A0(n2010), .A1(n205), .B0(n1980), .C0(n203), .Y(n1990) );
  XOR2X1 U352 ( .A(n286), .B(add_63_carry[12]), .Y(N138) );
  OR2X1 U353 ( .A(N1240), .B(add_63_carry[11]), .Y(add_63_carry[12]) );
  AND2X1 U354 ( .A(add_63_carry[10]), .B(N1230), .Y(add_63_carry[11]) );
  XOR2X1 U355 ( .A(N1230), .B(add_63_carry[10]), .Y(N136) );
  OR2X1 U356 ( .A(N1220), .B(add_63_carry[9]), .Y(add_63_carry[10]) );
  XNOR2X1 U357 ( .A(add_63_carry[9]), .B(N1220), .Y(N135) );
  OR2X1 U358 ( .A(N1210), .B(add_63_carry[8]), .Y(add_63_carry[9]) );
  XNOR2X1 U359 ( .A(add_63_carry[8]), .B(N1210), .Y(N134) );
  OR2X1 U360 ( .A(N1200), .B(add_63_carry[7]), .Y(add_63_carry[8]) );
  XNOR2X1 U361 ( .A(add_63_carry[7]), .B(N1200), .Y(N133) );
  AND2X1 U362 ( .A(add_63_carry[6]), .B(N1190), .Y(add_63_carry[7]) );
  OR2X1 U363 ( .A(n148), .B(add_63_carry[5]), .Y(add_63_carry[6]) );
endmodule

