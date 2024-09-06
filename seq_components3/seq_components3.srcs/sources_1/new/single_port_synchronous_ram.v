`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.09.2024 11:46:19
// Design Name: 
// Module Name: single_port_synchronous_ram
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


module single_port_synchronous_ram( // 1-R or 1-W or 1- R and W possible and old data is read
	input write_enable,
	input [15:0] address,
	input [7:0] data_in,
	input clk,
	output reg [7:0] data_out );

	reg [7:0] memory[65535:0];

	always@(posedge clk)
		if(write_enable)
			memory[address]<=data_in; else
		data_out<=memory[address];

endmodule
