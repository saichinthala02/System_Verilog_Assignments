//-->
module top;
	reg[1023:0]mem[1023:0];
	initial begin
		$readmemh("image.hex",mem);
		$writememb("out.bin",mem);
	end
endmodule
