`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.06.2024 23:39:59
// Design Name: 
// Module Name: serial_parity_detector_tb
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


module serial_parity_detector_tb();
reg clk,x;
wire z;
serial_parity_detector dut(.clk(clk),.x(x),.z(z));
always #50 clk=~clk;
initial begin 
    clk=0;
    repeat(10)
    begin
    x=$urandom;
    #45;
    end
    end
endmodule
