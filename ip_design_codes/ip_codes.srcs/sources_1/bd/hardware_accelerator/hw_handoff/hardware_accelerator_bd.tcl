
################################################################
# This is a generated script based on design: hardware_accelerator
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2018.3
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source hardware_accelerator_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# and_gate, axi_master, axi_slave, controller, input_mem, mux, mux, output_mem, systolic_array, vir_input_mem, weight_mem

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xczu7ev-ffvc1156-2-e
   set_property BOARD_PART xilinx.com:zcu104:part0:1.1 [current_project]
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name hardware_accelerator

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set M_AXI_0 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M_AXI_0 ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {32} \
   CONFIG.DATA_WIDTH {32} \
   CONFIG.HAS_BURST {0} \
   CONFIG.HAS_CACHE {0} \
   CONFIG.HAS_LOCK {0} \
   CONFIG.HAS_QOS {0} \
   CONFIG.HAS_REGION {0} \
   CONFIG.PROTOCOL {AXI4LITE} \
   ] $M_AXI_0
  set S_AXI_0 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI_0 ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {16} \
   CONFIG.ARUSER_WIDTH {0} \
   CONFIG.AWUSER_WIDTH {0} \
   CONFIG.BUSER_WIDTH {0} \
   CONFIG.DATA_WIDTH {32} \
   CONFIG.HAS_BRESP {1} \
   CONFIG.HAS_BURST {0} \
   CONFIG.HAS_CACHE {0} \
   CONFIG.HAS_LOCK {0} \
   CONFIG.HAS_PROT {1} \
   CONFIG.HAS_QOS {0} \
   CONFIG.HAS_REGION {0} \
   CONFIG.HAS_RRESP {1} \
   CONFIG.HAS_WSTRB {1} \
   CONFIG.ID_WIDTH {0} \
   CONFIG.MAX_BURST_LENGTH {1} \
   CONFIG.NUM_READ_OUTSTANDING {1} \
   CONFIG.NUM_READ_THREADS {1} \
   CONFIG.NUM_WRITE_OUTSTANDING {1} \
   CONFIG.NUM_WRITE_THREADS {1} \
   CONFIG.PROTOCOL {AXI4LITE} \
   CONFIG.READ_WRITE_MODE {READ_WRITE} \
   CONFIG.RUSER_BITS_PER_BYTE {0} \
   CONFIG.RUSER_WIDTH {0} \
   CONFIG.SUPPORTS_NARROW_BURST {0} \
   CONFIG.WUSER_BITS_PER_BYTE {0} \
   CONFIG.WUSER_WIDTH {0} \
   ] $S_AXI_0

  # Create ports
  set ACLK [ create_bd_port -dir I ACLK ]
  set ARESETN [ create_bd_port -dir I ARESETN ]
  set M_AXI_ACLK_0 [ create_bd_port -dir I -type clk M_AXI_ACLK_0 ]
  set M_AXI_ARESETN_0 [ create_bd_port -dir I -type rst M_AXI_ARESETN_0 ]
  set S_AXI_ACLK_0 [ create_bd_port -dir I -type clk S_AXI_ACLK_0 ]
  set S_AXI_ARESETN_0 [ create_bd_port -dir I -type rst S_AXI_ARESETN_0 ]
  set convolution_interrupt_0 [ create_bd_port -dir O -type intr convolution_interrupt_0 ]
  set multiplication_interrupt_0 [ create_bd_port -dir O -type intr multiplication_interrupt_0 ]

  # Create instance: and_gate_0, and set properties
  set block_name and_gate
  set block_cell_name and_gate_0
  if { [catch {set and_gate_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $and_gate_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: axi_master_0, and set properties
  set block_name axi_master
  set block_cell_name axi_master_0
  if { [catch {set axi_master_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $axi_master_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: axi_slave_0, and set properties
  set block_name axi_slave
  set block_cell_name axi_slave_0
  if { [catch {set axi_slave_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $axi_slave_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: controller_0, and set properties
  set block_name controller
  set block_cell_name controller_0
  if { [catch {set controller_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $controller_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: input_mem_0, and set properties
  set block_name input_mem
  set block_cell_name input_mem_0
  if { [catch {set input_mem_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $input_mem_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: mux_0, and set properties
  set block_name mux
  set block_cell_name mux_0
  if { [catch {set mux_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $mux_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: mux_1, and set properties
  set block_name mux
  set block_cell_name mux_1
  if { [catch {set mux_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $mux_1 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: output_mem_0, and set properties
  set block_name output_mem
  set block_cell_name output_mem_0
  if { [catch {set output_mem_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $output_mem_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: systolic_array_0, and set properties
  set block_name systolic_array
  set block_cell_name systolic_array_0
  if { [catch {set systolic_array_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $systolic_array_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: vir_input_mem_0, and set properties
  set block_name vir_input_mem
  set block_cell_name vir_input_mem_0
  if { [catch {set vir_input_mem_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $vir_input_mem_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: weight_mem_0, and set properties
  set block_name weight_mem
  set block_cell_name weight_mem_0
  if { [catch {set weight_mem_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $weight_mem_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create interface connections
  connect_bd_intf_net -intf_net S_AXI_0_1 [get_bd_intf_ports S_AXI_0] [get_bd_intf_pins axi_slave_0/S_AXI]
  connect_bd_intf_net -intf_net axi_master_0_M_AXI [get_bd_intf_ports M_AXI_0] [get_bd_intf_pins axi_master_0/M_AXI]

  # Create port connections
  connect_bd_net -net M_AXI_ACLK_0_1 [get_bd_ports M_AXI_ACLK_0] [get_bd_pins axi_master_0/M_AXI_ACLK]
  connect_bd_net -net M_AXI_ARESETN_0_1 [get_bd_ports M_AXI_ARESETN_0] [get_bd_pins axi_master_0/M_AXI_ARESETN]
  connect_bd_net -net S_AXI_ACLK_0_1 [get_bd_ports S_AXI_ACLK_0] [get_bd_pins axi_slave_0/S_AXI_ACLK] [get_bd_pins controller_0/clk] [get_bd_pins input_mem_0/clk] [get_bd_pins output_mem_0/clk] [get_bd_pins systolic_array_0/clk] [get_bd_pins vir_input_mem_0/clk] [get_bd_pins weight_mem_0/clk]
  connect_bd_net -net S_AXI_ARESETN_0_1 [get_bd_ports S_AXI_ARESETN_0] [get_bd_pins and_gate_0/in2] [get_bd_pins axi_slave_0/S_AXI_ARESETN] [get_bd_pins controller_0/arestn] [get_bd_pins output_mem_0/arestn]
  connect_bd_net -net and_gate_0_out [get_bd_pins and_gate_0/and_value] [get_bd_pins input_mem_0/arestn] [get_bd_pins systolic_array_0/aresetn] [get_bd_pins vir_input_mem_0/arestn] [get_bd_pins weight_mem_0/arestn]
  connect_bd_net -net axi_master_0_capture_in_data [get_bd_pins axi_master_0/capture_in_data] [get_bd_pins input_mem_0/wr_enable]
  connect_bd_net -net axi_master_0_capture_wi_data [get_bd_pins axi_master_0/capture_wi_data] [get_bd_pins weight_mem_0/wr_enable]
  connect_bd_net -net axi_master_0_ended_convolution [get_bd_pins axi_master_0/ended_convolution] [get_bd_pins axi_slave_0/ended_convolution]
  connect_bd_net -net axi_master_0_ended_multiplication [get_bd_pins axi_master_0/ended_multiplication] [get_bd_pins axi_slave_0/ended_multiplication]
  connect_bd_net -net axi_master_0_ended_reading_cnvtn_data [get_bd_pins axi_master_0/ended_reading_cnvtn_data] [get_bd_pins controller_0/ended_reading_cnvtn_data]
  connect_bd_net -net axi_master_0_ended_reading_mltn_data [get_bd_pins axi_master_0/ended_reading_mltn_data] [get_bd_pins controller_0/ended_reading_mltn_data]
  connect_bd_net -net axi_master_0_input_memory_address [get_bd_pins axi_master_0/input_memory_address] [get_bd_pins input_mem_0/wr_address]
  connect_bd_net -net axi_master_0_output_memory_address [get_bd_pins axi_master_0/output_memory_address] [get_bd_pins output_mem_0/rd_address]
  connect_bd_net -net axi_master_0_rd_data [get_bd_pins axi_master_0/rd_data] [get_bd_pins input_mem_0/wr_data] [get_bd_pins weight_mem_0/wr_data]
  connect_bd_net -net axi_master_0_weight_memory_address [get_bd_pins axi_master_0/weight_memory_address] [get_bd_pins weight_mem_0/wr_address]
  connect_bd_net -net axi_slave_0_convolution_interrupt [get_bd_ports convolution_interrupt_0] [get_bd_pins axi_slave_0/convolution_interrupt]
  connect_bd_net -net axi_slave_0_image_address [get_bd_pins axi_master_0/image_address] [get_bd_pins axi_slave_0/image_address]
  connect_bd_net -net axi_slave_0_image_dimensions [get_bd_pins axi_master_0/image_dimension] [get_bd_pins axi_slave_0/image_dimensions] [get_bd_pins controller_0/image_dimension]
  connect_bd_net -net axi_slave_0_kernel_address [get_bd_pins axi_master_0/kernel_address] [get_bd_pins axi_slave_0/kernel_address]
  connect_bd_net -net axi_slave_0_kernel_dimension [get_bd_pins axi_master_0/kernel_dimension] [get_bd_pins axi_slave_0/kernel_dimension] [get_bd_pins controller_0/kernel_dimension] [get_bd_pins weight_mem_0/kernel_dimension]
  connect_bd_net -net axi_slave_0_matrix_a_address [get_bd_pins axi_master_0/matrix_a_address] [get_bd_pins axi_slave_0/matrix_a_address]
  connect_bd_net -net axi_slave_0_matrix_a_dimension [get_bd_pins axi_master_0/matrix_a_dimension] [get_bd_pins axi_slave_0/matrix_a_dimension] [get_bd_pins controller_0/matrix_a_dimension] [get_bd_pins input_mem_0/matrix_a_dimension]
  connect_bd_net -net axi_slave_0_matrix_b_address [get_bd_pins axi_master_0/matrix_b_address] [get_bd_pins axi_slave_0/matrix_b_address]
  connect_bd_net -net axi_slave_0_matrix_b_dimension [get_bd_pins axi_master_0/matrix_b_dimension] [get_bd_pins axi_slave_0/matrix_b_dimension] [get_bd_pins controller_0/matrix_b_dimension] [get_bd_pins weight_mem_0/matrix_b_dimension]
  connect_bd_net -net axi_slave_0_multiplication_interrupt [get_bd_ports multiplication_interrupt_0] [get_bd_pins axi_slave_0/multiplication_interrupt]
  connect_bd_net -net axi_slave_0_start_convolution [get_bd_pins axi_master_0/start_convolution] [get_bd_pins axi_slave_0/start_convolution]
  connect_bd_net -net axi_slave_0_start_multiplication [get_bd_pins axi_master_0/start_multiplication] [get_bd_pins axi_slave_0/start_multiplication]
  connect_bd_net -net controller_0_cvltn_or_mltpn [get_bd_pins controller_0/cvltn_or_mltpn] [get_bd_pins mux_0/select_in] [get_bd_pins mux_1/select_in]
  connect_bd_net -net controller_0_in_mem_rd_addr [get_bd_pins controller_0/in_mem_rd_addr] [get_bd_pins input_mem_0/rd_address]
  connect_bd_net -net controller_0_ou_mem_rd_addr [get_bd_pins controller_0/ou_mem_rd_addr] [get_bd_pins systolic_array_0/rd_address]
  connect_bd_net -net controller_0_ou_mem_wr_addr [get_bd_pins controller_0/ou_mem_wr_addr] [get_bd_pins output_mem_0/wr_address]
  connect_bd_net -net controller_0_ou_wr_enable [get_bd_pins controller_0/ou_wr_enable] [get_bd_pins output_mem_0/wr_enable]
  connect_bd_net -net controller_0_rd_address [get_bd_pins controller_0/rd_address] [get_bd_pins input_mem_0/counter] [get_bd_pins vir_input_mem_0/rd_address] [get_bd_pins weight_mem_0/counter]
  connect_bd_net -net controller_0_rst_module [get_bd_pins and_gate_0/in1] [get_bd_pins controller_0/rst_module]
  connect_bd_net -net controller_0_start_cnvtn_writing_fsm [get_bd_pins axi_master_0/start_cnvtn_writing_fsm] [get_bd_pins controller_0/start_cnvtn_writing_fsm]
  connect_bd_net -net controller_0_start_mltpn_writing_fsm [get_bd_pins axi_master_0/start_mltpn_writing_fsm] [get_bd_pins controller_0/start_mltpn_writing_fsm]
  connect_bd_net -net controller_0_vir_wr_enable [get_bd_pins controller_0/vir_wr_enable] [get_bd_pins vir_input_mem_0/wr_enable]
  connect_bd_net -net controller_0_vr_mem_wr_addr [get_bd_pins controller_0/vr_mem_wr_addr] [get_bd_pins vir_input_mem_0/wr_address]
  connect_bd_net -net controller_0_wt_mem_rd_addr [get_bd_pins controller_0/wt_mem_rd_addr] [get_bd_pins weight_mem_0/rd_address]
  connect_bd_net -net input_mem_0_rd_288bit_data [get_bd_pins input_mem_0/rd_288bit_data] [get_bd_pins mux_1/in2]
  connect_bd_net -net input_mem_0_rd_data [get_bd_pins input_mem_0/rd_32bit_data] [get_bd_pins vir_input_mem_0/wr_data]
  connect_bd_net -net mux_0_out [get_bd_pins mux_0/mux_out] [get_bd_pins systolic_array_0/input_data]
  connect_bd_net -net mux_1_out [get_bd_pins mux_1/mux_out] [get_bd_pins systolic_array_0/weight_data]
  connect_bd_net -net output_mem_0_rd_data [get_bd_pins axi_master_0/output_memory_data] [get_bd_pins output_mem_0/rd_data]
  connect_bd_net -net systolic_array_0_rd_data [get_bd_pins output_mem_0/wr_data] [get_bd_pins systolic_array_0/rd_data]
  connect_bd_net -net vir_input_mem_0_rd_data [get_bd_pins mux_0/in1] [get_bd_pins vir_input_mem_0/rd_data]
  connect_bd_net -net weight_mem_0_rd_288bit_data [get_bd_pins mux_0/in2] [get_bd_pins weight_mem_0/rd_288bit_data]
  connect_bd_net -net weight_mem_0_rd_32bit_data [get_bd_pins mux_1/in1] [get_bd_pins weight_mem_0/rd_32bit_data]

  # Create address segments
  create_bd_addr_seg -range 0x00010000 -offset 0x44A00000 [get_bd_addr_spaces axi_master_0/M_AXI] [get_bd_addr_segs M_AXI_0/Reg] SEG_M_AXI_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x00000000 [get_bd_addr_spaces S_AXI_0] [get_bd_addr_segs axi_slave_0/S_AXI/reg0] SEG_axi_slave_0_reg0


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


