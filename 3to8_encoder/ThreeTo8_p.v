module ThreeTo8_p(myInput, myOutput);
	input[7:0] myInput;
	output reg[2:0] myOutput;
	always @ (myInput)
	begin
	//case for priority
	casex (myInput)
	8'b00000001: myOutput = 3'b000;
    8'b0000001x: myOutput = 3'b001;
	8'b000001xx: myOutput = 3'b010;
	8'b00001xxx: myOutput = 3'b011;
	8'b0001xxxx: myOutput = 3'b100;
	8'b001xxxxx: myOutput = 3'b101;
	8'b01xxxxxx: myOutput = 3'b110;
	8'b1xxxxxxx: myOutput = 3'b111;
	//defauly case for none
	default: myOutput = 3'bxxx;
	endcase
	end
 endmodule
