//-->Q21. Delete Operation in Associative Array.
module top;
	int assA[int];
	int index,idx_del;
	initial begin
		repeat(20)begin
			index=$urandom_range(10,250);
			assA[index]=$urandom_range(100,999);
		end
		$display("Before Deleting:- %p",assA);
		idx_del=132;
		assA.delete(idx_del);
		$display("After Deleting:- %p",assA);
	end
endmodule

/* Output:-
# Start time: 12:30:10 on Nov 01,2025
# Before Deleting:- '{15:676, 21:758, 25:838, 64:130, 66:621, 82:318, 97:909, 132:629, 147:564, 176:395, 185:290, 196:288, 197:422, 204:269, 229:207, 237:528, 242:749 }
# After Deleting:- '{15:676, 21:758, 25:838, 64:130, 66:621, 82:318, 97:909, 147:564, 176:395, 185:290, 196:288, 197:422, 204:269, 229:207, 237:528, 242:749 }
*/
