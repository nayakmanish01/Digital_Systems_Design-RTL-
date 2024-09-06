`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.05.2024 15:06:10
// Design Name: 
// Module Name: freq_divider_tb
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


module freq_divider_tb(    );
reg clk,rst;
wire cllk_out;
freq_divider_ dut(clk,rst,cllk_out);
always begin 
clk=0;
#50 clk=1;
#100 clk=0;
end
initial begin
rst=0;
#100 rst=1;
end
endmodule
