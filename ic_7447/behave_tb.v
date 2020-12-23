`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:46:16 10/21/2020
// Design Name:   behave
// Module Name:   C:/Users/ehsan/Documents/xillinx/behave7447/behave_tb.v
// Project Name:  behave7447
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: behave
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module behave_tb;

	// Inputs
	reg [3:0] myInput;

	// Outputs
	wire [6:0] myOutput;

	// Instantiate the Unit Under Test (UUT)
	behave uut (
		.myInput(myInput), 
		.myOutput(myOutput)
	);

	initial begin
		// Initialize Inputs
		myInput = 4'b0011;

		// Wait 100 ns for global reset to finish
		#100;
		myInput = 4'b0000;
		
		#100;
		myInput = 4'b1111;
		
		#100;
		myInput = 4'b1000;
		
        
		// Add stimulus here

	end
      
endmodule

