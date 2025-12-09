module top;
	bit [3:0] bitA,bitB,bitC,bitAND,bitOR,bitXOR;
	bit [1:0] s1,s2,s3;
	initial begin
		bitA=4'b1101;
		bitB=4'b1111;
		bitC=4'b1001;
		$display("------------------------------------------------------------");
		$display("First Packed Array(bitA):-%b",bitA);
		$display("Second Packed Array(bitB):-%b",bitB);
		$display("Third Packed Array(bitC):-%b",bitC);
		$display("------------------------------------------------------------");
		
		bitAND = bitA & bitB & bitC;
		bitOR  = bitA | bitB | bitC;
		bitXOR = bitA ^ bitB ^ bitC;

		$display("The AND operation of packed arrays bitA,bitB,bitC is %b",bitAND);
		$display("The OR operation of packed arrays bitA,bitB,bitC is %b",bitOR);
		$display("The XOR operation of packed arrays bitA,bitB,bitC is %b",bitXOR);
		$display("------------------------------------------------------------");

		//--> Slicing Operations
		s1=bitA[3:2];
		s2=bitB[1:0];
		s3=bitC[2:1];
		$display("Slice-1 is part of Array-1(bitA[3:2]) := %b",s1);
		$display("Slice-2 is part of Array-2(bitA[1:0]) := %b",s2);
		$display("Slice-3 is part of Array-3(bitA[2:1]) := %b",s3);
		$display("------------------------------------------------------------");
	end
endmodule

/* Output:-
# Start time: 16:07:37 on Oct 31,2025
# ------------------------------------------------------------
# First Packed Array(bitA):-1101
# Second Packed Array(bitB):-1111
# Third Packed Array(bitC):-1001
# ------------------------------------------------------------
# The AND operation of packed arrays bitA,bitB,bitC is 1001
# The OR operation of packed arrays bitA,bitB,bitC is 1111
# The XOR operation of packed arrays bitA,bitB,bitC is 1011
# ------------------------------------------------------------
# Slice-1 is part of Array-1(bitA[3:2]) := 11
# Slice-2 is part of Array-2(bitA[1:0]) := 11
# Slice-3 is part of Array-3(bitA[2:1]) := 00
# ------------------------------------------------------------
*/
