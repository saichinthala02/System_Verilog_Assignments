class eth_pkt;
	rand bit[7:0]sof;
	rand bit[15:0]len;
	static int count;

	function new();
		count++;
	endfunction 

	local function void print(string str="Eth-Pkt");
		$display("----------> %0s <----------",str);
		$display("sof=%0d",sof);
		$display("len=%0d",len);
		$display("count=%0d",count);
	endfunction

	constraint payload_c{
		len inside {[20:40]};
	}
endclass
