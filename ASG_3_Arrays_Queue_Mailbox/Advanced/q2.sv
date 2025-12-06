module top;
	integer intDA[];
	initial begin
		for(int i=0;i<10;i++)begin
			intDA[i]=$urandom_range(10,100);
			$display("intDA[%0d]=%0d",i,intDA[i]);
		end
	end
endmodule 

/* Output:-
# Start time: 23:07:10 on Oct 30,2025
# Loading sv_std.std
# Loading work.top
# intDA[0]=x
# intDA[1]=x
# intDA[2]=x
# intDA[3]=x
# intDA[4]=x
# intDA[5]=x
# intDA[6]=x
# intDA[7]=x
# intDA[8]=x
# intDA[9]=x
*/
