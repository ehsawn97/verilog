`timescale 1ms / 1ms

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:45:23 12/15/2020
// Design Name:   redlight
// Module Name:   C:/Users/ehsan/Documents/xillinx/redlight/redlight_tb.v
// Project Name:  redlight
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: redlight
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module redlight_tb;

	// Inputs
	reg clk;
	reg [1:0] in;

	// Outputs
	wire [1:0] TL1;
	wire [1:0] TL2;

	// Instantiate the Unit Under Test (UUT)
	redlight uut (
		.clk(clk), 
		.in(in), 
		.TL1(TL1), 
		.TL2(TL2)
	);

always #5 clk=~clk;

	initial begin
		// Initialize Inputs
		clk = 0;
		in = 2'b11;

		// Wait 100 ns for global reset to finish
		#100;
		
		
        
		// Add stimulus here

	end
      
endmodule

