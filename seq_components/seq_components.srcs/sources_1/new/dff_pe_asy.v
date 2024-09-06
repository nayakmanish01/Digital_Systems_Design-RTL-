`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.05.2024 13:06:51
// Design Name: 
// Module Name: dff_pe_asy
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


module dff_pe_asy(
    input d,clk,rst,
    output reg q
    );
    always@(posedge clk or posedge rst)
        if(rst)
        q=1'b0 ;
        else 
        q=d ;
endmodule
