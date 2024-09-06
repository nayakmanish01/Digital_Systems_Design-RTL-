`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.06.2024 22:54:08
// Design Name: 
// Module Name: cyclic_lamp
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


module cyclic_lamp(
    input clk,
    output reg [2:0] light
    );
    reg [1:0]state;
    parameter S0=0,S1=1,S2=2;
    parameter RED=3'b100,GREEN=3'b010,YELLOW=3'b001;
    always@(posedge clk)
        case(state)
            S0: begin
                //light<=GREEN;
                state<=S1;
                end
            S1: begin
                //light<=YELLOW;
                state<=S2;
                end
            S2:begin
                //light<=RED;
                state<=S0;
                end
            default:begin
                //light<=RED;
                state<=S0;
                end
        endcase
    // Saves uneccessary FFs
  always@(state)
    case(state)
        S0:light=GREEN;
        S1:light=YELLOW;
        S2:light=RED;
        default:light=RED;
    endcase       
endmodule
