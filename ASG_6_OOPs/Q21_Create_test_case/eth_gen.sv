class eth_gen;
	
	eth_good_pkt g_pkt;
	eth_bad_pkt b_pkt;
	eth_ill_pkt i_pkt;
	int sel;
	string testname;

	function new(string testname);
		this.testname=testname;
	endfunction
	task run();
		case(testname)
			"Test_all_rand_pkts":begin
				repeat(10)begin
					sel=$urandom_range(0,2);
					case(sel)
						0:begin
							g_pkt = new();
							g_pkt.randomize();
							g_pkt.print("Good-Pkt");
							mbox.put(g_pkt);
						end
						1:begin
							b_pkt = new();
							b_pkt.randomize();
							b_pkt.print("Bad-Pkt");
							mbox.put(b_pkt);
						end
						2:begin
							i_pkt = new();
							i_pkt.randomize();
							i_pkt.print("Ill-Pkt");
							mbox.put(i_pkt);
						end
					endcase
				end
			end
			"Test_all_good_pkts":begin
				repeat(10)begin
					g_pkt=new();
					g_pkt.randomize();
					g_pkt.print("Good-Pkt");
					mbox.put(g_pkt);
				end
			end
			"Test_all_bad_pkts":begin
				repeat(10)begin
					b_pkt=new();
					b_pkt.randomize();
					b_pkt.print("Bad-Pkt");
					mbox.put(b_pkt);
				end
			end
			"Test_all_ill_pkts":begin
				repeat(10)begin
					i_pkt=new();
					i_pkt.randomize();
					i_pkt.print("Ill-Pkt");
					mbox.put(i_pkt);
				end
			end
		endcase
	endtask
endclass
