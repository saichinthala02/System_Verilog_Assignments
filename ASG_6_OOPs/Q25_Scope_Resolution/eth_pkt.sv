class eth_pkt;
	class m_pkt;
		static int count;
	endclass
endclass

module top;
	initial begin
		eth_pkt::m_pkt::count=100;
		$display("Static Variable a:- %0d",eth_pkt::m_pkt::count);
	end
endmodule

/* Output:-
# Static Variable a:- 100
*/
