//--> Randomize.
class eth_pkt;
	rand bit[55:0]preamble;
	rand bit [2:0]sof;
		 bit[47:0]sa; 
		 bit[47:0]da;
		 bit[15:0]len;
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
		len inside {[10:15]};
	}
	
endclass

module top;
	eth_pkt pkt;
	initial begin
		pkt = new();
		assert(pkt.randomize());
		pkt.print();
	end
endmodule  

/* Output:-
# --------------> Fields not declare with rand not get random value they get default values <--------------
# preamble=14906476018882073
# sof=6
# sa=0
# da=0
# len=11
# crc=0
# payload='{-51, -99, -18, -71, -68, -58, 20, 120, 111, 37, 31}

-----------------------------------------------------------------------------------------------------------------------
# ** Error: Assertion error.
#    Time: 0 ns  Scope: top File: q13_randomize.sv Line: 32
# --------------> Eth_Pkt <--------------
# preamble=0
# sof=0
# sa=0
# da=0
# len=0
# crc=0
# payload='{}
*/
