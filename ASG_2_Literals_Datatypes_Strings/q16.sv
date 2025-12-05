//--> Diff b/w integer and int.
module top;
	integer a;
	int b;
	initial begin
		a=6'b01xzz1;
		b=6'b01xzz1;
		$display("--------------------------");
		$display("The value of a=%0b",a);
		$display("The value of b=%0b",b);
		$display("--------------------------");
		a=$urandom_range(-70,-50);
		b=$urandom_range(-70,-50);
		$display("------------------------------------------");
		$display("The value of a=%0b || a=%0d",a,a);
		$display("The value of b=%0b || b=%0d",b,b);
		$display("------------------------------------------");
	end
endmodule
/* Output:-
# Start time: 21:57:00 on Oct 28,2025
# --------------------------
# The value of a=1xzz1
# The value of b=10001
# --------------------------
# ------------------------------------------
# The value of a=11111111111111111111111111000110 || a=-58
# The value of b=11111111111111111111111111000001 || b=-63
*/
