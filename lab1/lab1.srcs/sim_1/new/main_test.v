`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/24 15:52:19
// Design Name: 
// Module Name: main_test
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


module main_test;
    parameter SIZE=4;
    input [SIZE-1:0]A,B;
    output [SIZE-1:0]F;
    input Cin;
    output Cout;
    main FourAddFA(A,B,Cin,Cout,F);
    initial{A,B,Cin} = 9'b0;
    always
    begin
        #100;
        {A,B,Cin} = {A,B,Cin} + 1'b1;
    end
endmodule
