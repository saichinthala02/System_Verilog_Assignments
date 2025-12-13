//--> Q5.
//--> "On an unsigned variable even if we do signed or unsigned shift, result is same."
module top;
	bit [7:0] bitVec;
	bit [7:0]bitVec1;
	initial begin
		bitVec = 255;
		$display("The Value of bitVec:- %b",bitVec);
		bitVec1=bitVec>>2;
		$display("The Value of bitVec1 after unsined shift:- %b",bitVec1);

		bitVec1=bitVec>>>2;
		$display("The Value of bitVec1 after sined shift:- %b",bitVec1);
	end
endmodule

/* Output:-
# Start time: 06:55:04 on Nov 04,2025
# The Value of bitVec:- 11111111
# The Value of bitVec1 after unsined shift:- 00111111
# The Value of bitVec1 after sined shift:- 00111111
*/
