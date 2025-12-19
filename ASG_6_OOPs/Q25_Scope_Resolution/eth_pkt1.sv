class eth_pkt;
	class m_pkt;
		typedef enum int{a=32,b,c,d}dd;
	endclass
endclass

module top;
	initial begin
		$display("Enum Variable a:- %0d",eth_pkt::m_pkt::a);
		$display("Enum Variable a:- %0d",eth_pkt::m_pkt::b);
		$display("Enum Variable a:- %0d",eth_pkt::m_pkt::c);
		$display("Enum Variable a:- %0d",eth_pkt::m_pkt::d);
	end
endmodule

