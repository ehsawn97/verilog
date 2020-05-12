module ThreeTo8_p_tb();
	reg[7:0] myInput;
	wire[2:0] myOutput;
	
	ThreeTo8_p u(myInput, myOutput);
	
	initial begin
	//100 delay
	#100 myInput = 8'b00000001;
	//another 100 delay
	#100 myInput = 8'b00001110;
	$finish;
	end
 endmodule
