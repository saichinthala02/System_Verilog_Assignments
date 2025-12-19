class eth_env;
	mailbox mbox = new();
	eth_gen gen;
	eth_bfm bfm;
	task run();
		gen = new(mbox);
		bfm = new(mbox);

		fork
			gen.run();
			bfm.run();
		join
	endtask
endclass
