`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:03:18 11/03/2020 
// Design Name: 
// Module Name:    fifo 
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
//////////////////////////////////////////////////////////////////////////////////
module fifo(
    input clk,
    input reset,
    input push,
    input pop,
    input [3:0] d,
    output [3:0] q,
	 output full,
	 output empty
    );
reg [3:0] q1;
reg [3:0] ptr;
reg full1;
reg empty1;
reg [3:0] stack [15:0];
integer i =0;

always @(posedge clk) 
	begin
	
		if (reset)
			begin
			ptr <= 0;
			full1 <= 0;
			empty1 <= 1;
			end
		else if(push && !full1)
			begin
			stack[ptr]<=d;
			if (ptr != 4'b1111) ptr<=ptr+1;
			empty1<=0;
			if (ptr == 4'b1111) full1 <=1;
			else full1 <=0;
			end
		else if(pop && !empty1)
			begin
			q1<=stack[0];
			for(i=0;i<ptr;i=i+1)
				begin
				stack[i]<=stack[i+1];
				end
			ptr <=ptr-1;
			full1<=0;
			if (ptr == 4'b0000) empty1<=1;
			else empty1 <=0;
			end
		
	end
	
assign q =q1;
assign full = full1;
assign empty = empty1;

endmodule
