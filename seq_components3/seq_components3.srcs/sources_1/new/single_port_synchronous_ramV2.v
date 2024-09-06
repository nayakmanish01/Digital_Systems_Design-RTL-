`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.09.2024 11:49:31
// Design Name: 
// Module Name: single_port_synchronous_ramV2
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


module single_port_synchronous_ramV2(q,data,addr,we,clk); // Synchronous RAM and 1-R or 1-W or 1-R and 1-W ,
                                                          //new data is read and takes 2 clk cycles for reading and writing from diff add.
	input [7:0] data;
	input [5:0] addr;
	input we, clk;
	output [7:0] q;
	
	reg [7:0] sram[63:0];
	
	reg [5:0] addr_reg;
	
	always @ (posedge clk)
	begin
		if (we)
			sram[addr] <= data;
		addr_reg <= addr;
	end
		
	assign q = sram[addr_reg];
	
endmodule
