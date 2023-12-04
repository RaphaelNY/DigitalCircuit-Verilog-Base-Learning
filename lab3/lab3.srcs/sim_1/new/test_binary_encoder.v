`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/04 22:30:55
// Design Name: 
// Module Name: test_binary_encoder
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


module test_binary_encoder;
    reg A,B,C;
    reg G1;
    reg G2A,G2B;
    wire [7:0] Y;

    LS_74_138 U1(A,B,C,G1,G2A,G2B,Y);
    
    initial {G1,G2A,G2B,C,B,A} = 6'b100000;
    
    always begin
        #10;
        {G1,G2A,G2B,C,B,A} = {G1,G2A,G2B,C,B,A} + 1'b1;
    end
endmodule
