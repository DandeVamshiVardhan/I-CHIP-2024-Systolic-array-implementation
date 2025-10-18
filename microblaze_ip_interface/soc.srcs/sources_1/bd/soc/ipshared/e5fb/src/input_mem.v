`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.05.2025 10:21:00
// Design Name: 
// Module Name: input_mem
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



module input_mem #(
                    parameter integer DATA_WIDTH	= 32,
                    parameter integer WIDTH         = 09,
                    parameter integer LENGTH        = 09 
                    )
                ( input clk,
                  input arestn,
                  input wr_enable,
                  input [7:0] wr_address,
                  input [7:0] rd_address,
                  input [DATA_WIDTH-1:0] wr_data, 
                  input [7:0]matrix_a_dimension,
                  input [4:0]counter,
                 output [DATA_WIDTH-1:0] rd_32bit_data,
                 output reg [DATA_WIDTH*WIDTH-1:0] rd_288bit_data
                 );
                 
    
    
    
    
    
    
    
reg [DATA_WIDTH-1:0] input_memory[0:LENGTH-1][0:WIDTH-1];







reg [3:0]r = 4'b0000;
reg [3:0]c = 4'b0000;








always @(posedge clk)
begin
if(arestn == 1'b0) begin
                     for(r=0; r<LENGTH; r=r+1'b1)
                           for(c=0; c<WIDTH; c=c+1'b1)
                               input_memory[r][c] <= 32'b0;
                           end
else if(wr_enable) begin
                    input_memory[wr_address[7:4]][wr_address[3:0]] <= wr_data;
                    end
end








assign rd_32bit_data = input_memory[rd_address[7:4]][rd_address[3:0]]; 






always @(*)
begin
case(counter)
5'd00:   rd_288bit_data = 288'b0;
5'd01:   rd_288bit_data = {input_memory[0][0],256'b0};
5'd02:   rd_288bit_data = {input_memory[0][1],input_memory[1][0],224'b0};
5'd03:   rd_288bit_data = {input_memory[0][2],input_memory[1][1],input_memory[2][0],192'b0};
5'd04:   rd_288bit_data = {input_memory[0][3],input_memory[1][2],input_memory[2][1],input_memory[3][0],160'b0};
5'd05:   rd_288bit_data = {input_memory[0][4],input_memory[1][3],input_memory[2][2],input_memory[3][1],input_memory[4][0],128'b0};
5'd06:   rd_288bit_data = {input_memory[0][5],input_memory[1][4],input_memory[2][3],input_memory[3][2],input_memory[4][1],input_memory[5][0],96'b0};
5'd07:   rd_288bit_data = {input_memory[0][6],input_memory[1][5],input_memory[2][4],input_memory[3][3],input_memory[4][2],input_memory[5][1],input_memory[6][0],64'b0};
5'd08:   rd_288bit_data = {input_memory[0][7],input_memory[1][6],input_memory[2][5],input_memory[3][4],input_memory[4][3],input_memory[5][2],input_memory[6][1],input_memory[7][0],32'b0};
5'd09:   rd_288bit_data = {input_memory[0][8],input_memory[1][7],input_memory[2][6],input_memory[3][5],input_memory[4][4],input_memory[5][3],input_memory[6][2],input_memory[7][1],input_memory[8][0]};
5'd10:   rd_288bit_data = {32'b0,input_memory[1][8],input_memory[2][7],input_memory[3][6],input_memory[4][5],input_memory[5][4],input_memory[6][3],input_memory[7][2],input_memory[8][1]};
5'd11:   rd_288bit_data = {32'b0,32'b0,input_memory[2][8],input_memory[3][7],input_memory[4][6],input_memory[5][5],input_memory[6][4],input_memory[7][3],input_memory[8][2]};
5'd12:   rd_288bit_data = {32'b0,32'b0,32'b0,input_memory[3][8],input_memory[4][7],input_memory[5][6],input_memory[6][5],input_memory[7][4],input_memory[8][3]};
5'd13:   rd_288bit_data = {32'b0,32'b0,32'b0,32'b0,input_memory[4][8],input_memory[5][7],input_memory[6][6],input_memory[7][5],input_memory[8][4]};
5'd14:   rd_288bit_data = {32'b0,32'b0,32'b0,32'b0,32'b0,input_memory[5][8],input_memory[6][7],input_memory[7][6],input_memory[8][5]};
5'd15:   rd_288bit_data = {32'b0,32'b0,32'b0,32'b0,32'b0,32'b0,input_memory[6][8],input_memory[7][7],input_memory[8][6]};
5'd16:   rd_288bit_data = {32'b0,32'b0,32'b0,32'b0,32'b0,32'b0,32'b0,input_memory[7][8],input_memory[8][7]};
5'd17:   rd_288bit_data = {32'b0,32'b0,32'b0,32'b0,32'b0,32'b0,32'b0,32'b0,32'b0,input_memory[8][8]};
default: rd_288bit_data = 288'b0; 
endcase
end 


                   
endmodule
