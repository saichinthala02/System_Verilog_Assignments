module top;
	typedef enum bit[3:0]nibble;
	nibble a;
	initial begin
		a=4'b1010;
		$display("a=%b",a);
	end
endmodule

//a=1010
