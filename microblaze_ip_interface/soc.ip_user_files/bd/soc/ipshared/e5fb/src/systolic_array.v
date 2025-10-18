`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.05.2025 11:27:41
// Design Name: 
// Module Name: systolic_array
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






`define PEROW 9
`define PECOL 9
module systolic_array(input clk,
                     input aresetn,
                     input[32*`PECOL-1:0]input_data,
                     input[32*`PEROW-1:0]weight_data,
                     input [7:0] rd_address,
                     output [31:0] rd_data
                     );
       
       
       
                     
 wire [31:0]data1[0:`PEROW][0:`PECOL-1];
 wire [31:0]data2[0:`PEROW-1][0:`PECOL]; 
 wire [31:0]data3[0:`PEROW-1][0:`PECOL-1];
 
 
 
 
 assign {data1[0][0],data1[0][1],data1[0][2],data1[0][3],data1[0][4],
        data1[0][5],data1[0][6],data1[0][7],data1[0][8]}=input_data;
 assign {data2[0][0],data2[1][0],data2[2][0],data2[3][0],data2[4][0],
        data2[5][0],data2[6][0],data2[7][0],data2[8][0]}={weight_data};
 
 
 
 assign rd_data = data3[rd_address[7:4]][rd_address[3:0]];




genvar i,j;
generate 
    for(i=0;i<`PEROW;i=i+1) begin
         for(j=0;j<`PECOL;j=j+1)
                begin 
         processing_element pe(.north(data1[i][j]),
                             .west(data2[i][j]), 
                             .clk(clk),
                             .aresetn(aresetn),
                             .outport(data3[i][j]),
                             .east(data2[i][j+1]),
                             .south(data1[i+1][j]));
                    end
  end
endgenerate       




endmodule

