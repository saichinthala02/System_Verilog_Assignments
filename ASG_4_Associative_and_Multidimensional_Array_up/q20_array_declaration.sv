//--> Q20. Which of the below array declarations are illegal.
module top;
	int intA[][];
	bit bitA[];
	bit []bitA1;
	int [9:0] intA1; //--> Illegal declaration.
	bit [9:0] bitA2[];
	logic [2:0] bit[3:0]; //--> Illegal declaration.
	logic[]; //--> Illegal declaration.
endmodule
