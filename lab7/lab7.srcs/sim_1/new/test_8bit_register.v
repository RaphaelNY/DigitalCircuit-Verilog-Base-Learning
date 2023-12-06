`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/06 16:51:47
// Design Name: 
// Module Name: test_8bit_register
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


module test_8bit_register;
    reg CLR, CLK, OE_;
    reg [7:0] D;
    wire [7:0] Q;

    bit8_register bit8_r0(CLR, CLK, OE_, D, Q);

    initial begin
        #10 CLK = 0;
        #10 {OE_, CLR, D} = 10'b1000000000;
        #10 {OE_, CLR, D} = 10'b0100000000;
        #10 CLR = 0;
    end

    always #10 CLK = ~CLK;

    always #20 D = D + 1'b1;
    always #30 OE_ = ~OE_;

    
endmodule
