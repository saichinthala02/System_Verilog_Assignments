module top;
	byte b;
	bit [7:0]c;
	initial begin
		c=-10;
		$display("c=%0d | c=%b",c,c);
		b=c;
		$display("b=%0d | b=%b",b,b);
		b=byte'(c);
		$display("b=%0d | b=%b",b,b);
	end
endmodule

//# c=246 | c=11110110
//# b=-10 | b=11110110
//# b=-10 | b=11110110
