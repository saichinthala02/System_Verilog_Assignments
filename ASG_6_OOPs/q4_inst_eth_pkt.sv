//--> Declaration of Ethernet packet.

class eth_pkt;
	static int count;
	rand bit[47:0]da;
	rand bit[15:0]len;
	rand byte payload[$];
		 bit[55:0]crc;

	function void print();
		count++;
		$display("-------------------");
		$display("Count:- %0d",count);
		$display("da=%0d",da);
		$display("len=%0d",len);
		$display("crc=%0d",crc);
		$display("payload=%p",payload);
	endfunction

	constraint len_c{
		len inside {[42:1500]};
		payload.size()==len;
	}
endclass

module top;
	eth_pkt pkt;
	initial begin
		pkt = new();
		$display("Count:- %0d",pkt.count);
		$display("da=%0d",pkt.da);
		$display("len=%0d",pkt.len);
		$display("crc=%0d",pkt.crc);
		$display("payload=%p",pkt.payload);
	end
endmodule

//# Count:- 0
//# da=0
//# len=0
//# crc=0
//# payload='{}
