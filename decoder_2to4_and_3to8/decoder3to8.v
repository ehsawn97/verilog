module decoder3to8(reg1,reg2,reg3, myoutput );
input wire reg1,reg2 ,reg3 ;
output wire [7:0] myoutput ;
wire notreg3 ;
assign notreg3 = ~reg3;
assigndecoder2to4 a1 (reg1,reg2,reg3, myoutput[3:0]);
assigndecoder2to4 a2 (reg1,reg2,notreg3,myoutput [7:4]); 
endmodule 
