`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.09.2024 12:04:42
// Design Name: 
// Module Name: true_dual_port
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


module true_dual_port(q_a, q_b, data_a, data_b, addr_a, addr_b, we_a, we_b, clk);
	input [7:0] data_a, data_b;
	input [5:0] addr_a, addr_b;
	input we_a, we_b, clk;
	output reg [7:0] q_a, q_b;

	reg [7:0] sram[63:0];
	
	// Port A
	always @ (posedge clk)
	begin
		if (we_a) 
		begin
			sram[addr_a] <= data_a;
			q_a <= data_a;
		end
		else 
		begin
			q_a <= sram[addr_a];
		end
	end
	
	// Port B
	always @ (posedge clk)
	begin
		if (we_b)
		begin
			sram[addr_b] <= data_b;
			q_b <= data_b;
		end
		else
		begin
			q_b <= sram[addr_b];
		end
	end
	
endmodule
