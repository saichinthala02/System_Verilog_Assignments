`include "eth_pkt.sv"
`include "eth_good_pkt.sv"
module top;
	eth_pkt pkt;
	initial begin
		pkt = new();
		pkt.randomize();
		pkt.print();
	end
endmodule


/* Output:-
# ----------> Eth-Good-Pkt <----------
# sof=251
# len=71
# count=1
# count=hi


# ----------> Eth-Pkt <----------
# sof=251
# len=31
# count=1

h.Illegal access to local member print.
*/
