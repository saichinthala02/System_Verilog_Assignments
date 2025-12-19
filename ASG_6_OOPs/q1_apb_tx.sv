class apb_tx;
	rand bit[7:0]addr;
	rand bit[15:0]data;
	rand bit wr_rd;

	//--> Print Method
	function void print();
		$display("addr:- %b || %0d",addr,addr);
		$display("data:- %0d",data);
		$display("wr_rd:- %b",wr_rd);
	endfunction

	//--> Copy Method
	function void copy(apb_tx c);
		this.addr = c.addr;
		this.data = c.data;
		this.wr_rd =c.wr_rd;
	endfunction

	//--> Compare Method
	function bit compare(apb_tx c);
		return	((this.addr == c.addr) && (this.data == c.data) && (this.wr_rd == c.wr_rd));
	endfunction

	//--> Constraint
	constraint addr_c{
		//addr%4==0;
		addr%8==0;
	}
endclass

module top;
	apb_tx tx1[5];
	apb_tx tx2[5];
	initial begin
		for(int i=0;i<5;i++)begin
			tx1[i]=new();
			tx2[i]=new();
			tx1[i].randomize();
			$display("tx1[%0d]:- %p",i,tx1[i]);
		end
		foreach(tx2[i])begin
			tx2[i].copy(tx1[i]);
			$display("tx2[%0d]:- %p",i,tx2[i]);
		end
		foreach(tx1[i])begin
			if(tx1[i].compare(tx2[i])) $display(" tx1[%0d] matches with tx2[%0d]",i,i);
			else $display(" tx1[%0d] not matches with tx2[%0d]",i,i);
		end
	end
endmodule


/* Output:-
# tx1[0]:- '{addr:152, data:54896, wr_rd:0}
# tx1[1]:- '{addr:192, data:28930, wr_rd:1}
# tx1[2]:- '{addr:64, data:35293, wr_rd:0}
# tx1[3]:- '{addr:176, data:8329, wr_rd:0}
# tx1[4]:- '{addr:64, data:58480, wr_rd:0}

# tx2[0]:- '{addr:152, data:54896, wr_rd:0}
# tx2[1]:- '{addr:192, data:28930, wr_rd:1}
# tx2[2]:- '{addr:64, data:35293, wr_rd:0}
# tx2[3]:- '{addr:176, data:8329, wr_rd:0}
# tx2[4]:- '{addr:64, data:58480, wr_rd:0}

#  tx1[0] matches with tx2[0]
#  tx1[1] matches with tx2[1]
#  tx1[2] matches with tx2[2]
#  tx1[3] matches with tx2[3]
#  tx1[4] matches with tx2[4]
*/
