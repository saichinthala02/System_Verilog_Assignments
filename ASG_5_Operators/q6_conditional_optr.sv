//--> Q6. Conditional Operator.
module top;
	integer a,b,c,d,e,f,g,h,i,j,k,l;
	initial begin
		b=20;c=24;d=45;e=15;f=86;g=20;h=41;i=52;j=20;k=123;l=741;
		a=(b==c)?d:(e==60)?g:(h==40)?i:(j==b)?k:l;
		$display("----------------------------------------------------------------");
		$display("\t--> Value of a:- %0d",a);
		$display("----------------------------------------------------------------");
		$display("\t----> Checking Using Assert <----");
		assert (a==123) $display("\t\tExpected Value is correct");
		else $error("\t\tYour Expected Value Should be 123");
		$display("----------------------------------------------------------------");
	end
endmodule
/* Output-1:-
# Start time: 07:16:08 on Nov 04,2025
# ----------------------------------------------------------------
# 	--> Value of a:- 741
# ----------------------------------------------------------------
# 	----> Checking Using Assert <----
# ** Error: 		Your Expected Value Should be 123
#    Time: 0 ps  Scope: top File: q6_conditional_optr.sv Line: 12
# ----------------------------------------------------------------
*/
/*Output-2:-
# Start time: 07:17:13 on Nov 04,2025
# ----------------------------------------------------------------
# 	--> Value of a:- 123
# ----------------------------------------------------------------
# 	----> Checking Using Assert <----
# 		Expected Value is correct
# ----------------------------------------------------------------
*
