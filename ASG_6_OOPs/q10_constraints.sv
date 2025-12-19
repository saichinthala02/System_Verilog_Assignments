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

	constraint payload_c{
		payload.size()>40;
		payload.size()<50;
	}

endclass

module top;
	eth_pkt pkt;
	initial begin
		pkt = new();
		pkt.randomize();
		pkt.print("With constraints for payload");
	end
endmodule  

/* Output:-
a.
# --------------> Default without constraints for payload <--------------
# preamble=14906476018882073
# sof=6
# sa=210838264658979
# da=197270863703325
# len=61323
# crc=0
# payload='{}

b.
# --------------> With constraints for payload <--------------
# preamble=14906476018882073
# sof=6
# sa=210838264658979
# da=197270863703325
# len=61323
# crc=0
# payload='{-51, -99, -18, -71, -68, -58, 20, 120, 111, 37, 31, -124, -1, 6, 115, 84, -91, 42, 118, 91, -108, 61, 19, 79, 111, -59, -30, 53, -61, -62, -40, 94, 109, -69, -94, 85, 35, -57, -70, -25, 121, -22}
*/
