`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.09.2024 11:05:43
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


module FIFO_tb();

    reg clk,rst,wr_en,rd_en;
    reg [7:0] buf_in;
    wire buf_empty,buf_full;
    wire [7:0] buf_out;
    wire [6:0] fifo_counter ;   
    FIFO_single_clk dut( clk, rst, buf_in, buf_out, wr_en, rd_en, buf_empty, buf_full, fifo_counter );

    always #50 clk=~clk;
    
    initial begin 
    clk=1'b0;
    rst=1'b0;
    wr_en=1'b0;
    rd_en=1'b0;
    buf_in =8'h00;
    
    #50 rst=1'b1;
    #50 rst=1'b0;
    
    wr_en = 1'b1;
    repeat(10) begin
    buf_in=$urandom;
    #100;
    end
    wr_en=1'b0;
    
    rd_en=1'b1;
    repeat(5) begin
    #100;
    end
    rd_en=1'b0;
    
    wr_en = 1'b1;
    repeat(59) begin
    buf_in=$urandom;
    #100;
    end
    wr_en=1'b0;
    
    rd_en=1'b1;
    repeat(64) begin
    #100;
    end
    rd_en=1'b0;
    
    $stop;
    end
endmodule
