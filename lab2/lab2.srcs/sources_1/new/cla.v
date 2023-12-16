`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/03 22:15:42
// Design Name: 
// Module Name: cla
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


// module cla(	
//     input wire [3:0] A,
//     input wire [3:0] B,
//     input wire C0,
//     output wire [3:0] F,
//     output reg C4
//     );

//     reg [3:1] C;
//     reg [3:0] G;
//     reg [3:0] P;
//     reg [3:0] i;

//     always @* begin
//         for (i=0; i<4; i=i+1) begin
//             G[i] = A[i] & B[i];
//             P[i] = A[i] | B[i];
//         end

//         C[1] = G[0] | (P[0] & C0);
        
//         for (i=2; i<4; i=i+1) begin
//             C[i] = G[i - 1] | (P[i - 1] & C[i - 1]);
//         end
//         C4 = C[3];
//     end

//     FullAdder FA0(F[0], A[0], B[0], C0),
//                FA1(F[1], A[1], B[1], C[1]),
//                FA2(F[2], A[2], B[2], C[2]),
//                FA3(F[3], A[3], B[3], C[3]);         
// endmodule

// module FullAdder(F, A, B, Cin);
//     output F;
//     input A, B, Cin;
//     xor XU1(S1, A, B),
//         XU2(F, S1, Cin);
// endmodule 

module cla(	
    input wire [3:0] A,
    input wire [3:0] B,
    input wire C0,
    output wire [3:0] F,
    output wire C4
    );
    
    wire [3:1] C;
    clafun cla0(C4, C, A, B, C0);
    
    FullAdder FA0(F[0], A[0], B[0], C0),
               FA1(F[1], A[1], B[1], C[1]),
               FA2(F[2], A[2], B[2], C[2]),
               FA3(F[3], A[3], B[3], C[3]);         
endmodule

module FullAdder(F, A, B, Cin);
    output F;
    input A, B, Cin;
    wire S1;
    assign S1= A^B;
    assign F= S1^Cin;
endmodule 

module clafun(C4, C, A, B,C0);
    output C4;
    output [3:1] C;
    input [3:0] A, B;
    input C0;
    wire [3:0] G;
    wire [3:0] P;
    assign G[0] = A[0] & B[0];
    assign P[0] = A[0] | B[0];
    assign G[1] = A[1] & B[1];
    assign P[1] = A[1] | B[1];
    assign G[2] = A[2] & B[2];
    assign P[2] = A[2] | B[2];
    assign G[3] = A[3] & B[3];
    assign P[3] = A[3] | B[3];
    assign C[1] = G[0] | (P[0] & C0);
    assign C[2] = G[1] | (P[1] & C[1]);
    assign C[3] = G[2] | (P[2] & C[2]);
    assign C4 = G[3] | (P[3] & C[3]);
endmodule