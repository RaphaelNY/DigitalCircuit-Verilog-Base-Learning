`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/01 14:55:59
// Design Name: 
// Module Name: Test_Reversible_counter
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


module Test_Reversible_counter;

  reg LD_, CT_, U_D, CP;
  reg [3:0] D;
  wire [3:0] Q;
  wire RCO_, MAX_MIN;

  Reversible_counter uut (
    .LD_(LD_),
    .CT_(CT_),
    .U_D(U_D),
    .CP(CP),
    .D(D),
    .Q(Q),
    .RCO_(RCO_),
    .MAX_MIN(MAX_MIN)
  );
    initial CP = 0;
    always #10 CP = ~CP;
    
    initial begin
        LD_ = 0; U_D = 0; CT_ = 0;
        D = 4'b0000;
        #20;
        LD_ = 1;
        
        #400;
        U_D = 1;
        
        #400;
        CT_ = 1;
    end
//  reg[7:0] i;
//  initial begin

//    CT_ = 1'd0;
//    LD_ = 1'd0;
//    U_D = 1'b0;
//    D = 4'd0000;
//    CP = 0;
//    #5;
//    for(i=0;i<16;i=i+1) begin
//        D = D + 1'd1;
//        CP = 1;
//        #5;
//        CP = 0;
//        #5;
//    end
//    D = 4'd0000;
//    #5;
    
//    LD_ = 1'd1;
//    for (i = 0; i < 16; i = i + 1) begin
//      CP = 1;
//      #5;
//      CP = 0;
//      #5;
//    end
    
//    U_D = 1'd1;
//    for (i = 0; i < 16; i = i + 1) begin
//      CP = 1;
//      #5;
//      CP = 0;
//      #5;
//    end
//    // keep
//    CT_ = 1'd1;
//    LD_ = 1'd1;
//    U_D = 1'b0;
//    #5;
//    for(i=0;i<16;i=i+1) begin
//        D = D + 1'd1;
//        CP = 1;
//        #5;
//        CP = 0;
//        #5;
//    end
//    D = 4'd0000;
//    #5;
    
//    LD_ = 1'd1;
//    for (i = 0; i < 16; i = i + 1) begin
//      CP = 1;
//      #5;
//      CP = 0;
//      #5;
//    end
    
//    U_D = 1'd1;
//    for (i = 0; i < 16; i = i + 1) begin
//      CP = 1;
//      #5;
//      CP = 0;
//      #5;
//    end
//  end
endmodule
