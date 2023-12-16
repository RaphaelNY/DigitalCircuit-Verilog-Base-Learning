`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/06 13:04:42
// Design Name: 
// Module Name: Multiplex_data_selector
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


module Multiplex_data_selector(
    input [2:0] S,
    input [3:0] A,B,C,D,E,F,G,H,
    output [3:0] Y
    );
    wire S3;
    wire [3:0] Y_1,Y_2;

    not NO(S3,S[2]);
    data_selecor_4_1 DS41_1(A,B,C,D,{S[0],S[1]},S[2],Y_1),
                     DS41_2(E,F,G,H,{S[0],S[1]},S3,Y_2);

    or OU_0(Y[0],Y_1[0],Y_2[0]),
       OU_1(Y[1],Y_1[1],Y_2[1]),
       OU_2(Y[2],Y_1[2],Y_2[2]),
       OU_3(Y[3],Y_1[3],Y_2[3]);

endmodule
module data_selecor_4_1(
    input [3:0] D0,D1,D2,D3,
    input [1:0] S,
    input  EN_,
    output reg [3:0] Y
    );
    always @(*) begin
        if (EN_ == 1'b1) begin
            Y = 4'b0000;
        end else begin 
            case(S)
                2'b00: Y = D0;
                2'b01: Y = D1;
                2'b10: Y = D2;
                2'b11: Y = D3;
                default: Y = 4'b0000;
            endcase
        end
    end
endmodule

module ds(
    input A,B,C,D,
    input [2:0]S,
    input EN_,
    output reg Y
);
    always @(*) begin
        if (EN_ == 1'b1) begin
            Y = 1'b0;
        end else begin 
            case(S)
                2'b00: Y = A;
                2'b01: Y = B;
                2'b10: Y = C;
                2'b11: Y = D;
                default: Y = 1'b0;
            endcase
        end
    end
    
endmodule
