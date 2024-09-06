`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.05.2024 18:01:42
// Design Name: 
// Module Name: left_shift_register
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

module left_shift_register(
    input SI,clk,rst,
    output SO
    );
    reg [4:0]SR;
    always@(posedge clk)
        if(rst)
        SR<=5'b00000;
        else 
        SR<={SR[3:0],SI};
    assign SO=SR[4];
     
        
endmodule
