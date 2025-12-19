class eth_pkt;
	static int count;
	rand bit[47:0]da;
	rand bit[15:0]len;
	rand byte payload[$];
		 bit[55:0]crc;

	function void print(string str="Eth_Pkt");
		count++;
		$display("--------------> %0s <--------------",str);
		$display("Count:- %0d",count);
		$display("da=%0d",da);
		$display("len=%0d",len);
		$display("crc=%0h",crc);
		$display("payload=%p",payload);
	endfunction

	function void post_randomize();
		crc=16'h1234;
	endfunction


	constraint payload_c{
		payload.size() inside {[10:20]};
	}
endclass

module top;
	eth_pkt pkt;
	int i=49;
	string s;
	initial begin
		pkt = new();
		repeat(5)begin
		pkt.randomize();
		s=$sformatf("Eth_Pkt%0s",i);
		i++;
		pkt.print(s);
		end
	end
endmodule


/* Output:-
# --------------> Eth_Pkt1 <--------------
# Count:- 1
# da=197270863703325
# len=61323
# crc=1234
# payload='{-51, -99, -18, -71, -68, -58, 20, 120, 111, 37, 31}
# --------------> Eth_Pkt2 <--------------
# Count:- 2
# da=58976385815933
# len=2670
# crc=1234
# payload='{85, 50, -88, 108, -47, -104, 104, -6, -90, 117, -49, -84, 47, 56, -114, 24, -102, 111, 15}
# --------------> Eth_Pkt3 <--------------
# Count:- 3
# da=189399432218959
# len=29495
# crc=1234
# payload='{60, 18, 68, -10, -14, -84, 42, 7, 71, 43, -117, 89}
# --------------> Eth_Pkt4 <--------------
# Count:- 4
# da=27178819180587
# len=41691
# crc=1234
# payload='{14, -112, -59, -38, -83, -20, -39, 68, 125, 97}
# --------------> Eth_Pkt5 <--------------
# Count:- 5
# da=8372645406951
# len=44592
# crc=1234
# payload='{-57, 53, 5, 116, -103, -65, 33, 8, 105, 113, 13, 51}
*/
