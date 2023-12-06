`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/06 14:01:50
// Design Name: 
// Module Name: Edge_J-K_trigger
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


module LS74_76(
    input CP1,SD1,RD1,J1,
    input VCC,
    input CP2,SD2,RD2,J2,
    output Q2_,Q2,
    input K2,GND,
    output Q1_,Q1,
    input K1
);

    Edge_JK_trigger Edge_JK_1(J1,K1,CP1,SD1,RD1,Q1,Q1_),
                    Edge_JK_2(J2,K2,CP2,SD2,RD2,Q2,Q2_);

endmodule

module Edge_JK_trigger(
    input J,K,CP,SD_,RD_,
    output reg Q,Q_
    );
    always @(SD_ or RD_) begin
        if(SD_ && !RD_) begin
            Q = 1'b0;
            Q_ = 1'b1;
        end 
            else if(!SD_ && RD_) begin
                Q = 1'b1;
                Q_ = 1'b0;
        end 
    end
    always @(negedge CP) begin
            if(SD_ && RD_) begin
            if(J && K) begin
                Q <= !Q;
                Q_ <= !Q_;
            end else if(J && !K) begin
                Q <= 1'b1;
                Q_ <= 1'b0;
            end else if(!J && K) begin
                Q <= 1'b0;
                Q_ <= 1'b1;
            end
        end
    end
endmodule

// module Edge_D_trigger(
//     input D,
//     input CP,
//     output reg Q,Q_
//     );
    
//     wire QM;
//     time_D_trigger D_t_1(D,!CP,QM),
//                    D_t_2(QM,CP,Q,Q_);
// endmodule

// module time_D_trigger(
//     input D,
//     input CP,
//     output reg Q,Q_
//     );
//     always @(posedge CP)
//     begin
//         if(!CP) begin
//             if(D) begin
//                 Q <= 1'b1;
//             end else begin
//                 Q <= 1'b0;
//             end
//             assign Q_ = ~Q;
//         end
//     end
// endmodule