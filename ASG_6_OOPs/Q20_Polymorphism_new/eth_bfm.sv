class eth_bfm;
	eth_pkt pkt;
	mailbox gen2bfm = new();

	function new(mailbox mbox);
		gen2bfm = mbox;
	endfunction

	task run();
		forever begin
			gen2bfm.get(pkt);
			pkt.print("bfm_prints");
		end
	endtask
endclass
