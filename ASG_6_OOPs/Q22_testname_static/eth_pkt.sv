class eth_pkt;
	static int count;
	rand bit[47:0]sa;
	rand bit[9:0]len;

	function new();
		count++;
	endfunction 

	virtual function void print(string str="Eth_Pkt");
		$display("----------> %0s <-----------",str);
		$display("Count:- %0d",count);
		$display("SA:- %0d",sa);
		$display("LEN:- %0d",len);
	endfunction
endclass
