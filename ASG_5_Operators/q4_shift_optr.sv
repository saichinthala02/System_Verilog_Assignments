//--> Q4. Write an example to show the difference between >>= and >>>= Operators.
module top;
	byte a,b;
	initial begin
		a=-35;b=-35;
		$display("The Value of a:- %0d || b:- %0d",a,b);
		$display("The Value of a:- %b  || b:- %b",a,b);
		a>>=1;
		$display("The Value of a after right shift:- %b",a);
		b>>>=3;
		$display("The Value of b after signed right sift:- %b",b);
	end
endmodule

/* Output:-
# Start time: 06:45:12 on Nov 04,2025
# The Value of a:- -35 || b:- -35
# The Value of a:- 11011101  || b:- 11011101
# The Value of a after right shift:- 01101110
# The Value of b after signed right sift:- 11111011
*/
