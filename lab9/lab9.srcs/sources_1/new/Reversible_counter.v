`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/01 13:20:52
// Design Name: 
// Module Name: Reversible_counter
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


module Reversible_counter(
    input wire LD_,CT_,U_D,CP,
    input wire [3:0] D,
    output reg [3:0] Q,
    output reg RCO_ = 0,MAX_MIN = 0
    );
    always @(posedge CP) begin
        RCO_ = ~MAX_MIN | CT_;
        MAX_MIN <= 1'b0;
        if (Q == 4'b0000 | Q == 4'b1111) begin
            MAX_MIN <= 1'b1; 
        end
        if (!LD_) begin // Asynchronous set
            Q<=D;
        end else begin // keep
            if(!CT_) begin
                if (U_D) begin // subtract
                    if (Q == 4'b0000) begin
                        Q <= 4'b1111;
                        MAX_MIN <= 1'b1; 
                      end else begin
                        Q <= Q - 1;
                        if (Q == 4'b0000) begin
                            MAX_MIN <= 1'b1; 
                        end
                    end
                end else begin // add
                    if (Q == 4'b1111) begin
                        Q <= 4'b0000;
                        MAX_MIN <= 1'b1; 
                    end else begin
                        Q <= Q + 1;
                        if (Q == 4'b1111) begin
                            MAX_MIN <= 1'b1; 
                        end
                    end
                end
            end
        end
    end
endmodule
