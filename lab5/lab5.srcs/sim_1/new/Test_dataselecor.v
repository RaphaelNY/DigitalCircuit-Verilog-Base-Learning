`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/06 13:37:25
// Design Name: 
// Module Name: Test_dataselecor
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

module Test_dataselecor;
    reg [2:0] S;
    reg [3:0] A,B,C,D,E,F,G,H;
    wire [3:0] Y;
    
    Multiplex_data_selector MDS(S,A,B,C,D,E,F,G,H,Y);

    initial begin
        S = 3'b000;
        A = 4'b0000;
        B = 4'b0001;
        C = 4'b0010;
        D = 4'b0011;
        E = 4'b0100;
        F = 4'b0101;
        G = 4'b0110;
        H = 4'b0111;
    end

    always begin
        #10;
        S = S + 1'b1;
        if (S == 3'b111) begin
            S = 3'b000;
        end
    end

endmodule
