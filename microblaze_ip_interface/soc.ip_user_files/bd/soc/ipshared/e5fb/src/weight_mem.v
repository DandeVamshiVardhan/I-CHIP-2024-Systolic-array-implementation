`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.05.2025 10:33:54
// Design Name: 
// Module Name: weight_mem
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



module weight_mem #(
                    parameter integer DATA_WIDTH	= 32,
                    parameter integer WIDTH         = 09,
                    parameter integer LENGTH        = 09 
                   )
                 ( input clk,
                   input arestn,
                   input wr_enable,
                   input [7:0] kernel_dimension,
                   input [7:0] wr_address,
                   input [7:0] rd_address,
                   input [4:0] counter,
                   input [DATA_WIDTH-1:0] wr_data,
                   input [7:0] matrix_b_dimension,
                  output [DATA_WIDTH*WIDTH-1:0] rd_32bit_data,
                  output reg [DATA_WIDTH*WIDTH-1:0] rd_288bit_data
                  );
                  
 
 
 
 
reg [DATA_WIDTH-1:0] weight_memory[0:LENGTH-1][0:WIDTH-1];
 


wire condition = (counter == 5'b00000)|(counter > (kernel_dimension[7:4]*kernel_dimension[3:0]));  
 
 
 
 
 
reg [3:0]r = 4'b0000;
reg [3:0]c = 4'b0000;








always @(posedge clk)
begin
if(arestn == 1'b0) begin
                     for(r=0; r<LENGTH; r=r+1'b1)
                           for(c=0; c<WIDTH; c=c+1'b1)
                               weight_memory[r][c] <= 32'b0;
                           end
else if(wr_enable) begin
                    weight_memory[wr_address[7:4]][wr_address[3:0]] <= wr_data;
                    end
end






assign rd_32bit_data = condition? 288'b0: {weight_memory[rd_address[7:4]][rd_address[3:0]],256'b0};   
 
   



always @(*)
begin
case(counter)
5'd00:   rd_288bit_data = 288'b0;
5'd01:   rd_288bit_data = {weight_memory[0][0],256'b0};
5'd02:   rd_288bit_data = {weight_memory[1][0],weight_memory[0][1],224'b0};
5'd03:   rd_288bit_data = {weight_memory[2][0],weight_memory[1][1],weight_memory[0][2],192'b0};
5'd04:   rd_288bit_data = {weight_memory[3][0],weight_memory[2][1],weight_memory[1][2],weight_memory[0][3],160'b0};
5'd05:   rd_288bit_data = {weight_memory[4][0],weight_memory[3][1],weight_memory[2][2],weight_memory[1][3],weight_memory[0][4],128'b0};
5'd06:   rd_288bit_data = {weight_memory[5][0],weight_memory[4][1],weight_memory[3][2],weight_memory[2][3],weight_memory[1][4],weight_memory[0][5],96'b0};
5'd07:   rd_288bit_data = {weight_memory[6][0],weight_memory[5][1],weight_memory[4][2],weight_memory[3][3],weight_memory[2][4],weight_memory[1][5],weight_memory[0][6],64'b0};
5'd08:   rd_288bit_data = {weight_memory[7][0],weight_memory[6][1],weight_memory[5][2],weight_memory[4][3],weight_memory[3][4],weight_memory[2][5],weight_memory[1][6],weight_memory[0][7],32'b0};
5'd09:   rd_288bit_data = {weight_memory[8][0],weight_memory[7][1],weight_memory[6][2],weight_memory[5][3],weight_memory[4][4],weight_memory[3][5],weight_memory[2][6],weight_memory[1][7],weight_memory[0][8]};
5'd10:   rd_288bit_data = {32'b0,weight_memory[8][1],weight_memory[7][2],weight_memory[6][3],weight_memory[5][4],weight_memory[4][5],weight_memory[3][6],weight_memory[2][7],weight_memory[1][8]};
5'd11:   rd_288bit_data = {32'b0,32'b0,weight_memory[8][2],weight_memory[7][3],weight_memory[6][4],weight_memory[5][5],weight_memory[4][6],weight_memory[3][7],weight_memory[2][8]};
5'd12:   rd_288bit_data = {32'b0,32'b0,32'b0,weight_memory[8][3],weight_memory[7][4],weight_memory[6][5],weight_memory[5][6],weight_memory[4][7],weight_memory[3][8]};
5'd13:   rd_288bit_data = {32'b0,32'b0,32'b0,32'b0,weight_memory[8][4],weight_memory[7][5],weight_memory[6][6],weight_memory[5][7],weight_memory[4][8]};
5'd14:   rd_288bit_data = {32'b0,32'b0,32'b0,32'b0,32'b0,weight_memory[8][5],weight_memory[7][6],weight_memory[6][7],weight_memory[5][8]};
5'd15:   rd_288bit_data = {32'b0,32'b0,32'b0,32'b0,32'b0,32'b0,weight_memory[8][6],weight_memory[7][7],weight_memory[6][8]};
5'd16:   rd_288bit_data = {32'b0,32'b0,32'b0,32'b0,32'b0,32'b0,32'b0,weight_memory[8][7],weight_memory[7][8]};
5'd17:   rd_288bit_data = {32'b0,32'b0,32'b0,32'b0,32'b0,32'b0,32'b0,32'b0,32'b0,weight_memory[8][8]};
default: rd_288bit_data = 288'b0; 
endcase
end          


endmodule
