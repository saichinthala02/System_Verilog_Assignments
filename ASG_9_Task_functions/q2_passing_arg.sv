//--> Argument pass by reference.
/*
--> In Pass by Reference, the reference of the original argument is passed to the subroutine.
--> If there is any change in the argument in subroutine it will update the original argument.
--> To indicate argument pass by reference, the argument declaration is preceded by keyword ref.
--> The task or function 'add' with ref arguments must be automatic.
*/

module top_ref;
	int a,b,c;
	function automatic int add(ref int a,b);
		a=a+10;
		return a+b;
	endfunction
	initial begin
		a=10;b=12;
		$display("a value before passing a=%0d",a);
		$display("b value before passing a=%0d",b);
		$display("----------------------------------------------------");
		c=add(a,b);
		$display("a value after passing a=%0d",a);
		$display("b value after passing b=%0d",b);
		$display("Sum= %0d",c);

	end
endmodule
/* Output:-
# Start time: 17:12:24 on Nov 14,2025
# a value before passing a=10
# b value before passing a=12
# ----------------------------------------------------
# a value after passing a=20
# b value after passing b=12
# Sum= 32
*/


//--> Arguments pass by Value.
/*
In argument pass by value,
---> here the copy of original argument is passed to the subroutine area.
---> if any changes to arguments within the subroutine, those changes will not be visible outside the subroutine.
*/

module top_val;
	int a,b,c;
	function int add(input int a,b);
		a=a+10;
		return a+b;
	endfunction
	initial begin
		a=10;
		b=5;
		c=add(a,b);
		$display("The value are a=%0d, b=%0d, Sum=%0d",a,b,c);
	end
endmodule

/* Output:-
# Start time: 17:14:11 on Nov 14,2025
# The value are a=10, b=5, Sum=25
*/
