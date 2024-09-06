`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.05.2024 10:28:45
// Design Name: 
// Module Name: concurrent_assignment
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


module concurrent_assignment(d,b,clk);
    input b,clk;
    output reg d;
    reg a,c;
    always@(posedge clk) begin
        if(clk) 
        begin
        a<=b;
        c=a;
        d=c;
        end
    end
endmodule
