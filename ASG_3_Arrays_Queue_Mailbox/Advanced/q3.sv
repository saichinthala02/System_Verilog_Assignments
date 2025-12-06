module top;
	byte byteDA[];
	initial begin
		byteDA=new[10];
		for(int i=0;i<10;i++)begin
			byteDA[i]=$urandom_range(-128,127);
		end
		$display("Byte Dynamic Array:- %p",byteDA);
		byteDA=new[20](byteDA);
		for(int i=10;i<20;i++) byteDA[i]=$urandom_range(-128,127);

		$display("After Allocating extra memory and copy first array");
		$display("Byte Dynamic Array:- %p",byteDA);

	end
endmodule

/* Output:-
# Start time: 23:20:28 on Oct 30,2025
# Byte Dynamic Array:- '{55, -91, -27, 53, 69, -59, -15, -83, -26, -71}
# After Allocating extra memory and copy first array
# Byte Dynamic Array:- '{55, -91, -27, 53, 69, -59, -15, -83, -26, -71, -23, 51, -18, -43, -76, 83, 45, -4, 90, -124}
*/
