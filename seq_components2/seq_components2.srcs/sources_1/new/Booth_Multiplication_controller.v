`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.06.2024 15:32:05
// Design Name: 
// Module Name: Booth_Multiplication_controller
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


module Booth_Multiplication_controller(
    input clk,q0,qm1,eqz,start,
    output reg ldA,ldQ,ldM,ldC,clrA,clrQ,clrff,sftA,sftQ,addsub,decr,done
    );
    
    reg [2:0]state,next_state;
    parameter S0=3'b000,S1=3'b001,S2=3'b010,S3=3'b011,S4=3'b100,S5=3'b101,S6=3'b110;
    
    always@(posedge clk)
    state<=next_state;
    always@(*)
    case(state)
    S0: if(start)
        next_state=S1;
    S1: next_state=S2;
    S2: #2 if({q0,qm1}==2'b01)
        next_state=S3;
        else if({q0,qm1}==2'b10)
        next_state=S4;
        else 
        next_state=S5;
    S3: next_state=S5;
    S4: next_state=S5;
    S5: #2 if(eqz)
        next_state=S6;
        else
           if({q0,qm1}==2'b01)
                next_state=S3;
           else if({q0,qm1}==2'b10)
                next_state=S4;
           else 
                next_state=S5;
    S6: next_state=S6;
    default: next_state=S0;
    endcase
    
    always@(state)
    case(state)
    S0:
       begin
       ldA=0;
       ldQ=0;
       ldM=0;
       ldC=0;
       clrA=0;
       clrQ=0;
       clrff=0;
       sftA=0;
       sftQ=0;
       addsub=0;
       decr=0;
       done=0;
       end
       
    S1:
       begin
//       ldA=0;
//       ldQ=0;
       ldM=1;
       ldC=1;
       clrA=1;
//       clrQ=0;
       clrff=1;
//       sftA=0;
//       sftQ=0;
//       addsub=0;
//       decr=0;
//       done=0;
       end
     
    S2:
       begin
       ldA=0;
       ldQ=1;
       ldM=0;
       ldC=0;
       clrA=0;
//       clrQ=0;
       clrff=0;
//       sftA=0;
//       sftQ=0;
//       addsub=0;
//       decr=0;
//       done=0;
       end
        
    S3:
       begin
       ldA=1;
       ldQ=0;
       ldM=0;
       ldC=0;
       clrA=0;
       clrQ=0;
       clrff=0;
       sftA=0;
       sftQ=0;
       addsub=1;
       decr=0;
       done=0;
       end
    S4:
       begin
       ldA=1;
       ldQ=0;
       ldM=0;
       ldC=0;
       clrA=0;
       clrQ=0;
       clrff=0;
       sftA=0;
       sftQ=0;
       addsub=0;
       decr=0;
       done=0;
       end
    S5:
       begin
       ldA=0;
       ldQ=0;
//       ldM=0;
//       ldC=0;
//       clrA=0;
//       clrQ=0;
//       clrff=0;
       sftA=1;
       sftQ=1;
//       addsub=0;
       decr=1;
//       done=0;
       end
       
    S6:
       begin
//       ldA=0;
//       ldQ=0;
//       ldM=0;
//       ldC=0;
//       clrA=0;
//       clrQ=0;
//       clrff=0;
//       sftA=0;
//       sftQ=0;
//       addsub=0;
//       decr=0;
       done=1;
       end
    default:  begin
       ldA=0;
       ldQ=0;
       ldM=0;
       ldC=0;
       clrA=0;
       clrQ=0;
       clrff=0;
       sftA=0;
       sftQ=0;
       addsub=0;
       decr=0;
       done=0;
       end
    endcase
endmodule
