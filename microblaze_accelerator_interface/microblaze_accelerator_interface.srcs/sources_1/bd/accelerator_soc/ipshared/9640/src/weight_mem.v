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
                  output [DATA_WIDTH-1:0] rd_data
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






assign rd_data = condition?32'b0:weight_memory[rd_address[7:4]][rd_address[3:0]];   
 
   
            


endmodule
