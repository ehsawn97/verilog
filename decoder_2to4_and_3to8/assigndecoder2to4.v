module assigndecoder2to4 ( reg1 , reg2 ,  regen , myoutput );
 input wire reg1 , reg2 , regen ;
 output wire [3:0] myoutput ; 
 assign  myoutput[0] = ~((~reg1) & (~reg2) & (~regen) );
 assign  myoutput[1] = ~((reg1) & (~reg2) & (~regen) );
 assign  myoutput[2] = ~((~reg1) & (reg2) & (~regen) );
 assign  myoutput[3] = ~((reg1) & (reg2) & (~regen) );
 endmodule 
