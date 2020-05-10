module testbench ();

reg x,y,z ;
wire [7:0] out;
decoder3to8 d0(x,y,z,out );
initial 
begin 

x=0;y=0;z=0;
$display ("input : %b  %b  %b  outut : %b  ",x,y,z , out[7:0]);

#10
x=0;y=0;z=1;
$display ("input : %b  %b  %b  outut : %b ",x,y,z , out[7:0]);

#10
x=0;y=1;z=0;
$display ("input : %b  %b  %b  outut : %b  ",x,y,z , out[7:0]);

#10
x=0;y=1;z=1;
$display ("input : %b  %b  %b  outut : %b  ",x,y,z , out[7:0]);

#10
x=1;y=0;z=0;
$display ("input : %b  %b  %b  outut : %b  ",x,y,z , out[7:0]);

#10
x=1;y=0;z=1;
$display ("input : %b  %b  %b  outut : %b  ",x,y,z , out[7:0]);

#10
x=1;y=1;z=0;
$display ("input : %b  %b  %b  outut : %b ",x,y,z , out[7:0]);

#10
x=1;y=1;z=1;
$display ("input : %b  %b  %b  outut : %b ",x,y,z , out[7:0]);


end 
endmodule  

