class eth_bfm;
	eth_pkt pkt;

	task run();
		forever begin
			mbox.get(pkt);
			pkt.print("BFM_Eth-Pkts");
		end
	endtask
	
endclass
