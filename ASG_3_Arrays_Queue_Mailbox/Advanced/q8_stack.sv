module stack;
	integer intQ[$:9];
//--> Task to put data
	task put(input integer data);
		intQ.push_back(data);
	endtask
//--> Function to get data	
	function integer get();
		return intQ.pop_back();
	endfunction
endmodule

module top;
	stack dut();
	integer value,data;
	initial begin
		$display("------------------------------------------");
		$display("------> Stack Writes <------");
		repeat(10)begin
			data=$urandom_range(1,524);
			dut.put(data);
			$display("%p",dut.intQ);
		end
		$display("------------------------------------------");
		$display("------> Stack Reads <------");
		repeat(10)begin
			value=dut.get();
			$display("\t--> %0d",value);
		end
		$display("------------------------------------------");
	end
endmodule

/* Output:-
# Start time: 00:16:08 on Oct 31,2025
# ------------------------------------------
# ------> Stack Writes <------
# '{157}
# '{157, 259}
# '{157, 259, 395}
# '{157, 259, 395, 243}
# '{157, 259, 395, 243, 451}
# '{157, 259, 395, 243, 451, 59}
# '{157, 259, 395, 243, 451, 59, 307}
# '{157, 259, 395, 243, 451, 59, 307, 427}
# '{157, 259, 395, 243, 451, 59, 307, 427, 76}
# '{157, 259, 395, 243, 451, 59, 307, 427, 76, 431}
# ------------------------------------------
# ------> Stack Reads <------
# 	--> 431
# 	--> 76
# 	--> 427
# 	--> 307
# 	--> 59
# 	--> 451
# 	--> 243
# 	--> 395
# 	--> 259
# 	--> 157
# ------------------------------------------
*/
