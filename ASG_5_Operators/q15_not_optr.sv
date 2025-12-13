//--> Q15. Diff b/w ~ and !
module top;
	logic [4:0]a;
	logic [4:0]b;
	logic [4:0]c;
	logic d,e;
	initial begin
		a=5'b00000;
		b=5'b10111;
		$display("a:- %b || b:- %b",a,b);
		c=~a;
		$display("bitwise ~ --> c:- %b",c);
		d=!(a&&b);
		$display("logical ! --> d:- %b",d);
		e=!a;
		$display("e=%b",e);
	end
endmodule

/* Output:-
# Start time: 19:11:40 on Nov 04,2025
# a:- 10011 || b:- 10111
# bitwise ~ --> c:- 01100
# logical ! --> d:- 0
# e=1
*/
