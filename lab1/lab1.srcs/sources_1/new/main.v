`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/24 15:29:17
// Design Name: 
// Module Name: main
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module FullAdd(F,Cout,A,B,Cin);
    output F,Cout;
    input A,B,Cin;
    wire S1,T1,T2,T3;
    xor XU1(S1,A,B),
        XU2(F,S1,Cin);
    and AU1(T1,A,B),
        AU2(T2,A,Cin),
        AU3(T3,B,Cin);
    or  OU1(Cout,T1,T2,T3);
endmodule 

module main(A,B,Cin,Cout,F);
    parameter SIZE=4;
    input [SIZE-1:0]A,B;
    output [SIZE-1:0]F;
    input Cin;
    output Cout;
    wire [SIZE-2:0]LC;
    FullAdd FA1(F[0],LC[0],A[0],B[0],Cin),
            FA2(F[1],LC[1],A[1],B[1],LC[0]),
            FA3(F[2],LC[2],A[2],B[2],LC[1]),
            FA4(F[3],Cout,A[3],B[3],LC[2]);
endmodule 
