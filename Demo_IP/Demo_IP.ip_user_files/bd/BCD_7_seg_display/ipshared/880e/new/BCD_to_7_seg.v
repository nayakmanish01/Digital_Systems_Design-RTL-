`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.09.2024 15:11:24
// Design Name: 
// Module Name: BCD_to_7_seg
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


module BCD_to_7_seg(
    input [3:0] bin,
    output [6:0] sout
    );
    reg [7:0] temp;
parameter ZERO=4'b0000,ONE=4'b0001,TWO=4'b0010,THREE=4'b0011,FOUR=4'b0100,FIVE=4'b0101,SIX=4'b0110,SEVEN=4'b0111,EIGHT=4'b1000,NINE=4'b1001;
// a b c d e f g 0 segments of 7-segment display
// 1 1 1 1 1 1 0 0 FC
// 0 1 1 0 0 0 0 0 60
// 1 1 0 1 1 0 1 0 DA
// 1 1 1 1 0 0 1 0 F2
// 0 1 1 0 0 1 1 0 66
// 1 0 1 1 0 1 1 0 B6
// 1 0 1 1 1 1 1 0 BE
// 1 1 1 0 0 0 0 0 E0
// 1 1 1 1 1 1 1 0 FE
// 1 1 1 1 0 1 1 0 F6

always@(*)
    case(bin)
    ZERO:temp=8'hFC;
    
    ONE:temp=8'h60;
    
    TWO:temp=8'hDA;
    
    THREE:temp=8'hF2;
    
    FOUR:temp=8'h66;
    
    FIVE:temp=8'hB6;
    
    SIX:temp=8'hBE;
    
    SEVEN:temp=8'hE0;
    
    EIGHT:temp=8'hFE;
    
    NINE:temp=8'hF6;
    
    default:temp=8'h00;
    
    endcase
 
 assign sout=temp[7:1];
endmodule
