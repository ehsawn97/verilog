`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:13:38 11/16/2020
// Design Name:   fifo
// Module Name:   C:/Users/ehsan/Documents/xillinx/fifo/fifio_test.v
// Project Name:  fifo
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fifo
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module fifio_test;

	// Inputs
	reg clk;
	reg reset;
	reg push;
	reg pop;
	reg [3:0] d;

	// Outputs
	wire [3:0] q;
	wire full;
	wire empty;

	// Instantiate the Unit Under Test (UUT)
	fifo uut (
		.clk(clk), 
		.reset(reset), 
		.push(push), 
		.pop(pop), 
		.d(d), 
		.q(q), 
		.full(full), 
		.empty(empty)
	);
	
always #5 clk=~clk;	

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 1;
		push = 0;
		pop = 0;
		d = 0;

		// Wait 100 ns for global reset to finish
		#50;
		reset=0;
		
		#10
		d=1;
		push=1;
		#10
		d=2;
		#10
		d=3;
		#10
		d=4;
		#10
		d=5;
		#10
		d=6;
		#10
		d=7;
		#10
		d=8;
		#10
		d=9;
		#10
		d=10;
		#10
		d=11;
		#10
		d=12;
		#10
		d=13;
		#10
		d=14;
		#10
		d=15;
		#10
		d=16;
		#10
		d=17;
		#10
		d=18;
		#10
		push=0;
		pop=1;
		
        
		// Add stimulus here

	end
      
endmodule

