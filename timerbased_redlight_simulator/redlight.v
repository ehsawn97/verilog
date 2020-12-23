`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:35:02 12/15/2020 
// Design Name: 
// Module Name:    redlight 
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
module redlight(
    input clk,
    input [1:0] in,
    output [1:0] TL1,
    output [1:0] TL2
    );



				//initial state is s0
reg [1:0] state = 2'b00; //s0=00  s1=01   s2=10   s3=11

integer gn = 4;
integer clkfixer = 100;
integer count = 0;
integer count2 =0;

reg [1:0] TL11;  //ns
reg [1:0] TL22;  //ew

always @(posedge clk)
	begin
		//creating one seconds delays
		count = count+1;
		//every one second this if statment works
		if(count == clkfixer)
			//this if statment works every one seconds
			begin
			count =0;
			
			//state s0
			if (state == 2'b00)
				begin
				TL11<=2'b01;//ns is green
				TL22<=2'b11;//ew  is red
				//waiting groupnumber * 5 seconds
				count2 = count2 + 1;
				if(count2 == gn*5)
					//delay has done
					begin
					count2 = 0;
					if(in == 2'b10 || in == 2'b11)
						begin
						//changing state to s1
						state = 2'b01;
						count2 = 0;
						end
					end	
			end
			
			//state s1
			if (state == 2'b01)
				begin
				TL11<=2'b10;//ns is red
				TL22<=2'b11;//ew  is red
				//waiting groupnumber * 2 seconds
				count2 = count2 + 1;
				if(count2 == gn*2 +1)
					//delay has done
					begin
					count2 = 0;
						//changing state to state s2
						state = 2'b10;
						count2 = 0;
					end	
			end
	
			//state s2
			if (state == 2'b10)
				begin
				TL11<=2'b11;//ns is red
				TL22<=2'b01;//ew  is green
				//waiting groupnumber * 5 seconds
				count2 = count2 + 1;
				if(count2 == gn*5 +1)
					//delay has done
					begin
					count2 = 0;
					if(in == 2'b10)
						begin
						//no change
						count2 = 0;
						end
					else if (in == 2'b00 || in == 2'b01 || in == 2'b11)
						begin
						state = 2'b11;
						count2 = 0;
						end
					end	
			end
			
			//state s3
			if (state == 2'b11)
				begin
				TL11<=2'b11;//ns is red
				TL22<=2'b10;//ew  is yellow
				//waiting groupnumber * 2 seconds
				count2 = count2 + 1;
				if(count2 == gn*2 +1)
					//delay has done
					begin
					count2 = 0;
					if(in == 2'b00 || in == 2'b01 || in == 2'b11)
						begin
						//change to s0
						state = 2'b00;
						count2 = 0;
						end
			end
	
	
		end
	end
	end

assign TL1 = TL11;
assign TL2 = TL22;

endmodule
