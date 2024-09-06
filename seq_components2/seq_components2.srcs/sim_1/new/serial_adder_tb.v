`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.06.2024 08:39:24
// Design Name: 
// Module Name: serial_adder_tb
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


module serial_adder_tb( );
    reg clk,a,b,rst;
    wire s;
    
    serial_adder serial_adder_tb(.clk(clk),.rst(rst),.a(a),.b(b),.s(s));
    always #50 clk=~clk;
    initial begin
        clk=0;
        rst=1;
        a=0;
        b=0;
        repeat(1)@(posedge clk);
        rst=0;
        repeat(2)
            begin
            #100;
            a=a+1;
            repeat(2)
                begin
                #100;
                b=b+1;
                end
            end

     #1000 $finish;
           end
endmodule
