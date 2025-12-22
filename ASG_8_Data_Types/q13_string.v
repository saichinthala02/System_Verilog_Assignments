module top;
	reg[8*4:0] str;
	initial begin
		str="vlsi";
		$display("String:- %0s",str);
	end
endmodule

//# String:- vlsi
