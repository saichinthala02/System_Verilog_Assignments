module top;
	int aa[int];
	int index,max,max_val=0;
	initial begin
		$display("-------------------------------------------------------------------");
		repeat(10)begin
			index=$urandom_range(10,40);
			aa[index]=$urandom_range(200,300);
		end
		$display("Associative Array:- %p",aa);
		$display("-------------------------------------------------------------------");

		//--> Reverse Order.
		$display("--> Reversing Associative Array <--");
		void'(aa.last(index));
		do begin
			$display("\t--> aa[%0d]=%0d",index,aa[index]);
		end while(aa.prev(index));
		$display("-------------------------------------------------------------------");
		
		//--> maximum index
		max=aa.first(index);
		repeat(10)begin
			void'(aa.next(index));
			if(index>max) max=index;
		end
		$display("Max index:- %0d",max);
		$display("-------------------------------------------------------------------");
		//--> Maximun Value.
		void'(aa.first(index));
		max_val=aa[index];
		repeat(10)begin
			void'(aa.next(index));
			if(aa[index]>max_val) max_val=aa[index];
		end
		$display("Max Value:- %0d",max_val);
		$display("-------------------------------------------------------------------");
	end
endmodule

/* Output:-
# Start time: 13:40:21 on Nov 01,2025
# Loading sv_std.std
# Loading work.top
# -------------------------------------------------------------------
# Associative Array:- '{13:288, 15:282, 18:300, 24:230, 25:227, 28:220, 32:297, 34:201, 36:206, 38:267 }
# -------------------------------------------------------------------
# --> Reversing Associative Array <--
# 	--> aa[38]=267
# 	--> aa[36]=206
# 	--> aa[34]=201
# 	--> aa[32]=297
# 	--> aa[28]=220
# 	--> aa[25]=227
# 	--> aa[24]=230
# 	--> aa[18]=300
# 	--> aa[15]=282
# 	--> aa[13]=288
# -------------------------------------------------------------------
# Max index:- 38
# -------------------------------------------------------------------
# Max Value:- 300
# -------------------------------------------------------------------
*/
