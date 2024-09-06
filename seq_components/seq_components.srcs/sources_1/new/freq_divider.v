`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.05.2024 14:44:22
// Design Name: 
// Module Name: freq_divider
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


module freq_divider(
    input clk,rst,
    output reg clk_out
    );
    always@(posedge clk)
    if(!rst)
    clk_out<=1'b0;
    else
    clk_out<=~clk_out;
endmodule
