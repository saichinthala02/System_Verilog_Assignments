//--> Declaring Constraints inside a class.
class eth_pkt;
	rand bit[55:0]preamble;
	randc bit [2:0]sof;
	rand bit[47:0]sa; 
	rand bit[47:0]da;
	rand bit[15:0]len;
		 bit[31:0]crc;
	rand byte payload[$];

	function void print(string str="Eth_Pkt");
		$display("--------------> %0s <--------------",str);
		$display("preamble=%0d",preamble);
		$display("sof=%0d",sof);
		$display("sa=%0d",sa);
		$display("da=%0d",da);
		$display("len=%0d",len);
		$display("crc=%0h",crc);
		$display("payload=%p",payload);
	endfunction 

	constraint len_c{
		len inside {[40:50]};
		payload.size()==len;
	}
	constraint payload_c{
		payload.size()<20;
	}

endclass

module top;
	eth_pkt pkt;
	initial begin
		pkt = new();
		assert(pkt.randomize()) $display("Randomization Done");
		pkt.print();
	end
endmodule  

/* Output:-
# ** Error: Assertion error.
#    Time: 0 ns  Scope: top File: q11_constraint_conflict.sv Line: 36
# --------------> Eth_Pkt <--------------
# preamble=0
# sof=0
# sa=0
# da=0
# len=0
# crc=0
# payload='{}
*/
