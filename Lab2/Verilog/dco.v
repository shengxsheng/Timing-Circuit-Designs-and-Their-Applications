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
  CLKBUFX6 BUF_1 (.Y(n1), .A(delay_in));
  CLKBUFX6 BUF_2 (.Y(n2), .A(n1));
  CLKBUFX6 BUF_3 (.Y(n3), .A(n2));
  CLKBUFX6 BUF_4 (.Y(n4), .A(n3));
  CLKBUFX6 BUF_5 (.Y(n5), .A(n4));
  CLKBUFX6 BUF_6 (.Y(n6), .A(n5));
  CLKBUFX6 BUF_7 (.Y(n7), .A(n6));
  CLKBUFX6 BUF_8 (.Y(n8), .A(n7));
  CLKBUFX6 BUF_9 (.Y(n9), .A(n8));
  CLKBUFX6 BUF_10 (.Y(n10), .A(n9));
  CLKBUFX6 BUF_11 (.Y(n11), .A(n10));
  CLKBUFX6 BUF_12 (.Y(n12), .A(n11));
  CLKBUFX6 BUF_13 (.Y(n13), .A(n12));
  CLKBUFX6 BUF_14 (.Y(n14), .A(n13));
  CLKBUFX6 BUF_15 (.Y(n15), .A(n14));
  CLKBUFX6 BUF_16 (.Y(n16), .A(n15));
  CLKBUFX6 BUF_17 (.Y(n17), .A(n16));
  CLKBUFX6 BUF_18 (.Y(n18), .A(n17));
  CLKBUFX6 BUF_19 (.Y(n19), .A(n18));
  CLKBUFX6 BUF_20 (.Y(n20), .A(n19));
  CLKBUFX6 BUF_21 (.Y(n21), .A(n20));
  CLKBUFX6 BUF_22 (.Y(n22), .A(n21));
  CLKBUFX6 BUF_23 (.Y(n23), .A(n22));
  CLKBUFX6 BUF_24 (.Y(n24), .A(n23));
  CLKBUFX6 BUF_25 (.Y(n25), .A(n24));
  CLKBUFX6 BUF_26 (.Y(n26), .A(n25));
  CLKBUFX6 BUF_27 (.Y(n27), .A(n26));
  CLKBUFX6 BUF_28 (.Y(n28), .A(n27));
  CLKBUFX6 BUF_29 (.Y(n29), .A(n28));
  CLKBUFX6 BUF_30 (.Y(n30), .A(n29));
  CLKBUFX6 BUF_31 (.Y(n31), .A(n30));
  CLKBUFX6 BUF_32 (.Y(n32), .A(n31));
  CLKBUFX6 BUF_33 (.Y(n33), .A(n32));
  CLKBUFX6 BUF_34 (.Y(n34), .A(n33));
  CLKBUFX6 BUF_35 (.Y(n35), .A(n34));
  CLKBUFX6 BUF_36 (.Y(n36), .A(n35));
  CLKBUFX6 BUF_37 (.Y(n37), .A(n36));
  CLKBUFX6 BUF_38 (.Y(n38), .A(n37));
  CLKBUFX6 BUF_39 (.Y(n39), .A(n38));
  CLKBUFX6 BUF_40 (.Y(n40), .A(n39));
  CLKBUFX6 BUF_41 (.Y(n41), .A(n40));
  CLKBUFX6 BUF_42 (.Y(n42), .A(n41));
  CLKBUFX6 BUF_43 (.Y(n43), .A(n42));
  CLKBUFX6 BUF_44 (.Y(n44), .A(n43));
  CLKBUFX6 BUF_45 (.Y(n45), .A(n44));
  CLKBUFX6 BUF_46 (.Y(n46), .A(n45));
  CLKBUFX6 BUF_47 (.Y(n47), .A(n46));
  CLKBUFX6 BUF_48 (.Y(n48), .A(n47));
  CLKBUFX6 BUF_49 (.Y(n49), .A(n48));
  CLKBUFX6 BUF_50 (.Y(n50), .A(n49));
  CLKBUFX6 BUF_51 (.Y(n51), .A(n50));
  CLKBUFX6 BUF_52 (.Y(n52), .A(n51));
  CLKBUFX6 BUF_53 (.Y(n53), .A(n52));
  CLKBUFX6 BUF_54 (.Y(n54), .A(n53));
  CLKBUFX6 BUF_55 (.Y(n55), .A(n54));
  CLKBUFX6 BUF_56 (.Y(n56), .A(n55));
  CLKBUFX6 BUF_57 (.Y(n57), .A(n56));
  CLKBUFX6 BUF_58 (.Y(n58), .A(n57));
  CLKBUFX6 BUF_59 (.Y(n59), .A(n58));
  CLKBUFX6 BUF_60 (.Y(n60), .A(n59));
  CLKBUFX6 BUF_61 (.Y(n61), .A(n60));
  CLKBUFX6 BUF_62 (.Y(n62), .A(n61));
  CLKBUFX6 BUF_63 (.Y(n63), .A(n62));
  CLKBUFX6 BUF_64 (.Y(n64), .A(n63));
  CLKBUFX6 BUF_65 (.Y(n65), .A(n64));
  CLKBUFX6 BUF_66 (.Y(n66), .A(n65));
  CLKBUFX6 BUF_67 (.Y(n67), .A(n66));
  CLKBUFX6 BUF_68 (.Y(n68), .A(n67));
  CLKBUFX6 BUF_69 (.Y(n69), .A(n68));
  CLKBUFX6 BUF_70 (.Y(n70), .A(n69));
  CLKBUFX6 BUF_71 (.Y(n71), .A(n70));
  CLKBUFX6 BUF_72 (.Y(n72), .A(n71));
  CLKBUFX6 BUF_73 (.Y(n73), .A(n72));
  CLKBUFX6 BUF_74 (.Y(n74), .A(n73));
  CLKBUFX6 BUF_75 (.Y(n75), .A(n74));
////////////////////////////////////////////////////
  CLKBUFX2 path_select_1 (.Y(x1), .A(n75));  
  CLKBUFX2 path_select_2 (.Y(x2), .A(x1)); 
  CLKBUFX2 path_select_3 (.Y(x3), .A(x2));  
  CLKBUFX2 path_select_4 (.Y(x4), .A(x3));          
/////////////////////////////////////////////////////  
  TBUFX2 TB1  (.Y(delay_out), .A(n75), .OE(lambda[0]));
  TBUFX2 TB2  (.Y(y1), .A(x1), .OE(lambda[1]));
  TBUFX2 TB3  (.Y(y2), .A(x2), .OE(lambda[2]));
  TBUFX2 TB4  (.Y(y3), .A(x3), .OE(lambda[3]));
///////////////////////////////////////////////////////
  TBUFX2 TB5  (.Y(delay_out), .A(y1), .OE(lambda_bar[0]));
  TBUFX2 TB6  (.Y(y1), .A(y2), .OE(lambda_bar[1]));
  TBUFX2 TB7  (.Y(y2), .A(y3), .OE(lambda_bar[2]));
  TBUFX2 TB8  (.Y(y3), .A(x4), .OE(lambda_bar[3]));
  
endmodule
