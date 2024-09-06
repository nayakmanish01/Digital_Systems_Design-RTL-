`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.05.2024 19:18:14
// Design Name: 
// Module Name: universal_shift_register
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


module universal_shift_register(
    input SI,clk,rst,input [1:0]sel,
    input [4:0]PI,output SO,output reg [4:0]PO
    );
    always@(posedge clk)
    if(rst)
    PO<=5'b00000;
    else
       case(sel)
                2'b00:PO<=PO;//keep as it is
                2'b01:PO<={PO[3:0],SI};//left shift
                2'b10:PO<={SI,PO[4:1]};//right shift
                2'b11:PO<=PI;//load input
                default :PO<=5'b0000;
       endcase;
    assign SO=(sel==2'b01)?PO[4]:PO[0];
endmodule
