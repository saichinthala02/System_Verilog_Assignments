//--> Q24.
module top;
	int aa[string];
	int index,max,max_val=0;
	string si;
	initial begin
		$display("-------------------------------------------------------------------");
		repeat(10)begin
			index=$urandom_range(10,40);
			si=$sformatf("%0s",index);
			aa[si]=$urandom_range(200,300);
		end
		$display("Associative Array:- %p",aa);
		$display("-------------------------------------------------------------------");

		//--> Reverse Order.
		$display("--> Reversing Associative Array <--");
		void'(aa.last(si));
		do begin
			$display("\t--> aa[%0d]=%0d",si,aa[si]);
		end while(aa.prev(si));
		$display("-------------------------------------------------------------------");
		
		//--> maximum index
		max=aa.first(si);
		repeat(10)begin
			void'(aa.next(si));
			if(si>max) max=integer'(si);
		end
		$display("Max index:- %0s",max);
		$display("-------------------------------------------------------------------");
		//--> Maximun Value.
		void'(aa.first(si));
		max_val=aa[si];
		repeat(10)begin
			void'(aa.next(si));
			if(aa[si]>max_val) max_val=integer'(aa[si]);
		end
		$display("Max Value:- %0d",max_val);
		$display("-------------------------------------------------------------------");
	end
endmodule

/* Output:-
# Start time: 16:41:49 on Nov 01,2025
# Loading sv_std.std
# Loading work.top
# -------------------------------------------------------------------
# Associative Array:- '{"
# ":288, "":282, "":300, "":230, "":227, "":220, " ":297, """:201, "$":206, "&":267 }
# -------------------------------------------------------------------
# --> Reversing Associative Array <--
# 	--> aa[&]=267
# 	--> aa[$]=206
# 	--> aa["]=201
# 	--> aa[]=297
# 	--> aa[]=220
# 	--> aa[]=227
# 	--> aa[]=230
# 	--> aa[]=300
# 	--> aa[]=282
# 	--> aa[
# ]=288
# -------------------------------------------------------------------
# Max index:- 38
# -------------------------------------------------------------------
# Max Value:- 300
# -------------------------------------------------------------------
*/
