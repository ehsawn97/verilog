`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:52:52 10/21/2020
// Design Name:   gatedesign
// Module Name:   C:/Users/ehsan/Documents/xillinx/gate7447/gate_tb.v
// Project Name:  gate7447
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: gatedesign
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module gate_tb;

	// Inputs
	reg [3:0] d;
	reg rbo;
	reg lamp;
	reg rbi;

	// Outputs
	wire [6:0] cout;

	// Instantiate the Unit Under Test (UUT)
	gatedesign uut (
		.d(d), 
		.rbo(rbo), 
		.lamp(lamp), 
		.rbi(rbi), 
		.cout(cout)
	);

	initial begin
		// Initialize Inputs
		d = 4'b0101;
		rbo = 1;
		lamp = 1;
		rbi = 1;

		// Wait 100 ns for global reset to finish
		#100;
		d = 4'b0000;
		
		#100;
		d = 4'b1111;
		
		#100;
		d = 4'b1000;
        
		// Add stimulus here

	end
      
endmodule

