`timescale 1ns/100ps
module tb;

//input
reg clk;
reg rst;
reg[15:0] a1,a2,a3,a4,b1,b2,b3,b4;
wire[31:0] c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16;

//unit under test
top uut(
.clk(clk),
.rst(rst),
.a1(a1),
.a2(a2),
.a3(a3),
.a4(a4),
.b1(b1),
.b2(b2),
.b3(b3),
.b4(b4),
.c1(c1),
.c2(c2),
.c3(c3),
.c4(c4),
.c5(c5),
.c6(c6),
.c7(c7),
.c8(c8),
.c9(c9),
.c10(c10),
.c11(c11),
.c12(c12),
.c13(c13),
.c14(c14),
.c15(c15),
.c16(c16)
);

initial begin
	rst = 0;
	#50 rst = 1;
end

initial begin
//clock cycle = 50ns
	clk = 0;
	forever #25 clk = ~clk;
end

initial begin
	a1 = 0;
	a2 = 0;
	a3 = 0;
	a4 = 0;
	b1 = 0;
	b2 = 0;
	b3 = 0;
	b4 = 0;
	#50		a1 = 16'h011c; a2 = 16'h0000; a3 = 16'h0000; a4 = 16'h0000; b1 = 16'h011c; b2 = 16'h0000; b3 = 16'h0000; b4 = 16'h0000;
	#50		a1 = 16'h0239; a2 = 16'h058e; a3 = 16'h0000; a4 = 16'h0000; b1 = 16'h011c; b2 = 16'h011c; b3 = 16'h0000; b4 = 16'h0000;
	#50		a1 = 16'h0355; a2 = 16'h06aa; a3 = 16'h011c; a4 = 16'h0000; b1 = 16'h011c; b2 = 16'h011c; b3 = 16'h011c; b4 = 16'h0000;
	#50		a1 = 16'h0472; a2 = 16'h07c7; a3 = 16'h0239; a4 = 16'h058e; b1 = 16'h011c; b2 = 16'h011c; b3 = 16'h011c; b4 = 16'h011c;
	#50		a1 = 16'h0000; a2 = 16'h08e3; a3 = 16'h0355; a4 = 16'h06aa; b1 = 16'h0000; b2 = 16'h011c; b3 = 16'h011c; b4 = 16'h011c;
	#50		a1 = 16'h0000; a2 = 16'h0000; a3 = 16'h0472; a4 = 16'h07c7; b1 = 16'h0000; b2 = 16'h0000; b3 = 16'h011c; b4 = 16'h011c;
	#50		a1 = 16'h0000; a2 = 16'h0000; a3 = 16'h0000; a4 = 16'h08e3; b1 = 16'h0000; b2 = 16'h0000; b3 = 16'h0000; b4 = 16'h011c;
	#50		a1 = 16'h0000; a2 = 16'h0000; a3 = 16'h0000; a4 = 16'h0000; b1 = 16'h0000; b2 = 16'h0000; b3 = 16'h0000; b4 = 16'h0000;
end
endmodule
	

