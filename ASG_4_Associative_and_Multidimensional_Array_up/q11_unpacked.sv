module top;
	integer intA[5];
	string strA[5],st;
	initial begin
		for(int i=0;i<5;i++) intA[i]=$urandom_range(65,90);
		$display("Integer Array:- %p",intA);
		for(int i=0;i<5;i++)begin
			//st=$sformatf("%0d",intA[i]);
			st=string'(intA[i]);
			strA[i]=st;
			$display("strA[%0d]:- %0s",i,strA[i]);
		end
		$display("String Array:- %p",strA);
	end
endmodule

/* Output:-
# Start time: 17:30:29 on Oct 31,2025
# Integer Array:- '{17, 20, 18, 13, 15}
# strA[0]:- 17
# strA[1]:- 20
# strA[2]:- 18
# strA[3]:- 13
# strA[4]:- 15
# String Array:- '{"17", "20", "18", "13", "15"}
-----------------------------------------------------------------
# Integer Array:- '{89, 65, 65, 69, 81}
# strA[0]:- Y
# strA[1]:- A
# strA[2]:- A
# strA[3]:- E
# strA[4]:- Q
# String Array:- '{"Y", "A", "A", "E", "Q"}
*/

