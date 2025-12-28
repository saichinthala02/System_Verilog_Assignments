module top;
	string testname;
	int tx_count;
	initial begin
		$value$plusargs("testname=%0s",testname);
		$value$plusargs("tx_count=%0d",tx_count);
		$display("Testname:- %0s",testname);
		$display("tx_count:- %0d",tx_count);
	end
endmodule

/* Output:-
# Start time: 17:58:50 on Nov 16,2025
# Testname:- TRANSACTION
# tx_count:- 50
*/
