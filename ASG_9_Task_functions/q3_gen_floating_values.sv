module top;
	real a;
	function void float(output real a);
		a=$urandom_range(100,200)/100.0;
	endfunction
	initial begin
		repeat(10)begin
			void'(float(a));
			$display("a=%0.2f",a);
		end
	end
endmodule

/* Output:-
# Start time: 17:26:48 on Nov 14,2025
# a=1.02
# a=1.88
# a=1.02
# a=1.67
# a=1.45
# a=1.82
# a=1.17
# a=1.27
# a=1.68
# a=1.30
*/
