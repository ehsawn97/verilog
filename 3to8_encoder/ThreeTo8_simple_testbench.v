module ThreeTo8_simple_testbench();
	reg[7:0] myInput;
	wire[2:0] myOutput;
	
	ThreeTo8_simple u(myInput, myOutput);
	
	initial begin
	//100 delay
	#100 myInput = 8'b00000001;
	//another 100 delay
	#100 myInput = 8'b00001000;
	$finish;
	end
 endmodule
