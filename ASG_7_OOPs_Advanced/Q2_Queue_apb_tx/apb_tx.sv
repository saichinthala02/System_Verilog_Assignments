class apb_tx;

  rand bit [7:0]  addr;
  rand bit [15:0] data;
  rand bit        wr_rd;

  function void print(string str="apb_tx");
    $display("--------> %0s <--------",str);
    $display("addr:- %b || %0d",addr,addr);
    $display("data:- %0d",data);
    $display("wr_rd:- %b",wr_rd);
  endfunction

  //-->compare method for comparing two txq's
  function bit compare(input apb_tx t1[$:9],t2[$:9]);
  	  bit x=1;
	  foreach(t1[i])begin
		if(t1[i].addr==t2[i].addr && t1[i].data==t2[i].data && t1[i].wr_rd==t2[i].wr_rd) x=1;
		else x=0;
	  end
	  if(x==1) return 1;
	  else return 0;
  endfunction

  //--> Copy method.
  function void copy(input apb_tx t1[$:9],output apb_tx t2[$:9]);
	foreach(t1[i])begin
		t2[i]=new();
		t2[i].addr=t1[i].addr;	
		t2[i].data=t1[i].data;	
		t2[i].wr_rd=t1[i].wr_rd;	
	end
  endfunction

  constraint addr_c { $onehot0(addr); }

endclass

