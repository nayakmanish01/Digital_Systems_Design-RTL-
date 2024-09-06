`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.07.2024 08:18:04
// Design Name: 
// Module Name: fsm_examples
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

module fsm_3_procc_moore(
    input clk, rst, din,
    output reg dout
    );
parameter idle = 0;
parameter s0 = 1;
parameter s1 = 2; 
 
reg [1:0] state = idle, nstate = idle;   
    
/////three process methodology 
 
/////reset logic  -----Sequential process  
   always@(posedge clk)
   begin
     if(rst == 1'b1)
       state <= idle;
     else
       state <= nstate;
   end 
    
///////////output decoder
 
always@(state , din)   
  begin
  case(state)
  idle : dout = 1'b0; 
  s0   : dout = 1'b0;
  s1   : dout = 1'b1;
  default: dout = 1'b0;
  endcase
  end 
//////////////////Next State decoder
 
always@(state,din)
begin
case(state)
idle : begin
    nstate = s0;
end
 
s0: begin
  if(din == 1'b1)
     nstate = s1;
   else
     nstate = s0;
end
 
 
s1 : begin
  if(din == 1'b1)
    nstate = s0;
  else
    nstate = s1;
end
 
default : nstate = idle; 
 
endcase
end    
     
endmodule


module fsm_2_procc_moore(
    input clk, rst, din,
    output reg dout
    );
parameter idle = 0;
parameter s0 = 1;
parameter s1 = 2; 
 
reg [1:0] state = idle, nstate = idle;   
    
/////two process methodology 
 
/////reset logic  -----Sequential process  
   always@(posedge clk)
   begin
     if(rst == 1'b1)
       state <= idle;
     else
       state <= nstate;
   end 
    
///////////output decoder + next state decoder
 
 
always@(state,din)
begin
case(state)
idle: begin
  
  dout = 1'b0; 
  nstate = s0;   
end
 
s0: begin
  dout = 1'b0;
  
if(din == 1'b1)
   nstate = s1;
else
   nstate = s0;
   
end
 
s1: begin
  dout = 1'b1;
  
  if(din == 1'b1)
   nstate = s0;
 else
   nstate = s1;
 
end
default: begin
    dout = 1'b0;
    nstate = idle;
end
endcase
end
    
endmodule

module fsm_1_procc_moore(
    input clk, rst, din,
    output reg dout
    );
parameter idle = 0;
parameter s0 = 1;
parameter s1 = 2; 
 
reg [1:0] state = idle;   
    
/////single process methodology 
 
always@(posedge clk)
begin
 
if(rst == 1'b1)
  begin
  dout <= 1'b0;
  state <= idle;
  end
else
  begin
 
       case(state)
            idle: begin
                 dout  <= 1'b0;
                 state <= s0;
                 end
             
            s0: begin
               dout <= 1'b0;
               if(din == 1'b1) 
                 begin
                 state <= s1;
                 dout <= 1'b1;
                 end
               else
                begin
                 state <= s0;
                end
            end
             
            s1 : begin
              dout <= 1'b1;
                 if(din == 1'b1)
                 begin
                 state <= s0;
                 dout  <= 1'b0; 
                 end
               else
                 begin
                 state <= s1;
                 end
            end
             
            default : begin 
                 state <= idle;
                 dout  <= 1'b0;
             end
             
            endcase
  end
 
end
    
endmodule
 
module fsm_2_procc_mealy(
    input clk, rst, din,
    output reg dout
    );
parameter idle = 0;
parameter s0 = 1;
parameter s1 = 2; 
 
reg [1:0] state = idle, nstate = idle;   
 
 
  
////////reset logic
always@(posedge clk)
begin
if(rst == 1'b1)
state <= idle;
else
state <= nstate;
end
 
////////////////////////output decoder + NSD
always@(state, din)
begin
case(state)
 
idle : 
begin
   dout = 1'b0;
   nstate = s0;   
  
end
 
 
s0 : 
begin
  if(din)
   begin
    dout   = 1'b1;
    nstate = s1; 
   end
  else
   begin
    dout   = 1'b0;
    nstate = s0;
  end   
   
   
end
 
s1: 
begin
  if(din)
   begin
    dout   = 1'b0;
    nstate = s0; 
   end
  else
   begin
    dout   = 1'b0;
    nstate = s1;
  end   
end
 
default :  
    begin
    nstate = idle;
    dout   =  1'b0;
    end
    
    
endcase
end
 
endmodule

module fsm_1_procc_mealy(
    input clk, rst, din,
    output reg dout
    );
parameter idle = 0;
parameter s0 = 1;
parameter s1 = 2; 
 
reg [1:0] state = idle; 
  
always@(posedge clk)
begin
   if(rst == 1'b1)
     begin
     state <= idle;
     dout  <= 1'b0;
     end
   else 
   begin
                case(state)
                 
                 idle: begin
                          dout <= 1'b0;
                          state <= s0;
                          
                 end
                  
                  
                 s0: begin 
                           if(din)
                           begin
                            dout   <= 1'b1;
                            state  <= s1; 
                           end
                          else
                           begin
                            dout  <= 1'b0;
                            state <= s0;
                          end 
                end
                 
                s1: 
                begin
                           if(din)
                           begin
                            dout   <= 1'b0;
                            state  <= s0; 
                           end
                          else
                           begin
                            dout  <= 1'b0;
                            state <= s1;
                           end 
                end
                 
                default: begin
                    state  <= idle;
                    dout   <=  1'b0;
                end
                 
                endcase
     end           
end
 
endmodule
