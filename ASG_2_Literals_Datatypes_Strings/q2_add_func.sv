module top;
	integer p,q,r;

	function int add(input integer a,b);
		return a+b; 
	endfunction

	initial begin
		p=10;
		q=20;
		r=add(p,q);
		$display("The sum of %0d and %0d is %0d",p,q,r);
	end
endmodule

/* Output:-
# Start time: 22:05:03 on Oct 27,2025
# Loading sv_std.std
# Loading work.top
# The sum of 10 and 20 is 30
*/
