`timescale 1ns/1ps
module fd (i_clk, rst_n, o_clk);

input i_clk;
input rst_n;
output reg o_clk;
reg [5:0] cnt;

always@(posedge i_clk or negedge rst_n) begin
	if (~rst_n) cnt <= 0;
	else if (cnt == 45) cnt <= 0; 
	else cnt <= cnt+1;
end

always@(posedge i_clk or negedge rst_n) begin
	if (~rst_n) o_clk <= 1;
	else if (cnt == 45) o_clk <= ~o_clk;
end

endmodule
