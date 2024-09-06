`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.09.2024 22:59:21
// Design Name: 
// Module Name: clock_divide_3
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


module clock_divide_3(
    input clk,rst,
    output clk_out
    );
    
    reg [1:0] posedge_count;
    reg [1:0] negedge_count;
    
    always@(posedge clk)
    begin
        if(rst|((posedge_count==2'd2)))
        posedge_count=2'd0;
        else
        posedge_count<=posedge_count+1;   
    end
    
    always@(negedge clk)
    begin
        if(rst|((negedge_count==2'd2)))
        negedge_count=2'd0;
        else
        negedge_count<=negedge_count+1;    
    end
assign clk_out=(posedge_count==2'd2)|(negedge_count==2'd2);
endmodule
