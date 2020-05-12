module eightBitsh(myInput, shift_input, operation, clk, shift_output, myOutput);
	input[7:0] myInput;
	input[2:0] operation;
	input shift_input, clk;
	output reg[7:0] myOutput;
	reg[7:0] memory = 8'bxxxxxxxx;
	output reg shift_output;
	
	//choosing the clock edge
	always @ (clk)
	//start
	begin
	//using case instead of some if
	                                  //1st case
	case (operation)
	3'b000: memory = 8'b11111111;
	                                  //2nd case
	3'b001: begin 
	memory = myInput; 
	shift_output = memory[7]; 
	//shift to left
	memory = memory << 1; 
	memory[0] = shift_input; 
    end
	                                  //3rd case   
	3'b010: begin 
	memory = myInput; 
	memory = memory << 1; 
	memory[0] = myInput[7]; 
	end
	                                  //4th case
	3'b011: begin 
	memory = myInput; 
	shift_output = memory[0]; 
	memory = memory >> 1; 
	end
	                                  //5th case
	3'b100: begin 
	memory = myInput; 
	shift_output = memory[0]; 
	memory = memory >>> 1; 
	end
	                                   //6th case
	3'b101: begin 
	memory = myInput; 
	memory = memory >> 1; 
	memory[7] = myInput[0]; 
	end
	                                   //7th case
	3'b110: myOutput = memory;
	                                   //8th case 
	3'b111: memory = 8'b00000000;
	                                    // default case so initialize zzzzzzzz for output
	default: myOutput = 8'bzzzzzzzz;
	endcase
	end
 endmodule
