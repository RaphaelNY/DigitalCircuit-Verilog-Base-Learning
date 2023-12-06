`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/06 18:10:26
// Design Name: 
// Module Name: shifting_register
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


module shifting_register(
    input CR_,S0,S1,CP,SR,SL,
    input wire [7:0] D,
    output reg [7:0] Q 
    );
    
    always @(CR_) begin
        if(CR_) begin
            Q = 8'b0;
        end
    end
    
    always @(posedge CP) begin
        if(!S0 && S1) begin
            Q = {SR, Q[7:1]};
        end else if(S0 && !S1) begin
            Q = {Q[6:0], SL};
        end else if(S0 && S1) begin
            Q = D;
        end
    end
    
endmodule
