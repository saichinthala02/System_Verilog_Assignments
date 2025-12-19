`include "eth_pkt.sv"
`include "eth_ext_pkt.sv"
module top;
	eth_pkt p;
	eth_ext_pkt pkt;
	initial begin
		pkt=new();
		$cast(p,pkt);
		p.randomize();
		p.print();
	end
endmodule

/* Output:-
# ----------> Eth_Pkt <-----------
# Count:- 1
# SA:- 210838264658979
# LEN:- 850
*/
