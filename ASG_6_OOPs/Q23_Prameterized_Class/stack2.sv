class stack #(parameter DEPTH,parameter type T);
	T queue[$];

	T y;

	function void put();
		repeat(DEPTH)begin
			y=new();
			y.randomize();
			queue.push_back(y);
			$display("Data:- %p",queue);
		end
		
	endfunction

	function void get();
		repeat(DEPTH)begin
			y=queue.pop_back();
          y.print();
			$display("Data:- %p",queue);
		end
	endfunction
endclass
