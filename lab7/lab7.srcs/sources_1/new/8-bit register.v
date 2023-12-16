`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/06 16:33:04
// Design Name: 
// Module Name: 8-bit register
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


module bit8_register(
    input CLR,CLK,OE_,
    input [7:0] D,
    output [7:0] Q
    );
    
    wire [7:0] S;

    bit_8D bit_8D_inst0(
        .CLR(CLR),
        .CLK(CLK),
        .D(D),
        .Q(S)
    );

    TS_8bits_Gate TS_8bits_Gate_inst0(
        .EN_(OE_),
        .A(S),
        .F(Q)
    );

endmodule

module TS_8bits_Gate(
    input EN_,
    input [7:0] A,
    output reg [7:0] F
);

    always @* begin
        if(!EN_) F<=A;
        else F<=7'bz;
    end

endmodule

module bit_8D(
    input CLR,CLK,
    input [7:0] D,
    output reg [7:0] Q
);

    always @(posedge CLR or posedge CLK) begin
        if(CLR) begin
            Q<=8'b0;
        end else begin 
            Q<=D;
        end
    end
    
endmodule
