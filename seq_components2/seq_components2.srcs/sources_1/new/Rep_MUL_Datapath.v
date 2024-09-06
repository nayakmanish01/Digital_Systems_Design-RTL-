`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.06.2024 22:17:10
// Design Name: 
// Module Name: Rep_MUL_Datapath
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


module Rep_MUL_Datapath(
    input clk,ldA,ldP,ldB,clr_P,decr_B,
    input [15:0] data_in,
    output  eqz
    );
    wire [15:0]a,p,c,Bout;//Bus;
    
    PIPO1 A(a,data_in,ldA,clk);
    PIPO2 P(p,c,ldP,clr_P,clk);
    ADDER ADD(c,a,p);
    CNTR Counter(Bout,data_in,ldB,decr_B,clk);
    CMP campare(eqz,Bout);
endmodule

module PIPO1(Dout,Din,ldr,clk);
    output reg [15:0]Dout;
    input [15:0]Din;
    input ldr,clk;
    always@(posedge clk)
        if(ldr)
            Dout<=Din;
         else
            Dout<=Dout;
endmodule

module PIPO2(Dout,Din,ldr,clr,clk);
    output reg [15:0]Dout;
    input [15:0]Din;
    input ldr,clk,clr;
    always@(posedge clk)
        if(clr)
             Dout<=0;
        else if(ldr)
            Dout<=Din;
        else
            Dout<=Dout;
           
endmodule

module CNTR(Dout,Din,ld,decr,clk);
    input [15:0]Din;
    input ld,decr,clk;
    output reg [15:0]Dout;
    always@(posedge clk)
        if(ld)
            Dout<=Din;
        else if(decr)
            Dout<=Dout - 1;
        else 
            Dout<=Dout;
            
endmodule

module ADDER(c,a,b);
input [15:0]a,b;
output reg [15:0]c;
always@(*)
c=a+b;
endmodule

module CMP(eqz,Dout);
input [15:0]Dout;
output eqz;
assign eqz=(Dout==0)?1:0;
endmodule

