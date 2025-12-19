//--> Declaring a property as static, automatic.
class eth_pkt;
	static int count;
	rand bit[15:0]len;
	rand byte payload[$];
	rand bit[15:0]sof;
	rand bit[31:0]crc;

	function new();
		count++;
	endfunction

	function void print(string str="Eth-Pkt");
		$display("----------> %0s <----------",str);
		$display("Count:- %0d",count);
		$display("len:- %0d",len);
		$display("Payload:- %p",payload);
		$display("SOF:- %0d",sof);
		$display("CRC:- %0d",crc);
	endfunction

	constraint a_c{
		len inside {[10:15]};
		payload.size()==len;
	}
endclass

module top;
	eth_pkt pkt1,pkt2,pkt3;
	initial begin
		pkt1 = new();
		pkt2 = new();
		pkt3 = new();
		pkt1.randomize();
		pkt1.count=10;
		pkt1.print();
		pkt2.print();
		pkt3.print();
	end
endmodule

/* Output:-
# ----------> Eth-Pkt <----------
# Count:- 10
# len:- 11
# Payload:- '{-51, -99, -18, -71, -68, -58, 20, 120, 111, 37, 31}
# SOF:- 53141
# CRC:- 517017619
# ----------> Eth-Pkt <----------
# Count:- 1
# len:- 0
# Payload:- '{}
# SOF:- 0
# CRC:- 0
# ----------> Eth-Pkt <----------
# Count:- 1
# len:- 0
# Payload:- '{}
# SOF:- 0
# CRC:- 0
*/
