//--> Q8. Wild card Equality Operator.
module top;
logic [5:0]a,b;
	logic c; 
	initial begin

		$display("---------------------------------------------------------------------");
		a=6'b101101;
		b=6'b101101;
		c=a===b;
		$display("\t Case Equality(case-1) a:- %b || b:- %b ||c:- %b",a,b,c);
		a=6'b101101;
		b=6'b110110;
		c=a===b;
		$display("\t Case Equality(case-2) a:- %b || b:- %b ||c:- %b",a,b,c);
		a=6'b1x1x0z;
		b=6'b1x1x0z;
		c=a===b;
		$display("\t Case Equality(case-3) a:- %b || b:- %b ||c:- %b",a,b,c);
		a=6'b10xz01;
		b=6'b101101;
		c=a===b;
		$display("\t Case Equality(case-4) a:- %b || b:- %b ||c:- %b",a,b,c);
		$display("---------------------------------------------------------------------");
		$display("---------------------------------------------------------------------");
		a=6'b101101;
		b=6'b101101;
		c=a==?b;
		$display("\t Wild card Equality(case-1) a:- %b || b:- %b ||c:- %b",a,b,c);
		a=6'b101101;
		b=6'b110110;
		c=a==?b;
		$display("\t Wild card Equality(case-2) a:- %b || b:- %b ||c:- %b",a,b,c);
		a=6'b1x1x0z;
		b=6'b1x1x0z;
		c=a==?b;
		$display("\t Wild card Equality(case-3) a:- %b || b:- %b ||c:- %b",a,b,c);
		a=6'b10xz01;
		b=6'b101101;
		c=a==?b;
		$display("\t Wild card Equality(case-4) a:- %b || b:- %b ||c:- %b",a,b,c);
		a=6'b101001;
		b=6'b10zx01;
		c=a==?b;
		$display("\t Wild card Equality(case-5) a:- %b || b:- %b ||c:- %b",a,b,c);
		$display("---------------------------------------------------------------------");		
	end	
endmodule
/* Output:-
# Start time: 07:48:23 on Nov 04,2025
# ---------------------------------------------------------------------
# 	 Case Equality(case-1) a:- 101101 || b:- 101101 ||c:- 1
# 	 Case Equality(case-2) a:- 101101 || b:- 110110 ||c:- 0
# 	 Case Equality(case-3) a:- 1x1x0z || b:- 1x1x0z ||c:- 1
# 	 Case Equality(case-4) a:- 10xz01 || b:- 101101 ||c:- 0
# ---------------------------------------------------------------------
# ---------------------------------------------------------------------
# 	 Wild card Equality(case-1) a:- 101101 || b:- 101101 ||c:- 1
# 	 Wild card Equality(case-2) a:- 101101 || b:- 110110 ||c:- 0
# 	 Wild card Equality(case-3) a:- 1x1x0z || b:- 1x1x0z ||c:- 1
# 	 Wild card Equality(case-4) a:- 10xz01 || b:- 101101 ||c:- x
# 	 Wild card Equality(case-5) a:- 101001 || b:- 10zx01 ||c:- 1
# ---------------------------------------------------------------------
*/
