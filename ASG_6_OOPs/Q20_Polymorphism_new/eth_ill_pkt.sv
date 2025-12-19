class eth_ill_pkt extends eth_pkt;
	static int count_ill;

	function new();
		count_ill++;
	endfunction
	
	function void print(string str="eth_ill_pkt");
		super.print(str);
		$display("Count_Ill:- %0d",count_ill);
	endfunction
endclass
