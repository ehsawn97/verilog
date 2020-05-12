//         __________
//        |   a     |
//        |f       b|
//        |___g_____|  0to7 = a to g
//        |         |
//        |e       c|
//        |___d_____|
//
module bTo7seg_dec(myInput, myOutput);
	input[3:0] myInput;
	output reg[6:0] myOutput;  
	always @ (myInput)
	begin
	//using case instead of some if and its common cothod
	case (myInput)
	4'b0000: myOutput = 7'b0111111;
	4'b0001: myOutput = 7'b0000110;
	4'b0010: myOutput = 7'b1011011;
	4'b0011: myOutput = 7'b1001111;
	4'b0100: myOutput = 7'b1100110;
	4'b0101: myOutput = 7'b1101101;
	4'b0110: myOutput = 7'b1111101;
	4'b0111: myOutput = 7'b0000111;
	4'b1000: myOutput = 7'b1111111;
	4'b1001: myOutput = 7'b1101111;
	4'b1010: myOutput = 7'b1110111;
	4'b1011: myOutput = 7'b1111100;
	4'b1100: myOutput = 7'b0111001;
	4'b1101: myOutput = 7'b1011110;
	4'b1110: myOutput = 7'b1111001;
	4'b1111: myOutput = 7'b1110001;
	//default case for none
	default: myOutput = 7'b0000000;
	endcase
	end
 endmodule
