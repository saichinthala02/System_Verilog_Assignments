class eth_env;
	eth_gen gen;
	eth_bfm bfm;
	string test;
	function new(string str);
		test=str;
	endfunction
	task run();
		gen = new(test);
		bfm = new();

		gen.run();
		bfm.run();
	endtask
endclass
