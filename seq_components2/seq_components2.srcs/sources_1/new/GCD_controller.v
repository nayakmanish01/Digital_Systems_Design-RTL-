`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.06.2024 21:50:18
// Design Name: 
// Module Name: GCD_controller
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


module GCD_controller(
      output reg ldA,ldB,sel1,sel2,sel_in,done,
      input lt,gt,eq,start,clk);
      
      reg [2:0]state,next_state;
      parameter S0=0,S1=1,S2=2,S3=3,S4=4,S5=5;
      
      always@(posedge clk)
      state<=next_state;
      always@(*)
      case(state)
      S0: if(start) 
          next_state=S1;
          else
          next_state=S0; 
      S1: next_state=S2;
      S2: if(eq)
            next_state=S5;
          else if(lt)
            next_state=S3;
          else if(gt)
            next_state=S4;
      S3: if(eq)
            next_state=S5;
          else if(lt)
            next_state=S3;
          else if(gt)
            next_state=S4;
      S4: if(eq)
            next_state=S5;
          else if(lt)
            next_state=S3;
          else if(gt)
            next_state=S4;
       S5: next_state=S5;
      default:
            next_state=S0;
      endcase
      
      always@(*)
         case(state)
      S0: begin
            #2
            ldA=1;
            ldB=0;
            sel1=0;
            sel2=0;
            sel_in=0;
            done=0;
          end  
      S1:  begin
      #2
            ldA=0;
            ldB=1;
            sel1=0;
            sel2=0;
            sel_in=0;
            done=0;
          end
      S2: #2 if(eq)
            begin
            ldA=0;
            ldB=0;
            sel1=0;
            sel2=0;
            sel_in=1;
            done=1;
            end
          else if(lt)
            begin ldA=0;
            ldB=1;
            sel1=0;
            sel2=1;
            sel_in=1;
            done=0; end
          else if(gt)
            begin ldA=1;
            ldB=0;
            sel1=1;
            sel2=0;
            sel_in=1;
            done=0;
          end
      S3: #2 if(eq)
           begin
            ldA=0;
            ldB=0;
            sel1=0;
            sel2=0;
            sel_in=1;
            done=1;
            end
          else if(lt)
            begin ldA=0;
            ldB=1;
            sel1=0;
            sel2=1;
            sel_in=1;
            done=0; end
          else if(gt)
            begin ldA=1;
            ldB=0;
            sel1=1;
            sel2=0;
            sel_in=1;
            done=0;
          end
      S4:  #2 if(eq)
            begin
            ldA=0;
            ldB=0;
            sel1=0;
            sel2=0;
            sel_in=1;
            done=1;
            end
          else if(lt)
            begin ldA=0;
            ldB=1;
            sel1=0;
            sel2=1;
            sel_in=1;
            done=0; end
          else if(gt)
            begin ldA=1;
            ldB=0;
            sel1=1;
            sel2=0;
            sel_in=1;
            done=0;
          end
      S5:  begin
           #2 ldA=0;
            ldB=0;
            sel1=0;
            sel2=0;
            sel_in=1;
            done=1;
          end
      default:begin ldA=0;
                ldB=0;
                end
         endcase
      
endmodule
