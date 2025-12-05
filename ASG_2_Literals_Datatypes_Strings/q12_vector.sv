module top;
	reg [7:0]a;
	bit [7:0]b;
	logic [7:0]c;
	initial begin
		a=-35;
		b=-35;
		c=-35;
		$display("Reg Vector :- %0d || %b",a,a);
		$display("Bit Vector :- %0d || %b",b,b);
		$display("Logic Vector :- %0d || %b",c,c);
	end
endmodule

/* Output:-
  ;l,m,# Start time: 21:38:22 on Oct 28,2025
# Reg Vector :- 221 || 11011101
# Bit Vector :- 221 || 11011101
# Logic Vector :- 221 || 11011101
*/
