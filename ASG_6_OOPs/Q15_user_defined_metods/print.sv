//--> Copy Method.
class eth_pkt;
	rand bit[55:0]preamble;
	rand bit[7:0]sof;
	rand bit[47:0]sa;
	rand bit[47:0]da;
	rand bit[15:0]len;
		 bit[31:0]crc;
	rand byte payload[$];

	//--> Print Method
	function void print(string str="Eth_Pkt");
		$display("-------> %0s <-------",str);
		$display("preamble=%0d",preamble);
		$display("sof=%0d",sof);
		$display("sa=%0d",sa);
		$display("da=%0d",da);
		$display("len=%0d",len);
		$display("crc=%0d",crc);
		$display("payload=%p",payload);
	endfunction

	constraint l_c{
		len inside {[10:15]};
		payload.size()==len;
	}
endclass

module top;
	eth_pkt pkt1;
	initial begin
		pkt1 = new();
		pkt1.randomize();
		pkt1.print("Eth_Pkt1");
	end
endmodule

/* Output:-
# -------> Eth_Pkt1 <-------
# preamble=14906476018882073
# sof=251
# sa=210838264658979
# da=197270863703325
# len=14
# crc=0
# payload='{-51, -99, -18, -71, -68, -58, 20, 120, 111, 37, 31, -124, -1, 6}
*/
