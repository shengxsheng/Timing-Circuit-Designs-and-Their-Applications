`timescale 1ns / 1ps
module sa_tb;
// input reg
reg [9:0] target_y;
reg clk;
reg rst_n;
reg enable;
// output wire
wire [7:0] x;
    
sa sa_DUT(
    .target_y(target_y),
    .clk(clk),
    .rst_n(rst_n),
    .enable(enable),
    .done(done),
    .x(x)
);
// clk
initial begin
    clk = 0;
    forever begin
        #1 clk = (~clk);
    end
end

// rst_n
initial begin
    rst_n = 0;
    enable = 0;
    @(posedge clk); @(posedge clk);
    rst_n = 1;
    @(posedge clk); @(posedge clk);
    enable = 1;
    target_y = 550;
    wait(done);
    enable = 0;
    repeat(10)
    begin
    @(posedge clk);
    end
    enable = 1;
    target_y = 800;
    wait(done);
    enable = 0;
    $display("finish");
    #150 $finish;
end

// wave
initial begin
    // Set the name of the VCD (Value Change Dump) file
    $fsdbDumpfile("/home/m112/m112061533/timing/simulation_result/sa.fsdb");
    // Set the recorded signal 
    $fsdbDumpvars;
end

endmodule
