class stack #(parameter DEPTH,parameter type T);
	T queue[$];
	int value;
	T y;

	function void put();
		repeat(DEPTH)begin
			value=$urandom_range(65,90);
			y=T'(value);
			queue.push_back(y);
			$display("Data:- %p",queue);
		end
	endfunction

	function void get();
		repeat(DEPTH)begin
			y=queue.pop_back();
			$display("Pop-Out Value:- %p",y);
			$display("Data:- %p",queue);
		end
	endfunction
endclass



