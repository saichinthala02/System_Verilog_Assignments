//--> String Concatination .
module top;
	string s1,s2,s3,s4;
	initial begin
		s1="Hello,";
		s2="welcome to";
		s3="VLSI GURU";
		s4={s1 ," ", s2," ",s3};
		$display("Concatinated String:- %0s",s4);
	end
endmodule

/* Output:-
# Start time: 17:34:48 on Nov 04,2025
# Concatinated String:- Hello, welcome to VLSI GURU
*/
