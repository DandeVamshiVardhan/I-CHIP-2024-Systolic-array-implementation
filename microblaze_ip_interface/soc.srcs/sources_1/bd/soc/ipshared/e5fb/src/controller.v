`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.04.2024 10:50:56
// Design Name: 
// Module Name: controller
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






module controller(
                 input clk,
                 input arestn,
                 input ended_reading_cnvtn_data,
                 input [7:0]image_dimension,
                 input [7:0]kernel_dimension,
                 input ended_reading_mltn_data,
                 input [7:0] matrix_a_dimension,
                 input [7:0] matrix_b_dimension,
                 output reg rst_module,
                 output reg cvltn_or_mltpn,
                 output reg vir_wr_enable, 
                 output reg ou_wr_enable,
                 output reg start_cnvtn_writing_fsm,
                 output reg start_mltpn_writing_fsm,
                 output [7:0]in_mem_rd_addr,
                 output [7:0]wt_mem_rd_addr,
                 output [7:0]vr_mem_wr_addr,
                 output [7:0]ou_mem_wr_addr,
                 output [7:0]ou_mem_rd_addr,
                 output reg [4:0]rd_address
                 );




















parameter     IDLE = 3'b000,

        RD_IN_DATA = 3'b001,
        
          IN_PRCSS = 3'b010,
          
     WT_IN_OUT_MEM = 3'b011,
     
          START_WR = 3'b100,
          
          IN_PRSS2 = 3'b101,
          
     WT_IN_OUT_ME2 = 3'b110,
     
         START_WR2 = 3'b111;
     
          
          
          
          

              
              
              
              
              
              
              
          
          
           
           
             
             
             
             
    
// used in taking data from input memory into vir input memory 
reg [2:0] in_row = 3'b000;
reg [2:0] in_column = 3'b000;














// used in taking data form weight memory to give to systolic array
reg [3:0] wt_row = 4'b0000;
reg [3:0] wt_column = 4'b0000;
             














// used to store data in virtual memory
reg [3:0] vir_row = 4'b0000;
reg [3:0] vir_column = 4'b0000;   













// used to write data into output memory
reg [3:0] o_row = 4'b0000;
reg [3:0] o_column = 4'b0000;  
       
       
       





// used to read data after convolution is completed
reg [3:0] s_row    = 4'b0000;
reg [3:0] s_column = 4'b0000;       
       
       
       
       
       
       
       
       
       
           
wire [3:0]ac_in_row = in_row + wt_row; 


wire [3:0]ac_in_column = in_column + wt_column;  


wire vir_mem_wr_cmpltd = (ac_in_row==(image_dimension[7:4]-1'b1))&(ac_in_column==(image_dimension[3:0]-1'b1));        
       
  
wire cnvlt_cmpltd      = (rd_address == (kernel_dimension[7:4]*kernel_dimension[3:0]+(image_dimension[7:4]-kernel_dimension[7:4]+1'b1)*(image_dimension[3:0]-kernel_dimension[3:0]+1'b1)));           
          

wire mxm =    ((matrix_a_dimension[7:4]+matrix_a_dimension[3:0])>=(matrix_b_dimension[7:4]+matrix_b_dimension[3:0]));
 
          
wire mltpn_cmpltd      = mxm? (rd_address == (matrix_a_dimension[7:4]+matrix_a_dimension[3:0])): (rd_address == (matrix_b_dimension[7:4]+matrix_b_dimension[3:0]));


wire o_mem_cnvltn_cmpltd   = (o_column==(image_dimension[3:0]-kernel_dimension[3:0]))&(o_row==(image_dimension[7:4]-kernel_dimension[7:4]));          
          
          
wire o_mem_mltpn_cmpltd    = ((o_row == (matrix_a_dimension[7:4]-1'b1))&(o_column == (matrix_b_dimension[3:0]-1'b1)));       
          
          
wire o_row_eq_cnvltn   = (o_row == (image_dimension[7:4]-kernel_dimension[7:4]));


wire o_clm_eq_cnvltn   = (o_column == (image_dimension[3:0]-kernel_dimension[3:0]));


wire o_row_eq_mltpn    = (o_row == (matrix_a_dimension[7:4]-1'b1));


wire o_clm_eq_mltpn    = (o_column == (matrix_b_dimension[3:0]-1'b1));
          
          
// address for input memory          
assign in_mem_rd_addr = {ac_in_row,ac_in_column}; 
     
             
// address for weight memory          
assign wt_mem_rd_addr = {wt_row,wt_column};    
    
    
// address for vir_in_memory
assign vr_mem_wr_addr = {vir_row,vir_column};   
    
    
// address for output memory writing address
assign ou_mem_wr_addr = {o_row,o_column};   
    
 
// address to read data after convolution gets completed       
assign ou_mem_rd_addr = {s_row,s_column};    
    
    
      
              
              
reg inc_addr  = 1'b0;

reg dec_addr  = 1'b0;

reg st_wt_r_c = 1'b0;

reg inc_rd_address = 1'b0;

reg rst_rd_address = 1'b0;




// signals used for the  o_row and o_column logic 
reg rst_o_row = 1'b0;

reg inc_o_row = 1'b0;

reg inc_o_column = 1'b0;

reg rst_o_column = 1'b0;



// signals used for s_row and s_column logic
reg rst_s_row = 1'b0;

reg inc_s_row = 1'b0;

reg inc_s_column = 1'b0;

reg rst_s_column = 1'b0;

















// logic for wt_row and wt_column
always @(posedge clk)
if(arestn == 1'b0) begin wt_row <= 4'b0000; wt_column <= 4'b0000; end
else if(st_wt_r_c) begin wt_row <= (kernel_dimension[7:4]-1'b1);  wt_column <= (kernel_dimension[3:0]-1'b1); end
else if(inc_addr)  begin
               if((wt_column==(kernel_dimension[3:0]-1'b1))&(wt_row==(kernel_dimension[7:4]-1'b1))) begin wt_row <= 4'b0000;       wt_column <= 4'b0000;       end
                                                   else if(wt_column==(kernel_dimension[3:0]-1'b1)) begin wt_row <= wt_row + 1'b1; wt_column <= 4'b0000;       end
                                                                                              else  begin wt_column <= wt_column + 1'b1;                       end
	                                             end
else if(dec_addr)  begin
               if((wt_column == 4'b0000)&(wt_row == 4'b0000)) begin wt_row <= 4'b0000;            wt_column <= 4'b0000;                            end
                                else if(wt_column == 4'b0000) begin wt_row <= wt_row - 1'b1;      wt_column <= (kernel_dimension[3:0]-1'b1);       end
                                                        else  begin wt_column <= wt_column - 1'b1;                                                 end
	                                             end
             
             
             
       
        












// logic for in_row and in_column
always @(posedge clk)
if(arestn == 1'b0) begin in_row <= 4'b0000; in_column <= 4'b0000; end
else if(inc_addr)  begin
               if((ac_in_row==(image_dimension[7:4]-1'b1))&(ac_in_column==(image_dimension[3:0]-1'b1))) begin in_row <= 4'b0000;       in_column <= 4'b0000;  end
          else if((wt_row==(kernel_dimension[7:4]-1'b1))&(ac_in_column==(image_dimension[3:0]-1'b1)))   begin in_row <= in_row + 1'b1; in_column <= 4'b0000;  end
          else if((wt_column==(kernel_dimension[3:0]-1'b1))&(wt_row==(kernel_dimension[7:4]-1'b1)))     begin in_column <= in_column + 1'b1;                  end
	                                             end















// logic for vir_row and vir_column
always @(posedge clk)
if(arestn == 1'b0) begin vir_row <= 4'b0000; vir_column <= 4'b0000; end
else if(inc_addr)
                  begin
         if((wt_column==(kernel_dimension[3:0]-1'b1))&(wt_row==(kernel_dimension[7:4]-1'b1))) begin vir_row <= 4'b0000;       vir_column <= vir_column + 1'b1;       end
                                                                                        else  begin vir_row <= vir_row + 1'b1;                           end
	                                           end                  










// logic for o_row
always @(posedge clk)
if(arestn == 1'b0)    begin o_row <= 4'b0000;       end
else if(inc_o_row)    begin o_row <= o_row + 1'b1;  end
else if(rst_o_row)    begin o_row <= 4'b0000;       end









// logic for o_column
always @(posedge clk)
if(arestn == 1'b0)       begin o_column <= 4'b0000;       end
else if(inc_o_column)    begin o_column <= o_column + 1'b1;  end
else if(rst_o_column)    begin o_column <= 4'b0000;       end









// logic for s_row
always @(posedge clk)
if(arestn == 1'b0)    begin s_row <= 4'b0000;       end
else if(inc_s_row)    begin s_row <= s_row + 1'b1;  end
else if(rst_s_row)    begin s_row <= 4'b0000;       end









// logic for s_column
always @(posedge clk)
   if(arestn == 1'b0) begin 
                            s_column <= 4'b0000; 
                                end
else if(inc_s_column) begin
                            s_column <= s_column + 1'b1;
                                end
else if(rst_s_column) begin 
                            s_column <= 4'b0000;
                                end











// block used to define logic of the rd_address
always @(posedge clk)
if(arestn == 1'b0)        begin 
                              rd_address <= 5'b00000; 
                                end
else if(inc_rd_address)   begin
                              rd_address <= rd_address + 1'b1;
                                end
else if(rst_rd_address)   begin
                              rd_address <= 5'b00000;
                                end













// states used for the finite state machine
reg [2:0] ctrl_state = 3'b000;
reg [2:0] ctrl_n_state = 3'b000;

























// updating of state of finite state machine
always @(posedge clk)
if(arestn == 1'b0) begin ctrl_state <= 3'b000;  end
             else  begin ctrl_state <= ctrl_n_state;  end
                   
                  
                   
              
              
        
        
        
        
        
              
            
                   
     
     
            
            
                   
 
 
 
// logic for the next_state of finite state machine         
always @(*)
begin
inc_addr   = 1'b0;
dec_addr   = 1'b0;
st_wt_r_c  = 1'b0;
rst_module = 1'b1;
rst_o_row  = 1'b0;
inc_o_row  = 1'b0;
inc_o_column = 1'b0;
rst_o_column = 1'b0;
rst_s_row    = 1'b0;
inc_s_row    = 1'b0;
inc_s_column = 1'b0;
rst_s_column = 1'b0;
ou_wr_enable   = 1'b0;
inc_rd_address = 1'b0;
rst_rd_address = 1'b0;
vir_wr_enable  = 1'b0;
cvltn_or_mltpn = 1'b0;
start_cnvtn_writing_fsm = 1'b0;
start_mltpn_writing_fsm = 1'b0;
ctrl_n_state = IDLE;
case(ctrl_state)

IDLE          : if(ended_reading_cnvtn_data) begin  ctrl_n_state = RD_IN_DATA;  end
                                       else  begin  ctrl_n_state =       IDLE;  end
                  

RD_IN_DATA    : if(vir_mem_wr_cmpltd) begin  ctrl_n_state = IN_PRCSS;   vir_wr_enable = 1'b1; inc_addr = 1'b0; st_wt_r_c = 1'b1; inc_rd_address = 1'b1; end  
                                else  begin  ctrl_n_state = RD_IN_DATA; vir_wr_enable = 1'b1; inc_addr = 1'b1; st_wt_r_c = 1'b0; inc_rd_address = 1'b0; end
                             
                             
IN_PRCSS      : if(cnvlt_cmpltd) begin  ctrl_n_state = WT_IN_OUT_MEM; inc_rd_address = 1'b0;  dec_addr = 1'b0; end  
                           else  begin  ctrl_n_state = IN_PRCSS;      inc_rd_address = 1'b1;  dec_addr = 1'b1; end
                           

WT_IN_OUT_MEM : if(o_mem_cnvltn_cmpltd) begin  ctrl_n_state = START_WR;  rst_s_column = 1'b1;   rst_s_row = 1'b1; rst_o_row = 1'b1; rst_o_column = 1'b1;  rst_rd_address = 1'b1; ou_wr_enable = 1'b1; rst_module = 1'b0; end  
                              else  begin  
                                              case({o_row_eq_cnvltn,o_clm_eq_cnvltn})
                                                2'b00 :  begin  ctrl_n_state = WT_IN_OUT_MEM; inc_o_column = 1'b1; ou_wr_enable = 1'b1; inc_s_column = 1'b1; end
                                                2'b01 :  begin  ctrl_n_state = WT_IN_OUT_MEM; rst_o_column = 1'b1; ou_wr_enable = 1'b1; inc_s_column = 1'b1; inc_o_row = 1'b1; end
                                                2'b10 :  begin  ctrl_n_state = WT_IN_OUT_MEM; inc_o_column = 1'b1; ou_wr_enable = 1'b1; inc_s_column = 1'b1; end
                                                2'b11 :  begin  ctrl_n_state = WT_IN_OUT_MEM; inc_o_column = 1'b0; ou_wr_enable = 1'b1; inc_s_column = 1'b0; end
                                               default:  begin  ctrl_n_state = WT_IN_OUT_MEM; inc_o_column = 1'b0; ou_wr_enable = 1'b1; inc_s_column = 1'b0; end
                                               endcase
                                               
                                             end
      
START_WR      : if(ended_reading_mltn_data) begin ctrl_n_state = IN_PRSS2;   start_cnvtn_writing_fsm = 1'b0;  inc_rd_address = 1'b1; cvltn_or_mltpn = 1'b1; end
                                     else   begin ctrl_n_state = START_WR;   start_cnvtn_writing_fsm = 1'b1;  rst_rd_address = 1'b0; cvltn_or_mltpn = 1'b1; end   
                
IN_PRSS2      : if(mltpn_cmpltd) begin  ctrl_n_state = WT_IN_OUT_ME2;  inc_rd_address = 1'b0;   cvltn_or_mltpn = 1'b1; end  
                           else  begin  ctrl_n_state = IN_PRSS2;       inc_rd_address = 1'b1;   cvltn_or_mltpn = 1'b1; end
                           
                           
WT_IN_OUT_ME2 :  if(o_mem_mltpn_cmpltd) begin  ctrl_n_state = START_WR2;             ou_wr_enable = 1'b1; end  
                                  else  begin  
                                              case({o_row_eq_mltpn,o_clm_eq_mltpn})
                                                2'b00 :  begin  ctrl_n_state = WT_IN_OUT_ME2; inc_o_column = 1'b1; ou_wr_enable = 1'b1; inc_s_column = 1'b1; end
                                                2'b01 :  begin  ctrl_n_state = WT_IN_OUT_ME2; rst_o_column = 1'b1; ou_wr_enable = 1'b1; rst_s_column = 1'b1; inc_o_row = 1'b1; inc_s_row = 1'b1; end
                                                2'b10 :  begin  ctrl_n_state = WT_IN_OUT_ME2; inc_o_column = 1'b1; ou_wr_enable = 1'b1; inc_s_column = 1'b1; end
                                                2'b11 :  begin  ctrl_n_state = WT_IN_OUT_ME2; inc_o_column = 1'b0; ou_wr_enable = 1'b1; inc_s_column = 1'b0; end
                                               default:  begin  ctrl_n_state = WT_IN_OUT_ME2; inc_o_column = 1'b0; ou_wr_enable = 1'b1; inc_s_column = 1'b0; end
                                               endcase
                                               end    
                               
START_WR2    :               begin  ctrl_n_state = START_WR2;   start_mltpn_writing_fsm = 1'b1; end  

default      :               begin  ctrl_n_state = IDLE;    end                                             
endcase
end






endmodule
