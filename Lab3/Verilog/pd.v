`timescale 1ns/1ps
module pd (ref_clk, div_clk, lead_lag, enable);

input ref_clk;
input div_clk;
input enable;
output lead_lag;

wire up, down;
wire up_tmp, down_tmp;
wire nand_out;
wire reset_n;
wire n_12, n13, n15;
wire n15_tmp;
wire lead_lag_tmp;
wire nand_out_dummy;

DFFRQXL u1 (.D(1'b1), .CK(div_clk), .RN(reset_n), .Q(up_tmp));
DFFRQXL u2 (.D(1'b1), .CK(ref_clk), .RN(reset_n), .Q(down_tmp));
CLKBUFX4 u3 (.Y(up), .A(up_tmp));
CLKBUFX4 u4 (.Y(down), .A(down_tmp));

NAND2X1 u5 (.Y(nand_out), .A(up), .B(down));
NAND2X1 u6 (.Y(nand_out_dummy), .A(down), .B(up));
AND2X1  u7 (.Y(reset_n), .A(nand_out), .B(enable));

NAND2X1 na_1 (.Y(n13), .A(up), .B(n12));
NAND2X1 na_2 (.Y(n12), .A(n13), .B(down));
NAND2X1 na_3 (.Y(lead_lag_tmp), .A(n13), .B(n15_tmp));
NAND2X1 na_4 (.Y(n15_tmp), .A(n12), .B(lead_lag_tmp));
CLKBUFX4 na_5 (.Y(lead_lag), .A(lead_lag_tmp));
CLKBUFX4 ua_6 (.Y(n15), .A(n15_tmp));

endmodule
