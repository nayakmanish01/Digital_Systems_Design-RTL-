`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.05.2024 18:37:55
// Design Name: 
// Module Name: right_shift_register
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
module right_shift_register(
    input SI,clk,rst,
    output SO
    );
    reg [4:0]SR;
    always@(posedge clk) 
        if(rst)
        SR<=5'b00000;
        else
            begin
            SR[4]<=SI;
            SR[3]<=SR[4];
            SR[2]<=SR[3];
            SR[1]<=SR[2];
            SR[0]<=SR[1];
         
            end
      assign SO=SR[0];
endmodule
