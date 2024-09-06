`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.05.2024 12:56:01
// Design Name: 
// Module Name: basic_counter
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


module basic_counter(
    input rst,clk,load,
    input [7:0]data,
    output [7:0] count
    );
    reg [7:0]count_temp;
    always@(posedge clk)
    if(!rst)
    count_temp<=8'b0;
    else if(load)
        count_temp<=data;
    else 
    count_temp<=count_temp+1;
    
    assign count=count_temp;
    
endmodule
