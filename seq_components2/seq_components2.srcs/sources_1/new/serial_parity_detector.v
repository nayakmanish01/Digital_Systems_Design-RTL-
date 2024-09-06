`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.06.2024 23:31:23
// Design Name: 
// Module Name: serial_parity_detector
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


module serial_parity_detector(
    input clk,x,
    output reg z
    );
    reg even_odd;
    parameter EVEN=0,ODD=1;
//    always@(posedge clk)
//        case(even_odd)
//        EVEN : begin
//                z<=x?1:0;
//                even_odd <= x?ODD:EVEN;
//               end
//        ODD : begin
//                z<=x?0:1;
//                even_odd <= x?EVEN:ODD;
//              end
//        default : 
//        begin
//            even_odd <= EVEN;
            
//        end   
//        endcase     
       always@(posedge clk)
         case(even_odd)
           EVEN : begin
                
                even_odd <= x?ODD:EVEN;
               end
           ODD : begin
                
                even_odd <= x?EVEN:ODD;
              end
           default : 
            even_odd <= EVEN;
            endcase
        always@(even_odd)
           case(even_odd)
           EVEN : z=0;
           ODD : z=1;
           endcase
           
endmodule
