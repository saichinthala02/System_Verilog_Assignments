//--> Q19 & Q20

//--> Implementation of String Methods.
//--> .len()
//--> .putc()
//--> .getc()
//--> .toupper()
//--> .tolower()
//--> .compare()
//--> .icompare()
//--> .substr()
//--> .atoi()
//--> .itoa()
//--> .itor()
module top;
	string str1,str2;
	initial begin
		$display("-----------------------------------------------");
	//--> len()
		str1="Hello Welcome to Intel";
		$display("String-1: %0s || Length: %0d",str1,str1.len());
		$display("-----------------------------------------------");
	//--> putc()	
		str1.putc(3,"s");
		$display("String-1: %0s || Length: %0d",str1,str1.len());
		$display("-----------------------------------------------");
	//--> getc()
		$cast(str2,str1.getc(3));
		$display("String-1: %0s",str1);
		$display("getc() :%0s",str2);
		$display("-----------------------------------------------");
	//--> toupper()
		str1="Cadence";
		str2=str1.toupper();
		$display("Str : %0s",str1);
		$display("Str_Upper : %0s",str2);
		$display("-----------------------------------------------");
	//--> tolower()
		str1="INTEL";
		str2=str1.tolower();
		$display("Str : %0s",str1);
		$display("Str_Lower : %0s",str2);
		$display("-----------------------------------------------");
	//--> substr();
		str1="Hello Welcome to Intel";
		str2=str1.substr(4,12);
		$display("String-1: %0s",str1);
		$display("Sub-String: %0s",str2);
		$display("-----------------------------------------------");
	//--> compare()
		str1="hello";
		str2="HELLO";
		$display("String-1: %0s",str1);
		$display("String-1: %0s",str2);
		if(!str1.compare(str2))$display("Both are same");
		else $display("Both are not same");
		$display("-----------------------------------------------");
	//--> icompare()
		str1="hello";
		str2="HELLO";
		$display("String-1: %0s",str1);
		$display("String-1: %0s",str2);
		if(!str1.icompare(str2))$display("Both are same");
		else $display("Both are not same");
		$display("-----------------------------------------------");
	end
endmodule

/* Output:-
# End time: 22:24:42 on Oct 28,2025, Elapsed time: 0:00:57
# Errors: 0, Warnings: 0
# vsim top 
# Start time: 22:24:42 on Oct 28,2025
# Loading sv_std.std
# Loading work.top
# -----------------------------------------------
# String-1: Hello Welcome to Intel || Length: 22
# -----------------------------------------------
# String-1: Helso Welcome to Intel || Length: 22
# -----------------------------------------------
# String-1: Helso Welcome to Intel
# getc() :s
# -----------------------------------------------
# Str : Cadence
# Str_Upper : CADENCE
# -----------------------------------------------
# Str : INTEL
# Str_Lower : intel
# -----------------------------------------------
# String-1: Hello Welcome to Intel
# Sub-String: o Welcome
# -----------------------------------------------
# String-1: hello
# String-1: HELLO
# Both are not same
# -----------------------------------------------
# String-1: hello
# String-1: HELLO
# Both are same
# -----------------------------------------------
*/
