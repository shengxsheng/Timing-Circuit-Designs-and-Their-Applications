`timescale 1ns/1ps
module control (lock, lead_lag, alpha, rst_n, clk);

input wire lead_lag;
input wire rst_n;
input wire clk;
output reg lock;
output reg [6:0] alpha;

reg curr_flag;
reg next_flag;
reg [2:0] cnt;
reg [2:0] peat;
reg [5:0] peat_number;
reg [15:0] adj_peat;
reg lead_lag_tmp;


always@(posedge clk or negedge rst_n) begin
	if (~rst_n) begin
		alpha <= 0;
		curr_flag <= 0;
		next_flag <= 0;
		cnt <= 0;
	end
	else begin
		if (lead_lag == 1 && alpha < 4 && peat == peat_number) begin
					next_flag <= curr_flag;
					alpha <= alpha + 1'd1;
					curr_flag <= 1;
					if (next_flag != curr_flag) cnt <= cnt + 1'd1;
		 			else cnt <= 0;
		end
		else if (lead_lag == 0 && alpha > 1 && peat == peat_number) begin
					next_flag <= curr_flag;
					alpha <= alpha - 1'd1;
					curr_flag <= 0;
					if (next_flag != curr_flag) cnt <= cnt + 1'd1;
		 			else cnt <= 0;
		end
	end
end

always@(posedge clk or negedge rst_n) begin
	if (~rst_n) begin
		lead_lag_tmp <= 0;
		peat <= 0;
	end
	else begin
		lead_lag_tmp <= lead_lag;
		if (peat == peat_number) peat <= 0;
		else begin
			if ((lead_lag==1) && (lead_lag_tmp==1)) peat <= peat+1'd1; 
			else if ((lead_lag==0) && (lead_lag_tmp==0)) peat <= peat+1'd1;
			else peat<=0;
		end

	end
end

always@(posedge clk or negedge rst_n) begin
	if (~rst_n) begin
		adj_peat <= 0;
		peat_number <= 6'd3;
	end
	else begin
		if (peat == peat_number) begin
			adj_peat <= adj_peat + 1'd1;
			if (adj_peat <= 6'd45 || lock == 1) 
				peat_number <= 6'd3;
			else peat_number <= 6'd4;
		end
	end
end

always@(posedge clk or negedge rst_n) begin
	if (~rst_n) begin
		lock <= 0;
	end
	else begin
		if (cnt == 3'd7) lock <= 1;
	end
end


endmodule

