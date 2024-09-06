`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.09.2024 11:53:46
// Design Name: 
// Module Name: single_port_Synchronous_ramV3
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


module single_port_Synchronous_ramV3(q,data,addr_w,addr_r,we,clk);
	input [7:0] data;
	input [5:0] addr_w,addr_r;
	input we, clk;
	output [7:0] q;
	
	reg [7:0] sram[63:0];
	
	reg [5:0] addr_reg;
	
	always @ (posedge clk)
	begin
		if (we)
			sram[addr_w] <= data;
		addr_reg <= addr_r;
	end
		
	assign q = sram[addr_reg];
	
endmodule
