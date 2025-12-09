//--> Dynamic Array
module top;
	int intDA1[5:1];
	int intDA2[1:5];
	initial begin
		for(int i=0;i<5;i++)begin
			intDA1[i]=$urandom_range(10,200);
		end
		intDA2=intDA1;
		foreach(intDA1[i]) $display("intDA1[%0d]=%0d",i,intDA1[i]);
		$display("-------------");
		foreach(intDA2[i]) $display("intDA2[%0d]=%0d",i,intDA2[i]);
	end
endmodule
/* Output:-
# Start time: 12:53:31 on Nov 01,2025
# intDA1[5]=0
# intDA1[4]=96
# intDA1[3]=10
# intDA1[2]=188
# intDA1[1]=86
# -------------
# intDA2[1]=0
# intDA2[2]=96
# intDA2[3]=10
# intDA2[4]=188
# intDA2[5]=86
*/
