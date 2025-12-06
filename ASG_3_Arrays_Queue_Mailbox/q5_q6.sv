//--> Q5. Dynamic Array
module top;
	int intA[],intB[];
	bit flag;
	initial begin
		intA=new[5];
		$display("-------------------------------------------------------");
		$display("---> Display using Foreach loop <---");
		foreach(intA[i]) begin
			intA[i]=$urandom_range(50,100);
			$display("\t--> intA[%0d]=%0d",i,intA[i]);
		end
		$display("-------------------------------------------------------");
		$display("---> Display in packed format <---");
		$display("intA:- %p",intA);
		$display("-------------------------------------------------------");

		$display("---> Display using For-loop <---");
		for(int i=0;i<5;i++) begin
			$display("\t--> intA[%0d]=%0d",i,intA[i]);
		end
		$display("-------------------------------------------------------");
		intB=new[5];
		foreach(intB[i]) begin
			intB[i]=$urandom_range(10,20);
			$display("\t--> intB[%0d]=%0d",i,intB[i]);
		end
		$display("-------------------------------------------------------");

		flag=0;
		foreach(intA[i])begin
			if(intA[i]!=intB[i]) flag=1;
			else flag=0;
		end

		$display("---> Comparision using foreach loop <---");
		if(flag==0) $display("Array-1(intA) is equal to Array-2(intB)");
		else $display("Array-1(intA) is not-equal to Array-2(intB)");
		$display("-------------------------------------------------------");
		flag=0;
		for(int i=0;i<5;i++)begin
			if(intA[i]!=intB[i]) flag=1;
			else flag=0;
		end
		$display("------> Comparision using for loop <------");
		if(flag==0) $display("Array-1(intA) is equal to Array-2(intB)");
		else $display("Array-1(intA) is not-equal to Array-2(intB)");
		$display("-------------------------------------------------------");

		//--> Copy first array content to second array.
		for(int i=0;i<5;i++)begin
			intB[i]=intA[i];
		end
		$display("array contents after copy");
		$display("Array-A:- %p",intA);
		$display("Array-B:- %p",intB);
		$display("-------------------------------------------------------");
		flag=0;
		
		for(int i=0;i<5;i++)begin
			if(intA[i]!=intB[i]) flag=1;
			else flag=0;
		end
		$display("------> Comparision using for loop <------");
		if(flag==0) $display("Array-1(intA) is equal to Array-2(intB)");
		else $display("Array-1(intA) is not-equal to Array-2(intB)");
		$display("-------------------------------------------------------");
		
		intA=new[10](intA);
		$display("------> Array intA[] after resize <------");
		$display("intA:- %p",intA);
		$display("-------------------------------------------------------");

	end
endmodule

/* Output:-
# Start time: 22:17:44 on Oct 30,2025
# -------------------------------------------------------
# ---> Display using Foreach loop <---
# 	--> intA[0]=59
# 	--> intA[1]=87
# 	--> intA[2]=99
# 	--> intA[3]=67
# 	--> intA[4]=96
# -------------------------------------------------------
# ---> Display in packed format <---
# intA:- '{59, 87, 99, 67, 96}
# -------------------------------------------------------
# ---> Display using For-loop <---
# 	--> intA[0]=59
# 	--> intA[1]=87
# 	--> intA[2]=99
# 	--> intA[3]=67
# 	--> intA[4]=96
# -------------------------------------------------------
# 	--> intB[0]=19
# 	--> intB[1]=13
# 	--> intB[2]=20
# 	--> intB[3]=16
# 	--> intB[4]=13
# -------------------------------------------------------
# ---> Comparision using foreach loop <---
# Array-1(intA) is not-equal to Array-2(intB)
# -------------------------------------------------------
# ------> Comparision using for loop <------
# Array-1(intA) is not-equal to Array-2(intB)
# -------------------------------------------------------
# array contents after copy
# Array-A:- '{59, 87, 99, 67, 96}
# Array-B:- '{59, 87, 99, 67, 96}
# -------------------------------------------------------
# ------> Comparision using for loop <------
# Array-1(intA) is equal to Array-2(intB)
# -------------------------------------------------------
# ------> Array intA[] after resize <------
# intA:- '{59, 87, 99, 67, 96, 0, 0, 0, 0, 0}
# -------------------------------------------------------
*/

//==============================================================================================================================
//--> Q6. Queues
module queue;
	integer qA[$],qB[$:4];
	initial begin
		$display("-------------------------------------------------------");
		$display("---> Display using For-loop <---");
		for(int i=0;i<5;i++)begin
			qA[i]=$urandom_range(50,100);
			qB[i]=$urandom_range(10,20);
			$display("\t--> qA[%0d]=%0d",i,qA[i]);
		end
		$display("-------------------------------------------------------");
		$display("---> Display in packed format <---");
		$display("Queue-A:- %p",qA);
		$display("-------------------------------------------------------");
		$display("---> Display using Foreach loop <---");
		foreach(qA[i])$display("\t--> qA[%0d]=%0d",i,qA[i]);
		$display("-------------------------------------------------------");
		$display("-------------------------------------------------------");
		$display("---> Display in packed format <---");
		$display("Queue-B:- %p",qB);
		$display("-------------------------------------------------------");
	end
endmodule
/* Output:-
# Start time: 22:33:06 on Oct 30,2025
# Loading sv_std.std
# Loading work.queue
# -------------------------------------------------------
# ---> Display using For-loop <---
# 	--> qA[0]=59
# 	--> qA[1]=99
# 	--> qA[2]=96
# 	--> qA[3]=90
# 	--> qA[4]=67
# -------------------------------------------------------
# ---> Display in packed format <---
# Queue-A:- '{59, 99, 96, 90, 67}
# -------------------------------------------------------
# ---> Display using Foreach loop <---
# 	--> qA[0]=59
# 	--> qA[1]=99
# 	--> qA[2]=96
# 	--> qA[3]=90
# 	--> qA[4]=67
# -------------------------------------------------------
# -------------------------------------------------------
# ---> Display in packed format <---
# Queue-B:- '{20, 13, 19, 20, 13}
# -------------------------------------------------------
*/
