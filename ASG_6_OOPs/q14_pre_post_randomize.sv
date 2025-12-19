//--> Q14. Pre_randomize and Post_randomize.
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

	function new(string str);
		case(str)
			"test_sof_rand_disable" : sof.rand_mode(0);
		endcase
	endfunction

	function void pre_randomize();
		$display("Pre_randomize method is happened");
		len.rand_mode(0);
		len_c.constraint_mode(0);
	endfunction

	function void post_randomize();
		$display("Post_randomize method is happened");
		crc=32'h1234_7985;
	endfunction
   
	constraint len_c{
		len inside {[10:15]};
		payload.size()==len;
	}
endclass

module top;
	eth_pkt pkt;
	string str;
	initial begin
		$value$plusargs("testname=%0s",str);
		pkt = new(str);
		pkt.randomize();
		pkt.print();
	end
endmodule

/* Output:-
a.
# Pre_randomize method is happened
# Post_randomize method is happened
b.
# --------------> Eth_Pkt <--------------
# preamble=14906476018882073
# sof=0
# sa=210838264658979
# da=197270863703325
# len=11
# crc=0
# payload='{-51, -99, -18, -71, -68, -58, 20, 120, 111, 37, 31}
c.
# --------------> Eth_Pkt <--------------
# preamble=14906476018882073
# sof=0
# sa=210838264658979
# da=197270863703325
# len=0
# crc=0
# payload='{}
*/
