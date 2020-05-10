module decoder2to4 ( reg1 , reg2 ,  enablereg , myoutput );
 input wire reg1 , reg2 , enablereg ;
 output wire [3:0] myoutput ; 
 wire notreg1, notreg2 , notenable  ;
 not (notreg2 , reg2);
 not (notreg1 ,reg1 );
 not (notenable , enablereg);
 nand nand0 (myoutput[0], notreg1 , notreg2 ,notenable );
 nand nand1 (myoutput [1], reg1, notreg2 , notenable );
 nand nand2 (myoutput [2], notreg1, reg2 , notenable );
 nand nand3 (myoutput[3] , reg1,reg2 , notenable); 
 endmodule 
