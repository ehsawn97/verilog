module ThreeTo8_simple(myInput, myOutput);
	input[7:0] myInput;
	output reg[2:0] myOutput;
	always @ (myInput)
	begin
	//using cases instead of some if
	case (myInput)
	8'b00000001: myOutput = 3'b000;
	8'b00000010: myOutput = 3'b001;
	8'b00000100: myOutput = 3'b010;
	8'b00001000: myOutput = 3'b011;
	8'b00010000: myOutput = 3'b100;
	8'b00100000: myOutput = 3'b101;
	8'b01000000: myOutput = 3'b110;
	8'b10000000: myOutput = 3'b111;
	//default case for none
	default: myOutput = 3'bxxx;
	endcase
	end
 endmodule
