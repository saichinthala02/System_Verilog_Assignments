//--> Multi-dimensional Array Literals.
module top;
    int intA[2:0][3:0] = '{3{'{1,2,3,4}}}; // 3 rows × 4 columns

    initial begin
        $display("--> Print Array Fields Using %%p <--");
        $display("%p", intA);

        $display("=================================================");
        $display("--> Print Array Fields Using nested for loop <--");
        for (int i = 0; i < 3; i++) begin
            for (int j = 0; j < 4; j++) begin
                $display("intA[%0d][%0d] = %0d", i, j, intA[i][j]);
            end
        end

        $display("=================================================");
        $display("--> Print Array Fields Using foreach loop <--");
        foreach (intA[i, j]) begin
            $write("%0d ", intA[i][j]);
            if (j == 4) $write("\n");  
		end
        $display("\n=================================================");
    end
endmodule

