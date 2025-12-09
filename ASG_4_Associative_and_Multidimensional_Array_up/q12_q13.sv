//--> Q12.
module top;
	integer a[4:0],b[1:5];
	integer c[5:1],d[-2:2];
	initial begin
		for(int i=0;i<5;i++)begin
			a[i]=$urandom_range(10,20);
		end	
		$display("Array-a:- %p",a);
		b=a;
		$display("Array-b:- %p",b);
		foreach(a[i]) $display("a[%0d]=%0d",i,a[i]);
		foreach(b[i]) $display("b[%0d]=%0d",i,b[i]);

		for(int i=1;i<=5;i++)begin
			c[i]=$urandom_range(10,20);
		end
		$display("Array-c:- %p",c);
		d=c;
		$display("Array-a:- %p",d);
		foreach(c[i]) $display("c[%0d]=%0d",i,c[i]);
		foreach(d[i]) $display("d[%0d]=%0d",i,d[i]);
	end
endmodule
/* Output:-
# Start time: 17:48:53 on Oct 31,2025
# Array-a:- '{15, 13, 18, 20, 17}
# Array-b:- '{15, 13, 18, 20, 17}
# a[4]=15
# a[3]=13
# a[2]=18
# a[1]=20
# a[0]=17
----------
# b[1]=15
# b[2]=13
# b[3]=18
# b[4]=20
# b[5]=17
===============================================================
# Array-c:- '{13, 16, 20, 13, 19}
# Array-a:- '{13, 16, 20, 13, 19}
# c[5]=13
# c[4]=16
# c[3]=20
# c[2]=13
# c[1]=19
----------
# d[-2]=13
# d[-1]=16
# d[0]=20
# d[1]=13
# d[2]=19
*/
//------------------------------------------------------------------------------------------------------------------------------


//--> Q13.
module top1;
	int arr1[5],arr2[10];
	initial begin
		for(int i=0;i<5;i++)begin
			arr1[i]=$urandom_range(10,250);
		end
		$display("Array-1:- %p",arr1);
		arr2=arr1;
		$display("Array-2:- %p",arr2);
	end
endmodule

//--> Array assignment or comparison to type 'int $[0:9]' from type 'int $[0:4]':  Array widths (10, 5) don't match
//--> To do vector copy of unpacked arrays both data type and size must same. 
