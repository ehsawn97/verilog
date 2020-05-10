module mogayesegar (input0 ,input1 , equal , higher ,lower );

input wire [7:0] input0 , input1 ; 
output wire equal , higher , lower;

assign equal = (input0 == input1) ;
assign higher = (input0 >input1 ) ; 
assign lower = (input0 <input1 );

endmodule 
