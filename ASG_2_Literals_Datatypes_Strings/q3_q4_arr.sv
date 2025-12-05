//--> Q3
module top;
	integer arr1[4:0],arr2[4:0],arr3[4:0];
	function int add(input integer a,b, output integer sum);
		 sum = a+b;
		 return 1;
	endfunction

	initial begin
		for(int i=0;i<5;i++)begin
			arr1[i]=$urandom_range(10,100);
			arr2[i]=$urandom_range(50,200);
			void'(add(arr1[i],arr2[i],arr3[i]));
		end
		$display("%p",arr1);
		$display("%p",arr2);
		$display("%p",arr3);
	end
endmodule

/* Output:-
# Start time: 22:16:41 on Oct 27,2025
# Loading sv_std.std
# Loading work.top
# '{87, 87, 13, 62, 99}
# '{79, 116, 67, 195, 70}
# '{166, 203, 80, 257, 169}
*/


//--> Q4
module top1;
	integer arr1[4:0],arr2[4:0],arr3[4:0];
	function int add(input integer a,b);
		 return a+b;
	endfunction

	initial begin
		for(int i=0;i<5;i++)begin
			arr1[i]=$urandom_range(5,100);
			arr2[i]=$urandom_range(25,200);
			arr3[i]=add(arr1[i],arr2[i]);
		end
		$display("%p",arr1);
		$display("%p",arr2);
		$display("%p",arr3);
	end
endmodule

/* Output:-
# Start time: 22:20:53 on Oct 27,2025
# Loading sv_std.std
# Loading work.top1
# '{76, 87, 75, 75, 29}
# '{83, 167, 111, 127, 79}
# '{159, 254, 186, 202, 108}
*/
