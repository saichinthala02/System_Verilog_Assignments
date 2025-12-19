class eth_good_pkt extends eth_pkt;
	static int count_good;
	static string count;

	function new();
		count_good++;
		this.count="hi";
	endfunction

	function void print(string str="Eth-Good-Pkt");
		super.print(str);
		$display("count=%0s",this.count);
	endfunction
	
	constraint payload_c{
		len inside {[60:80]};
	}
endclass
