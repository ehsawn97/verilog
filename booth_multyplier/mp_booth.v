//sequential multyplier using booth algorithm
//4x4 mp_booth
//Ehsan Mokhtari
//97.11.2

module mp_booth(x, y, clk, load, reset_to_zero, our_outop);
   integer a;
   output reg [7:0] our_outop;
   input clk,reset_to_zero,load;
   input [3:0] x;
   input [3:0] y;
   reg [8:0]  tempx1,tempsum,temp_production;
   reg [3:0]  tempx_bar,tempasum,tempx,tempy;
  
   
  always @(posedge clk)
  begin
  if(load)                  
  begin
  tempx=x;
  tempy=y;
  end
  end
  
   always @ (posedge clk,posedge reset_to_zero)
   begin
   if(reset_to_zero)
   our_outop=0;
    else
    begin
    if(~load)    //when we dont have new operators so we continue to multyple last operators
    begin
    tempx_bar= ~ tempx;
    tempasum = (tempx_bar + 1);   
    tempx1={tempx,5'b00000};
    tempsum={tempasum,5'b00000};
    temp_production={4'b0000,tempy,1'b0};
      for(a=0;a<4;a=a+1)
      begin
      case(temp_production[1:0])
      2'b00 : temp_production = {temp_production[8],temp_production[8:1]};
      2'b01 :begin temp_production =temp_production + tempx1;
      temp_production = {temp_production[8],temp_production[8:1]};
      end
      2'b10 :begin temp_production = temp_production + tempsum;
      temp_production = {temp_production[8],temp_production[8:1]};
      end
      2'b11 : temp_production = {temp_production[8],temp_production[8:1]};
      default: temp_production = 9'bx;
	  endcase 
      end 
      our_outop=temp_production[8:1];
      end 
    end 
    end
endmodule
