`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.06.2024 23:13:09
// Design Name: 
// Module Name: Rep_MUL_tb
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


module Rep_MUL_tb();
reg [15:0]data_in;
reg start,clk;
wire done;

Rep_MUL_controller controller(eqz,clk,start,ldA,ldB,ldP,clr_P,decr_B,done);
Rep_MUL_Datapath Datapath(clk,ldA,ldP,ldB,clr_P,decr_B,data_in,eqz);

always #50 clk=~clk;
initial begin
clk=0;
start = 0;
repeat(1)@(posedge clk)
start = 1;
#1000 $finish;
end

initial begin
    
    data_in=10;
    #300;
    data_in=50;
end
endmodule
