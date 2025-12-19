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
