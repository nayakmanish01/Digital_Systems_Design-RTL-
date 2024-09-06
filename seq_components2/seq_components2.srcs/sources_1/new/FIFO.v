`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.05.2024 16:40:45
// Design Name: 
// Module Name: FIFO
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


module FIFO(

    );
endmodule
module freq_divider_2(
    input clk,rst,
    output reg clk_out
    );
    always@(posedge clk)
    if(!rst)
    clk_out<=1'b0;
    else
    clk_out<=~clk_out;
endmodule

