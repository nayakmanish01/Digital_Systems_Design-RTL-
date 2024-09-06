`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.06.2024 13:36:29
// Design Name: 
// Module Name: add_right_shift_multiplier_datapath
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

module add_right_shift_multiplier_datapath#(parameter n=16)(
    input [n-1:0]data_in,
    input add,write,rshift,ldQ,ldB,rstA,clk,ldC,
    output Q0,count
    );
    wire SO;
    wire [n-1:0]multip,prod,multiple,sum;
    
    PIPO B(multip,data_in,ldB,clk);
    PIPO_SO A(rstA,write,rshift,clk,sum,prod,SO);
    PIPO_Q Q(ldQ,rshift,clk,SO,data_in,multiple);
    adder alu(sum,multip,prod,add);
    cnt counter(count,clk,ldC,data_in); // via data_in we can specify no of bits of multiplier by setting 1 on MSB position of multiplier. 
    assign Q0=multiple[0];
    
endmodule

module PIPO_SO#(parameter n=16)(
    input rst,ld,rshift,clk,
    input [n-1:0]data_in,
    output reg [n-1:0]x,
    output SO
    );
    always@(posedge clk)
    begin
    if(rst)
        x<=0;
    else if(ld)
        x<=data_in;
    if(rshift)
        begin
        x<={1'b0,x[15:1]};
        end
    end
    assign SO=x[0];
endmodule

module PIPO_Q#(parameter n=16)(
    input ld,rshift,clk,SI,
    input [n-1:0] data_in,
    output reg [n-1:0]x
    );
    always@(posedge clk)
    begin
    if(ld)
        x<=data_in;
    else if(rshift)
        begin
        x<={SI,x[n-1:1]};
        end
    end
endmodule

module PIPO#(parameter n=16)(output reg [n-1:0]Dout,
input [n-1:0]Din,
input ld,clk);
always@(posedge clk)
if(ld)
    Dout<=Din;
else 
    Dout<=Dout;
endmodule

module adder#(parameter n=16)(output reg [n-1:0]sum,
input [n-1:0]A,B,
input add);
always@(*)
if(add)
sum=A+B;
endmodule

module cnt#(parameter n=16)(output count, 
input clk,ld,
input [n-1:0]din);
reg [3:0]c;
always@(posedge clk) begin
if(ld)
c<=din;
else
c<=(c>>1'b1);
end
assign count = (c==0)?1:0;
endmodule
