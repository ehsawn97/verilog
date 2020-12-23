`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:06:15 10/20/2020 
// Design Name: 
// Module Name:    behave 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//         __________
//        |   a     |
//        |f       b|
//        |___g_____|  0to7 = a to g
//        |         |
//        |e       c|
//        |___d_____|
//
//////////////////////////////////////////////////////////////////////////////////
module behave(
    input [3:0] myInput,
    output [6:0] myOutput
    );  
	 reg [6:0] myOutput1;
	always @ (myInput)
	begin
	
	case (myInput)			/*  abcdefg    */
	4'b0000: myOutput1 <= 7'b1111110;
	4'b0001: myOutput1 <= 7'b0110000;
	4'b0010: myOutput1 <= 7'b1101101;
	4'b0011: myOutput1 <= 7'b1111001;
	4'b0100: myOutput1 <= 7'b0110011;
	4'b0101: myOutput1 <= 7'b1011011;
	4'b0110: myOutput1 <= 7'b1011111;
	4'b0111: myOutput1 <= 7'b1110000;
	4'b1000: myOutput1 <= 7'b1111111;
	4'b1001: myOutput1 <= 7'b1111011;
	4'b1010: myOutput1 <= 7'b0001101;
	4'b1011: myOutput1 <= 7'b0011001;
	4'b1100: myOutput1 <= 7'b0100011;
	4'b1101: myOutput1 <= 7'b1001011;
	4'b1110: myOutput1 <= 7'b0001111;
	4'b1111: myOutput1 <= 7'b0000000;
	//default case for none
	default: myOutput1 = 7'b0000000;
	endcase
	end
assign myOutput = myOutput1;	

endmodule
