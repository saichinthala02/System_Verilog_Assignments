`include "apb_tx.sv"
module top;
	apb_tx txq1[$:9],txq2[$:9];
	initial begin
		for(int i=0;i<10;i++)begin
			txq1[i]=new();
			txq1[i].randomize();
			txq1[i].print($sformatf("txq1[%0d]",i));
			txq2[i]=new();
			txq2[i].randomize();
			txq2[i].print($sformatf("txq2[%0d]",i));
		end
 		$display("txq1:- %p",txq1);
		$display("txq2:- %p",txq2);
		if(txq2[0].compare(txq1,txq2))$display("Both txq1 and txq2 are equal");
		else $display("Both txq1 and txq2 are not equal");

		txq1[2].copy(txq1,txq2);
		if(txq2[0].compare(txq1,txq2))$display("Both txq1 and txq2 are equal");
		else $display("Both txq1 and txq2 are not equal");
		for(int i=0;i<10;i++)begin
			txq1[i].print($sformatf("txq1[%0d]",i));
			txq2[i].print($sformatf("txq2[%0d]",i));
		end
	end
endmodule
/* Output:-
# --------> txq1[0] <--------
# addr:- 00010000 || 16
# data:- 54896
# wr_rd:- 0
# --------> txq2[0] <--------
# addr:- 00000100 || 4
# data:- 18506
# wr_rd:- 0
# --------> txq1[1] <--------
# addr:- 00000100 || 4
# data:- 28930
# wr_rd:- 1
# --------> txq2[1] <--------
# addr:- 00000100 || 4
# data:- 43010
# wr_rd:- 0
# --------> txq1[2] <--------
# addr:- 00000010 || 2
# data:- 35293
# wr_rd:- 0
# --------> txq2[2] <--------
# addr:- 00010000 || 16
# data:- 28668
# wr_rd:- 0
# --------> txq1[3] <--------
# addr:- 00001000 || 8
# data:- 8329
# wr_rd:- 0
# --------> txq2[3] <--------
# addr:- 00000010 || 2
# data:- 11197
# wr_rd:- 1
# --------> txq1[4] <--------
# addr:- 00000010 || 2
# data:- 58480
# wr_rd:- 0
# --------> txq2[4] <--------
# addr:- 10000000 || 128
# data:- 6866
# wr_rd:- 1
# --------> txq1[5] <--------
# addr:- 00100000 || 32
# data:- 14558
# wr_rd:- 0
# --------> txq2[5] <--------
# addr:- 00000000 || 0
# data:- 32300
# wr_rd:- 0
# --------> txq1[6] <--------
# addr:- 10000000 || 128
# data:- 58878
# wr_rd:- 0
# --------> txq2[6] <--------
# addr:- 00100000 || 32
# data:- 12154
# wr_rd:- 1
# --------> txq1[7] <--------
# addr:- 00001000 || 8
# data:- 6612
# wr_rd:- 1
# --------> txq2[7] <--------
# addr:- 00000010 || 2
# data:- 34902
# wr_rd:- 1
# --------> txq1[8] <--------
# addr:- 10000000 || 128
# data:- 1583
# wr_rd:- 1
# --------> txq2[8] <--------
# addr:- 00001000 || 8
# data:- 34089
# wr_rd:- 1
# --------> txq1[9] <--------
# addr:- 00000000 || 0
# data:- 19307
# wr_rd:- 1
# --------> txq2[9] <--------
# addr:- 10000000 || 128
# data:- 32565
# wr_rd:- 1
# txq1:- '{@apb_tx@1, @apb_tx@3, @apb_tx@5, @apb_tx@7, @apb_tx@9, @apb_tx@11, @apb_tx@13, @apb_tx@15, @apb_tx@17, @apb_tx@19}
# txq2:- '{@apb_tx@2, @apb_tx@4, @apb_tx@6, @apb_tx@8, @apb_tx@10, @apb_tx@12, @apb_tx@14, @apb_tx@16, @apb_tx@18, @apb_tx@20}
# Both txq1 and txq2 are not equal
# Both txq1 and txq2 are equal
# --------> txq1[0] <--------
# addr:- 00010000 || 16
# data:- 54896
# wr_rd:- 0
# --------> txq2[0] <--------
# addr:- 00010000 || 16
# data:- 54896
# wr_rd:- 0
# --------> txq1[1] <--------
# addr:- 00000100 || 4
# data:- 28930
# wr_rd:- 1
# --------> txq2[1] <--------
# addr:- 00000100 || 4
# data:- 28930
# wr_rd:- 1
# --------> txq1[2] <--------
# addr:- 00000010 || 2
# data:- 35293
# wr_rd:- 0
# --------> txq2[2] <--------
# addr:- 00000010 || 2
# data:- 35293
# wr_rd:- 0
# --------> txq1[3] <--------
# addr:- 00001000 || 8
# data:- 8329
# wr_rd:- 0
# --------> txq2[3] <--------
# addr:- 00001000 || 8
# data:- 8329
# wr_rd:- 0
# --------> txq1[4] <--------
# addr:- 00000010 || 2
# data:- 58480
# wr_rd:- 0
# --------> txq2[4] <--------
# addr:- 00000010 || 2
# data:- 58480
# wr_rd:- 0
# --------> txq1[5] <--------
# addr:- 00100000 || 32
# data:- 14558
# wr_rd:- 0
# --------> txq2[5] <--------
# addr:- 00100000 || 32
# data:- 14558
# wr_rd:- 0
# --------> txq1[6] <--------
# addr:- 10000000 || 128
# data:- 58878
# wr_rd:- 0
# --------> txq2[6] <--------
# addr:- 10000000 || 128
# data:- 58878
# wr_rd:- 0
# --------> txq1[7] <--------
# addr:- 00001000 || 8
# data:- 6612
# wr_rd:- 1
# --------> txq2[7] <--------
# addr:- 00001000 || 8
# data:- 6612
# wr_rd:- 1
# --------> txq1[8] <--------
# addr:- 10000000 || 128
# data:- 1583
# wr_rd:- 1
# --------> txq2[8] <--------
# addr:- 10000000 || 128
# data:- 1583
# wr_rd:- 1
# --------> txq1[9] <--------
# addr:- 00000000 || 0
# data:- 19307
# wr_rd:- 1
# --------> txq2[9] <--------
# addr:- 00000000 || 0
# data:- 19307
# wr_rd:- 1
*/
