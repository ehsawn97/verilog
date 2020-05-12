module eightBC(myInput, clear, load, clock, incOrDec, countEnabler, myOutput);
 
	input[7:0] myInput;
	input clear, load, clock, incOrDec, countEnabler;
	output reg[7:0] myOutput;
	reg[7:0] memory = 8'b00000000;
	
	
	always @ (clock)
	//starting
	begin
	if(clear == 1)
	//memory initialize
	memory = 8'b00000000;
	else if(clear == 0)
	begin
	if(load == 1)
	myOutput = memory;
	else if(load == 0)
	begin
	if(countEnabler == 0)
    memory = myInput;
	else if(countEnabler == 1)
	begin
	if(incOrDec == 0)
	//if it doesnt run well at this part use 8'b00000001
	//memory += memory but here gives error so use this
	memory=memory+1;
	else if(incOrDec == 1)
	//like previous problem
	memory=memory-1;
	end
	 end
	  end			
	   end
	
 endmodule
