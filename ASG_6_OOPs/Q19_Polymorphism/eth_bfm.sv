class eth_bfm;
	eth_pkt pkt;
	task run();
		forever begin
			gen2bfm.get(pkt);
			pkt.print("bfm_prints");
		end
	endtask
endclass
