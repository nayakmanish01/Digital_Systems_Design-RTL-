`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.05.2024 16:24:12
// Design Name: 
// Module Name: dff_pe_alr_als
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


module dff_pe_alr_als(
    input d,clk,rst,set,
    output reg q
    );
    always@(posedge clk or posedge rst or posedge set)
        if(!rst)
        q<=1'b0;
        else if(set)
        q<=1'b1;
        else 
        q<=d;
        
endmodule
