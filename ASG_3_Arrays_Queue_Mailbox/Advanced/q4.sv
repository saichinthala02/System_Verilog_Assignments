module top;
	integer intQ[$];
	initial begin
		repeat(10)begin
			intQ.push_back($urandom_range(4,25));
			$display("%p",intQ);
		end
	end
endmodule 

/* Output:-
# Start time: 23:27:02 on Oct 30,2025
# '{22}
# '{22, 14}
# '{22, 14, 12}
# '{22, 14, 12, 18}
# '{22, 14, 12, 18, 20}
# '{22, 14, 12, 18, 20, 24}
# '{22, 14, 12, 18, 20, 24, 18}
# '{22, 14, 12, 18, 20, 24, 18, 14}
# '{22, 14, 12, 18, 20, 24, 18, 14, 21}
# '{22, 14, 12, 18, 20, 24, 18, 14, 21, 18}
*/
