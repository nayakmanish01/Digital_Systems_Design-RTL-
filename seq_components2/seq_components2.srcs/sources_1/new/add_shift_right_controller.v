`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.06.2024 17:42:58
// Design Name: 
// Module Name: add_shift_right_controller
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


module add_shift_right_controller(
    input Q0,count,start,clk,
    output reg add,write,rshift,ldQ,ldB,rstA,ldC,done
    );
    reg [2:0] state,next_state;
    parameter S0=3'b000,S1=3'b001,S2=3'b010,S3=3'b011,S4=3'b100,S5=3'b101,S6=3'b110;
    always@(posedge clk)
    state<=next_state;
    
    always@(*)
    case(state)
    S0:if(start)
        next_state=S1;
       else
       next_state=S0;
    S1:next_state=S2;
    S2:next_state=S3;
    S3:if(Q0)
        next_state=S4;
       else
        next_state=S5;
    S4:next_state=S5;
    S5:if(count)
        next_state=S6;
       else
        next_state=S3;
    S6:next_state=S6;
    default:next_state=S0;
    endcase
    
    always@(state)
    case(state)
    S0:
    begin
#2;
    add=0;
    write=0;
    rshift=0;
    ldQ=0;
    ldB=1;
    rstA=1;
    ldC=0;
    done=0;
    end
    S1:
#2 
    begin
    add=0;
    write=0;
    rshift=0;
    ldQ=1;
    ldB=0;
    rstA=0;
    ldC=0;
    done=0;
    end
    S2:
 #2 
    begin
    add=0;
    write=0;
    rshift=0;
    ldQ=0;
    ldB=0;
    rstA=0;
    ldC=1;
    done=0;
    end
    S3:
 #2
    begin
    if(Q0)
    begin
    add=1;
    write=1;
    rshift=0;
    ldQ=0;
    ldB=0;
    rstA=0;
    ldC=0;
    done=0;
    end
    else if(Q0==0)
    begin
    add=0;
    write=0;
    rshift=1;
    ldQ=0;
    ldB=0;
    rstA=0;
    ldC=0;
    done=0;
    end 
    end
    S4:
#2 
    begin
    add=1;
    write=1;
    rshift=0;
    ldQ=0;
    ldB=0;
    rstA=0;
    ldC=0;
    done=0;
    end
    S5:
#2 
    if(count)
       begin
    add=0;
    write=0;
    rshift=0;
    ldQ=0;
    ldB=0;
    rstA=0;
    ldC=0;
    done=1;
    end
    else if(count==0)
    begin
     begin
    if(Q0)
    begin
    add=1;
    write=1;
    rshift=0;
    ldQ=0;
    ldB=0;
    rstA=0;
    ldC=0;
    done=0;
    end
    else if(Q0==0)
    begin
    add=0;
    write=0;
    rshift=1;
    ldQ=0;
    ldB=0;
    rstA=0;
    ldC=0;
    done=0;
    end 
    end
    end
    S6:       
#2
    begin
    add=0;
    write=0;
    rshift=0;
    ldQ=0;
    ldB=0;
    rstA=0;
    ldC=0;
    done=1;
    end
   endcase
endmodule
