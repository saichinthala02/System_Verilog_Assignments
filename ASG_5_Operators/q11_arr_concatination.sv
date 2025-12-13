//--> Q11. Array Concatination .
module top;
	int a[10],b[10],c[20];
	initial begin
		for(int i=0;i<10;i++)begin
			a[i]=$urandom_range(50,90);
			b[i]=$urandom_range(50,90);
		end
		$display("Array-1:- %p",a);
		$display("Array-2:- %p",b);
		c={a,b};
		$display("Concationated Array:- %p",c);
	end
endmodule

/* Output:-
# Start time: 17:27:18 on Nov 04,2025
# Array-1:- '{69, 74, 72, 59, 83, 52, 58, 63, 69, 52}
# Array-2:- '{58, 66, 53, 70, 86, 65, 68, 70, 57, 60}
# Concationated Array:- '{69, 74, 72, 59, 83, 52, 58, 63, 69, 52, 58, 66, 53, 70, 86, 65, 68, 70, 57, 60}
*/
