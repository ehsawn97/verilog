module ram_testbench;
	reg Wr, Rd;
	reg[9:0] Address; 
	reg[7:0] Data_in; 
	wire[7:0] myOutput;
	
	ramExercise x (Wr, Rd, Address, Data_in, myOutput);

	initial begin
	Wr = 0; Rd = 0; Data_in = 8'b00000111; Address = 10'b0000000000;

	//100delay
	#100 Wr = 1;
	//10delay
	#10  Data_in = 8'b00000111; Address = 10'b0000000001;
	//10delay
	//for every sequence we have 10 delay
	#10  Data_in = 8'b00000111; Address = 10'b0000000010;
	#10  Data_in = 8'b00000111; Address = 10'b0000000011;
	#10  Wr = 0; Rd = 1; Address = 10'b0000000011;
	#10 Address = 10'b0000000011;
	#10 Address = 10'b0000000010;
	#10 Address = 10'b0000000001;
	#10 Address = 10'b0000000000;
	$finish;
	end

endmodule
