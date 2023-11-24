`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/24 14:53:28
// Design Name: 
// Module Name: First_M_test
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


module First_M_test(

    );
    reg A,B,C,D,E;
    wire F;
    First_M The_OUT(A,B,C,D,E,F);
//    initial
//    begin
//        A=0;B=0;C=0;D=0;E=0;         // init
//        #100;   A=0;B=0;C=0;D=0;E=1; // test1
//        #100;   A=0;B=0;C=0;D=1;E=1; // test2
//        #100;   A=1;B=0;C=0;D=0;E=0; // test3
//        #100;   A=1;B=1;C=0;D=0;E=0; // test4
//        #100;   A=1;B=1;C=1;D=0;E=0; // test5     
//    end
    initial {A,B,C,D,E} = 5'b0;
    always       // 没有敏感事件列表@，始终执行 
    begin
        #100;
        {A,B,C,D,E} = {A,B,C,D,E} + 1'b1;
    end
endmodule
