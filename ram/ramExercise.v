//13 dec 2018
module ramExercise (Wr, Rd, Address, Data_in, myOutput);
	input Wr, Rd;
	input [9:0] Address;
	input [7:0] Data_in;
	output reg[7:0] myOutput;
	//initializing ram
    reg[7:0] Ram[1023:0];
	always @(Wr or Rd or Address or Data_in)
	begin
	if (Wr)
	Ram[Address] = Data_in;
	else if (Rd)
	myOutput = Ram[Address];
	end

endmodule
