//`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////////
//// Company: 
//// Engineer: 
//// 
//// Create Date: 20.05.2024 23:12:10
//// Design Name: 
//// Module Name: seq_components_tb
//// Project Name: 
//// Target Devices: 
//// Tool Versions: 
//// Description: 
//// 
//// Dependencies: 
//// 
//// Revision:
//// Revision 0.01 - File Created
//// Additional Comments:
//// 
////////////////////////////////////////////////////////////////////////////////////


//module seq_components_tb();

//reg en,d,rst;
//reg clk,b;
//wire q;
////dlatch_bh_rst dut(.d(d),.en(en),.q(q),.rst(rst));
//concurrent_assignment ca_dut(.b(b),.clk(clk),.d(q));
//initial begin
//    clk=0;
//    b=0;
//    #10 b=1;
//    #100 clk=1;
//    #10 b=0;
//    #40 clk=0;
//    #20 b=1;
//    #20 clk=1;
//    b=0;
//    #40 clk=0;
//    #40 b=1;
//    #60 clk=1;
//    #10 b=0;
    
//   // rst=0;
//    //repeat (2) begin
//    //#10 rst=rst+1;
////        repeat (10) begin
////            #10; 
////            en=en+1;
////            repeat(10) begin
////                #10;
////                d=d+1;
////            end
////        end
////    end
      
//   end  
//endmodule


//module seq_components_tb();
//reg clk,rst,load;
//wire [7:0]count;
//reg [7:0] data;

//basic_counter counter_dut(.clk(clk),.rst(rst),.load(load),.data(data),.count(count));

//always #50 clk=~clk;

//initial begin 
//clk=0;
//rst = 1;
//load = 0;
//data = 8'h0a;
//#100 rst=0;
//#100 rst=1;
//#1000  load=1;
//#100 load=0;
//#3000 $finish;

//end
//endmodule


//module seq_components_tb();
//reg clk,rst;
//wire [7:0]count;
//mod_counter dut(.clk(clk),.rst(rst),.count(count));

//always #50 clk=~clk;
//initial begin
//clk=0;
//rst=1;
//#100 rst=0;
//#100 rst=1;
//#3000 $finish;
//end
//endmodule

module PISO_shift_reg_tb();
reg clk,rst,s;
reg [4:0]PI;
wire SO;
PISO_shift_reg dut(.clk(clk),.sel(s),.rst(rst),.PI(PI),.SO(SO));

always #50 clk=~clk;

initial begin
clk=1'b0;
rst=1'b0;
s=1'b0;

#10 rst=1'b1;
#70 rst=1'b0;
PI=$urandom;
#90 s=1'b1;

#200 $stop;
end

endmodule
