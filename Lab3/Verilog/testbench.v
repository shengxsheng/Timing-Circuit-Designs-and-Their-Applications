`timescale 1ns/1ps
module testbench;

reg clk_ref;
reg rst_n_dco;
reg rst_n_pd;
reg rst_n_fd;
reg rst_n_control;
wire locked;
wire adj_peat;
wire clk_dco;

adpll u1(
	.rst_n_dco(rst_n_dco),
	.rst_n_control(rst_n_control),
	.rst_n_pd(rst_n_pd),
	.rst_n_fd(rst_n_fd),
	.clk_ref(clk_ref),
	.locked(locked),
	.clk_dco(clk_dco)
);

initial begin
    $sdf_annotate("./adpll_syn.sdf", u1);
	$fsdbDumpfile("../4.Simulation_Result/adpll_syn.fsdb");
	$fsdbDumpvars;
end



initial begin
    clk_ref = 0;
    forever begin
        #500 clk_ref = (~clk_ref);
    end
end

// rst_n
initial begin
    rst_n_dco = 0;
    rst_n_control = 0;
    rst_n_pd = 0;
    rst_n_fd = 0;
    #200
    rst_n_dco = 1;
    #200
    rst_n_fd = 1;
    #200
    rst_n_control = 1;
    #200
    rst_n_pd = 1;
    #200
    $display("finish");
    #300000 $finish;
end


endmodule
