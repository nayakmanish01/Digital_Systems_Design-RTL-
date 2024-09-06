`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.06.2024 23:03:04
// Design Name: 
// Module Name: cyclic_lamp_tb
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


module cyclic_lamp_tb;
reg clk;
wire [2:0]light;
cyclic_lamp LAMP(.clk(clk),.light(light));

always #50 clk=~clk;

initial begin
    clk=0;
    #1000 $finish;
    end
initial begin
    $monitor($time,"RGY :%b",light);
    end
endmodule
