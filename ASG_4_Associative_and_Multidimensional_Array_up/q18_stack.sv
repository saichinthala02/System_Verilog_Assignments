//--> Q18. Use Queue to implement stack with parameterizable data type and depth.
module st;
	parameter type DATA_TYPE = integer;
	parameter DEPTH = 16;

	DATA_TYPE stack[$:DEPTH];

//--> Task to put data into Stack.
	task put(input DATA_TYPE data);
		stack.push_front(data);
	endtask
//--> Functio to get data from stack
	function DATA_TYPE get();
		return stack.pop_front();
	endfunction
endmodule

module top;
	parameter type DATA_TYPE = real;
	parameter DEPTH = 16;

	st #(.DATA_TYPE(DATA_TYPE),.DEPTH(DEPTH))dut();
	integer intdata;
	DATA_TYPE data,value;
	initial begin
		$display("----------------------------");
		$display("------> Stack Writes <------");
		$display("----------------------------");
		repeat(DEPTH)begin
			intdata=$urandom_range(65,90);
			data=DATA_TYPE'(intdata);	
			dut.put(data);
			$display("%p",dut.stack);
		end
		$display("------------------------------------------------------------------------------");
		$display("---------------------------");
		$display("------> Stack Reads <------");
		$display("---------------------------");
		repeat(DEPTH)begin
			value=dut.get();
			$display("\t--> %0d",value);
		end
	end
endmodule
/* Output:-
# Start time: 11:50:35 on Nov 01,2025
# ----------------------------
# ------> Stack Writes <------
# ----------------------------
# '{"Y"}
# '{"A", "Y"}
# '{"A", "A", "Y"}
# '{"E", "A", "A", "Y"}
# '{"Q", "E", "A", "A", "Y"}
# '{"A", "Q", "E", "A", "A", "Y"}
# '{"M", "A", "Q", "E", "A", "A", "Y"}
# '{"I", "M", "A", "Q", "E", "A", "A", "Y"}
# '{"Z", "I", "M", "A", "Q", "E", "A", "A", "Y"}
# '{"C", "Z", "I", "M", "A", "Q", "E", "A", "A", "Y"}
# '{"S", "C", "Z", "I", "M", "A", "Q", "E", "A", "A", "Y"}
# '{"E", "S", "C", "Z", "I", "M", "A", "Q", "E", "A", "A", "Y"}
# '{"P", "E", "S", "C", "Z", "I", "M", "A", "Q", "E", "A", "A", "Y"}
# '{"U", "P", "E", "S", "C", "Z", "I", "M", "A", "Q", "E", "A", "A", "Y"}
# '{"D", "U", "P", "E", "S", "C", "Z", "I", "M", "A", "Q", "E", "A", "A", "Y"}
# '{"I", "D", "U", "P", "E", "S", "C", "Z", "I", "M", "A", "Q", "E", "A", "A", "Y"}
# ---------------------------------------------------------------------------------
# ---------------------------
# ------> Stack Reads <------
# ---------------------------
# 	--> I
# 	--> D
# 	--> U
# 	--> P
# 	--> E
# 	--> S
# 	--> C
# 	--> Z
# 	--> I
# 	--> M
# 	--> A
# 	--> Q
# 	--> E
# 	--> A
# 	--> A
# 	--> Y
*/
