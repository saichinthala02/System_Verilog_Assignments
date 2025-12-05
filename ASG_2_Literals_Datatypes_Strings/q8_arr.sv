//--> Different ways to Initilize Array

module top;
	int intArr1[10]={1,1,2,3,4,5,6,7,8,9};
	int intArr2[10];
	initial begin
		for(int i=0;i<10;i++)begin
			intArr2[i]=$urandom_range(10,32);
		end
		$display("intArr1 : %p",intArr1);
		$display("intArr2 : %p",intArr2);
	end
endmodule
