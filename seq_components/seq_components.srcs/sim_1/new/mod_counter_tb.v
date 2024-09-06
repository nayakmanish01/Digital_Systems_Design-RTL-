`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.05.2024 11:57:49
// Design Name: 
// Module Name: mod_counter_tb
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


module mod_counter_tb();
reg clk,rst;
wire [7:0]count;
mod_counter dut(.clk(clk),.rst(rst),.count(count));

always #50 clk=~clk;
initial begin
clk=0;
rst=1;
#100 rst=0;
#100 rst=1;
#3000 $finish;
end
endmodule
