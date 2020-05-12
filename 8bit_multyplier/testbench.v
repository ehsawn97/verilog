
module testbench ();
  
reg [7:0] a,b;

wire [15:0] out ;

multiplyer m1 (a,b,out );

initial begin 
  #10
  a=8'b01110010;
  b=8'b00000001;
  $display("out is %b", out );
  
  
  #10
  a=8'b01110010;
  b=8'b00000010;
  $display("out is %b", out );
  
  #10
  a=8'b10110010;
  b=8'b00000110;
  $display("out is %b", out );
  
end 
endmodule 
