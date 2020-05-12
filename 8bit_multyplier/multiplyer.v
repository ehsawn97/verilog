//ehsan mokhtari
module multiplyer (a,b,out);
  //defining the vars
  input [7:0]  a,b ;
  output reg [15:0]out ;
  reg t0=1'b0 ;
  reg s=1'b0 ;
  reg [7:0] ain,bin;
  //end defining
 
  always @(a ,b )
  begin 
    t0<=1'b1;
  end 
  
  always @(posedge t0)
  begin 
    s<=1'b1;
  end 
  
  always @(posedge s)
  begin 
    out<=16'b0000000000000000;
    ain<=a;
    bin<=b; 
    
    while (b!=0)
    begin 
    out<=out + ain;
    bin<=bin-1;
	end
	
   t0<=1'b0;
   s<=1'b0;
  end 
endmodule 

