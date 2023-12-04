`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/04 18:52:53
// Design Name: 
// Module Name: test_cla
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


module test_cla;
    reg [3:0] A;
    reg [3:0] B;
    reg C0;
    wire C4;
    wire [3:0] F;

    initial {A,B,C0} = 9'b0;
    
    always
     begin    
        #10;
        {A,B,C0} = {A,B,C0} + 1'b1;
    end
    
    cla uut(A,B,C0,F,C4);  
endmodule
