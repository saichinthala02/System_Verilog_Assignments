//--> Simple example based on user defined methods.
class eth_pkt;
	rand bit[15:0]len;
	rand byte payload[$];
	rand bit[15:0]sof;
	rand bit[31:0]crc;

	function void print(string str="Eth-Pkt");
		$display("----------> %0s <----------",str);
		$display("len:- %0d",len);
		$display("Payload:- %p",payload);
		$display("SOF:- %0d",sof);
		$display("CRC:- %0d",crc);
	endfunction

	function void pack(input eth_pkt p,output byte q[$]);
		q={<<byte{p.len,p.payload,p.sof,p.crc}};
	endfunction

	function void unpack(input byte q[$],output eth_pkt p);
		p = new();
		{<<byte{p.len,p.payload,p.sof,p.crc}} = q;
	endfunction

	function bit compare(eth_pkt p1,p2);
		return (p1.len==p2.len && p1.payload==p2.payload && p1.sof==p2.sof && p1.crc==p2.crc);
	endfunction

	constraint a_c{
		len inside {[10:15]};
		payload.size()==len;
	}
endclass


module top;
	eth_pkt pkt1,pkt2;
	byte queue[$];
	initial begin
		pkt1 = new();
		pkt2 = new();
		pkt1.randomize();
		pkt1.print("Eth-Pkt-1");
		pkt1.pack(pkt1,queue);
		$display("Packed Queue:- %p",queue);
		pkt1.unpack(queue,pkt2);
		pkt2.print("Eth_Pkt-2");

		if(pkt1.compare(pkt1,pkt2)) $display("Both pkt1 and pkt2 are same");
		else $display("Both pkt1 and pkt2 are not same");
	end
endmodule

/* Output:-
# ----------> Eth-Pkt-1 <----------
# len:- 11
# Payload:- '{-51, -99, -18, -71, -68, -58, 20, 120, 111, 37, 31}
# SOF:- 53141
# CRC:- 517017619
# Packed Queue:- '{19, 16, -47, 30, -107, -49, 31, 37, 111, 120, 20, -58, -68, -71, -18, -99, -51, 11, 0}
# ----------> Eth_Pkt-2 <----------
# len:- 11
# Payload:- '{-51, -99, -18, -71, -68, -58, 20, 120, 111, 37, 31}
# SOF:- 53141
# CRC:- 517017619
# Both pkt1 and pkt2 are same
*/
