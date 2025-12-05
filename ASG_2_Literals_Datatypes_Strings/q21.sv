//--> Read temperature values in a text file.
module top;
	string s;
	int fh,r,days,fhw,rw;
	real rd,sum,avg,min,max;
	real arr[14];
	initial begin
		days=0;
		sum=0.0;
		avg=0.0;
		min=999;
		max=0;
		fh=$fopen("temperature.txt","r");
		for(int i=0;i<14;i++)begin
			r=$fgets(s,fh);
			rd=s.atoreal();
			days++;
			sum=sum+rd;
			if(rd<min) min=rd;
			if(rd>max) max=rd;
			arr[i]=rd;
			$display("Temperature Day-%0d --> %0.2f",i+1,rd);
		end
		$display("----------------------------------");
		$display("Total Daya:- %0d",days);
		$display("Total Temperature:- %0.2f",sum);
		avg=sum/days;
		$display("Average Temperature:- %0.2f",avg);
		$display("----------------------------------");
		$display("The Min Temprature is %0.2f",min);
		$display("The Max Temprature is %0.2f",max);
		$display("----------------------------------");
		arr.sort();
		$display("%p",arr);
		$fclose(fh);

		fhw=$fopen("temperature_w.txt","w");
		$fdisplay(fhw,"The temperatures in Ascending Order:-");
		for(int i=0;i<days;i=i+1)begin
			$fdisplay(fhw,"Temprature-%0d:- %0f",i+1,arr[i]);
		end
		$fclose(fhw);
	end
endmodule
