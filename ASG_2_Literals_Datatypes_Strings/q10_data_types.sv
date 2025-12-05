//--> Data types and their default values
module top;
	int a; 
	longint b;
	shortint c;
	bit d; 
	byte e;
	logic f;
	shortreal g; 
	integer h;
	real i;  
	reg j; 
	wire k;
	time l;
	realtime m;

	initial begin  
		$display("\t--> Int:- %b",a); 
		$display("\t--> Long_Int:- %b",b); 
		$display("\t--> Short_Int:- %b",c); 
		$display("\t--> Bit:- %b",d); 
		$display("\t--> Byte:- %b",e); 
		$display("\t--> Logic:- %b",f); 
		$display("\t--> Short_real:- %b",g); 
		$display("\t--> Integer:- %b",h); 
		$display("\t--> Real:- %b",i); 
		$display("\t--> Reg:- %b",j); 
		$display("\t--> Wire:- %b",k); 
		$display("\t--> Time:- %b",l); 
		$display("\t--> Real_time:- %b",m); 
	end
endmodule

/* Output:-
# Start time: 21:17:14 on Oct 28,2025
# Loading sv_std.std
# Loading work.top
# 	--> Int:- 00000000000000000000000000000000
# 	--> Long_Int:- 0000000000000000000000000000000000000000000000000000000000000000
# 	--> Short_Int:- 0000000000000000
# 	--> Bit:- 0
# 	--> Byte:- 00000000
# 	--> Logic:- x
# 	--> Short_real:- 00000000000000000000000000000000
# 	--> Integer:- xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
# 	--> Real:- 00000000000000000000000000000000
# 	--> Reg:- x
# 	--> Wire:- z
# 	--> Time:- xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
# 	--> Real_time:- 00000000000000000000000000000000
*/
