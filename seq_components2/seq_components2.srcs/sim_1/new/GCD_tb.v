`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.06.2024 22:50:50
// Design Name: 
// Module Name: GCD_tb
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


module GCD_tb( );
reg [15:0]data_in;
reg start,clk;
wire done;


GCD_algo_datapath dut_datapath(.gt(gt),.eq(eq),.lt(lt),.ldA(ldA),.ldB(ldB),.sel1(sel1),.sel2(sel2),.sel_in(sel_in),.clk(clk),.data_in(data_in));
GCD_controller dut_controller(.ldA(ldA),.ldB(ldB),.sel1(sel1),.sel2(sel2),.sel_in(sel_in),.done(done),.lt(lt),.gt(gt),.eq(eq),.start(start),.clk(clk));
  
always #50 clk=~clk;
initial begin
clk=0;
start = 0;
repeat(1)@(posedge clk)
start = 1;
#1000 $finish;
end

initial begin
    
    data_in=26;
    #200;
    data_in=65;
end

endmodule

