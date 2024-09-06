`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.09.2024 11:58:20
// Design Name: 
// Module Name: Dual_port_synch_v1
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

module Dual_port_synch_v1(q, data, read_addr, write_addr, we, read_clock, write_clock); // Not a true Dual port  allows only read 
                                                                                        //and write independently from different addresses and different clks
	input [7:0] data;
	input [5:0] read_addr, write_addr;
	input we, read_clock, write_clock;
	output reg [7:0] q;

	reg [7:0] sram[63:0];
	
	always @ (posedge write_clock)
	begin
	
		if (we)
			sram[write_addr] <= data;
	end
	
	always @ (posedge read_clock)
	begin
	
		q <= sram[read_addr];
	end

endmodule
