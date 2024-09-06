`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////////
//// Company: 
//// Engineer: 
//// 
//// Create Date: 25.05.2024 15:36:38
//// Design Name: 
//// Module Name: FIFO_tb
//// Project Name: 
//// Target Devices: 
//// Tool Versions: 
//// Description: 
//// 
//// Dependencies: 
//// 
//// Revision:
//// Revision 0.01 - File Created
//// Additional Comments:
//// 
////////////////////////////////////////////////////////////////////////////////////

//// For fifo with single clk
//module FIFO_tb;
// reg clk,rst,rd_en,wr_en;
// reg [7:0]buf_in;
// wire [7:0]buf_out,fifo_counter;
// wire buf_full,buf_empty;
 
//FIFO_single_clock dut(.clk(clk),.rst(rst),.rd_en(rd_en),.wr_en(wr_en),.fifo_counter(fifo_counter),.buf_in(buf_in),.buf_out(buf_out),.buf_empty(buf_empty),.buf_full(buf_full));
//always #50 clk=~clk;
 
// initial begin
//    clk=0;
//    rst=0;
//    wr_en=0;
//    rd_en=0;
//    #100 rst=1;
//    #100 rst=0;
//    wr_en=1;
//    repeat(5) begin
//    buf_in<=$urandom;
//    #100;
//    end
//    wr_en=0;
//    #200;
//    rd_en=1;
//    #400;
//    rd_en=0;
//    #200;
//    wr_en=1;
//    buf_in=$urandom; 
//    rd_en=1;
//    #100;
//    wr_en=0;
//    rd_en=0;
//    #200;
// end   
// initial 
//  begin
//  $monitor("time=%d,\t rst=%b, \t wr_en=%b, \t rd_en=%b, \t buf_empty=%b,\t buf_full=%b, \t fifo_counter=%b, \t buf_in=%b, \t buf_out=%b",$time,rst,wr_en,rd_en,buf_empty,buf_full,fifo_counter,buf_in,buf_out);
//  #1000 $finish;
//  end
//endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.05.2024 15:36:38
// Design Name: 
// Module Name: FIFO_tb
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

// For fifo with dual clk
module FIFO_tb;
 reg clk1,clk2,rst,rd_en,wr_en;
 reg [7:0]buf_in;
 wire [7:0]buf_out,fifo_counter;
 wire buf_full,buf_empty;
 
FIFO_dual_clock dut(.clk1(clk1),.clk2(clk2),.rst(rst),.rd_en(rd_en),.wr_en(wr_en),.fifo_counter(fifo_counter),.buf_in(buf_in),.buf_out(buf_out),.buf_empty(buf_empty),.buf_full(buf_full));
always #50 clk1=~clk1;
always #150 clk2=~clk2; // read clock speed is less than write clock speed
 initial begin
    clk1=0;
    clk2=0;
    rst=0;
    wr_en=0;
    rd_en=0;
    #100 rst=1;
    #100 rst=0;
    wr_en=1;
    rd_en=1;
    repeat (5) begin
    buf_in=$urandom;
    #100;
    end
//    wr_en=0;
    rd_en=0;
 end   
 initial 
  begin
  $monitor("time=%d,\t rst=%b, \t wr_en=%b, \t rd_en=%b, \t buf_empty=%b,\t buf_full=%b, \t fifo_counter=%b, \t buf_in=%b, \t buf_out=%b",$time,rst,wr_en,rd_en,buf_empty,buf_full,fifo_counter,buf_in,buf_out);
  #1000 $finish;
  end
endmodule
