`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.06.2024 15:04:02
// Design Name: 
// Module Name: PIPO_concate_tb
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


module PIPO_concate_tb( );
reg ldA,ldQ,rstA,rshift,clk;
reg [15:0]data_in;
wire [15:0]Aout,Qout;
PIPO_concate dut(.ldA(ldA),.ldQ(ldQ),.rstA(rstA),.rshift(rshift),.clk(clk),.data_in(data_in),.Aout(Aout),.Qout(Qout));

always #50 clk=~clk;
initial begin
clk=0;
rstA=1;
#110;
rstA=0;
ldA=1;
#100 ldA=0;
ldQ=1;
#100 ldQ=0;
end

initial begin
#100;
data_in=16'h0001;
#100 data_in=16'h0afa;
#100 rshift=1;
#200 rshift=0;
end
endmodule
