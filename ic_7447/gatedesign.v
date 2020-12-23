`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:47:05 10/20/2020 
// Design Name: 
// Module Name:    gatedesign 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//			 ___________
//        |   b     |
//        |g       c|
//        |___a_____|  0to7 = a to g
//        |         |
//        |f       d|
//        |___e_____|
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module gatedesign(
    input [3:0] d,
    input rbo,
    input lamp,
    input rbi,
    output [6:0] cout
    );
	 
wire a1;wire a2;wire a3;wire a4;wire a5;wire a6;
nand(a1,d[0],lamp);
nand(a2,d[1],lamp);
nand(a3,d[2],lamp);
not(a4,d[3]);
not(a6,rbi);

wire b1;wire b2;wire b3;wire b4;
nand(b1,rbo,a1);
nand(b2,rbo,a2);
nand(b3,rbo,a3);
nand(b4,a4,rbo);

wire c1;wire c2;wire c3;
and(c1,b1,b4);
and(c2,b3,a1);
and(c3,b1,a2,a3,a4);
wire c4;wire c5;wire c6;
and(c4,b2,b4);
and(c5,b1,a2,b3);
and(c6,a1,b2,b3);
wire c7;wire c8;
and(c7,b3,b4);
and(c8,a1,b2,a3);
wire c9;wire c10;wire c11;
and(c9,b1,a2,a3);
and(c10,a1,a2,b3);
and(c11,b1,b2,b3);
/*wire c12 = b1*/wire c13;
and(c13,a2,b3);
wire c14;wire c15;wire c16;
and(c14,b1,b2);
and(c15,b2,a3);
and(c16,b1,a3,a4);
wire c17;wire c18;
and(c17,b1,b2,b3);
and(c18,a2,a3,a4);

wire e1;wire e2;wire e3;wire e4;wire e5;wire e6;wire e7;
nor(e1,c1,c2,c3);
nor(e2,c4,c5,c6);
nor(e3,c7,c8);
nor(e4,c9,c10,c11);
nor(e5,b1,c13);
nor(e6,c14,c15,c16);
nor(e7,c17,c18);

not(cout[0],e1);
not(cout[1],e2);
not(cout[2],e3);
not(cout[3],e4);
not(cout[4],e5);
not(cout[5],e6);
not(cout[6],e7);

endmodule
