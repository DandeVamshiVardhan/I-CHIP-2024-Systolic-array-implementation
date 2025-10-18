/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */






#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "xil_io.h"
#include "xintc.h"
#include "xil_exception.h"




#define INTC_DEVICE_ID       XPAR_AXI_INTC_0_DEVICE_ID
#define IP_INTR_ID           XPAR_AXI_INTC_0_HARDWARE_ACCELETOR_W_0_INTERRUPT_0_INTR // Replace with actual name



#define IMAGE_ROW     3
#define IMAGE_COLUMN  3
#define KERNEL_ROW    1
#define KERNEL_COLUMN 1
#define OUTPUT_ROW     (IMAGE_ROW-KERNEL_ROW+1)
#define OUTPUT_COLUMN  (IMAGE_COLUMN-KERNEL_COLUMN+1)



// declaring of global variable
XIntc InterruptController;



// function used for delay
void delay(int dl)
{
	for(int i=0; i<dl; i++){
		i = i + 1;
	}
}




// interrupt service routine executes when interrupt is received
void MyIp_InterruptHandler(void *CallbackRef) {

	int i,j,result;

    int count =0;

 	xil_printf("Convolution_interrupt_has_occured\n");

    for ( i = 0; i < OUTPUT_ROW; i++) {
    	 for(j = 0; j < OUTPUT_COLUMN; j++) {
    	       result = Xil_In32(XPAR_BRAM_0_BASEADDR + 4*(count));
    	           xil_printf("      %d",result);
    	           count++;
    	 }
    	 xil_printf("\n");

    }


}




// function used to set interrupt
int SetupInterrupt(XIntc *IntcInstancePtr) {
    int status;

    // Initialize
    status = XIntc_Initialize(IntcInstancePtr, INTC_DEVICE_ID);
    if (status != XST_SUCCESS) return XST_FAILURE;

    // Connect interrupt
    status = XIntc_Connect(IntcInstancePtr, IP_INTR_ID,
                           (XInterruptHandler)MyIp_InterruptHandler, 0);
    if (status != XST_SUCCESS) return XST_FAILURE;

    // Start controller
    status = XIntc_Start(IntcInstancePtr, XIN_REAL_MODE);
    if (status != XST_SUCCESS) return XST_FAILURE;

    // Enable interrupt
    XIntc_Enable(IntcInstancePtr, IP_INTR_ID);

    // Register exception handler
    Xil_ExceptionInit();
    Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
                                 (Xil_ExceptionHandler)XIntc_InterruptHandler,
                                 IntcInstancePtr);
    Xil_ExceptionEnable();

    return XST_SUCCESS;
}







// main function
int main()
{


    // image data in IEEE-754 representation
    int image_data[IMAGE_ROW*IMAGE_COLUMN] = {1073741824, 1082130432, 1090519040,
    		                                  1073741824, 1082130432, 1090519040,
						                      1073741824, 1082130432, 1090519040};





	int i;





    // loop used to write image data into block ram
    for ( i = 0; i < (IMAGE_ROW*IMAGE_COLUMN); i++) {

        Xil_Out32(XPAR_BRAM_0_BASEADDR + i * 4, image_data[i]);

    }




    // kernel data in IEEE-754 representation
    int kernel_data[KERNEL_ROW*KERNEL_COLUMN] = {1065353216};



    // starting kernel address
    int KERNEL_ADDRESS = (XPAR_BRAM_0_BASEADDR + i * 4);




    // loop used to write data into the block ram memory
    for ( i = 0; i < (KERNEL_ROW*KERNEL_COLUMN); i++) {

            Xil_Out32(KERNEL_ADDRESS + i * 4, kernel_data[i]);

        }




    Xil_Out32(XPAR_HARDWARE_ACCELETOR_W_0_BASEADDR + 4, XPAR_BRAM_0_BASEADDR);
    Xil_Out32(XPAR_HARDWARE_ACCELETOR_W_0_BASEADDR + 8, (IMAGE_ROW*16+IMAGE_COLUMN));
    Xil_Out32(XPAR_HARDWARE_ACCELETOR_W_0_BASEADDR + 12, KERNEL_ADDRESS);
    Xil_Out32(XPAR_HARDWARE_ACCELETOR_W_0_BASEADDR + 16, (KERNEL_ROW*16+KERNEL_COLUMN));
    Xil_Out32(XPAR_HARDWARE_ACCELETOR_W_0_BASEADDR , 1);




    if (SetupInterrupt(&InterruptController) != XST_SUCCESS) {
        xil_printf("Interrupt setup failed\r\n");
        return -1;
    }





    while(1){

    }



//// USED WHEN INTERRUPTS ARE GIVE DIRECTLY TO THE PROCESSOR
//    microblaze_register_handler((XInterruptHandler) myISR, (void *) 0);
//    microblaze_enable_interrupts();
//
//	xil_printf("Hellow_world");



    return 0;
}
