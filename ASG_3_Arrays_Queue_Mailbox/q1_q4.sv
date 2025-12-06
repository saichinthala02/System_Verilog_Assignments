//--> Q1. Declare various Arrays.
module top;
	int intA[10]; //--> Fixed Size Array.
	int intB[];   //--> Dynamic Array.
	int que[$];   //--> Queue
	bit [9:0]bitVec; //--> Packed Array
	byte byteArr[10];//--> Unpacked Array.
endmodule
//-----------------------------------------------------------------------------------------------------------
//--> Q2. Arrays Based on how memory is Allocated.
/*
	Packed Arrays:- 
		--> Memory is allocated single address location.
		--> The dimensions of array are give LHS of array name.
		--> Vectors in verilog are Packed Arrays in System Verilog.
		--> We sould use only Scalar datatypes to declare packed arrays.
		--> Syntax:- data_type [Dimensions]Array_name;
		--> Example:- logic [0:9]logicVec;
					  bit [4:0]bitVec;
	Unpacked Arrays:-
		--> Memory is allocated Multiple address location.
		--> The dimensions of array are give RHS of array name.
		--> Arrays in verilog are UnPacked Arrays in System Verilog.
		--> We sould use all datatypes to declare packed arrays.
		--> Syntax:- data_type Array_name[Dimensions];
		--> Example:- logic logicArr[0:9];
					  int intA[10];
*/		
//-----------------------------------------------------------------------------------------------------------
//--> Q3. Arrays Based on When memory is Allocated.
/*
	Static Arrays:-
		--> Memory is allocated during compile time.
		--> Fixed memory size.
		--> Both packed and unpacked arrays are static arrays.
		--> Synatx:- data_type [Dimensions]Array_name;
					 data_type Array_name[Dimensions];
	Dynamic Arrays:-
		--> Memory is allocated during run time.
		--> By using new we will allocate memory.
		--> While declaring dynamic arrays we'll not mention the dimensions.
		--> Syntax:- data_type array_name[];
*/
//-----------------------------------------------------------------------------------------------------------
//--> Q4. Upacked Arrays.
module top4;
	int intA[5],intB[5];
	bit flag=0;
	bit bitA[5];

	function void compare(input int a,b,output x);
		if(a==b) x=1;
		else x= 0;
	endfunction
	

	initial begin
		foreach(intA[i])begin
			intA[i]=$urandom_range(50,100);
			intB[i]=$urandom_range(10,20);
		end
		$display("-------------------------------------------------");
		$display("---> Display Using packed format <---");
		$display("Array-A:- %p",intA);
		$display("Array-B:- %p",intB);
		$display("-------------------------------------------------");
		$display("---> Display Using foreach <---");
		foreach(intA[i])begin
			$display("\t--> arr[%0d]=%0d",i,intA[i]);
		end
		$display("-------------------------------------------------");
		$display("---> Display Using for loop <---");
		for(int i=0;i<5;i++)begin
			$display("\t--> arr[%0d]=%0d",i,intA[i]);
		end
		$display("-------------------------------------------------");
		flag=0;
		foreach(intA[i])begin
			if(intA[i]!=intB[i]) flag=1;
			else flag=0;
		end

		$display("---> Comparision using foreach loop <---");
		if(flag==0) $display("Array-1(intA) is equal to Array-2(intB)");
		else $display("Array-1(intA) is not-equal to Array-2(intB)");
		$display("-------------------------------------------------");
		flag=0;
		for(int i=0;i<5;i++)begin
			if(intA[i]!=intB[i]) flag=1;
			else flag=0;
		end
		$display("------> Comparision using for loop <------");
		if(flag==0) $display("Array-1(intA) is equal to Array-2(intB)");
		else $display("Array-1(intA) is not-equal to Array-2(intB)");
		$display("-------------------------------------------------");

		//--> Copy first array content to second array.
		for(int i=0;i<5;i++)begin
			intB[i]=intA[i];
		end
		$display("array contents after copy");
		$display("Array-A:- %p",intA);
		$display("Array-B:- %p",intB);
		$display("-------------------------------------------------");
		flag=0;
		
		for(int i=0;i<5;i++)begin
			if(intA[i]!=intB[i]) flag=1;
			else flag=0;
		end
		$display("------> Comparision using for loop <------");
		if(flag==0) $display("Array-1(intA) is equal to Array-2(intB)");
		else $display("Array-1(intA) is not-equal to Array-2(intB)");
		$display("-------------------------------------------------");

		for(int i=0;i<5;i++)begin
			compare(intA[i],intB[i],bitA[i]);
		end
		$display("Comparision of two Arrays and store in Bit Array");
		$display("Bit Array(bitA):- %p",bitA);
		$display("-------------------------------------------------");

	end
endmodule

/* Output:-
# Start time: 21:25:45 on Oct 30,2025
# -------------------------------------------------
# ---> Display Using packed format <---
# Array-A:- '{59, 99, 96, 90, 67}
# Array-B:- '{20, 13, 19, 20, 13}
# -------------------------------------------------
# ---> Display Using foreach <---
# 	--> arr[0]=59
# 	--> arr[1]=99
# 	--> arr[2]=96
# 	--> arr[3]=90
# 	--> arr[4]=67
# -------------------------------------------------
# ---> Display Using for loop <---
# 	--> arr[0]=59
# 	--> arr[1]=99
# 	--> arr[2]=96
# 	--> arr[3]=90
# 	--> arr[4]=67
# -------------------------------------------------
# ---> Comparision using foreach loop <---
# Array-1(intA) is not-equal to Array-2(intB)
# -------------------------------------------------
# ------> Comparision using for loop <------
# Array-1(intA) is not-equal to Array-2(intB)
# -------------------------------------------------
# array contents after copy
# Array-A:- '{59, 99, 96, 90, 67}
# Array-B:- '{59, 99, 96, 90, 67}
# -------------------------------------------------
# ------> Comparision using for loop <------
# Array-1(intA) is equal to Array-2(intB)
# -------------------------------------------------
# Comparision of two Arrays and store in Bit Array
# Bit Array(bitA):- '{1, 1, 1, 1, 1}
# -------------------------------------------------
*/
