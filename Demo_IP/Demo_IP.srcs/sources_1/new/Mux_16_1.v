`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.06.2024 17:28:07
// Design Name: 
// Module Name: Mux_16_1
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


module Mux_16_1(
    input [15:0]A,
    input [3:0]S,
    output I
    );
    wire i1,i2;
Mux_8_1 Mux_8_1_1
       (.A_0(A[0]),
        .A_1(A[2]),
        .A_2(A[4]),
        .A_3(A[6]),
        .B_0(A[1]),
        .B_1(A[3]),
        .B_2(A[5]),
        .B_3(A[7]),
        .I_0(i1),
        .S_0(S[0]),
        .S_1(S[1]),
        .S_2(S[2]));
Mux_8_1 Mux_8_1_2
       (.A_0(A[8]),
        .A_1(A[10]),
        .A_2(A[12]),
        .A_3(A[14]),
        .B_0(A[9]),
        .B_1(A[11]),
        .B_2(A[13]),
        .B_3(A[15]),
        .I_0(i2),
        .S_0(S[0]),
        .S_1(S[1]),
        .S_2(S[2]));
 Mux_2_1 mux_2_1_1(.S(S[3]),.A(i1),.B(i2),.I(I));
endmodule
