`include "eth_pkt.sv"
`include "eth_good_pkt.sv"
`include "eth_bad_pkt.sv"
`include "eth_ill_pkt.sv"
`include "eth_gen.sv"
`include "eth_bfm.sv"
`include "eth_env.sv"

module top;
	eth_env env;
	initial begin
		env = new();
		env.run();
	end
endmodule

/* Output:-
# ----------> eth_bad_pkt <-----------
# Count:- 1
# SA:- 248247750403061
# LEN:- 381
# Count_Bad:- 1
# ----------> eth_bad_pkt <-----------
# Count:- 2
# SA:- 157209945158922
# LEN:- 202
# Count_Bad:- 2
# ----------> eth-good-pkt <-----------
# Count:- 3
# SA:- 50566582676348
# LEN:- 470
# Count-Good:- 1
# ----------> eth-good-pkt <-----------
# Count:- 4
# SA:- 39067315350504
# LEN:- 146
# Count-Good:- 2
# ----------> eth_bad_pkt <-----------
# Count:- 5
# SA:- 133016327883474
# LEN:- 992
# Count_Bad:- 3
# ----------> eth_ill_pkt <-----------
# Count:- 6
# SA:- 214008731486239
# LEN:- 72
# Count_Ill:- 1
# ----------> eth_ill_pkt <-----------
# Count:- 7
# SA:- 124752930908514
# LEN:- 619
# Count_Ill:- 2
# ----------> eth_bad_pkt <-----------
# Count:- 8
# SA:- 83822167395919
# LEN:- 1023
# Count_Bad:- 4
# ----------> eth-good-pkt <-----------
# Count:- 9
# SA:- 252542580199099
# LEN:- 475
# Count-Good:- 3
# ----------> eth-good-pkt <-----------
# Count:- 10
# SA:- 256743134670081
# LEN:- 567
# Count-Good:- 4


# ----------> bfm_prints <-----------
# Count:- 10
# SA:- 248247750403061
# LEN:- 381
# Count_Bad:- 4
# ----------> bfm_prints <-----------
# Count:- 10
# SA:- 157209945158922
# LEN:- 202
# Count_Bad:- 4
# ----------> bfm_prints <-----------
# Count:- 10
# SA:- 50566582676348
# LEN:- 470
# Count-Good:- 4
# ----------> bfm_prints <-----------
# Count:- 10
# SA:- 39067315350504
# LEN:- 146
# Count-Good:- 4
# ----------> bfm_prints <-----------
# Count:- 10
# SA:- 133016327883474
# LEN:- 992
# Count_Bad:- 4
# ----------> bfm_prints <-----------
# Count:- 10
# SA:- 214008731486239
# LEN:- 72
# Count_Ill:- 2
# ----------> bfm_prints <-----------
# Count:- 10
# SA:- 124752930908514
# LEN:- 619
# Count_Ill:- 2
# ----------> bfm_prints <-----------
# Count:- 10
# SA:- 83822167395919
# LEN:- 1023
# Count_Bad:- 4
# ----------> bfm_prints <-----------
# Count:- 10
# SA:- 252542580199099
# LEN:- 475
# Count-Good:- 4
# ----------> bfm_prints <-----------
# Count:- 10
# SA:- 256743134670081
# LEN:- 567
# Count-Good:- 4
*/
