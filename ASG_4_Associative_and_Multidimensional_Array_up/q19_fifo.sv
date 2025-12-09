//--> Q19. Use Queue to implement fifo with parameterizable data type and depth.
module st;
	parameter type DATA_TYPE = integer;
	parameter DEPTH = 16;

	DATA_TYPE fifo[$:DEPTH];

//--> Task to put data into fifo.
	task put(input DATA_TYPE data);
		fifo.push_front(data);
	endtask
//--> Functio to get data from fifo
	function DATA_TYPE get();
		return fifo.pop_back();
	endfunction
endmodule

module top;
	parameter type DATA_TYPE = string;
	parameter DEPTH = 16;

	st #(.DATA_TYPE(DATA_TYPE),.DEPTH(DEPTH))dut();
	integer intdata;
	DATA_TYPE data,value;
	initial begin
		$display("---------------------------");
		$display("------> FIFO Writes <------");
		$display("---------------------------");
		repeat(DEPTH)begin
			intdata=$urandom_range(65,90);
			data=DATA_TYPE'(intdata);	
			dut.put(data);
			$display("%p",dut.fifo);
		end
		$display("---------------------------------------------------------------------------------");
		$display("---------------------------");
		$display("------> FIFO Reads <------");
		$display("---------------------------");
		repeat(DEPTH)begin
			value=dut.get();
			$display("\t--> %0d",value);
		end
	end
endmodule

/* Output:-
# Start time: 12:07:14 on Nov 01,2025
# Loading sv_std.std
# Loading work.top
# Loading work.st
# ---------------------------
# ------> FIFO Writes <------
# ---------------------------
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
# ------> FIFO Reads <------
# ---------------------------
# 	--> Y
# 	--> A
# 	--> A
# 	--> E
# 	--> Q
# 	--> A
# 	--> M
# 	--> I
# 	--> Z
# 	--> C
# 	--> S
# 	--> E
# 	--> P
# 	--> U
# 	--> D
# 	--> I
*/
