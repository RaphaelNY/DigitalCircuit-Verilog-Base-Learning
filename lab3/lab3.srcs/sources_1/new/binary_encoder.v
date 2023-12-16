`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/04 21:39:02
// Design Name: 
// Module Name: binary_encoder
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


//module binary_encoder(
//    input wire A,B,C,
//    input wire G1,G2A,G2B,
//    output wire [7:0] Y
//);

//    LS_74_138 U1(Y,A,B,C,G1,G2A,G2B);
    
//endmodule

module LS_74_138(A,B,C,G1,G2A,G2B,Y);
    input wire A,B,C,G1,G2A,G2B;
    output reg [7:0] Y;
   
    reg [4:0] i;
    reg [4:0] j;
    
    always@(G1,G2A,G2B,A,B,C) begin
        if(!G1 | G2A | G2B) begin
            Y = 8'b11111111;
        end else begin
            i = 0;
            if(C) begin
                i = i + 4;
            end
            if(B) begin
                i = i + 2;
            end
            if(A) begin
                i = i + 1;
            end
            for(j = 0; j < 8; j = j + 1) begin
                if(i == j) begin
                    Y[j] = 1'b0;
                end else begin
                    Y[j] = 1'b1;
                end
            end
        end
    end
endmodule

// module LS_74_138_1(Y,A,B,C,G1,G2A,G2B);
//     output reg [7:0] Y;
//     input wire A,B,C,G1,G2A,G2B;

//     if(!G1 | G2A | G2B) begin
//         Y = 8'b11111111;
//     end else begin
//         Y[{C,B,A}] = 1'b0;
//     end
// endmodule