//stack 64 depth & 16 width
//             ______ 
//  input   __|  S   |__ output
//   rw     __|  T   |__ f_flag
//   enable __|  A   |__ e_flag
//   clk    __|  C   |
//   reset  __|__K___|

//EhsanMokhtari
//97.11.2


//                                               emptyflag,fullflag  <<< fpr showing if stack is empty or full
module stack( data_input,data_output,read_write,enable,reset,e_flag   ,f_flag,clk);
//using read_write  =0 for pop and =1 for push
//using enable for enabling out stack buffer for work like on/off switch
input [15:0]  data_input;
input read_write, enable,reset,clk;
output reg e_flag,f_flag;    
output reg [15:0] data_output;
reg [15:0] s[0:63];  //stack with width of 16 and depth of 64
reg  [62:0] s_pointer;               //stack pointer that shows the current stack part
integer a;
always @ (posedge clk)
begin
 if (enable==0);
 else begin
  if (reset==1) 
  //reseting the pointer and making all stack values to 0
  begin
  s_pointer= 64'd4;        
  e_flag= s_pointer[62];
  data_output  = 16'h0;
  for (a=0;a<63;a=a+1)
  begin
   s[a]= 0;
   end
   end
   //done reseting
	 
  else if (reset==0) 
  begin
  f_flag = s_pointer? 0:1;
  e_flag = s_pointer[2];
  data_output = 16'hx;
  //poping
  if (f_flag == 1'b0 && read_write == 1'b0) begin
  s_pointer = s_pointer-1'b1;
  f_flag  = s_pointer? 0:1;
  e_flag = s_pointer[2];
  s[s_pointer] = data_input;
  end
  //done poping

  //pushing
  else if (e_flag == 1'b0 && read_write == 1'b1) begin
  data_output  = s[s_pointer];
  s[s_pointer] = 0;
  s_pointer  = s_pointer+1;
  f_flag  = s_pointer? 0:1;
  e_flag  = s_pointer[2];
  end
  //done pushing

 else;
 end
 else;
 end
 end

endmodule

