`timescale 1ns/1ps
`include "control.v"
`include "dco.v"
`include "fd.v"
`include "pd.v"
module adpll (clk_ref, rst_n_dco, rst_n_control, rst_n_fd, rst_n_pd, locked, clk_dco);

input clk_ref;
input rst_n_dco;
input rst_n_control;
input rst_n_fd;
input rst_n_pd;
output locked;
output clk_dco;

wire clk_dco;
wire [6:0] alpha;
wire lead_lag;
wire clk_div;

pd u_1 (
	.ref_clk(clk_ref),
	.div_clk(clk_div),
	.lead_lag(lead_lag),
	.enable(rst_n_pd));

control u_2 (
	.lock(locked),
	.lead_lag(lead_lag),
	.alpha(alpha),
	.rst_n(rst_n_control),
	.clk(clk_ref));

dco u_3 (
	.en(rst_n_dco),
	.alpha(alpha),
	.clk_out(clk_dco));

fd u_4 (
	.i_clk(clk_dco),
	.rst_n(rst_n_fd),
	.o_clk(clk_div));

endmodule
