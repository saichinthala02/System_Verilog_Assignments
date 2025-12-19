class eth_bfm;
	eth_pkt pkt;
	mailbox mbox = new();

	function new(mailbox mbox);
		this.mbox=mbox;
	endfunction

	task run();
		forever begin
			mbox.get(pkt);
			pkt.print("BFM_Eth-Pkts");
		end
	endtask
	
endclass
