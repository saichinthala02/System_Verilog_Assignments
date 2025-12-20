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

  // Correct delete method
  function void delete(ref apb_tx a[],input int index);
    if(index < 0 || index >= a.size()) begin
      $display("ERROR: Invalid index!");
      return;
    end

    for(int i = index; i < a.size()-1; i++)
      a[i] = a[i+1];
      a = new[a.size()-1](a);   // shrink
  endfunction

  constraint addr_c { $onehot0(addr); }

endclass

