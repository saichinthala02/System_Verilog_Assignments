class eth_pkt;
	local int count;
	protected rand bit[47:0]da;
	protected rand bit[15:0]len;
	rand byte payload[$];
		 bit[55:0]crc;

	function void print(string str="Eth_Pkt");
		count++;
		$display("--------------> %0s <--------------",str);
		$display("Count:- %0d",count);
		$display("da=%0d",da);
		$display("len=%0d",len);
		$display("crc=%0h",crc);
		$display("payload=%p",payload);
	endfunction

	constraint p_c{
		len inside {[10:15]};
		payload.size()==len;
	}
endclass

class eth_new_pkt extends eth_pkt;
	function void print();
		$display("len=%0d",this.len);
	endfunction
endclass

module top;
	eth_new_pkt pkt;
	initial begin
		pkt = new();
		pkt.randomize();
		pkt.print();
	end
endmodule

//# len=11
