module top;
	integer intDA[];
	integer intQ[$];
	initial begin
		intDA=new[10];
		for(int i=0;i<10;i++)begin
			intDA[i]=$urandom_range(10,33);
		end
		intQ=intDA;
		$display("Dynamic Array: %p",intDA);
	//	$display("Queue: %p",intQ);
		intQ.reverse();
		intDA=intQ;
		$display("Reversed Dynamic Array: %p",intDA);
	end
endmodule

/* Output:-
# Start time: 23:33:33 on Oct 30,2025
# Dynamic Array: '{10, 32, 32, 24, 32, 32, 20, 32, 33, 20}
# Reversed Dynamic Array: '{20, 33, 32, 20, 32, 32, 24, 32, 32, 10}
*/
