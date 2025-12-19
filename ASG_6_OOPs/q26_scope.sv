//--> Scope.
int a;
class sample;
	int a;
	task val();
		a=100;
		$unit::a=200;
	endtask

	function void print();
		$display("Local Variable a=%0d",a);
		$display("Global Variable a=%0d",$unit::a);
	endfunction 
endclass

module top;
	sample s;
	initial begin
		s=new();
		s.val();
		s.print();
	end
endmodule
