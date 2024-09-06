`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.05.2024 11:26:40
// Design Name: 
// Module Name: mod_counter
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

//mod 47 counter
//0 to 46 then reset again!!!
module mod_counter(
    input clk,rst,
    output [7:0] count
    );
    reg [7:0]count_temp;
    always@(posedge clk)
    if(!rst | (count_temp>=8'd46))
        count_temp<=8'b00000;
    else
    count_temp<=count_temp+1;
    
    assign count=count_temp;
endmodule
