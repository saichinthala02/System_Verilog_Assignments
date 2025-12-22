/*
typedef struct{
	int age;
	string name;
	byte exp;
	string address;
	bit status;
}employee_t;
typedef employee_t t[20]; 
module top;
  employee_t arr[20],arr_sort[20],temp;
  function t sort(input employee_t arr[20],temp);
		t a;
		for(int i=0;i<20-1;i++)begin
			for(int j=i;j<20;j++)begin
			if(arr[i].age<arr[j].age)begin
				temp=arr[i];
				arr[i]=arr[j];
				arr[j]=temp;
			end
			end
		end
    	a=arr;
    	return a;
	endfunction
	initial begin
		foreach(arr[i])begin
			arr[i].age=$urandom_range(25,65);
			arr[i].exp=$urandom_range(0,15);
		end
		$display("employee_t:- %p",arr);
      arr_sort=sort(arr,temp);
      $display("employee_t:- %p",arr_sort);
	end
endmodule
*/
typedef struct{
	int age;
	string name;
	byte exp;
	string address;
	bit status;
}employee_t;

module top;
  employee_t arr[20],arr_sort[20],temp;
  function void sort(input employee_t arr[20],temp, output employee_t arr_sort[20]);
		for(int i=0;i<20-1;i++)begin
			for(int j=i;j<20;j++)begin
			if(arr[i].age<arr[j].age)begin
				temp=arr[i];
				arr[i]=arr[j];
				arr[j]=temp;
			end
			end
		end
    	arr_sort=arr;
	endfunction
	initial begin
		foreach(arr[i])begin
			arr[i].age=$urandom_range(25,65);
			arr[i].exp=$urandom_range(0,15);
		end
		$display("employee_t:- %p",arr);
      sort(arr,temp,arr_sort);
      $display("employee_t:- %p",arr_sort);
	end
endmodule

# employee_t:- '{'{age:43, name:"", exp:2, address:"", status:0}, 
				 '{age:56, name:"", exp:13, address:"", status:0}, 
				 '{age:58, name:"", exp:10, address:"", status:0}, 
				 '{age:32, name:"", exp:12, address:"", status:0}, 
				 '{age:57, name:"", exp:12, address:"", status:0}, 
				 '{age:53, name:"", exp:13, address:"", status:0}, 
				 '{age:60, name:"", exp:9, address:"", status:0}, 
				 '{age:33, name:"", exp:3, address:"", status:0}, 
				 '{age:54, name:"", exp:0, address:"", status:0}, 
				 '{age:44, name:"", exp:3, address:"", status:0}, 
				 '{age:32, name:"", exp:4, address:"", status:0}, 
				 '{age:51, name:"", exp:15, address:"", status:0}, 
				 '{age:46, name:"", exp:4, address:"", status:0}, 
				 '{age:36, name:"", exp:1, address:"", status:0}, 
				 '{age:50, name:"", exp:8, address:"", status:0}, 
				 '{age:47, name:"", exp:14, address:"", status:0}, 
				 '{age:30, name:"", exp:5, address:"", status:0}, 
				 '{age:39, name:"", exp:8, address:"", status:0}, 
				 '{age:25, name:"", exp:10, address:"", status:0}, 
				 '{age:61, name:"", exp:15, address:"", status:0}}

# employee_t:- '{'{age:61, name:"", exp:15, address:"", status:0}, 
				 '{age:60, name:"", exp:9, address:"", status:0}, 
				 '{age:58, name:"", exp:10, address:"", status:0}, 
				 '{age:57, name:"", exp:12, address:"", status:0}, 
				 '{age:56, name:"", exp:13, address:"", status:0}, 
				 '{age:54, name:"", exp:0, address:"", status:0}, 
				 '{age:53, name:"", exp:13, address:"", status:0}, 
				 '{age:51, name:"", exp:15, address:"", status:0}, 
				 '{age:50, name:"", exp:8, address:"", status:0}, 
				 '{age:47, name:"", exp:14, address:"", status:0}, 
				 '{age:46, name:"", exp:4, address:"", status:0}, 
				 '{age:44, name:"", exp:3, address:"", status:0}, 
				 '{age:43, name:"", exp:2, address:"", status:0}, 
				 '{age:39, name:"", exp:8, address:"", status:0}, 
				 '{age:36, name:"", exp:1, address:"", status:0}, 
				 '{age:33, name:"", exp:3, address:"", status:0}, 
				 '{age:32, name:"", exp:4, address:"", status:0}, 
				 '{age:32, name:"", exp:12, address:"", status:0}, 
				 '{age:30, name:"", exp:5, address:"", status:0}, 
				 '{age:25, name:"", exp:10, address:"", status:0}}

