 module bTo7seg_testbench();
	reg[3:0] myInput;
	wire[6:0] myOutput;
	bTo7seg_dec x (myInput, myOutput);
	//starting
	initial begin
	//100 delay
	#100 myInput = 4'b0001;
	//100 delay
	#100 myInput = 4'b1000;
	$finish;
	//done woah
	end
 endmodule
