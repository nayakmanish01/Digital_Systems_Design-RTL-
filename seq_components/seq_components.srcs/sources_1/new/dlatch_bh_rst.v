`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.05.2024 23:34:56
// Design Name: 
// Module Name: dlatch_bh_rst
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


module dlatch_bh_rst(
    input en,d,rst,
    output reg q
    );
    always@(en,d,rst)
    if(rst)
        q=1'b0;
    else if(en) q=d;
endmodule
