class eth_pkt;
	class my_pkt;
		class sample;
			typedef enum bit[1:0]{RED=0,BLUE,GREEN}color_t;
			color_t a;
		endclass
	endclass
endclass

module top;
	eth_pkt::my_pkt::sample s;
	initial begin
		s=new();
		repeat(10)begin
			s.a=$urandom_range(0,2);
			$display("%0s ---->  %0d",s.a,s.a);
		end
	end
endmodule

/* Output:-
# BLUE ---->  1
# GREEN ---->  2
# GREEN ---->  2
# RED ---->  0
# GREEN ---->  2
# RED ---->  0
# BLUE ---->  1
# BLUE ---->  1
# GREEN ---->  2
# GREEN ---->  2
*/
