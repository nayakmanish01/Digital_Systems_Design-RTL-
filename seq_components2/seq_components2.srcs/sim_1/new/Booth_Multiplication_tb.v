`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.06.2024 16:13:27
// Design Name: 
// Module Name: Booth_Multiplication_tb
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


module Booth_Multiplication_tb#(parameter n=4)( );
reg start,clk;
wire done;
reg [n-1:0]data_in;

Booth_Multiplication_datapath datapath_tb(ldA,clrA,ldC,sftA,ldQ,clrQ,sftQ,ldM,clrff,addsub,clk,decr,data_in,q0,qm1,eqz);
Booth_Multiplication_controller controller_tb(clk,q0,qm1,eqz,start,ldA,ldQ,ldM,ldC,clrA,clrQ,clrff,sftA,sftQ,addsub,decr,done);

always #50 clk=~clk;
initial begin
clk=0;
start=1;
#2000 $finish;
end

initial begin
#70 data_in=4'ha;

end
endmodule
