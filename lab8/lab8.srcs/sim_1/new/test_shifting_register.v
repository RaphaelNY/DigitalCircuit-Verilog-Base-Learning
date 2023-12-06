`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/06 18:40:27
// Design Name: 
// Module Name: test_shifting_register
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


module test_shifting_register;
    reg CR_,S0,S1,CP,SR,SL;
    reg [7:0] D;
    wire [7:0] Q;

    shifting_register shifting0(CR_,S0,S1,CP,SR,SL,D,Q);

    initial begin
        CP = 0;
        D = 8'b00000000;
        {CR_,S0,S1,SR,SL} = 5'b0; 
        #10 CR_ = 1'b1;SL = 1'b1;SR = 1'b0;
    end

    always #5 CP = ~CP;

    always begin
        #300 S1 = 1'b0; S0 = 1'b1;
        #300 S1 = 1'b1; S0 = 1'b0;
        #300 S1 = 1'b1; S0 = 1'b1;
    end
endmodule
