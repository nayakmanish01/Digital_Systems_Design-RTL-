`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.06.2024 13:38:12
// Design Name: 
// Module Name: PIPO_concate
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

module PIPO_concate(input write,ldQ,rstA,rshift,clk,
input [15:0]data_in,
output [15:0]Aout,Qout);
wire so;
PIPO_SO A(.rst(rstA),.ld(write),.rshift(rshift),.clk(clk),.data_in(data_in),.x(Aout),.SO(so));
PIPO_Q Q(.ld(ldQ),.rshift(rshift),.clk(clk),.data_in(data_in),.x(Qout),.SI(so)); 
endmodule


module PIPO_SO(
    input rst,ld,rshift,clk,
    input [15:0]data_in,
    output reg [15:0]x,
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

module PIPO_Q(
    input ld,rshift,clk,SI,
    input [15:0] data_in,
    output reg [15:0]x
    );
    always@(posedge clk)
    begin
    if(ld)
        x<=data_in;
    else if(rshift)
        begin
        x<={SI,x[15:1]};
        end
    end
endmodule
