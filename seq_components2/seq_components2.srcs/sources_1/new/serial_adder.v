`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.06.2024 07:35:19
// Design Name: 
// Module Name: serial_adder
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


module serial_adder(
    input clk,a,b,rst,
    output reg s
    );
    reg carry_state,next_carry_state ;
    parameter ONE=1,ZERO=0;
    always@(posedge clk) // State_transfer logic
            if(rst)
            carry_state<=0;
            else
            carry_state<=next_carry_state;
            
    always@(a,b,carry_state) //next_state logic
        case(carry_state)
            ZERO: if(a==1 & b==1)
                    next_carry_state<=ONE;
                   else
                     next_carry_state<=ZERO;
                    
            ONE: if(a==0 & b==0)
                    next_carry_state<=ZERO;
                   else
                     next_carry_state<=ONE;
            default:
                   next_carry_state<=ZERO;
        endcase
    always@(a,b,carry_state) // Output logic block
         s=carry_state ? a+b+1: a+b;            
endmodule
