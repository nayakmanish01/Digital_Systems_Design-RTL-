`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.05.2024 16:18:32
// Design Name: 
// Module Name: freq_divider_4_tb
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


module freq_divider_4_tb;
reg clk,rst;
wire clk_o;
freq_divider_4 dut(.clk(clk),.rst(rst),.clk_o(clk_o));
initial begin
clk=0;
rst=0;
end
always #10 clk = ~clk;
initial begin
#10
rst=1;
#10
rst=0;
end
endmodule


