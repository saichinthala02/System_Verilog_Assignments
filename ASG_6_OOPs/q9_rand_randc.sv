//--> Declaring a property rand and randc.
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
endclass

module top;
	eth_pkt pkt;
	initial begin
		pkt = new();
		repeat(10)begin
			pkt.randomize();
			pkt.print();
		end
	end
endmodule

/* Output:-
# --------------> Eth_Pkt <--------------
# preamble=14906476018882073
# sof=6
# sa=210838264658979
# da=197270863703325
# len=61323
# crc=0
# payload='{}
# --------------> Eth_Pkt <--------------
# preamble=62571688155980560
# sof=3
# sa=161536657671407
# da=58976385815933
# len=2670
# crc=0
# payload='{}
# --------------> Eth_Pkt <--------------
# preamble=40656416533456463
# sof=7
# sa=56048317288111
# da=189399432218959
# len=29495
# crc=0
# payload='{}
# --------------> Eth_Pkt <--------------
# preamble=1407006782004744
# sof=1
# sa=156023397454272
# da=27178819180587
# len=41691
# crc=0
# payload='{}
# --------------> Eth_Pkt <--------------
# preamble=57938210035431386
# sof=4
# sa=161765169933800
# da=8372645406951
# len=44592
# crc=0
# payload='{}
# --------------> Eth_Pkt <--------------
# preamble=12784367867982038
# sof=5
# sa=218799862257177
# da=106330588620994
# len=42571
# crc=0
# payload='{}
# --------------> Eth_Pkt <--------------
# preamble=26253211076420074
# sof=2
# sa=247583456132842
# da=26738940385388
# len=16793
# crc=0
# payload='{}
# --------------> Eth_Pkt <--------------
# preamble=35013120034852254
# sof=0
# sa=151203404273299
# da=133456015071495
# len=45769
# crc=0
# payload='{}
# --------------> Eth_Pkt <--------------
# preamble=34585547880551002
# sof=7
# sa=60850104689243
# da=181654478713871
# len=16314
# crc=0
# payload='{}
# --------------> Eth_Pkt <--------------
# preamble=40511791976441492
# sof=4
# sa=278277238195805
# da=106442807273886
# len=610
# crc=0
# payload='{}
*/
