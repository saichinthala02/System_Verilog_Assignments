//--> Q17. a.int intA[2:0][3:0];
//--> b. logic [4:0][5:0] arr[7:0];
module top;
	int intA[2:0][3:0];
	logic [4:0][5:0] arr[7:0];
	initial begin
		for(int i=0;i<3;i++)begin
			for(int j=0;j<4;j++)begin
				intA[i][j] = $urandom_range(200,300);
			end
		end
		$display("%p",intA);

    	for(int i=0;i<8;i++)begin
			for(int j=0;j<5;j++)begin
				arr[i][j] = $urandom_range(200,300);
			end
		end
		$display("%p",arr);
	end
endmodule

/* Output:-
# Start time: 20:04:41 on Oct 31,2025
# '{'{206, 244, 230, 268}, 
    '{227, 217, 282, 245}, 
	'{267, 202, 288, 202}}
# '{'{23, 23, 13, 53, 49}, 
	'{5, 63, 5, 32, 11}, 
	'{9, 38, 20, 41, 13}, 
	'{32, 35, 53, 58, 27}, 
	'{23, 6, 32, 26, 11}, 
	'{32, 62, 48, 13, 15}, 
	'{32, 11, 44, 31, 41}, 
	'{55, 9, 35, 28, 18}}
*/
