`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.06.2024 18:43:04
// Design Name: 
// Module Name: water_reservior_controller
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


module water_reservior_controller(
    input clk,
    input reset,
    input [3:1] s,
    output reg fr3,
    output reg fr2,
    output reg fr1,
    output reg dfr
); 
    reg [2:0]curr_level,next_level;
    parameter L0=0,L1=1,L2=2,L3=3,L4=4,L5=5;
    
    always@(posedge clk)// Flip-flop transition btw next_level to curr_level
        if(reset)
            curr_level<=L0;
    	else
            curr_level<=next_level;
    always@(s,curr_level)// level transition logic
        case(curr_level)
            L0:begin
                if(s[1]==1 & s[2]==0 & s[3]==0)
                   next_level=L1;
                else if(s[1]==0 & s[2]==0 & s[3]==0)
                    next_level=L0;
               end
             L1:begin
                 if(s[1]==1 & s[2]==1 & s[3]==0)
                   next_level=L2;
                 else if(s[1]==1 & s[2]==0 & s[3]==0)
                    next_level=L1;
                 else if(s[1]==0 & s[2]==0 & s[3]==0)
                     next_level=L0;
               end
             L2:begin
                 if(s[1]==1 & s[2]==1 & s[3]==0)
                   next_level=L2;
                 else if(s[1]==1 & s[2]==1 & s[3]==1)
                    next_level=L3;
                 else if(s[1]==1 & s[2]==0 & s[3]==0)
                     next_level=L5;
               end
             L3:begin
                 if(s[1]==1 & s[2]==1 & s[3]==1)
                   next_level=L3;
                 else if(s[1]==1 & s[2]==1 & s[3]==0)
                    next_level=L4;
               end
             L4:begin
                 if(s[1]==1 & s[2]==1 & s[3]==0)
                   next_level=L4;
                 else if(s[1]==1 & s[2]==0 & s[3]==0)
                    next_level=L5;
                 else if(s[1]==1 & s[2]==1 & s[3]==1)
                     next_level=L3;
               end
             L5:begin
                if(s[1]==1 & s[2]==0 & s[3]==0)
                   next_level=L5;
                else if(s[1]==0 & s[2]==0 & s[3]==0)
                    next_level=L0;
                 else if(s[1]==1 & s[2]==1 & s[3]==0)
                     next_level=L2;
               end
        endcase
           always@(s,curr_level)
           case(curr_level)
            L0:begin
                fr1=1;
                fr2=1;
                fr3=1;
                dfr=1;
               end
             L1:begin
                fr1=1;
                fr2=1;
                fr3=0;
                dfr=0;
               end
             L2:begin
                fr1=1;
                fr2=0;
                fr3=0;
                dfr=0;
               end
             L3:begin
                fr1=0;
                fr2=0;
                fr3=0;
                dfr=0;
               end
             L4:begin
                fr1=1;
                fr2=0;
                fr3=0;
                dfr=1;
               end
             L5:begin
                fr1=1;
                fr2=1;
                fr3=0;
                dfr=1;
               end
           endcase

endmodule
