module top;
	integer a,b;
	initial begin
		a=$urandom_range(10,20);
		b=$urandom_range(10,20);
		$display("The values are a=%0d, b=%0d",a,b);
		if(a==b) $display("Both are Equal");
		else $display("Both are not Equal");

		assert (a == b) $display("PASS: a == b");
        else $error("FAIL: a=%0d, b=%0d", a, b);
	end
endmodule

/* Output:-
# Start time: 21:30:22 on Oct 28,2025
# Loading sv_std.std
# Loading work.top
# The values are a=17, b=20
# Both are not Equal
# ** Error: FAIL: a=17, b=20
#    Time: 0 ps  Scope: top File: q11_assert.sv Line: 11
*/
