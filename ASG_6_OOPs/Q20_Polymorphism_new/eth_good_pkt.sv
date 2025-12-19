class eth_good_pkt extends eth_pkt;
	static int count_good;

	function new();
		count_good++;
	endfunction

	function void print(string str="eth-good-pkt");
		super.print(str);
		$display("Count-Good:- %0d",count_good);
	endfunction
endclass
