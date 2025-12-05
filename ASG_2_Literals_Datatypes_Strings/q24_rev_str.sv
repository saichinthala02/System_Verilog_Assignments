//--> Using String Methods
module top;
	string str1,str2;
	initial begin
		str1="VLSI_GURU";
		str2=str1;
		for(int i=0;i<str1.len();i++)begin
			str2.putc(i,str1.getc(str1.len()-1-i));
		end
		$display("Given String : %0s",str1);
		$display("Reversed String : %0s",str2);
	end
endmodule

/* Output:-
# Start time: 22:32:15 on Oct 28,2025
# Given String : VLSI_GURU
# Reversed String : URUG_ISLV
*/


//--> Using Index.
module top1;
	string s1,s2;
	initial begin
		s1="INTEL";
		s2=s1;
		for(int i=0;i<s1.len();i++)begin
			s2[i]=s1[s1.len()-1-i];
		end
		$display("Given String : %0s",s1);
		$display("Reversed String : %0s",s2);
	end
endmodule
/* Output:-
# Start time: 22:33:48 on Oct 28,2025
# Given String : INTEL
# Reversed String : LETNI
*/
