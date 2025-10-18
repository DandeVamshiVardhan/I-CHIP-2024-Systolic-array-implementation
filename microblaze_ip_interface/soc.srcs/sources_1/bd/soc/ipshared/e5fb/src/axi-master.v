`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.04.2024 11:14:30
// Design Name: 
// Module Name: axi-master
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




	module axi_master#
	(
		parameter integer C_M_AXI_ADDR_WIDTH	= 32,
		// Width of M_AXI data bus. 
    // The master issues write data and accept read data where the width of the data bus is C_M_AXI_DATA_WIDTH
		parameter integer C_M_AXI_DATA_WIDTH	= 32
	)
	(
	
	
		// Users to add ports here
		
		
// signals used for the convolution operation...................................		
        input  start_convolution,           // used to start convolution process
        
        input [31:0] image_address,         // used for giving starting address of image
        
        input [7:0] image_dimension,        // used for the image dimension of image
        
        input [31:0] kernel_address,        // used for the kernel starting adress
        
        input [7:0] kernel_dimension,       // used for the kernel dimension

        output reg ended_convolution,         // signals used for end of convolution




// signals used for the matrix multiplication operation............................      
        input start_multiplication,         // signal to start matrix multiplication 
		 
		input [31:0] matrix_a_address,      // address of matrix A
		
		input [7:0] matrix_a_dimension,     // dimension of matrix A
		
		input [31:0] matrix_b_address,      // address of matrix B
		
		input [7:0] matrix_b_dimension,     // dimension of matrix B
		
	    output reg ended_multiplication,        // signal indicating end of multiplication
	
	
	
	

/////////////////////////////////////////////////////////////////////////////////////////////////	   
		input [31:0] output_memory_data,     // output image pixel data
        
        input start_cnvtn_writing_fsm,      // signal for starting writing finite state machine
        
        input start_mltpn_writing_fsm,      // signal used to start multiplication finnite state machine
        
        output [7:0] input_memory_address,  // address for the input memory
        
        output [7:0] weight_memory_address, // address for the weight memory
        
        output [7:0] output_memory_address, // address for the output memory
        
        output reg capture_in_data,      // signal to capture image data into input memory
        
        output reg capture_wi_data,     // signal to capture kernel data into weight memory
   
        
        output reg ended_reading_cnvtn_data,      // signal indicates end of reading operation
        
        output reg ended_reading_mltn_data,       // signal indicates end of reading multiplication data
        
        output [31:0] rd_data,                    // used for read data signal
        
        
        
        
		// User ports ends
		// Do not modify the ports beyond this line
		
		
		// AXI clock signal
		input wire  M_AXI_ACLK,
		// AXI active low reset signal
		input wire  M_AXI_ARESETN,
		// Master Interface Write Address Channel ports. Write address (issued by master)
		output wire [C_M_AXI_ADDR_WIDTH-1 : 0] M_AXI_AWADDR,
		// Write channel Protection type.
    // This signal indicates the privilege and security level of the transaction,
    // and whether the transaction is a data access or an instruction access.
		output wire [2 : 0] M_AXI_AWPROT,
		// Write address valid. 
    // This signal indicates that the master signaling valid write address and control information.
		output wire  M_AXI_AWVALID,
		// Write address ready. 
    // This signal indicates that the slave is ready to accept an address and associated control signals.
		input wire  M_AXI_AWREADY,
		// Master Interface Write Data Channel ports. Write data (issued by master)
		output wire [C_M_AXI_DATA_WIDTH-1 : 0] M_AXI_WDATA,
		// Write strobes. 
    // This signal indicates which byte lanes hold valid data.
    // There is one write strobe bit for each eight bits of the write data bus.
		output wire [C_M_AXI_DATA_WIDTH/8-1 : 0] M_AXI_WSTRB,
		// Write valid. This signal indicates that valid write data and strobes are available.
		output wire  M_AXI_WVALID,
		// Write ready. This signal indicates that the slave can accept the write data.
		input wire  M_AXI_WREADY,
		// Master Interface Write Response Channel ports. 
    // This signal indicates the status of the write transaction.
		input wire [1 : 0] M_AXI_BRESP,
		// Write response valid. 
    // This signal indicates that the channel is signaling a valid write response
		input wire  M_AXI_BVALID,
		// Response ready. This signal indicates that the master can accept a write response.
		output wire  M_AXI_BREADY,
		// Master Interface Read Address Channel ports. Read address (issued by master)
		output wire [C_M_AXI_ADDR_WIDTH-1 : 0] M_AXI_ARADDR,
		// Protection type. 
    // This signal indicates the privilege and security level of the transaction, 
    // and whether the transaction is a data access or an instruction access.
		output wire [2 : 0] M_AXI_ARPROT,
		// Read address valid. 
    // This signal indicates that the channel is signaling valid read address and control information.
		output wire  M_AXI_ARVALID,
		// Read address ready. 
    // This signal indicates that the slave is ready to accept an address and associated control signals.
		input wire  M_AXI_ARREADY,
		// Master Interface Read Data Channel ports. Read data (issued by slave)
		input wire [C_M_AXI_DATA_WIDTH-1 : 0] M_AXI_RDATA,
		// Read response. This signal indicates the status of the read transfer.
		input wire [1 : 0] M_AXI_RRESP,
		// Read valid. This signal indicates that the channel is signaling the required read data.
		input wire  M_AXI_RVALID,
		// Read ready. This signal indicates that the master can accept the read data and response information.
		output wire  M_AXI_RREADY
	);











	//write address valid
	reg  	axi_awvalid;
	//write data valid
	reg  	axi_wvalid;
	//read address valid
	reg  	axi_arvalid;
	//read data acceptance
	reg  	axi_rready;
	//write response acceptance
	reg  	axi_bready;
	//write address
	reg [C_M_AXI_ADDR_WIDTH-1 : 0] 	axi_awaddr;
	//write data
	reg [C_M_AXI_DATA_WIDTH-1 : 0] 	axi_wdata;
	//read addresss
	reg [C_M_AXI_ADDR_WIDTH-1 : 0] 	axi_araddr;
	
	
	
   // state machine to control read operation and therir control signals........................................................ 
	    
	reg [3:0] state = 4'b0000;
	    
	reg [3:0] nxt_state = 4'b0000;
	    
    reg initialise_image_addr = 1'b0;
	    
	reg initialise_kernel_addr = 1'b0;
	
	reg initialise_matrix_a_addr = 1'b0;
	
	reg initialise_matrix_b_addr = 1'b0;
	    
    reg start_read = 1'b0;
	
	    
	    
// used for input memory storing from memory	    
	reg [3:0] in_row = 4'b0000;
	reg [3:0] in_column = 4'b0000;
	    



// used for weight memory storing from memory	
	reg [3:0] wi_row = 4'b0000;
	reg [3:0] wi_column = 4'b0000;
	    
	
	    
// used for the input address logic	    
	reg inc_in_column  = 1'b0;
	    	    
	reg inc_in_row = 1'b0;
	
	reg rst_in_row = 1'b0;
	
	reg rst_in_column = 1'b0;
	



// used for the weight address logic	
	reg inc_wi_row = 1'b0;
	
	reg inc_wi_column = 1'b0;
	
	reg rst_wi_row = 1'b0;
	
	reg rst_wi_column = 1'b0;
	

	
	    
	wire image_cmpltd    = ((in_row==(image_dimension[7:4]-1'b1))&&(in_column==(image_dimension[3:0]-1'b1)));
	    
	wire kernel_cmpltd   = ((wi_row==(kernel_dimension[7:4]-1'b1))&&(wi_column==(kernel_dimension[3:0]-1'b1)));
	    
	wire matrix_a_cmpltd = ((in_row==(matrix_a_dimension[7:4]-1'b1))&&(in_column==(matrix_a_dimension[3:0]-1'b1)));
	
	wire matrix_b_cmpltd = ((wi_row==(matrix_b_dimension[7:4]-1'b1))&&(wi_column==(matrix_b_dimension[3:0]-1'b1)));
	
	
// 	signals used for the logic of counters
	wire in_clm_eq_image  = (in_column == (image_dimension[3:0]-1'b1));
	
	wire in_row_eq_image  = (in_row    == (image_dimension[7:4]-1'b1));
	
	wire wi_clm_eq_kernel = (wi_column == (kernel_dimension[3:0]-1'b1));
	
	wire wi_row_eq_kernel = (wi_row    == (kernel_dimension[7:4]-1'b1));
	
	wire in_clm_eq_a      = (in_column == (matrix_a_dimension[3:0]-1'b1));
	
	wire in_row_eq_a      = (in_row    == (matrix_a_dimension[7:4]-1'b1));
	
	wire wi_clm_eq_b      = (wi_column == (matrix_b_dimension[3:0]-1'b1));
	
	wire wi_row_eq_b      = (wi_row    == (matrix_b_dimension[7:4]-1'b1));
	    
	    
    
// end of reading operation control signals
    
    
    
    
    
    
    
    
   //  signals used for the writing state machine.........................................................................
   
    reg [2:0] w_state = 3'b000;
    
    reg [2:0] w_next_state = 3'b000;
    
    reg initialise_cnvtn_w_addr = 1'b0;
    
    reg initialise_cnvtn_w_data = 1'b0;
    
    reg initialise_mltn_w_addr = 1'b0;
    
    reg initialise_mltn_w_data = 1'b0;
    
    reg [3:0] o_row = 4'b0000;
    
    reg [3:0] o_column = 4'b0000;
         
    reg start_write = 1'b0;
    
    reg inc_o_column = 1'b0;
    
    reg inc_o_row = 1'b0;
    
    reg rst_o_row = 1'b0;
    
    reg rst_o_column = 1'b0;
    
    wire o_clm_eq_cvltn = (o_column == (image_dimension[3:0]-kernel_dimension[3:0]));
    
    wire o_row_eq_cvltn = (o_row == (image_dimension[7:4]-kernel_dimension[7:4]));
    
    wire o_clm_eq_mltpn = (o_column == (matrix_b_dimension[3:0]-1'b1));
    
    wire o_row_eq_mltpn = (o_row == (matrix_a_dimension[7:4]-1'b1));
    



    wire cnvtn_w_cmpltd = (o_column == 4'b0000)&(o_row == (image_dimension[7:4]-kernel_dimension[7:4]+1'b1));
    
    wire mltpn_w_cmpltd = (o_column == 4'b0000)&(o_row == matrix_a_dimension[7:4]);
    
   

    
	//Adding the offset address to the base addr of the slave
	assign M_AXI_AWADDR	=  axi_awaddr;
	//AXI 4 write data
	assign M_AXI_WDATA	= axi_wdata;
	assign M_AXI_AWPROT	= 3'b000;
	assign M_AXI_AWVALID	= axi_awvalid;
	//Write Data(W)
	assign M_AXI_WVALID	= axi_wvalid;
	//Set all byte strobes in this example
	assign M_AXI_WSTRB	= 4'b1111;
	//Write Response (B)
	assign M_AXI_BREADY	= axi_bready;
	//Read Address (AR)
	assign M_AXI_ARADDR	= axi_araddr;
	assign M_AXI_ARVALID	= axi_arvalid;
	assign M_AXI_ARPROT	= 3'b001;
	//Read and Read Response (R)
	assign M_AXI_RREADY	= axi_rready;
	
	assign input_memory_address = {in_row,in_column};
    
    assign weight_memory_address = {wi_row,wi_column};
    
    assign output_memory_address = {o_row,o_column};
  

    
    assign rd_data = M_AXI_RDATA;







	  always @(posedge M_AXI_ACLK)                                    
	  begin                                                                
	    if (M_AXI_ARESETN == 0)                                           
	      begin                                                            
	        axi_bready <= 1'b0;                                            
	      end                                                              
	    // accept/acknowledge bresp with axi_bready by the master          
	    // when M_AXI_BVALID is asserted by slave                          
	    else if (M_AXI_BVALID && ~axi_bready)                              
	      begin                                                            
	        axi_bready <= 1'b1;                                            
	      end                                                              
	    // deassert after one clock cycle                                  
	    else if (axi_bready)                                               
	      begin                                                            
	        axi_bready <= 1'b0;                                            
	      end                                                              
	    // retain the previous value                                       
	    else                                                               
	      axi_bready <= axi_bready;                                        
	  end             
	  
	                                                       
	      
	      
	                                                                       



	//----------------------------
	//Read Address Channel
	//----------------------------
                                          
	  always @(posedge M_AXI_ACLK)                                  
	      begin                                                     
	        if (M_AXI_ARESETN == 0)                                
	          begin  
	                axi_araddr <= 0;   
	            end                                                   
	        else if(initialise_image_addr)  
	           begin
	           axi_araddr <= image_address;  
	           end
	         else if(initialise_kernel_addr)  
	           begin
	           axi_araddr <= kernel_address;  
	           end                          
	        else if(initialise_matrix_a_addr)  
	           begin
	           axi_araddr <= matrix_a_address;  
	           end                          
	        else if(initialise_matrix_b_addr)  
	           begin
	           axi_araddr <= matrix_b_address;  
	           end                          
	        else if(M_AXI_ARREADY && axi_arvalid)                  
	          begin                                                 
	            axi_araddr <= axi_araddr + 32'h00000004;            
	          end                                                   
	      end  
	      
	           
	        
	        
	           
	           
	          
	           
	  // transaction                                                                   
	  always @(posedge M_AXI_ACLK)                                                     
	  begin                                                                            
	    if ((M_AXI_ARESETN == 0)||(initialise_image_addr)||(initialise_kernel_addr)||(initialise_matrix_a_addr)||(initialise_matrix_b_addr))                                                       
	      begin                                                                        
	        axi_arvalid <= 1'b0;                                                       
	      end                                                                          
	    //Signal a new read address command is available by user logic                 
	    else if (start_read)                                                    
	      begin                                                                        
	        axi_arvalid <= 1'b1;                                                       
	      end                                                                          
	    //RAddress accepted by interconnect/slave (issue of M_AXI_ARREADY by slave)    
	    else if (M_AXI_ARREADY && axi_arvalid)                                         
	      begin                                                                        
	        axi_arvalid <= 1'b0;                                                       
	      end                                                                          
	    // retain the previous value                                                   
	  end                                                                              




	//--------------------------------
	//Read Data (and Response) Channel
	//--------------------------------






	  always @(posedge M_AXI_ACLK)                                    
	  begin                                                                 
	    if ((M_AXI_ARESETN == 0)||(initialise_image_addr)||(initialise_kernel_addr)||(initialise_matrix_a_addr)||(initialise_matrix_b_addr))                                            
	      begin                                                             
	        axi_rready <= 1'b0;                                             
	      end                                                               
	    // accept/acknowledge rdata/rresp with axi_rready by the master     
	    // when M_AXI_RVALID is asserted by slave                           
	    else if (M_AXI_RVALID && ~axi_rready)                               
	      begin                                                             
	        axi_rready <= 1'b1;                                             
	      end                                                               
	    // deassert after one clock cycle                                   
	    else if (axi_rready)                                                
	      begin                                                             
	        axi_rready <= 1'b0;                                             
	      end                                                               
	    // retain the previous value                                        
	  end                                                                   
	                                                                        

             



	    
// logic for the in_row register
	   	   always @(posedge M_AXI_ACLK) 
	          if(M_AXI_ARESETN == 0) begin in_row <= 4'b0000; end
	                  else  begin
	                  
	                         if(rst_in_row)  begin in_row <= 4'b0000;       end
	                    else if(inc_in_row)  begin in_row <= in_row + 1'b1; end
	                    
	                                                                        end    
	                                                                        
	                                                                            
// logic for the in_column register
	   	   always @(posedge M_AXI_ACLK) 
	          if(M_AXI_ARESETN == 0) begin in_column <= 4'b0000; end
	                  else  begin
	                  
	                         if(rst_in_column)  begin in_column <= 4'b0000;          end
	                    else if(inc_in_column)  begin in_column <= in_column + 1'b1; end
	                    
	                                                                        end     	                    
	                    


// logic for the wi_row register
	   	   always @(posedge M_AXI_ACLK) 
	          if(M_AXI_ARESETN == 0) begin wi_row <= 4'b0000; end
	                  else  begin
	                  
	                         if(rst_wi_row)  begin wi_row <= 4'b0000;       end
	                    else if(inc_wi_row)  begin wi_row <= wi_row + 1'b1; end
	                    
	                                                                        end    
	                                                                        
	                                                                            
// logic for the wi_column register
	   	   always @(posedge M_AXI_ACLK) 
	          if(M_AXI_ARESETN == 0) begin wi_column <= 4'b0000; end
	                  else  begin
	                  
	                         if(rst_wi_column)  begin wi_column <= 4'b0000;          end
	                    else if(inc_wi_column)  begin wi_column <= wi_column + 1'b1; end
	                    
	                                                                        end     	                    
	                
	                    
       
	              
	              
 
 
 
 
 
 
	    
	    
	    
	    
        always @(posedge M_AXI_ACLK)
	    if(M_AXI_ARESETN == 0) state <= 4'b0000;
	                    else   state <= nxt_state;
	                    
	                    

         
	       always @(*)
	       begin
                         nxt_state = 4'b0000;
             initialise_image_addr = 1'b0;
            initialise_kernel_addr = 1'b0;
          initialise_matrix_a_addr = 1'b0;
          initialise_matrix_b_addr = 1'b0;
          ended_reading_cnvtn_data = 1'b0;
           ended_reading_mltn_data = 1'b0;
                   capture_in_data = 1'b0;
                   capture_wi_data = 1'b0;
                    inc_in_column  = 1'b0;
	    	            inc_in_row = 1'b0;
	                    rst_in_row = 1'b0;
	                 rst_in_column = 1'b0;
	                    inc_wi_row = 1'b0;
	                 inc_wi_column = 1'b0;
	                    rst_wi_row = 1'b0;
	                 rst_wi_column = 1'b0;;
                        start_read = 1'b0;
            case(state)
            
            4'b0000 : if(start_convolution) begin nxt_state = 4'b0001; initialise_image_addr = 1'b1;  end 
                                       else begin nxt_state = 4'b0000; initialise_image_addr = 1'b0;  end
              
            4'b0001 :                       begin nxt_state = 4'b0010; start_read = 1'b1;  end    
	       
	        4'b0010 : if(M_AXI_RVALID) begin nxt_state = 4'b0011; capture_in_data = 1'b1; end
	                             else  begin nxt_state = 4'b0010; capture_in_data = 1'b0; end
	                                    
	        4'b0011 : if(image_cmpltd) begin  nxt_state = 4'b0100;  initialise_kernel_addr = 1'b1; rst_in_column = 1'b1; rst_in_row = 1'b1;  end
	                             else  begin case({in_row_eq_image,in_clm_eq_image})
	                                           2'b00 :  begin nxt_state = 4'b0001;  inc_in_column = 1'b1;                      end
	                                           2'b01 :  begin nxt_state = 4'b0001;  inc_in_row = 1'b1;   rst_in_column = 1'b1; end
	                                           2'b10 :  begin nxt_state = 4'b0001;  inc_in_column = 1'b1;                      end
	                                           2'b11 :  begin nxt_state = 4'b0001;                                             end
	                                          default:  begin nxt_state = 4'b0001;                                             end
	                                         endcase
	                                              end                                                     
	                                                                
	                                                               
            4'b0100 :                 begin nxt_state = 4'b0101; start_read = 1'b1;           end                                       

            4'b0101 :if(M_AXI_RVALID) begin nxt_state = 4'b0110; capture_wi_data = 1'b1;  end
	                            else  begin nxt_state = 4'b0101; capture_wi_data = 1'b0;  end

            4'b0110 :if(kernel_cmpltd) begin nxt_state = 4'b0111;  ended_reading_cnvtn_data = 1'b1; rst_wi_column = 1'b1; rst_wi_row = 1'b1;   end
	                             else  begin case({wi_row_eq_kernel,wi_clm_eq_kernel})
	                                           2'b00 :  begin nxt_state = 4'b0100;  inc_wi_column = 1'b1;                      end
	                                           2'b01 :  begin nxt_state = 4'b0100;  inc_wi_row = 1'b1;   rst_wi_column = 1'b1; end
	                                           2'b10 :  begin nxt_state = 4'b0100;  inc_wi_column = 1'b1;                      end
	                                           2'b11 :  begin nxt_state = 4'b0100;                                             end
	                                          default:  begin nxt_state = 4'b0100;                                             end
	                                         endcase
	                                           end                                                     
	                              
            4'b0111 : if(start_multiplication) begin nxt_state = 4'b1000;  initialise_matrix_a_addr = 1'b1; end                 
                                          else begin nxt_state = 4'b0111;  initialise_matrix_a_addr = 1'b0; end
                                         
            4'b1000 :                   begin nxt_state = 4'b1001; start_read = 1'b1;  end 
            
            4'b1001 :  if(M_AXI_RVALID) begin nxt_state = 4'b1010; capture_in_data = 1'b1; end
	                              else  begin nxt_state = 4'b1001; capture_in_data = 1'b0; end  
	                              
	        4'b1010 : if(matrix_a_cmpltd) begin  nxt_state = 4'b1011;  initialise_matrix_b_addr = 1'b1; rst_in_column = 1'b1; rst_in_row = 1'b1;  end
	                                else  begin case({in_row_eq_a,in_clm_eq_a})
	                                            2'b00 :  begin nxt_state = 4'b1000;  inc_in_column = 1'b1;                      end
	                                            2'b01 :  begin nxt_state = 4'b1000;  inc_in_row = 1'b1;   rst_in_column = 1'b1; end
	                                            2'b10 :  begin nxt_state = 4'b1000;  inc_in_column = 1'b1;                      end
	                                            2'b11 :  begin nxt_state = 4'b1000;                                             end
	                                           default:  begin nxt_state = 4'b1000;                                             end
	                                          endcase
	                                              end
	                                              
            4'b1011 :                 begin nxt_state = 4'b1100; start_read = 1'b1; end                                       

            4'b1100 :if(M_AXI_RVALID) begin nxt_state = 4'b1101; capture_wi_data = 1'b1;  end
	                            else  begin nxt_state = 4'b1100; capture_wi_data = 1'b0;  end

            4'b1101 :if(matrix_b_cmpltd) begin nxt_state = 4'b1110;   ended_reading_mltn_data = 1'b1; rst_wi_column = 1'b1; rst_wi_row = 1'b1;   end
	                               else  begin case({wi_row_eq_b,wi_clm_eq_b})
	                                             2'b00 :  begin nxt_state = 4'b1011;  inc_wi_column = 1'b1;                      end
	                                             2'b01 :  begin nxt_state = 4'b1011;  inc_wi_row = 1'b1;   rst_wi_column = 1'b1; end
	                                             2'b10 :  begin nxt_state = 4'b1011;  inc_wi_column = 1'b1;                      end
	                                             2'b11 :  begin nxt_state = 4'b1011;                                             end
	                                            default:  begin nxt_state = 4'b1011;                                             end
	                                           endcase
	                                            end 
	        
	        4'b1110 :     begin nxt_state = 4'b1110; end
	        
	        4'b1111 :     begin nxt_state = 4'b1110; end
	        
	        default :     begin nxt_state = 4'b0000; end
	        	                                              
            endcase
            end
                                                                            













/////////////////////////////////////////////////////WRITING SIGNALS///////////////////////////////////////////////////////////



	  always @(posedge M_AXI_ACLK)										      
	  begin                                                                        
	    //Only VALID signals must be deasserted during reset per AXI spec          
	    //Consider inverting then registering active-low reset for higher fmax     
	    if (M_AXI_ARESETN == 0)                                                   
	      begin                                                                    
	        axi_awvalid <= 1'b0;                                                   
	      end                                                                      
	      //Signal a new address/data command is available by user logic           
	    else if (start_write)                                                
	          begin                                                                
	            axi_awvalid <= 1'b1;                                               
	          end                                                                  
	     //Address accepted by interconnect/slave (issue of M_AXI_AWREADY by slave)
	        else if (M_AXI_AWREADY && axi_awvalid)                                 
	          begin                                                                
	            axi_awvalid <= 1'b0;                                               
	          end                                                                  
        end                                                                          
	                                                                               
                      
                      
                      
                    
                      
                                                                         


	//--------------------
	//Write Data Channel
	//--------------------

	//The write data channel is for transfering the actual data.
	//The data generation is speific to the example design, and 
	//so only the WVALID/WREADY handshake is shown here

	   always @(posedge M_AXI_ACLK)                                        
	   begin                                                                         
	     if (M_AXI_ARESETN == 0)                                                    
	       begin                                                                     
	         axi_wvalid <= 1'b0;                                                     
	       end                                                                       
	     //Signal a new address/data command is available by user logic              
	     else if (start_write)                                                
	       begin                                                                     
	         axi_wvalid <= 1'b1;                                                     
	       end                                                                       
	     //Data accepted by interconnect/slave (issue of M_AXI_WREADY by slave)      
	     else if (M_AXI_WREADY && axi_wvalid)                                        
	       begin                                                                     
	        axi_wvalid <= 1'b0;                                                      
	       end                                                                       
	   end                                                                           






   	  //Write Addresses                                        
	  always @(posedge M_AXI_ACLK)                                  
	      begin                                                     
	        if(M_AXI_ARESETN == 0)                                
	          begin                                                 
	            axi_awaddr <= 0;                                    
	          end  
         else if(initialise_cnvtn_w_addr)                                
	          begin                                                 
	            axi_awaddr <= image_address;                                    
	          end                                                    
         else  if(initialise_mltn_w_addr)                                
	          begin                                                 
	            axi_awaddr <= matrix_a_address;                                    
	          end                                                    
         else if (M_AXI_AWREADY && axi_awvalid)                  
	          begin                                                 
	            axi_awaddr <= axi_awaddr + 32'h00000004;            
	                                                                
	          end                                                   
	      end                                                       
	        
	        
	        
	        
	        
	        
	        
	                
	          
	                                                                
	  // Write data generation                                      
	  always @(posedge M_AXI_ACLK)                                  
	      begin                                                     
	        if (M_AXI_ARESETN == 0)                                
	          begin 
	           axi_wdata <= 0;   
	           end                                                   
          else if(initialise_cnvtn_w_data|initialise_mltn_w_data)
              begin 
                axi_wdata <= output_memory_data;  
                  end                           
	        else if (M_AXI_WREADY && axi_wvalid)                    
	          begin  
	           axi_wdata <= output_memory_data; 
	            end                                                   
	        end 






// logic for the o_row register
	   	   always @(posedge M_AXI_ACLK) 
	          if(M_AXI_ARESETN == 0) begin o_row <= 4'b0000; end
	                  else  begin
	                  
	                         if(rst_o_row)  begin o_row <= 4'b0000;      end
	                    else if(inc_o_row)  begin o_row <= o_row + 1'b1; end
	                    
	                                                                        end    
	                                                                        
	                                                                            
// logic for the o_column register
	   	   always @(posedge M_AXI_ACLK) 
	          if(M_AXI_ARESETN == 0) begin o_column <= 4'b0000; end
	                  else  begin
	                  
	                         if(rst_o_column)  begin o_column <= 4'b0000;          end
	                    else if(inc_o_column)  begin o_column <= o_column + 1'b1; end
	                    
	                                                                        end     







        always @(posedge M_AXI_ACLK)
	    if(M_AXI_ARESETN == 0) w_state <= 3'b000;
	                    else   w_state <= w_next_state;
       
       
    



      always @(*)
      begin
      w_next_state = 3'b000;
      initialise_cnvtn_w_addr = 1'b0;
      initialise_cnvtn_w_data = 1'b0;
      initialise_mltn_w_addr  = 1'b0;
      initialise_mltn_w_data  = 1'b0;
      ended_convolution       = 1'b0;
      ended_multiplication    = 1'b0;
      inc_o_column            = 1'b0;
      inc_o_row               = 1'b0;
      rst_o_row               = 1'b0;
      rst_o_column            = 1'b0;
      start_write             = 1'b0;
      case(w_state)
      3'b000 : if(start_cnvtn_writing_fsm) begin w_next_state = 3'b001; initialise_cnvtn_w_addr = 1'b1; initialise_cnvtn_w_data = 1'b1;  end
                                    else   begin w_next_state = 3'b000; initialise_cnvtn_w_addr = 1'b0; initialise_cnvtn_w_data = 1'b0;  end 
                             
      3'b001 :     if(cnvtn_w_cmpltd) begin w_next_state = 3'b100;  start_write = 1'b0;  rst_o_column = 1'b1; rst_o_row = 1'b1; end
                         else   begin  
                                        case({o_row_eq_cvltn,o_clm_eq_cvltn})
                                         2'b00 : begin  w_next_state = 3'b010;  start_write = 1'b1;   inc_o_column = 1'b1; end
                                         2'b01 : begin  w_next_state = 3'b010;  start_write = 1'b1;   rst_o_column = 1'b1; inc_o_row = 1'b1; end
                                         2'b10 : begin  w_next_state = 3'b010;  start_write = 1'b1;   inc_o_column = 1'b1; end
                                         2'b11 : begin  w_next_state = 3'b010;  start_write = 1'b1;   rst_o_column = 1'b1; inc_o_row = 1'b1; end
                                       default : begin  w_next_state = 3'b010;  start_write = 1'b1;   rst_o_column = 1'b0; inc_o_row = 1'b0; end
                                         endcase
                                       end
                   
      3'b010 :      if(M_AXI_WREADY) begin w_next_state = 3'b011;   end
                              else   begin w_next_state = 3'b010;   end 
                   
      3'b011 :      if(cnvtn_w_cmpltd) begin w_next_state = 3'b001;  ended_convolution = 1'b1;  end
                                 else  begin w_next_state = 3'b001;  ended_convolution = 1'b0;  end 
      
      3'b100 : if(start_mltpn_writing_fsm) begin w_next_state = 3'b101; initialise_mltn_w_addr = 1'b1; initialise_mltn_w_data = 1'b1;  end
                                    else   begin w_next_state = 3'b100; initialise_mltn_w_addr = 1'b0; initialise_mltn_w_data = 1'b0;  end 
                             
      3'b101 :     if(mltpn_w_cmpltd) begin w_next_state = 3'b101;   end
                               else   begin  
                                        case({o_row_eq_mltpn,o_clm_eq_mltpn})
                                         2'b00 : begin  w_next_state = 3'b110;  start_write = 1'b1;   inc_o_column = 1'b1;                   end
                                         2'b01 : begin  w_next_state = 3'b110;  start_write = 1'b1;   rst_o_column = 1'b1; inc_o_row = 1'b1; end
                                         2'b10 : begin  w_next_state = 3'b110;  start_write = 1'b1;   inc_o_column = 1'b1;                   end
                                         2'b11 : begin  w_next_state = 3'b110;  start_write = 1'b1;   rst_o_column = 1'b1; inc_o_row = 1'b1; end
                                       default : begin  w_next_state = 3'b110;  start_write = 1'b1;   rst_o_column = 1'b0; inc_o_row = 1'b0; end
                                       endcase
                                       
                                      end
                   
      3'b110 :      if(M_AXI_WREADY) begin w_next_state = 3'b111;   end
                              else   begin w_next_state = 3'b110;   end 
                   
      3'b111 :      if(mltpn_w_cmpltd) begin w_next_state = 3'b101;  ended_multiplication = 1'b1;  end
                                 else  begin w_next_state = 3'b101;  ended_multiplication = 1'b0;  end 
      
      default:                       begin w_next_state = 3'b000;   end 
      
      endcase
      
      end







    
    

	endmodule

