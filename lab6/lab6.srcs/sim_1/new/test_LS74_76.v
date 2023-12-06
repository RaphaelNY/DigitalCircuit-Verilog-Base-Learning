`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/06 15:16:35
// Design Name: 
// Module Name: test_LS74_76
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


module test_Edge_JK;
    reg CP,SD,RD,J;
    wire Q_,Q;
    reg K;
    
    Edge_JK_trigger Edge_JK_1(J,K,CP,SD,RD,Q,Q_);
    
    //test Edge_JK_trigger
    always #5 CP = ~CP;
    initial begin
        CP = 0;
        SD = 0;
        RD = 1;
        J = 0;
        K = 0;
        #20 RD = 0;
            SD = 1;
        #20 RD = 1;
            SD = 1;
        #15 K = 1;
        #15 K = 0;
            J = 1;
        #15 K = 1;
    end
endmodule

//module SL74_76;
//    reg CP1,SD1,RD1,J1;
//    reg VCC;
//    reg CP2,SD2,RD2,J2;
//    reg Q2_,Q2;
//    reg K2,GND;
//    wire Q1_,Q1;
//    reg K1;

//    LS74_76 LS74_76_1(CP1,SD1,RD1,J1,VCC,CP2,SD2,RD2,J2,Q2_,Q2,K2,GND,Q1_,Q1,K1);
    
//    //test SL74_76
//    always #5 CP1 = ~CP1,CP2 = ~CP2;
    
//    initial begin
//        CP1 = 0;
//        SD1 = 0;
//        RD1 = 1;
//        J1 = 0;
//        K1 = 0;
//        #20 RD1 = 0;
//            SD1 = 1;
//        #20 RD1 = 1;
//            SD1 = 1;
//        #15 K1 = 1;
//        #15 K1 = 0;
//            J1 = 1;
//        #15 K1 = 1;
//    end
//endmodule