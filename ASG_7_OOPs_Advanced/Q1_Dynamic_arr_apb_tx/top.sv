`include "apb_tx.sv"
module top;
	apb_tx tx[];
	int val;
	initial begin
		tx=new[10];
		foreach(tx[i])begin
			tx[i]=new();
			tx[i].randomize();
			tx[i].print($sformatf("apb_tx-%0d",i+1));
		end
		$display("Array:- %p",tx);
		val=tx.size();
		$display("Array size:- %0d",val);
		tx[0].delete(tx,5);
		$display("Array:- %p",tx);
	end
endmodule
