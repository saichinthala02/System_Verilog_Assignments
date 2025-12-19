//--> Declaration of Ethernet packet.

class eth_pkt;
	static int count;
	rand bit[47:0]da;
	rand bit[15:0]len;
	rand byte payload[$];
		 bit[55:0]crc;

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
		//--> Randomize without assert.
		pkt.randomize();
		$display("Count:- %0d",pkt.count);
		$display("da=%0d",pkt.da);
		$display("len=%0d",pkt.len);
		$display("crc=%0d",pkt.crc);
		$display("payload=%p",pkt.payload);
		//--> randomize with assert.
		//assert(pkt.randomize());
		//--> randomize conform using if
		if(pkt.randomize()) $display("--> Randomization is Done");
		else $display("--> Randomization is not Done");
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
//
//# Count:- 0
//# da=197270863703325
//# len=61323
//# crc=0
//# payload='{}
//
//# --> Randomization is Done
//# Count:- 0
//# da=58976385815933
//# len=2670
//# crc=0
//# payload='{}
