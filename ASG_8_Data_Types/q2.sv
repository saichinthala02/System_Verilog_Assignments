module top;
	shortint a;
	int b;
	longint c;
	
	shortint unsigned d;
	int unsigned e;
	longint unsigned f;

	bit [4:0]g;
	logic [4:0]h;
	initial begin
		a=-26;
		b=5252;
		c=47524;
		d=-26;
		e=9655;
		f=792;
		g=5'b01xx0;
		h=5'b01xx0;
		$display("a=%0d, a=%b",a,a);
		$display("b=%0d, b=%b",b,b);
		$display("c=%0d, c=%b",c,c);
		$display("d=%0d, d=%b",d,d);
		$display("e=%0d, e=%b",e,e);
		$display("f=%0d, f=%b",f,f);
		$display("g=%b",g);
		$# g=01000
# h=01xx0("h=%b",h);
	end
endmodule

//# a=-26, a=1111111111100110
//# b=5252, b=00000000000000000001010010000100
//# c=47524, c=0000000000000000000000000000000000000000000000001011100110100100
//# d=65510, d=1111111111100110
//# e=9655, e=00000000000000000010010110110111
//# f=792, f=0000000000000000000000000000000000000000000000000000001100011000
//# g=01000
//# h=01xx0

