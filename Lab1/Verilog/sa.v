`timescale 1ns / 1ps
module sa(
    input wire [9:0] target_y,
    input wire clk,
    input wire rst_n,
    input wire enable,
    output reg done,
    output reg [7:0] x   
);


reg [2:0] curr_state;
reg [2:0] next_state;
reg [3:0] count;
reg [7:0] x_temp;
reg [13:0] target_y_comp;
reg [13:0] target_y_range;

parameter IDLE   = 0;
parameter CALC   = 1;
parameter UPDATE = 2;
parameter COMP   = 3;
parameter FINISH = 4;


always @(*)begin
	case(curr_state)
		IDLE:   next_state=(enable)?CALC:IDLE;
		CALC:   next_state=UPDATE;
		UPDATE: next_state=(count>7)?COMP:CALC;
		COMP:   next_state=FINISH;
		FINISH: next_state=IDLE;
		default:next_state=IDLE;
	endcase
end

always@(posedge clk)
begin
	if (!rst_n) curr_state <= IDLE;
	else begin
		curr_state <= next_state;
		case(curr_state)
			IDLE:
			begin
				x      <= 8'd128;
				x_temp <= 8'd64;
				count  <= 0;
				target_y_range <= target_y * 10'd10;
				target_y_comp  <= 14'd6072;
				done   <= 1'd0;
			end

			CALC:
			begin
				count <= count + 1;
				if (target_y_range > target_y_comp)  x <= x + x_temp;
	  	    		else                                 x <= x - x_temp;
			end
			
			UPDATE:
			begin
				target_y_range <= target_y * 10'd10;
				target_y_comp  <= 5'd24 * x + 12'd3000;
				if (count >= 4'd7) x_temp <= 1;
				else x_temp <= x_temp>>1;

			end

			COMP:
			begin
				if((target_y_range > target_y_comp)&&(target_y_range - target_y_comp>14'd12))  x <= x-1;
        			else if((target_y_range<target_y_comp)&&(target_y_comp-target_y_range>14'd12)) x <= x+1;  
			end


			FINISH:
			begin
				done       <= 1'b1;
			end
    		endcase
	end
end
endmodule

