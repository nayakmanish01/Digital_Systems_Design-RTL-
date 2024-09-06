`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.09.2024 10:51:27
// Design Name: 
// Module Name: FIFO_single_clk
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


module FIFO_single_clk( clk, rst, buf_in, buf_out, wr_en, rd_en, buf_empty, buf_full, fifo_counter );

input                 rst, clk, wr_en, rd_en;   
input [7:0]           buf_in;                   
output[7:0]           buf_out;                  
output                buf_empty, buf_full;      
output[6 :0] fifo_counter;             

reg[7:0]              buf_out;
reg                   buf_empty, buf_full;
reg[6 :0]    fifo_counter;
reg[5 :0]  rd_ptr, wr_ptr;           
reg [7:0]   buf_mem[63 : 0];   

always @(fifo_counter) // FIFO Flag update
begin
   buf_empty = (fifo_counter==0);
   buf_full = (fifo_counter== 64);

end

always @(posedge clk or posedge rst) // FIFO Counter update 
begin
   if( rst )
       fifo_counter <= 0;

   else if( (!buf_full && wr_en) && ( !buf_empty && rd_en ) )
       fifo_counter <= fifo_counter;

   else if( !buf_full && wr_en )
       fifo_counter <= fifo_counter + 1;

   else if( !buf_empty && rd_en )
       fifo_counter <= fifo_counter - 1;
   else
      fifo_counter <= fifo_counter;
end

always @( posedge clk or posedge rst)  // FIFO Reading data into buf_out
begin
   if( rst )
      buf_out <= 0;
   else
   begin
      if( rd_en && !buf_empty )
         buf_out <= buf_mem[rd_ptr];

      else
         buf_out <= buf_out;

   end
end

always @(posedge clk) // FIFO Writing data into FIFO from buf_in
begin

   if( wr_en && !buf_full )
      buf_mem[ wr_ptr ] <= buf_in;

   else
      buf_mem[ wr_ptr ] <= buf_mem[ wr_ptr ];
end

always@(posedge clk or posedge rst) // rd_ptr and wr_ptr update
begin
   if( rst )
   begin
      wr_ptr <= 0;
      rd_ptr <= 0;
   end
   else
   begin
      if( !buf_full && wr_en )    wr_ptr <= wr_ptr + 1;
          else  wr_ptr <= wr_ptr;

      if( !buf_empty && rd_en )   rd_ptr <= rd_ptr + 1;
      else rd_ptr <= rd_ptr;
   end

end
endmodule


module FIFO_dual_clk( clk_w,clk_r, rst, buf_in, buf_out, wr_en, rd_en, buf_empty, buf_full, fifo_counter );

input                 rst, clk_w,clk_r, wr_en, rd_en;   
input [7:0]           buf_in;                   
output[7:0]           buf_out;                  
output                buf_empty, buf_full;      
output[6 :0] fifo_counter;             

reg[7:0]              buf_out;
reg                   buf_empty, buf_full;
reg[6 :0]    fifo_counter;
reg[5 :0]  rd_ptr, wr_ptr;           
reg [7:0]   buf_mem[63 : 0];   

always @(fifo_counter) // FIFO Flag update
begin
   buf_empty = (fifo_counter==0);
   buf_full = (fifo_counter== 64);

end

always @(posedge clk_w or posedge rst) // FIFO Counter update 
begin
   if( rst )
       fifo_counter <= 0;
   else if( !buf_full && wr_en )
       fifo_counter <= fifo_counter + 1;
       
   else
      fifo_counter <= fifo_counter;
end


always @(posedge clk_r ) // FIFO Counter update 
begin
   if( !buf_empty && rd_en )
       fifo_counter <= fifo_counter - 1;
   else
      fifo_counter <= fifo_counter;
end

always @( posedge clk_r or posedge rst)  // FIFO Reading data into buf_out
begin
   if( rst )
      buf_out <= 0;
   else
   begin
      if( rd_en && !buf_empty )
         buf_out <= buf_mem[rd_ptr];

      else
         buf_out <= buf_out;

   end
end

always @(posedge clk_w) // FIFO Writing data into FIFO from buf_in
begin

   if( wr_en && !buf_full )
      buf_mem[ wr_ptr ] <= buf_in;

   else
      buf_mem[ wr_ptr ] <= buf_mem[ wr_ptr ];
end

always@(posedge clk_w or posedge rst) // wr_ptr update
begin
   if( rst )
   begin
      wr_ptr <= 0;
   end
   else
   begin
      if( !buf_full && wr_en )   
       wr_ptr <= wr_ptr + 1;
       
       else  wr_ptr <= wr_ptr;
         
end

end

always@(posedge clk_r or posedge rst) // rd_ptr  update
begin
   if( rst )
   begin
      rd_ptr <= 0;
   end
   else
   begin
      if( !buf_empty && rd_en )  
       rd_ptr <= rd_ptr + 1;
       
      else rd_ptr <= rd_ptr;
   end

end
endmodule

