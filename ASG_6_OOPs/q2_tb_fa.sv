/*
class full_adder;
	rand bit a,b,cin;
		 bit s,co;

	function bit[1:0] fa(input bit a,b,cin, output bit s,co);
		s = a^b^cin;
		co = a&b | b&cin | cin&a;
		return {s,co};
	endfunction
endclass 
*/

class full_adder;
	randc bit[2:0]i;
		  bit[1:0]o;

	function bit[1:0] fa(input bit[2:0]a,output bit[1:0]o);
		o[0]=a[0]^a[1]^a[2];
		o[1]=a[0]&a[1] | a[1]&a[2] | a[2]&a[0];
		return o;
	endfunction
endclass


module top;
	full_adder f;
	initial begin
		f = new();
		repeat(5)begin
			f.randomize();
			f.fa(f.i,f.o);
			$display("a=%b | b=%b | cin=%b | sum=%b | Carry=%b",f.i[2],f.i[1],f.i[0],f.o[0],f.o[1]);
		end
	end
endmodule

/* Output:-
time: 06:23:06 on Nov 19,2025
# a=1 | b=0 | cin=1 | sum=0 | Carry=1
# a=1 | b=1 | cin=0 | sum=0 | Carry=1
# a=0 | b=1 | cin=0 | sum=1 | Carry=0
# a=0 | b=1 | cin=1 | sum=0 | Carry=1
# a=1 | b=1 | cin=1 | sum=1 | Carry=1
# a=0 | b=0 | cin=0 | sum=0 | Carry=0
# a=1 | b=0 | cin=0 | sum=1 | Carry=0
# a=0 | b=0 | cin=1 | sum=1 | Carry=0
*/
