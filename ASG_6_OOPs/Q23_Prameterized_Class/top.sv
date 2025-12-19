`include "stack3.sv"
`include "apb_tx.sv"
module top;
	stack #(10,int) s_int;
	stack #(10,bit) s_bit;
	stack #(10,string) s_string;
	stack #(10,byte) s_byte;
	initial begin
		$display("---------------> INT Queue <---------------");
		s_int=new();
		s_int.put();
		$display("-------------------------------------------");
		s_int.get();
		$display("-------------------------------------------");
		$display("--------------> Bit Queue <----------------");
		s_bit=new();
		s_bit.put();
		$display("-------------------------------------------");
		s_bit.get();
		$display("-------------------------------------------");
		$display("-------------> String Queue <--------------");
		s_string=new();
		s_string.put();
		$display("-------------------------------------------");
		s_string.get();
		$display("-------------------------------------------");
		$display("--------------> Byte Queue <---------------");
		s_byte=new();
		s_byte.put();
		$display("-------------------------------------------");
		s_byte.get();
		$display("-------------------------------------------");
	end
endmodule
