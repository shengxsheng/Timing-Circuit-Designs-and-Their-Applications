`timescale 1ns / 1ps
module dco_tb;


    reg en;
    reg [6:0] alpha;
    wire clk_out;
    
    
    dco B1(
    .en(en),
    .alpha(alpha),
    .clk_out(clk_out)
    );

initial begin
    $sdf_annotate("./dco_syn.sdf", B1);
	$fsdbDumpfile("../4.Simulation_Result/dco_syn.fsdb");
	$fsdbDumpvars;
end


    
    initial begin
        en =0;
        alpha = 0;
        #100;
        en =1;
        #100;
        alpha = 1;
        #100 
        alpha = 2;
	#100 
        alpha = 3;
	#100 
        alpha = 4;
	#100
	alpha = 3;
        #100 
        alpha = 2;
	#100 
        alpha = 1;
        #500 $finish;
    end
    
    
    

endmodule
