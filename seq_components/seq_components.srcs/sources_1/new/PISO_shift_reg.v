`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.05.2024 11:02:16
// Design Name: 
// Module Name: PISO_shift_reg
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

// Right shift

module PISO_shift_reg(
    input clk,rst,sel,
    input [4:0]PI,
    output SO 
    );
    reg [4:0]SR;
    always@(posedge clk)
        if (rst) 
        SR<=5'b0;
        else begin
            
            case(sel)
                1'b0: begin
                      SR[4]<=PI[4]; 
                      SR[3]<=PI[3];
                      SR[2]<=PI[2];
                      SR[1]<=PI[1];
                      SR[0]<=PI[0];
                      end
                1'b1: begin
                      SR[4]<=1'b0;
                      SR[3]<=SR[4];
                      SR[2]<=SR[3];
                      SR[1]<=SR[2];
                      SR[0]<=SR[1];
                      end
            endcase
        end
        assign SO=SR[0];
endmodule
