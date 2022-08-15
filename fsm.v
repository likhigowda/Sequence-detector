`timescale 1ns / 1ps

module fsm(clk, rst, x, y);

input clk, rst, x;
output y;

wire xb, w1, w2, w3, w4, w5, qa, qab, qb, qbb;

dff u7(clk, rst, w3, qa, qab);
dff u8(clk, rst, w5, qb, qbb);
not u1(xb, x);
and u2(w1, qab, qb, xb);
and u3(w2, qa, qbb, xb);
or u4(w3, w1, w2);
or u5(w5, x, w4);
and u6(w4, qa, qbb);
and u9(y, qa, x, qb);


endmodule
