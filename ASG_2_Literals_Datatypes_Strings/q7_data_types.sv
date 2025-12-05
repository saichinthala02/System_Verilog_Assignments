//--> Data-Types
module top;
	string s="Sai";
	real r = 121.554;
	integer int_arr[3]={1,2,3};
	string str_arr[3]={"India","Russia","Brazil"};
	int arr [2][3] = '{ '{1, 2, 3}, '{4, 5, 6} };

	initial begin
		$display("String s=%0s",s);
		$display("Rel r=%0f",r);
		$display("Integer Array=%p",int_arr);
		$display("String Array=%p",str_arr);
		$display("Multi-Dimensional Array= %p",arr);
		$display("Real Time=%0f",$realtime);
	end
endmodule

/* Output:-
# Start time: 23:17:45 on Oct 27,2025
# Loading sv_std.std
# Loading work.top
# String s=Sai
# Rel r=121.554000
# Integer Array='{1, 2, 3}
# String Array='{"India", "Russia", "Brazil"}
# Multi-Dimensional Array= '{'{1, 2, 3}, '{4, 5, 6}}
# Real Time=0.000000
*/
