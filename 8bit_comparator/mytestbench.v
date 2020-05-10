
module mytestbench ();
  reg [7:0]input0 , input1 ;
  wire equal, higher , lower ; 
  mogayesegar  c1 (input0 ,input1 , equal , higher , lower );
  initial
   begin 
   input0=8'b11111111; input1 =8'b00000000;
   #10
   input1=8'b11111111; input0 =8'b00000000;
   #10
   input0=8'b00000000; input1 =8'b00000000;
   end 
   endmodule 
