module top;
	integer intQ[$:9];
	integer intArr[10];
	initial begin
		for(int i=0;i<10;i++)begin
			intQ[i]=$urandom_range(10,20);//'{10,20,30,40,50,60,70,80,90,100};
			intArr[i]=$urandom_range(10,20);//'{10,20,30,40,50,60,70,80,90,100};
		end
		$display("Queue(intQ):- %p",intQ);
		$display("Array(intArr):- %p",intArr);
		if(intQ==intArr) $display("Both Queue and Array are same.");
		else $display("Both Queue and Array are not same.");

		//--> Copy Queue to Array.
		intArr=intQ;
		$display("After Copyinq queue to Array(intArr):- %p",intArr);


	end
endmodule

/* Output:-
# Start time: 23:43:09 on Oct 30,2025
# Queue(intQ):- '{17, 18, 15, 13, 16, 19, 14, 20, 15, 15}
# Array(intArr):- '{20, 13, 19, 20, 13, 13, 12, 20, 12, 13}
# Both Queue and Array are not same.
------------------------------------------------------------------
# Queue(intQ):- '{10, 20, 30, 40, 50, 60, 70, 80, 90, 100}
# Array(intArr):- '{10, 20, 30, 40, 50, 60, 70, 80, 90, 100}
# Both Queue and Array are same.
------------------------------------------------------------------
# Queue(intQ):- '{17, 18, 15, 13, 16, 19, 14, 20, 15, 15}
# Array(intArr):- '{20, 13, 19, 20, 13, 13, 12, 20, 12, 13}
# Both Queue and Array are not same.
# After Copyinq queue to Array(intArr):- '{17, 18, 15, 13, 16, 19, 14, 20, 15, 15}

*/
