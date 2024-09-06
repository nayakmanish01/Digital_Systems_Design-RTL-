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

// divide by 2
//module freq_divider_2(
/*    input clk,rst,
    output reg clk_out
    );
    always@(posedge clk)
    if(!rst)
    clk_out<=1'b0;
    else
    clk_out<=~clk_out;
endmodule*/

//divide by 4
module freq_divider_4(
    input clk,rst,
    output clk_o
    );
    
    reg clk_new,clk_out;
    always@(posedge clk)begin
    if(rst)
    clk_new<=1'b0;
    else 
    clk_new<=~clk_new;
    end
//    assign clk_2=clk_new;
    always@(posedge clk_new or posedge rst) begin
    if(rst)
    clk_out<=1'b0;
    else 
    clk_out<=~clk_out;
    end
    
    assign clk_o=clk_out;
endmodule 

//freq_divider by 3
//module freq_divide_3(clk_out,clk,rst);
//input clk,rst;
//output clk_out;
//reg [1:0]pos_cnt,neg_cnt;

//always@(posedge clk)
//if(rst | (pos_cnt==2'b10))
//pos_cnt<=2'b0;

//else
//pos_cnt<=pos_cnt+1;

//always@(negedge clk)
//if(rst | (neg_cnt==2'b10))
//neg_cnt<=2'b0;

//else
//neg_cnt<=neg_cnt+1;
//assign clk_out= (pos_cnt==2'b10) | (neg_cnt==2'b10);
//endmodule