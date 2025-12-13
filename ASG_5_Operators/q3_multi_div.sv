//--> Write a simple way to multiply and division by 4.
module top;
	parameter NUM = 16;	
	integer product,quotient;
	initial begin
		product=NUM<<2;
		quotient=NUM>>2;
		$display("Product of %0d*4 is %0d",NUM,product);
		$display("Quotient of %0d/4 is %0d",NUM,quotient);
	end
endmodule

/* Output:-
# Start time: 17:37:06 on Nov 03,2025
# Product of 16*4 is 64
# Quotient of 16/4 is 4
*/
