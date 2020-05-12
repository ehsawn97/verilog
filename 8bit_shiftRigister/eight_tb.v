 module eight_tb();
	reg[7:0] myInput;
	reg shift_input, clk;
	reg[2:0] operation;
	wire[7:0] myOutput;
	wire shift_output;
	
	eightBitsh x (myInput, shift_input, operation, clk, shift_output, myOutput);
	//first initialize
	initial 
	begin
    clk = 0;
	forever #10 clk = ~clk;
	end
	//second initialize
	initial 
	begin
	//100 delay
	#100 myInput = 8'b00010011;
	shift_input = 1;
	operation = 101;
	//100 delay
	#100 operation = 110;
	$finish;
	end
 endmodule
