`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.05.2024 14:16:00
// Design Name: 
// Module Name: FIFO_single_clock
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: FIFO (First-in First-Out) single-clocked .This FIFO supports only one clk i.e both Machines should agree to it.  
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module FIFO_single_clock(
    input rst,clk,wr_en,rd_en,
    input [7:0]buf_in,// data byte sized input from M1
    output reg [7:0]buf_out, //Data byte sized output from FIFO to M2
    output reg buf_empty,buf_full, // flags for status of FIFO whether empty , full or parially full
    output reg [7:0]fifo_counter // counter keeps track of no of address spaces occupied 
    );
    

    
    reg [6:0] rd_ptr,wr_ptr;
    reg [7:0] buf_mem[63:0]; // FIFO Memory 64 addresable space each of 8 bit long or of byte sized
    
    always@(fifo_counter) begin // always block for fifo flag update 
        buf_empty=(fifo_counter==0); //buf_empty=1 when fifo is empty ,but that does'nt mean pointers at zero
        buf_full=(fifo_counter==64); //buf_full =1 when fifo is full and no data can be written unless atleast one byte is read
    end
    
    always@(posedge clk or posedge rst) begin // always block for updating fifo_counter based on status of FIFO flags and read-write opeerations performed
        if(rst)         // asynchronous rst
            fifo_counter<=0;    
        else if((!buf_full && wr_en)&&(!buf_empty && rd_en)) // condition when both read and write operations are performed simultaneously
            fifo_counter<=fifo_counter;
        else if(!buf_full && wr_en) // when writing in FIFO fifo_counter increamented by one unit
            fifo_counter<=fifo_counter+1;
        else if(!buf_empty && rd_en) // when reading from FIFO fifo_counter dectremented by one unit
            fifo_counter<=fifo_counter-1;
        else 
            fifo_counter<=fifo_counter; // other than these three conditions keep fifo_counter as it is.
    end
    
    always@(posedge clk or posedge rst) begin
          if(rst)
          buf_out<=0;
          else begin // always block for updating buf_out when Machine wants to read 
          if(!buf_empty && rd_en)
          buf_out<=buf_mem[rd_ptr];
          else // else keep data in fifo_buf as it is when no read is performed
          buf_out<=buf_out;
          end 
    end
   
   always@(posedge clk ) begin
          // always block for updating buf_mem when Machine wants to write 
          if(!buf_full && wr_en)
          buf_mem[wr_ptr]<=buf_in;
          else // else keep data in buf_mem as it is when no write is performed
          buf_mem[wr_ptr]<=buf_mem[wr_ptr];
          end 
   always@(posedge clk or posedge rst) begin //always block for read and write pointer update whenever read or write operation performed
           if(rst) begin
           wr_ptr<=0;
           rd_ptr<=0;
           end
           else begin
                if(!buf_full && wr_en) // Below both If Blocks are using non-blocking assignments and checkind different flags for respective block execution hence parallely executed.
                wr_ptr<=wr_ptr+1; // for head pointer
                else 
                wr_ptr<=wr_ptr;
                if(!buf_empty && rd_en) // for tail pointer
                rd_ptr<=rd_ptr+1;
                else 
                rd_ptr<=rd_ptr;
          end
   end 
    
        
    
    
endmodule
