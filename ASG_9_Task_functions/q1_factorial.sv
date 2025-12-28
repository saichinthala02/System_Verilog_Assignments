//--> Factorial.
module top;
	parameter NUM=5;
	int f;
	function automatic int fact(input int a);
		if(a>=2) return a*fact(a-1);
		else return 1;
	endfunction
	initial begin
		f=fact(NUM);
		$display("The factorial of %0d is %0d",NUM,f);
	end
endmodule
