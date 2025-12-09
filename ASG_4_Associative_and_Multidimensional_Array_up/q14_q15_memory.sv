//--> Q14. Declare 1Kb size memory of depth 64 locations, each element of size 16 bits

module tb;
	bit [0:15] mem[64];
endmodule


//--> Q15. Declare 2Mb size memory, each element of size 16 bits.
module top;
	parameter DEPTH = 131072;
	parameter WIDTH = 16;
	bit [WIDTH-1:0] mem[DEPTH-1:0];
	//--> Task to assign 0's to all memory locations.
	task memory_initialize();
		for(int i=0;i<DEPTH;i++)begin
			mem[i]=0;
		end
	end
endmodule
