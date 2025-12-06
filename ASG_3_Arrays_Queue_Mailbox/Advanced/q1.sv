module top;
	integer q[$];
	integer dA[];
	initial begin
		dA=new[10];
		for(int i=0;i<10;i++)begin
			dA[i]=$urandom_range(50,100);
			q[i]=dA[i];
		end
		$display("Dynamic-Array(dA)= %p",dA);
		$display("Queue(q)= %p",q);
	end
endmodule

/* Output:-
# Start time: 23:02:57 on Oct 30,2025
# Dynamic-Array(dA)= '{59, 87, 99, 67, 96, 51, 90, 51, 67, 72}
# Queue(q)= '{59, 87, 99, 67, 96, 51, 90, 51, 67, 72}
*/

