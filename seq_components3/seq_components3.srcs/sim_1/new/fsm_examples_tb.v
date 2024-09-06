`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.07.2024 08:28:35
// Design Name: 
// Module Name: fsm_examples_tb
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


module fsm_3_procc_moore_tb();

reg clk = 0, rst = 0, din = 0;
wire dout;
integer i = 0;
 
 
fsm_3_procc_moore dut (clk,rst,din,dout);
 
always #10 clk = ~clk;
 
initial begin
rst = 1;
#40;
rst = 0;
end
 
initial begin
#40;
for(i = 0; i < 10; i = i + 1)
begin
din = 1;
@(posedge clk);
din = 0;
@(posedge clk);
end
end
 
initial begin
#500;
$finish;
end
 
endmodule

//module fsm_2_procc_moore_tb(
//);
module fsm_2_procc_mealy_tb;
reg clk = 0, rst = 0, din = 0;
wire dout;
integer i = 0;
 
 
//fsm_2_procc_moore dut (clk,rst,din,dout);
fsm_2_procc_mealy dut (clk,rst,din,dout);
always #10 clk = ~clk;
 
initial begin
rst = 1;
#40;
rst = 0;
end
 
initial begin
#40;
for(i = 0; i < 10; i = i + 1)
begin
din = 1;
@(posedge clk);
din = 0;
@(posedge clk);
end
end
 
initial begin
#500;
$finish;
end
 
endmodule

//module fsm_1_procc_moore_tb(
//);
module fsm_1_procc_mealy_tb(
);
 
reg clk = 0, rst = 0, din = 0;
wire dout;
integer i = 0;
 
 
//fsm_1_procc_moore dut (clk,rst,din,dout);
fsm_1_procc_mealy dut (clk,rst,din,dout);
always #10 clk = ~clk;
 
initial begin
rst = 1;
#40;
rst = 0;
end
 
initial begin
#40;
for(i = 0; i < 10; i = i + 1)
begin
din = 1;
@(posedge clk);
din = 0;
@(posedge clk);
end
end
 
initial begin
#500;
$finish;
end
 
endmodule

module assig_tb();

reg din=0,clk=0,rst=0;
wire dout;
integer i=0;
NO_1001 dut(clk,rst,din,dout);

always #50 clk=~clk;

initial begin
#50;
rst = 1;
@(posedge clk)
rst = 0;
end

initial begin
#100;
for(i=0;i<10;i=i+1)
begin
@(posedge clk)
din=$urandom;
end

@(posedge clk)
din=1;
@(posedge clk)
din=0;
@(posedge clk)
din=0;
@(posedge clk)
din=1;
@(posedge clk)
din=0;

$finish;
end

endmodule

module mealy_seq_tb();

reg din=0,clk=0,rst=0;
wire dout;
integer i=0;
mealy_seq dut(clk,rst,din,dout);

always #50 clk=~clk;

initial begin
#50;
rst = 1;
@(posedge clk)
rst = 0;
end

initial begin
#100;
for(i=0;i<10;i=i+1)
begin
@(posedge clk)
din=$urandom;
end

@(posedge clk)
din=1;
@(posedge clk)
din=0;
@(posedge clk)
din=1;
@(posedge clk)
din=1;
@(posedge clk)
din=0;
@(posedge clk)
din=0;

$finish;
end

endmodule

module NO_1001_mealy_tb();

reg din=0,clk=0,rst=0;
wire dout;
integer i=0;
//NO_1001_mealy dut(clk,rst,din,dout);
OV_1001_mealy dut(clk,rst,din,dout);

always #50 clk=~clk;

initial begin
#50;
rst = 1;
@(posedge clk)
rst = 0;
end

initial begin
#100;
for(i=0;i<10;i=i+1)
begin
@(posedge clk)
din=$urandom;
end

@(posedge clk)
din=1;
@(posedge clk)
din=0;
@(posedge clk)
din=0;
@(posedge clk)
din=1;
@(posedge clk)
din=0;
@(posedge clk)
din=0;

$finish;
end

endmodule