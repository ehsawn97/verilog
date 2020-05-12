module eightBC_testbench();
	
	reg[7:0] myInput;
	reg clear, load, clock, incOrDec, countEnabler;
	wire[7:0] myOutput;
	
	
    eightBC u (myInput, clear, load, clock, incOrDec, countEnabler, myOutput);
	//initialing
	initial begin
	clock = 0;
	//using 10 time delay
    forever #10 clock = ~clock;
	end
	
	initial begin
	//100 delay
	#100 myInput = 8'b00001011; clear = 0; load = 0; countEnabler = 0; incOrDec = 0;
	//20 delay
	#20 countEnabler = 1;
	//300delay
	#300 clear = 1;
	$finish;
	end
 endmodule
