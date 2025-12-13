//--> Q7. Equaliyt Operator.
module top;
	logic [5:0]a,b;
	logic c; 
	initial begin
		a=6'b101101;
		b=6'b101101;
		c=a==b;
		$display("---------------------------------------------------------------------");
		$display("\t Logical Equality(case-1) a:- %b || b:- %b ||c:- %b",a,b,c);
		a=6'b101101;
		b=6'b100111;
		c=a==b;
		$display("\t Logical Equality(case-2) a:- %b || b:- %b ||c:- %b",a,b,c);
		a=6'b10x1z1;
		b=6'b1011x1;
		c=a==b;
		$display("\t Logical Equality(case-3) a:- %b || b:- %b ||c:- %b",a,b,c);
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
	end
endmodule

/* Output:-
# Start time: 07:35:16 on Nov 04,2025
# ---------------------------------------------------------------------
# 	 Logical Equality(case-1) a:- 101101 || b:- 101101 ||c:- 1
# 	 Logical Equality(case-2) a:- 101101 || b:- 100111 ||c:- 0
# 	 Logical Equality(case-3) a:- 10x1z1 || b:- 1011x1 ||c:- x
# ---------------------------------------------------------------------
# 	 Case Equality(case-1) a:- 101101 || b:- 101101 ||c:- 1
# 	 Case Equality(case-2) a:- 101101 || b:- 110110 ||c:- 0
# 	 Case Equality(case-3) a:- 1x1x0z || b:- 1x1x0z ||c:- 1
# 	 Case Equality(case-4) a:- 10xz01 || b:- 101101 ||c:- 0
# ---------------------------------------------------------------------
*/
