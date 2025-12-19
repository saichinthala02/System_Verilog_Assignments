`include "eth_pkt.sv"
`include "eth_good_pkt.sv"
`include "eth_bad_pkt.sv"
`include "eth_ill_pkt.sv"
`include "eth_gen.sv"
`include "eth_bfm.sv"
`include "eth_env.sv"


module top;
	eth_env env;
	string str;
	initial begin
		$value$plusargs("str=%0s",str);
		env = new(str);
		env.run();
	end
endmodule

/* Output:-
# ----------> Bad-Pkt <-----------
# Count:- 1
# SA:- 210838264658979
# LEN:- 850
# Count_Bad:- 1
# ----------> Bad-Pkt <-----------
# Count:- 2
# SA:- 167548928122799
# LEN:- 951
# Count_Bad:- 2
# ----------> Bad-Pkt <-----------
# Count:- 3
# SA:- 257039022736158
# LEN:- 126
# Count_Bad:- 3
# ----------> Bad-Pkt <-----------
# Count:- 4
# SA:- 35312169313476
# LEN:- 195
# Count_Bad:- 4
# ----------> Bad-Pkt <-----------
# Count:- 5
# SA:- 175604099374578
# LEN:- 661
# Count_Bad:- 5
# ----------> Bad-Pkt <-----------
# Count:- 6
# SA:- 244773808277470
# LEN:- 42
# Count_Bad:- 6
# ----------> Bad-Pkt <-----------
# Count:- 7
# SA:- 176620049864553
# LEN:- 382
# Count_Bad:- 7
# ----------> Bad-Pkt <-----------
# Count:- 8
# SA:- 272095395345117
# LEN:- 77
# Count_Bad:- 8
# ----------> Bad-Pkt <-----------
# Count:- 9
# SA:- 68846535236863
# LEN:- 608
# Count_Bad:- 9
# ----------> Bad-Pkt <-----------
# Count:- 10
# SA:- 184548512006395
# LEN:- 963
# Count_Bad:- 10
# ----------> BFM_Eth-Pkts <-----------
# Count:- 10
# SA:- 210838264658979
# LEN:- 850
# Count_Bad:- 10
# ----------> BFM_Eth-Pkts <-----------
# Count:- 10
# SA:- 167548928122799
# LEN:- 951
# Count_Bad:- 10
# ----------> BFM_Eth-Pkts <-----------
# Count:- 10
# SA:- 257039022736158
# LEN:- 126
# Count_Bad:- 10
# ----------> BFM_Eth-Pkts <-----------
# Count:- 10
# SA:- 35312169313476
# LEN:- 195
# Count_Bad:- 10
# ----------> BFM_Eth-Pkts <-----------
# Count:- 10
# SA:- 175604099374578
# LEN:- 661
# Count_Bad:- 10
# ----------> BFM_Eth-Pkts <-----------
# Count:- 10
# SA:- 244773808277470
# LEN:- 42
# Count_Bad:- 10
# ----------> BFM_Eth-Pkts <-----------
# Count:- 10
# SA:- 176620049864553
# LEN:- 382
# Count_Bad:- 10
# ----------> BFM_Eth-Pkts <-----------
# Count:- 10
# SA:- 272095395345117
# LEN:- 77
# Count_Bad:- 10
# ----------> BFM_Eth-Pkts <-----------
# Count:- 10
# SA:- 68846535236863
# LEN:- 608
# Count_Bad:- 10
# ----------> BFM_Eth-Pkts <-----------
# Count:- 10
# SA:- 184548512006395
# LEN:- 963
# Count_Bad:- 10
*/
