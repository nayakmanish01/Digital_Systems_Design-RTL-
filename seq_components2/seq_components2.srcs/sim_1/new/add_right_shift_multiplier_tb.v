`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.06.2024 19:38:48
// Design Name: 
// Module Name: add_right_shift_multiplier_tb
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


module add_right_shift_multiplier_tb();
    reg start,clk;
    reg [15:0] data_in;
    wire done;

add_shift_right_controller controller_dut(.Q0(Q0),.count(count),.start(start),.clk(clk),.add(add),.write(write),.rshift(rshift),.ldQ(ldQ),.ldB(ldB),.rstA(rstA),.ldC(ldC),.done(done));
add_right_shift_multiplier_datapath datapath_dut(.data_in(data_in),.add(add),.write(write),.rshift(rshift),.ldQ(ldQ),.ldB(ldB),.rstA(rstA),.clk(clk),.ldC(ldC),.Q0(Q0),.count(count));

always #50 clk=~clk;
initial begin
clk=0;
start=1;

#2000 $finish;
end

initial begin
#70;
data_in=16'h000a;
#100;
data_in=16'h0001;
#100
data_in=16'h0008;
end
endmodule
