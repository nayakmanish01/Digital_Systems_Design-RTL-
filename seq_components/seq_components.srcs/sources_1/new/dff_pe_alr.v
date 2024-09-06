`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.05.2024 16:15:32
// Design Name: 
// Module Name: dff_pe_alr
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


module dff_pe_alr(
    input d,rst,clk,
    output reg q
    );
    always@(posedge clk)
        if(!rst)
        q<=1'b0;
        else 
        q<=d;
endmodule
