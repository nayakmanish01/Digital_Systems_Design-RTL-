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


// Assignment Questions 

//Non-Overlapping 1001 sequence with o/p delayed by one-clk
module NO_1001(input clk,rst,din,
               output reg dout
               );
reg [2:0]state,next_state;
parameter idle=3'b000,S0=3'b001,S1=3'b010,S2=3'b011,S3=3'b100,S4=3'b101;

// rst logic
always@(posedge clk)
begin
if(rst)
state<=idle;
else
state<=next_state;
end

//Next_state logic
always@(state,din)
begin
case(state)
idle: next_state=S0;
S0:   begin
        if(din)
            next_state=S1;
        else
            next_state=S0;
end  
S1:   begin
        if(din)
            next_state=S1;
        else
            next_state=S2;
end
S2:   begin
        if(din)
            next_state=S1;
        else
            next_state=S3;
end
S3:   begin
        if(din)
            next_state=S4;
        else
            next_state=S0;
end
S4:   begin
        if(din)
            next_state=S1;
        else
            next_state=S0;
end
default: next_state=idle;
endcase
end

//Output decoder
always@(state)
begin
case(state)
idle: dout=0;
S0: dout=0;  
S1: dout=0; 
S2: dout=0; 
S3: dout=0; 
S4: dout=1;  
default: dout=0;
endcase
end
              
endmodule


// Assignment 2 input seq 101100
//             output seq 010110
// Mealy Seq
module mealy_seq
(input clk,rst,din,
               output reg dout
               );
reg [1:0]state,next_state;
parameter idle=2'b000,S0=2'b001,S1=2'b010,S2=2'b011;

// rst logic
always@(posedge clk)
begin
if(rst)
state<=idle;
else
state<=next_state;
end

//Next_state logic + output decoder
always@(state,din)
begin
case(state)
idle: next_state=S0;
S0:   begin
        if(din)
            begin
            next_state=S1;
            dout=0;
            end
        else
             begin
            next_state=S2;
            dout=0;
            end
end  
S1:   begin
        if(din)
             begin
            next_state=S1;
            dout=1;
            end
        else
            begin
            next_state=S2;
            dout=1;
            end
end
S2:   begin
        if(din)
            begin
            next_state=S1;
            dout=0;
            end
        else
            begin
            next_state=S2;
            dout=0;
            end
end
default: begin next_state=idle;
               dout=0;
         end
endcase
end
              
endmodule

module NO_1001_mealy
(input clk,rst,din,
               output reg dout
               );
reg [2:0]state,next_state;
parameter idle=3'b000,S0=3'b001,S1=3'b010,S2=3'b011,S3=3'b100;

// rst logic
always@(posedge clk)
begin
if(rst)
state<=idle;
else
state<=next_state;
end

//Next_state logic + output decoder
always@(state,din)
begin
case(state)
idle: next_state=S0;
S0:   begin
        if(din)
            begin
            next_state=S1;
            dout=0;
            end
        else
             begin
            next_state=S0;
            dout=0;
            end
end  
S1:   begin
        if(din)
             begin
            next_state=S1;
            dout=0;
            end
        else
            begin
            next_state=S2;
            dout=0;
            end
end
S2:   begin
        if(din)
            begin
            next_state=S1;
            dout=0;
            end
        else
            begin
            next_state=S3;
            dout=0;
            end
         end
S3:   begin
        if(din)
            begin
            next_state=S0;
            dout=1;
            end
        else
            begin
            next_state=S1;
            dout=0;
            end
end
default: begin next_state=idle;
               dout=0;
         end
endcase
end
         
////single process
//// rst logic
//always@(posedge clk)
//begin
//if(rst)
//begin
//state<=idle;
//dout<=0;
//end
//else
//begin
//case(state)
//idle: state<=S0;
//S0:   begin
//        if(din)
//            begin
//            state<=S1;
//            dout<=0;
//            end
//        else
//             begin
//            state<=S0;
//            dout<=0;
//            end
//end  
//S1:   begin
//        if(din)
//             begin
//            state<=S1;
//            dout<=0;
//            end
//        else
//            begin
//            state<=S2;
//            dout<=0;
//            end
//end
//S2:   begin
//        if(din)
//            begin
//            state<=S1;
//            dout<=0;
//            end
//        else
//            begin
//            state<=S3;
//            dout<=0;
//            end
//         end
//S3:   begin
//        if(din)
//            begin
//            state<=S0;
//            dout<=1;
//            end
//        else
//            begin
//            state<=S1;
//            dout<=0;
//            end
//end
//default: begin next_state<=idle;
//               dout<=0;
//         end
//endcase
//end
//end
              
     
endmodule

module OV_1001_mealy
(input clk,rst,din,
               output reg dout
               );
reg [2:0]state,next_state;
parameter idle=3'b000,S0=3'b001,S1=3'b010,S2=3'b011,S3=3'b100;

// rst logic
always@(posedge clk)
begin
if(rst)
state<=idle;
else
state<=next_state;
end

//Next_state logic + output decoder
always@(state,din)
begin
case(state)
idle: next_state=S0;
S0:   begin
        if(din)
            begin
            next_state=S1;
            dout=0;
            end
        else
             begin
            next_state=S0;
            dout=0;
            end
end  
S1:   begin
        if(din)
             begin
            next_state=S1;
            dout=0;
            end
        else
            begin
            next_state=S2;
            dout=0;
            end
end
S2:   begin
        if(din)
            begin
            next_state=S1;
            dout=0;
            end
        else
            begin
            next_state=S3;
            dout=0;
            end
         end
S3:   begin
        if(din)
            begin
            next_state=S1;
            dout=1;
            end
        else
            begin
            next_state=S0;
            dout=0;
            end
end
default: begin next_state=idle;
               dout=0;
         end
endcase
end

endmodule