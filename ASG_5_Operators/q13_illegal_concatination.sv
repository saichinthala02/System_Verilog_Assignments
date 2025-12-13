//--> Q13.Write an Illegal example of Concatination.
//--> Concatination of fixed size array and queue.
module top;
	int intA[10],intB[25];
	int intQ[$];
	initial begin
	for(int i=0;i<10;i++)begin
		intA[i]=$urandom_range(50,60);
		intQ[i]=$urandom_range(50,60);
	end
	$display("Array Data:- %p",intA);
	$display("Queue Data:- %p",intQ);
	intB={intA,intQ};
	$display("Concatinated Queue Data:- %p",intB);
	end
endmodule

/* Output:-
# Start time: 17:45:58 on Nov 04,2025
# Array Data:- '{57, 58, 55, 53, 56, 59, 54, 60, 55, 55}
# Queue Data:- '{60, 53, 59, 60, 53, 53, 52, 60, 52, 53}
# ** Fatal: Cannot match types for literal init. to type 'int' from type 'int$[]'.
#    Time: 0 ps  Iteration: 0  Process: /top/#INITIAL#6 File: q13_illegal_concatination.sv
*/
