`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.05.2025 15:41:17
// Design Name: 
// Module Name: test_bench
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


module test_bench();

reg rst = 0;
wire uart_tx;
wire uart_rx;
reg clk_100MHz = 0;
wire interrupt;


accelerator_soc_wrapper  uut(
    .reset(rst),
    .irq_0(interrupt),
    .uart2_pl_rxd(uart_rx),
    .uart2_pl_txd(uart_tx),
    .clk_in1_0(clk_100MHz)
);



always begin
    #5 clk_100MHz = ~clk_100MHz;
end



initial begin
#5 rst = 1'b1;
#50 rst = 1'b0;
end



reg clk_uart = 0;
reg [2:0] state = 0;
reg [31:0] counter = 0;
reg [2:0] bit_count = 0;
reg [7:0] received_data = 0;
localparam BAUD_RATE = 115200;
localparam IDLE_STATE = 3'd0;
localparam DATA_STATE = 3'd1;
localparam STOP_STATE = 3'd2;
localparam BAUD_PERIOD = 100000000 / BAUD_RATE / 2;



always @(uart_tx) begin
    if (state == IDLE_STATE) begin
        counter = 0;
        clk_uart = 1;
    end
end




always @(posedge clk_100MHz) begin
if(rst) begin counter = 0; clk_uart =0; end
else    begin
     counter = counter + 1;
    if (counter == BAUD_PERIOD - 1) begin
        counter = 0;
        clk_uart = ~clk_uart;
    end
  end
end




always @(negedge clk_uart) begin
if(rst) begin state = IDLE_STATE; end
  else  begin
        case(state)
        IDLE_STATE: begin
            if (!uart_tx) begin
                state = DATA_STATE;
            end
        end
        DATA_STATE: begin
            received_data[bit_count] = uart_tx;
            bit_count = bit_count + 1;
            if (!bit_count) begin
                state = STOP_STATE;
            end
        end
        STOP_STATE: begin
            if (uart_tx) begin
                $write("%c", received_data);
                state = IDLE_STATE;
            end
        end
    endcase
    end
end



endmodule


