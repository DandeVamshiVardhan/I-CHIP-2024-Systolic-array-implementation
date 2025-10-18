`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.05.2025 15:45:58
// Design Name: 
// Module Name: axi_master_tb
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


module axi_master_tb();

		
reg start_convolution = 1'b0;           
reg [31:0] image_address = 32'd2000;         
reg [7:0] image_dimension = 32'h00000034;        
reg [31:0] kernel_address = 32'd3000;        
reg [7:0] kernel_dimension = 32'h00000022;       
reg [31:0] output_image_data = 32'b0;     
reg start_writing_fsm = 1'b0;
reg M_AXI_ACLK = 1'b0;
reg M_AXI_ARESETN = 1'b1;


integer i = 0;
integer j = 0;



wire [31:0] M_AXI_AWADDR;
wire  [2:0] M_AXI_AWPROT;
wire  M_AXI_AWVALID;
reg   M_AXI_AWREADY;
wire [31:0] M_AXI_WDATA;
wire  [3:0] M_AXI_WSTRB;
wire  M_AXI_WVALID;
reg   M_AXI_WREADY;
reg  [1:0] M_AXI_BRESP;
reg  M_AXI_BVALID;
wire  M_AXI_BREADY;
wire [31:0] M_AXI_ARADDR;
wire  [2:0] M_AXI_ARPROT;
wire  M_AXI_ARVALID;
wire [7:0] input_memory_address;    
wire [7:0] weight_memory_address;   
wire [7:0] output_memory_address;   
wire capture_image_data;            
wire capture_kernel_data;           
wire ended_reading;                   






reg M_AXI_ARREADY;
reg [31:0] M_AXI_RDATA;		
reg  [1:0] M_AXI_RRESP;	 // not important	
reg  M_AXI_RVALID;		
wire  M_AXI_RREADY;







initial begin 
M_AXI_ARESETN = 1'b1;
#20 M_AXI_ARESETN = 1'b0;
#40 M_AXI_ARESETN = 1'b1;
end





always 
#10 M_AXI_ACLK =~M_AXI_ACLK;





initial 
#60 start_convolution = 1'b1;



always 
begin
wait(M_AXI_ARVALID);
begin
#21 M_AXI_ARREADY = 1'b1;
#20 M_AXI_ARREADY = 1'b0;
M_AXI_RDATA = i;
#1M_AXI_RVALID = 1'b1;
wait(M_AXI_RREADY);
#20M_AXI_RVALID = 1'b0;
i = i + 20;
end
end





always 
begin
wait(M_AXI_AWVALID);
begin
#21 M_AXI_AWREADY = 1'b1;
    M_AXI_WREADY  = 1'b1;
    M_AXI_BVALID = 1'b1; 
    j = j+ 1'b1;
#21 M_AXI_AWREADY = 1'b0;
    M_AXI_WREADY  = 1'b0;
     M_AXI_BVALID = 1'b0;
  end 
end

always @(*)
begin 
output_image_data = j;
start_writing_fsm = ended_reading;
end



axi_master dut(
           start_convolution,           
               image_address,         
             image_dimension,        
              kernel_address,        
            kernel_dimension,       
           output_image_data,     
           start_writing_fsm,            
        input_memory_address,  
       weight_memory_address, 
       output_memory_address, 
          capture_image_data,      
         capture_kernel_data,     
               ended_reading,          
                  M_AXI_ACLK,
               M_AXI_ARESETN,
                M_AXI_AWADDR,
                M_AXI_AWPROT,
               M_AXI_AWVALID,
               M_AXI_AWREADY,
                 M_AXI_WDATA,
                 M_AXI_WSTRB,
                M_AXI_WVALID,
                M_AXI_WREADY,
                 M_AXI_BRESP,
                M_AXI_BVALID,
                M_AXI_BREADY,
                M_AXI_ARADDR,
                M_AXI_ARPROT,
               M_AXI_ARVALID,
               M_AXI_ARREADY,
                 M_AXI_RDATA,
                 M_AXI_RRESP,
                M_AXI_RVALID,
                M_AXI_RREADY
);



endmodule
