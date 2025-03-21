`timescale 1ns/1ps
module dco (en, alpha, clk_out);

input en;
input [6:0] alpha;
output clk_out;

wire en;
wire clk_out;
wire [6:0] alpha;
wire [3:0] lambda;

wire in;


  NAND2X4 u1(.Y(in), .A(clk_out), .B(en));

  delay u_2 (
                    .delay_in(in), 
                    .lambda(lambda),  
                    .delay_out(clk_out));
  decoder u_3(
                  .alpha(alpha),
                  .lambda(lambda));
endmodule

module decoder (alpha, lambda);

input [6:0] alpha;
output [3:0] lambda;

wire [6:0] alpha;
reg [3:0] lambda;

  always @ (alpha) begin
    case (alpha)
    	7'b0000000: lambda = 4'b0001;
      	7'b0000001: lambda = 4'b0010;
      	7'b0000010: lambda = 4'b0100;
      	7'b0000011: lambda = 4'b1000;
      	7'b0000100: lambda = 4'b0000;
      	default:    lambda = 4'b0000;

    endcase
  end

endmodule

module delay (delay_in, lambda, delay_out);

input delay_in;
input [3:0] lambda;
output delay_out;

wire delay_in;
wire [3:0] lambda;
wire lambda_1;
wire lambda_2;
wire lambda_3;
wire lambda_4;
wire lambda_5;
wire [3:0] lambda_bar;
wire delay_out;
wire n1,n2,n3,n4,n5,n6,n7,n8,n9,n10;
wire n11,n12,n13,n14,n15,n16,n17,n18,n19,n20;
wire n21,n22,n23,n24,n25,n26,n27,n28,n29,n30;
wire n31,n32,n33,n34,n35,n36,n37,n38,n39,n40;
wire n41,n42,n43,n44,n45,n46,n47,n48,n49,n50;
wire n51,n52,n53,n54,n55,n56,n57,n58,n59,n60;
wire n61,n62,n63,n64,n65,n66,n67,n68,n69,n70;
wire n71,n72,n73,n74,n75,n76,n77,n78,n79,n80;
wire x1,x2,x3,x4;
wire y1,y2,y3,y4;
	
  CLKINVX1 INV_1 (.Y(lambda_bar[0]), .A(lambda[0]));
  CLKINVX1 INV_2 (.Y(lambda_bar[1]), .A(lambda[1]));
  CLKINVX1 INV_3 (.Y(lambda_bar[2]), .A(lambda[2]));
  CLKINVX1 INV_4 (.Y(lambda_bar[3]), .A(lambda[3]));
/////////////////////////////////////////////////
  CLKBUFX8 BUF_1 (.Y(n1), .A(delay_in));
  CLKBUFX8 BUF_2 (.Y(n2), .A(n1));
  CLKBUFX8 BUF_3 (.Y(n3), .A(n2));
  CLKBUFX8 BUF_4 (.Y(n4), .A(n3));
  CLKBUFX8 BUF_5 (.Y(n5), .A(n4));
  CLKBUFX8 BUF_6 (.Y(n6), .A(n5));
  CLKBUFX8 BUF_7 (.Y(n7), .A(n6));
  CLKBUFX8 BUF_8 (.Y(n8), .A(n7));
  CLKBUFX8 BUF_9 (.Y(n9), .A(n8));
  CLKBUFX8 BUF_10 (.Y(n10), .A(n9));
  CLKBUFX8 BUF_11 (.Y(n11), .A(n10));
  CLKBUFX8 BUF_12 (.Y(n12), .A(n11));
  CLKBUFX8 BUF_13 (.Y(n13), .A(n12));
  CLKBUFX8 BUF_14 (.Y(n14), .A(n13));
  CLKBUFX8 BUF_15 (.Y(n15), .A(n14));
  CLKBUFX8 BUF_16 (.Y(n16), .A(n15));
  CLKBUFX8 BUF_17 (.Y(n17), .A(n16));
  CLKBUFX8 BUF_18 (.Y(n18), .A(n17));
  CLKBUFX8 BUF_19 (.Y(n19), .A(n18));
  CLKBUFX8 BUF_20 (.Y(n20), .A(n19));
  CLKBUFX8 BUF_21 (.Y(n21), .A(n20));
  CLKBUFX8 BUF_22 (.Y(n22), .A(n21));
  CLKBUFX8 BUF_23 (.Y(n23), .A(n22));
  CLKBUFX8 BUF_24 (.Y(n24), .A(n23));
  CLKBUFX8 BUF_25 (.Y(n25), .A(n24));
  CLKBUFX8 BUF_26 (.Y(n26), .A(n25));
  CLKBUFX8 BUF_27 (.Y(n27), .A(n26));
  CLKBUFX8 BUF_28 (.Y(n28), .A(n27));
  CLKBUFX8 BUF_29 (.Y(n29), .A(n28));
  CLKBUFX8 BUF_30 (.Y(n30), .A(n29));
  CLKBUFX8 BUF_31 (.Y(n31), .A(n30));
  CLKBUFX8 BUF_32 (.Y(n32), .A(n31));
  CLKBUFX8 BUF_33 (.Y(n33), .A(n32));
  CLKBUFX8 BUF_34 (.Y(n34), .A(n33));
  CLKBUFX8 BUF_35 (.Y(n35), .A(n34));
  CLKBUFX8 BUF_36 (.Y(n36), .A(n35));
  CLKBUFX8 BUF_37 (.Y(n37), .A(n36));
  CLKBUFX8 BUF_38 (.Y(n38), .A(n37));
  CLKBUFX8 BUF_39 (.Y(n39), .A(n38));
  CLKBUFX8 BUF_40 (.Y(n40), .A(n39));
  CLKBUFX8 BUF_41 (.Y(n41), .A(n40));
  CLKBUFX8 BUF_42 (.Y(n42), .A(n41));
  CLKBUFX8 BUF_43 (.Y(n43), .A(n42));
  CLKBUFX8 BUF_44 (.Y(n44), .A(n43));
  CLKBUFX8 BUF_45 (.Y(n45), .A(n44));
  CLKBUFX8 BUF_46 (.Y(n46), .A(n45));
  CLKBUFX8 BUF_47 (.Y(n47), .A(n46));
  CLKBUFX8 BUF_48 (.Y(n48), .A(n47));
  CLKBUFX8 BUF_49 (.Y(n49), .A(n48));
  CLKBUFX8 BUF_50 (.Y(n50), .A(n49));
  CLKBUFX8 BUF_51 (.Y(n51), .A(n50));
  CLKBUFX8 BUF_52 (.Y(n52), .A(n51));
  CLKBUFX8 BUF_53 (.Y(n53), .A(n52));
  CLKBUFX8 BUF_54 (.Y(n54), .A(n53));
  CLKBUFX8 BUF_55 (.Y(n55), .A(n54));
  CLKBUFX8 BUF_56 (.Y(n56), .A(n55));
  CLKBUFX8 BUF_57 (.Y(n57), .A(n56));
  CLKBUFX8 BUF_58 (.Y(n58), .A(n57));
  CLKBUFX8 BUF_59 (.Y(n59), .A(n58));
  CLKBUFX8 BUF_60 (.Y(n60), .A(n59));
  CLKBUFX8 BUF_61 (.Y(n61), .A(n60));
  CLKBUFX8 BUF_62 (.Y(n62), .A(n61));
  CLKBUFX8 BUF_63 (.Y(n63), .A(n62));
  CLKBUFX8 BUF_64 (.Y(n64), .A(n63));
  CLKBUFX8 BUF_65 (.Y(n65), .A(n64));
  CLKBUFX8 BUF_66 (.Y(n66), .A(n65));
  CLKBUFX8 BUF_67 (.Y(n67), .A(n66));
  CLKBUFX8 BUF_68 (.Y(n68), .A(n67));
  CLKBUFX8 BUF_69 (.Y(n69), .A(n68));
  CLKBUFX8 BUF_70 (.Y(n70), .A(n69));
  CLKBUFX8 BUF_71 (.Y(n71), .A(n70));
  CLKBUFX8 BUF_72 (.Y(n72), .A(n71));
  CLKBUFX8 BUF_73 (.Y(n73), .A(n72));
  CLKBUFX8 BUF_74 (.Y(n74), .A(n73));
  CLKBUFX8 BUF_75 (.Y(n75), .A(n74));
  CLKBUFX8 BUF_76 (.Y(n76), .A(n75));
  CLKBUFX8 BUF_77 (.Y(n77), .A(n76));
////////////////////////////////////////////////////
  CLKBUFX2 path_select_1 (.Y(x1), .A(n77));  
  CLKBUFX2 path_select_2 (.Y(x2), .A(x1)); 
  CLKBUFX2 path_select_3 (.Y(x3), .A(x2));  
  CLKBUFX2 path_select_4 (.Y(x4), .A(x3));          
///////////////////////////////////////////////////// 
  CLKBUFX2 d_1 (.Y(lambda_1), .A(lambda[0])); 
  CLKBUFX8 d_2 (.Y(lambda_2), .A(lambda_1));  
  CLKBUFX8 d_3 (.Y(lambda_3), .A(lambda_2));  
  TBUFX2 TB1  (.Y(delay_out), .A(n77), .OE(lambda_3));
  TBUFX2 TB2  (.Y(y1), .A(x1), .OE(lambda[1]));
  TBUFX2 TB3  (.Y(y2), .A(x2), .OE(lambda[2]));
  TBUFX2 TB4  (.Y(y3), .A(x3), .OE(lambda[3]));
///////////////////////////////////////////////////////
  TBUFX2 TB5  (.Y(delay_out), .A(y1), .OE(lambda_bar[0]));
  TBUFX2 TB6  (.Y(y1), .A(y2), .OE(lambda_bar[1]));
  TBUFX2 TB7  (.Y(y2), .A(y3), .OE(lambda_bar[2]));
  TBUFX2 TB8  (.Y(y3), .A(x4), .OE(lambda_bar[3]));
  
endmodule
