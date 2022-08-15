`timescale 1ns / 1ps

module dff(clk, rst, d, q, qb);
input clk;
input rst;
input d;
output q;
output qb;

reg q;
reg qb;

always @(posedge clk)
begin
	if(rst)
	begin
		q <= 1'b0;
		qb <= 1'b1;
	end
	
	else
	begin
		q <= d;
		qb <= ~d;
	end
	
end

endmodule
