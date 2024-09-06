`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.06.2024 21:20:14
// Design Name: 
// Module Name: GCD_algo_datapath
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


module GCD_algo_datapath(
    
    output gt,eq,lt,
    input ldA,ldB,sel1,sel2,sel_in,clk,
    input [15:0]data_in
    );
    wire [15:0]Bus,Aout,Bout,x,y,subout;
    PIPO A(Aout,Bus,ldA,clk);
    PIPO B(Bout,Bus,ldB,clk);
    Mux mux_in1(x,Aout,Bout,sel1);
    Mux mux_in2(y,Aout,Bout,sel2);
    Mux bus(Bus,subout,data_in,sel_in);
    Sub subt(subout,x,y);
    compare cmp(lt,gt,eq,Aout,Bout);    
endmodule

module PIPO(output reg [15:0]Dout,input[15:0]Din,input ld,clk);

always@(posedge clk)
    if(ld)
        Dout<=Din;
endmodule

module Mux(output [15:0]op,input [15:0]in1,in2,input sel);

assign op=sel?in1:in2;
endmodule

module Sub(output reg [15:0]subout,input [15:0]A,B);

always@(*)
subout=A-B;
endmodule

module compare(output  lt,gt,eq,input [15:0]A,B);
assign lt=(A<B);
assign gt=(A>B);
assign eq=(A==B);
endmodule