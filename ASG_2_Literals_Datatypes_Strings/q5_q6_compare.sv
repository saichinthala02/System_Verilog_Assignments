//--> Q5. Implement a compare function with compare output argument.
module top;
	bit flag;
	function bit compare(input int a,b, output bit flag);
		if(a>=b) flag=1;
		else flag=0;
		return 0;
	endfunction
	initial begin
		compare(100,22,flag);
		$display("The value of flag id %b",flag);
	end
endmodule

/* Output:-
# Start time: 22:39:28 on Oct 27,2025
# Loading sv_std.std
# Loading work.top
# The value of flag id 1
*/


//--> Q6.Implement the above compare function with output returned as function return value.
module top1;
	integer arr1[4:0],arr2[4:0],arr3[4:0];
	bit flag;
	function bit compare(input int a,b);
		if(a>=b)return 1;
		else return 0;
	endfunction
	initial begin
		for(int i=0;i<5;i++)begin
			arr1[i]=$urandom_range(25,200);
			arr2[i]=$urandom_range(25,200);
			arr3[i]=compare(arr1[i],arr2[i]);
		end
		$display("%p",arr1);
		$display("%p",arr2);
		$display("%p",arr3);
	end
endmodule

/* Output:-
# '{64, 171, 63, 143, 65}
# '{83, 167, 111, 127, 79}
# '{0, 1, 0, 1, 0}
*/
