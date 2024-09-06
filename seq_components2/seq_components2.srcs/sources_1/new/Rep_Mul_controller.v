`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.06.2024 22:51:45
// Design Name: 
// Module Name: Rep_Mul_controller
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


module Rep_MUL_controller(
    input eqz,clk,start,
    output reg ldA,ldB,ldP,clr_P,decr_B,done
    );
    reg [2:0] state;
    parameter S0=0,S1=1,S2=2,S3=3,S4=4;
    always@(posedge clk)
         case(state)
         S0:begin
            if(start)
                state<=S1;
            else
                state<=S0;
            end
         S1:state<=S2;
         S2:state<=S3;
         S3:#2 if(eqz) state<=S4;
         S4: state<=S4;
         default:state<=S0;
         endcase
         
    always@(state)
        case(state)
        S0:begin
            //#1;
            ldA=0;
            ldB=0;
            ldP=0;
            clr_P=0;
            decr_B=0;
            done=0;
            end
         S1:begin
            //#1;
            ldA=1;
            end
         S2:begin
           // #1;
            ldA=0;
            ldB=1;
            clr_P=1;
            end
         S3:begin
            //#1;
            ldB=0;
            ldP=1;
            
            clr_P=0;
            decr_B=1;
            
            end
         S4:begin
            //#1;
            ldP=0;
            clr_P=0;
            decr_B=0;
            done=1;
            end
         default:begin
            ldA=0;
            ldB=0;
            ldP=0;
            clr_P=0;
            decr_B=0;
            done=0;
            end
        endcase
endmodule
