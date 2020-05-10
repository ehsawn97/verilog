`timescale 1ns / 1ps

module testbench;

 reg [15:0] data_input;
 reg read_write;
 reg enable;
 reg reset;
 reg clk;
 wire [15:0] data_output;
 wire e_flag;
 wire f_flag;

 mp_booth s ( data_input,data_output,read_write,enable,reset,e_flag,f_flag,clk);

 initial begin
  data_input  = 16'h0;
  read_write  = 1'b0;
  enable  = 1'b0;
  reset  = 1'b1;
  clk  = 1'b0;
  #100;      
  enable   = 1'b1;
  reset  = 1'b1;
  #40;
  reset     = 1'b0;
  read_write      = 1'b0;
  data_input  = 16'h0;
  #20;
  data_input = 16'h2;
  #20;
  data_input = 16'h4;
  #20;
  data_input = 16'h6;
  #20;
  read_write  = 1'b1;
 end 
 always #10 clk = ~clk;

endmodule
