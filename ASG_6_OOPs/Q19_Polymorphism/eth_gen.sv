class eth_gen;
	eth_good_pkt g_pkt;
	eth_bad_pkt b_pkt;
	eth_ill_pkt i_pkt;

	int sel;
	task run();
		repeat(10)begin
			sel = $urandom_range(0,2);
			case(sel)
				0 : begin
					g_pkt = new();
					assert(g_pkt.randomize());
					g_pkt.print();
					gen2bfm.put(g_pkt);
				end
				1 : begin
					b_pkt = new();
					assert(b_pkt.randomize());
					b_pkt.print();
					gen2bfm.put(b_pkt);
				end
				2 : begin
					i_pkt = new();
					assert(i_pkt.randomize());
					i_pkt.print();
					gen2bfm.put(i_pkt);
				end
			endcase
		end
	endtask

endclass
