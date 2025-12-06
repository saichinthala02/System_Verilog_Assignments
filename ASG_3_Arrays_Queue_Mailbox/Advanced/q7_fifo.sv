module fifo;
	integer intQ[$:9];
//--> Task to put data
	task put(input integer data);
		intQ.push_back(data);
	endtask
//--> Function to get data	
	function integer get();
		return intQ.pop_front();
	endfunction
endmodule

module top;
	fifo dut();
	integer value,data;
	initial begin
		$display("------------------------------------------");
		$display("------> FIFO Writes <------");
		repeat(10)begin
			data=$urandom_range(10,100);
			dut.put(data);
			$display("%p",dut.intQ);
		end
		$display("------------------------------------------");
		$display("------> FIFO Reads <------");
		repeat(10)begin
			value=dut.get();
			$display("\t--> %0d",value);
		end
		$display("------------------------------------------");
	end
endmodule

/* Output:-
# Start time: 00:11:45 on Oct 31,2025
# ------------------------------------------
# ------> FIFO Writes <------
# '{99}
# '{99, 10}
# '{99, 10, 62}
# '{99, 10, 62, 27}
# '{99, 10, 62, 27, 13}
# '{99, 10, 62, 27, 13, 88}
# '{99, 10, 62, 27, 13, 88, 87}
# '{99, 10, 62, 27, 13, 88, 87, 70}
# '{99, 10, 62, 27, 13, 88, 87, 70, 87}
# '{99, 10, 62, 27, 13, 88, 87, 70, 87, 90}
# ------------------------------------------
# ------> FIFO Reads <------
# 	--> 99
# 	--> 10
# 	--> 62
# 	--> 27
# 	--> 13
# 	--> 88
# 	--> 87
# 	--> 70
# 	--> 87
# 	--> 90
# ------------------------------------------
*/
