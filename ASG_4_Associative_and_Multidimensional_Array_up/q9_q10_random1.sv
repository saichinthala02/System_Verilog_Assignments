//--> Q9: Generate Random Number between 1 to 100 without repetition
module top;
	int arr[100],temp;
	bit count;
	initial begin
		for(int i=0;i<100;)begin
			count=0;
			temp=$urandom_range(1,100);
			for(int j=0;j<i;j++)begin
				if(temp==arr[j])begin
					count=1;
					j=i;
				end
			end
			if(count==0) begin
				arr[i]=temp;
				i++;
			end
		end
		$display("\t-->arr:= %p",arr);
	end
endmodule

/* Output:-
#Start time: 16:36:07 on Oct 31,2025
# 	-->arr:= '{13, 91, 43, 63, 47, 23, 92, 59, 29, 56, 83, 74, 65, 3, 22, 12, 50, 77, 94, 70, 30, 18, 19, 81, 96, 10, 62, 89, 69, 31, 39, 97, 8, 2, 45, 99, 100, 60, 51, 35, 14, 27, 52, 53, 98, 80, 88, 16, 86, 85, 26, 64, 34, 46, 71, 11, 54, 57, 40, 25, 28, 48, 20, 79, 82, 5, 73, 90, 87, 78, 41, 66, 76, 21, 58, 1, 15, 9, 55, 7, 49, 75, 33, 61, 38, 17, 84, 95, 24, 42, 93, 4, 44, 72, 6, 32, 67, 68, 37, 36}
*/

//--> Q10.  Generate Random Number between 1 to 100 Ascending oredr
module top2;
	int arr[100],temp;
	bit count;
	initial begin
		for(int i=0;i<100;)begin
			count=0;
			temp=$urandom_range(1,100);
			for(int j=0;j<i;j++)begin
				if(temp==arr[j])begin
					count=1;
					j=i;
				end
			end
			if(count==0) begin
				arr[i]=temp;
				i++;
			end
		end
		$display("\t-->arr:= %p",arr);

		for(int i=0;i<100-1;i++) begin
			for(int j=i+1;j<100;j++) begin
				if(arr[i] > arr[j]) begin
					temp   = arr[i];
					arr[i] = arr[j];
					arr[j] = temp;
				end
			end
		end	
		$display("\t-->Asc Order:- %p",arr);
	end
endmodule

/* Output:-
 Start time: 17:04:36 on Oct 31,2025
# Loading sv_std.std
# Loading work.top2
# 	-->arr:= '{13, 91, 43, 63, 47, 23, 92, 59, 29, 56, 83, 74, 65, 3, 22, 12, 50, 77, 94, 70, 30, 18, 19, 81, 96, 10, 62, 89, 69, 31, 39, 97, 8, 2, 45, 99, 100, 60, 51, 35, 14, 27, 52, 53, 98, 80, 88, 16, 86, 85, 26, 64, 34, 46, 71, 11, 54, 57, 40, 25, 28, 48, 20, 79, 82, 5, 73, 90, 87, 78, 41, 66, 76, 21, 58, 1, 15, 9, 55, 7, 49, 75, 33, 61, 38, 17, 84, 95, 24, 42, 93, 4, 44, 72, 6, 32, 67, 68, 37, 36}
# 	-->Asc Order:- '{1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100}
*/
