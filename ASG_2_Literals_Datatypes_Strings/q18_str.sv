//--> Q18. How string data type different from string in Verilog?
--> String is a Systen verilog Datatype.
--> Variable size
--> String size can be incresed or decreased or can be deleted at runtime.
--> Syntax:-
			string <string_name>;

Example: 
    module top;
	string s;
	initial begin
		s="VLSI";
		$display("%0s",s);
	end



