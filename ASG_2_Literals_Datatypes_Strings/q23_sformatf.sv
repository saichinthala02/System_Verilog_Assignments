module top;
	string name;
	int num;
	initial begin
		repeat(20)begin
			num=$urandom_range(65,90);
			name=$sformatf("INT : %0d || ASCII : %0s",num,num);
			$display("%0s",name);
		end
	end
endmodule

/* Output:-
# Start time: 22:48:43 on Oct 28,2025
# Loading sv_std.std
# Loading work.top
# INT : 89 || ASCII : Y
# INT : 65 || ASCII : A
# INT : 65 || ASCII : A
# INT : 69 || ASCII : E
# INT : 81 || ASCII : Q
# INT : 65 || ASCII : A
# INT : 77 || ASCII : M
# INT : 73 || ASCII : I
# INT : 90 || ASCII : Z
# INT : 67 || ASCII : C
# INT : 83 || ASCII : S
# INT : 69 || ASCII : E
# INT : 80 || ASCII : P
# INT : 85 || ASCII : U
# INT : 68 || ASCII : D
# INT : 73 || ASCII : I
# INT : 77 || ASCII : M
# INT : 76 || ASCII : L
# INT : 84 || ASCII : T
# INT : 78 || ASCII : N
*/
