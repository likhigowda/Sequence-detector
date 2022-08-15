`timescale 1ns / 1ps

module fsm_test_v;

// Inputs
reg clk;
reg rst;
reg x;

// Outputs
wire y;

fsm uut(clk, rst, x, y);

initial
begin
	clk = 1'b0;
	rst = 1'b1;
	x = 1'b1;
	
	#10 rst = 1'b0;
	#10 x = 1'b0;
	#10 x = 1'b1;
	#10 x = 1'b1;
	#10 x = 1'b0;
	#10 x = 1'b0;
	#10 x = 1'b1;
	#10 x = 1'b0;
	#10 x = 1'b0;
	#10 x = 1'b1;
	#10 x = 1'b0;
	#10 x = 1'b0;
	#20 $finish;
	
end

always #5 clk = ~clk;
	
endmodule

