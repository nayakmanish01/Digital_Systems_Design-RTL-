`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.06.2024 14:26:24
// Design Name: 
// Module Name: Booth_Multiplication_datapath
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

module Booth_Multiplication_datapath#(parameter n=4)(
    input ldA,clrA,ldC,sftA,ldQ,clrQ,sftQ,ldM,clrff,addsub,clk,decr,
    input [n-1:0] data_in,
    output q0,qm1,eqz
    );
    wire [n-1:0]Z,X,Y,Q;
    
shiftreg partial_prod(X,Z,ldA,clk,clrA,sftA,X[n-1]);
PIPO multiplicand(Y,data_in,ldM,clk);
ALU adder_sub(Z,X,Y,addsub);
shiftreg multiplier(Q,data_in,ldQ,clk,clrQ,sftQ,Z[0]);
dff DFF(qm1,Q[0],clk,clrff);
counter cnt(eqz,ldC,decr,clk);
assign q0=Q[0];
endmodule


module PIPO#(parameter n=4)(output reg [n-1:0]Dout,input[n-1:0]Din,input ld,clk);

always@(posedge clk)
    if(ld)
        Dout<=Din;
        
endmodule

module shiftreg#(parameter n=4)(output reg [n-1:0] Dout,input [n-1:0] Din,
        input ld,clk,clr,sft,Si
    );
  always@(posedge clk)
    if(clr)
    Dout<=4'h0;
    else if(ld)
    Dout<=Din;
    else if(sft)
    Dout<={Si,Dout[n-1:1]};
endmodule

module dff(output reg do,input di,clk,clr);
always@(posedge clk)
    if(clr)
    do<=1'b0;
    else
    do<=di;
endmodule

module ALU#(parameter n=4)(output reg [n-1:0]Z,
           input [n-1:0]X,Y,
           input addsub);
           
always@(*)

Z=addsub?(X+Y):(X-Y);

endmodule

module counter(output eqz,input ld,decr,clk);
    reg [2:0]count;
    always@(posedge clk)
    if(ld)
    count<=3'b100;
    else if(decr)
    count<=count-1;
    else
    count<=count;
    
    assign eqz=~|count;
    
endmodule