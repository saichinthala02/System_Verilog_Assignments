module top;
	parameter SIZE = 10;
	logic [SIZE-1:0] valid;
	logic [SIZE-1:0] ready;

	initial begin
		{valid,ready}=$random;
		for(int i=0;i<SIZE;i++)begin
			if(valid[i]&&ready[i])begin
				//--> Data transfer.
			end
		end
	end
endmodule
