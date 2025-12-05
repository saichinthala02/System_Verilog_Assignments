module top;
	bit [4:0]c;
	logic [4:0]d;
	initial begin
		c=5'b01x0z;
		$display("%b",c);
		d=5'b01x0z;
		$display("%b",d);
	end
endmodule

//# 01000
//# 01x0z

