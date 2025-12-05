`timescale 1ns/1ps
module top;
	initial begin
		for(int i=0;i<20;i++)begin
			$display("Time:- %0t | Real-Time:- %0f --->> i = %0d",$time,$realtime,i);
			#1.12;
		end
	end
endmodule

/* Output:-
# Time:- 0 | Real-Time:- 0.000000 --->> i = 0
# Time:- 1000 | Real-Time:- 1.120000 --->> i = 1
# Time:- 2000 | Real-Time:- 2.240000 --->> i = 2
# Time:- 3000 | Real-Time:- 3.360000 --->> i = 3
# Time:- 4000 | Real-Time:- 4.480000 --->> i = 4
# Time:- 6000 | Real-Time:- 5.600000 --->> i = 5
# Time:- 7000 | Real-Time:- 6.720000 --->> i = 6
# Time:- 8000 | Real-Time:- 7.840000 --->> i = 7
# Time:- 9000 | Real-Time:- 8.960000 --->> i = 8
# Time:- 10000 | Real-Time:- 10.080000 --->> i = 9
# Time:- 11000 | Real-Time:- 11.200000 --->> i = 10
# Time:- 12000 | Real-Time:- 12.320000 --->> i = 11
# Time:- 13000 | Real-Time:- 13.440000 --->> i = 12
# Time:- 15000 | Real-Time:- 14.560000 --->> i = 13
# Time:- 16000 | Real-Time:- 15.680000 --->> i = 14
# Time:- 17000 | Real-Time:- 16.800000 --->> i = 15
# Time:- 18000 | Real-Time:- 17.920000 --->> i = 16
# Time:- 19000 | Real-Time:- 19.040000 --->> i = 17
# Time:- 20000 | Real-Time:- 20.160000 --->> i = 18
# Time:- 21000 | Real-Time:- 21.280000 --->> i = 19
*/
