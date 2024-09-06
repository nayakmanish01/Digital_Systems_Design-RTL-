
################################################################
# This is a generated script based on design: barrel_shifter_8_bit
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
set scripts_vivado_version 2019.1
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
# source barrel_shifter_8_bit_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7z010clg400-1
   set_property BOARD_PART digilentinc.com:zybo-z7-10:part0:1.1 [current_project]
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name barrel_shifter_8_bit

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


# Hierarchical cell: input_split
proc create_hier_cell_input_split { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_input_split() - Empty argument(s)!"}
     return
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

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins

  # Create pins
  create_bd_pin -dir I -from 7 -to 0 Din
  create_bd_pin -dir O -from 0 -to 0 Dout
  create_bd_pin -dir O -from 0 -to 0 Dout1
  create_bd_pin -dir O -from 0 -to 0 Dout2
  create_bd_pin -dir O -from 0 -to 0 Dout3
  create_bd_pin -dir O -from 0 -to 0 Dout4
  create_bd_pin -dir O -from 0 -to 0 Dout5
  create_bd_pin -dir O -from 0 -to 0 Dout6
  create_bd_pin -dir O -from 0 -to 0 Dout7

  # Create instance: xlslice_0, and set properties
  set xlslice_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_0 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {7} \
   CONFIG.DIN_TO {7} \
   CONFIG.DIN_WIDTH {8} \
   CONFIG.DOUT_WIDTH {1} \
 ] $xlslice_0

  # Create instance: xlslice_1, and set properties
  set xlslice_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_1 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {6} \
   CONFIG.DIN_TO {6} \
   CONFIG.DIN_WIDTH {8} \
   CONFIG.DOUT_WIDTH {1} \
 ] $xlslice_1

  # Create instance: xlslice_2, and set properties
  set xlslice_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_2 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {5} \
   CONFIG.DIN_TO {5} \
   CONFIG.DIN_WIDTH {8} \
   CONFIG.DOUT_WIDTH {1} \
 ] $xlslice_2

  # Create instance: xlslice_3, and set properties
  set xlslice_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_3 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {4} \
   CONFIG.DIN_TO {4} \
   CONFIG.DIN_WIDTH {8} \
   CONFIG.DOUT_WIDTH {1} \
 ] $xlslice_3

  # Create instance: xlslice_4, and set properties
  set xlslice_4 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_4 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {3} \
   CONFIG.DIN_TO {3} \
   CONFIG.DIN_WIDTH {8} \
   CONFIG.DOUT_WIDTH {1} \
 ] $xlslice_4

  # Create instance: xlslice_5, and set properties
  set xlslice_5 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_5 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {2} \
   CONFIG.DIN_TO {2} \
   CONFIG.DIN_WIDTH {8} \
   CONFIG.DOUT_WIDTH {1} \
 ] $xlslice_5

  # Create instance: xlslice_6, and set properties
  set xlslice_6 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_6 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {1} \
   CONFIG.DIN_TO {1} \
   CONFIG.DIN_WIDTH {8} \
   CONFIG.DOUT_WIDTH {1} \
 ] $xlslice_6

  # Create instance: xlslice_7, and set properties
  set xlslice_7 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_7 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {0} \
   CONFIG.DIN_TO {0} \
   CONFIG.DIN_WIDTH {8} \
   CONFIG.DOUT_WIDTH {1} \
 ] $xlslice_7

  # Create port connections
  connect_bd_net -net Din_1 [get_bd_pins Din] [get_bd_pins xlslice_0/Din] [get_bd_pins xlslice_1/Din] [get_bd_pins xlslice_2/Din] [get_bd_pins xlslice_3/Din] [get_bd_pins xlslice_4/Din] [get_bd_pins xlslice_5/Din] [get_bd_pins xlslice_6/Din] [get_bd_pins xlslice_7/Din]
  connect_bd_net -net xlslice_0_Dout [get_bd_pins Dout] [get_bd_pins xlslice_0/Dout]
  connect_bd_net -net xlslice_1_Dout [get_bd_pins Dout1] [get_bd_pins xlslice_1/Dout]
  connect_bd_net -net xlslice_2_Dout [get_bd_pins Dout2] [get_bd_pins xlslice_2/Dout]
  connect_bd_net -net xlslice_3_Dout [get_bd_pins Dout3] [get_bd_pins xlslice_3/Dout]
  connect_bd_net -net xlslice_4_Dout [get_bd_pins Dout4] [get_bd_pins xlslice_4/Dout]
  connect_bd_net -net xlslice_5_Dout [get_bd_pins Dout5] [get_bd_pins xlslice_5/Dout]
  connect_bd_net -net xlslice_6_Dout [get_bd_pins Dout6] [get_bd_pins xlslice_6/Dout]
  connect_bd_net -net xlslice_7_Dout [get_bd_pins Dout7] [get_bd_pins xlslice_7/Dout]

  # Restore current instance
  current_bd_instance $oldCurInst
}


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

  # Create ports
  set Din [ create_bd_port -dir I -from 7 -to 0 -type data Din ]
  set Dout [ create_bd_port -dir O -from 7 -to 0 Dout ]
  set lr [ create_bd_port -dir I lr ]
  set s_0 [ create_bd_port -dir I s_0 ]
  set s_1 [ create_bd_port -dir I s_1 ]
  set s_2 [ create_bd_port -dir I s_2 ]

  # Create instance: Mux_2_1_0, and set properties
  set Mux_2_1_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:Mux_2_1:1.0 Mux_2_1_0 ]

  # Create instance: Mux_2_1_1, and set properties
  set Mux_2_1_1 [ create_bd_cell -type ip -vlnv xilinx.com:user:Mux_2_1:1.0 Mux_2_1_1 ]

  # Create instance: Mux_2_1_2, and set properties
  set Mux_2_1_2 [ create_bd_cell -type ip -vlnv xilinx.com:user:Mux_2_1:1.0 Mux_2_1_2 ]

  # Create instance: Mux_2_1_3, and set properties
  set Mux_2_1_3 [ create_bd_cell -type ip -vlnv xilinx.com:user:Mux_2_1:1.0 Mux_2_1_3 ]

  # Create instance: Mux_2_1_4, and set properties
  set Mux_2_1_4 [ create_bd_cell -type ip -vlnv xilinx.com:user:Mux_2_1:1.0 Mux_2_1_4 ]

  # Create instance: Mux_2_1_5, and set properties
  set Mux_2_1_5 [ create_bd_cell -type ip -vlnv xilinx.com:user:Mux_2_1:1.0 Mux_2_1_5 ]

  # Create instance: Mux_2_1_6, and set properties
  set Mux_2_1_6 [ create_bd_cell -type ip -vlnv xilinx.com:user:Mux_2_1:1.0 Mux_2_1_6 ]

  # Create instance: Mux_2_1_7, and set properties
  set Mux_2_1_7 [ create_bd_cell -type ip -vlnv xilinx.com:user:Mux_2_1:1.0 Mux_2_1_7 ]

  # Create instance: Mux_2_1_8, and set properties
  set Mux_2_1_8 [ create_bd_cell -type ip -vlnv xilinx.com:user:Mux_2_1:1.0 Mux_2_1_8 ]

  # Create instance: Mux_2_1_9, and set properties
  set Mux_2_1_9 [ create_bd_cell -type ip -vlnv xilinx.com:user:Mux_2_1:1.0 Mux_2_1_9 ]

  # Create instance: Mux_2_1_10, and set properties
  set Mux_2_1_10 [ create_bd_cell -type ip -vlnv xilinx.com:user:Mux_2_1:1.0 Mux_2_1_10 ]

  # Create instance: Mux_2_1_11, and set properties
  set Mux_2_1_11 [ create_bd_cell -type ip -vlnv xilinx.com:user:Mux_2_1:1.0 Mux_2_1_11 ]

  # Create instance: Mux_2_1_12, and set properties
  set Mux_2_1_12 [ create_bd_cell -type ip -vlnv xilinx.com:user:Mux_2_1:1.0 Mux_2_1_12 ]

  # Create instance: Mux_2_1_13, and set properties
  set Mux_2_1_13 [ create_bd_cell -type ip -vlnv xilinx.com:user:Mux_2_1:1.0 Mux_2_1_13 ]

  # Create instance: Mux_2_1_14, and set properties
  set Mux_2_1_14 [ create_bd_cell -type ip -vlnv xilinx.com:user:Mux_2_1:1.0 Mux_2_1_14 ]

  # Create instance: Mux_2_1_15, and set properties
  set Mux_2_1_15 [ create_bd_cell -type ip -vlnv xilinx.com:user:Mux_2_1:1.0 Mux_2_1_15 ]

  # Create instance: Mux_2_1_16, and set properties
  set Mux_2_1_16 [ create_bd_cell -type ip -vlnv xilinx.com:user:Mux_2_1:1.0 Mux_2_1_16 ]

  # Create instance: Mux_2_1_17, and set properties
  set Mux_2_1_17 [ create_bd_cell -type ip -vlnv xilinx.com:user:Mux_2_1:1.0 Mux_2_1_17 ]

  # Create instance: Mux_2_1_18, and set properties
  set Mux_2_1_18 [ create_bd_cell -type ip -vlnv xilinx.com:user:Mux_2_1:1.0 Mux_2_1_18 ]

  # Create instance: Mux_2_1_19, and set properties
  set Mux_2_1_19 [ create_bd_cell -type ip -vlnv xilinx.com:user:Mux_2_1:1.0 Mux_2_1_19 ]

  # Create instance: Mux_2_1_20, and set properties
  set Mux_2_1_20 [ create_bd_cell -type ip -vlnv xilinx.com:user:Mux_2_1:1.0 Mux_2_1_20 ]

  # Create instance: Mux_2_1_21, and set properties
  set Mux_2_1_21 [ create_bd_cell -type ip -vlnv xilinx.com:user:Mux_2_1:1.0 Mux_2_1_21 ]

  # Create instance: Mux_2_1_22, and set properties
  set Mux_2_1_22 [ create_bd_cell -type ip -vlnv xilinx.com:user:Mux_2_1:1.0 Mux_2_1_22 ]

  # Create instance: Mux_2_1_23, and set properties
  set Mux_2_1_23 [ create_bd_cell -type ip -vlnv xilinx.com:user:Mux_2_1:1.0 Mux_2_1_23 ]

  # Create instance: Mux_2_1_24, and set properties
  set Mux_2_1_24 [ create_bd_cell -type ip -vlnv xilinx.com:user:Mux_2_1:1.0 Mux_2_1_24 ]

  # Create instance: Mux_2_1_25, and set properties
  set Mux_2_1_25 [ create_bd_cell -type ip -vlnv xilinx.com:user:Mux_2_1:1.0 Mux_2_1_25 ]

  # Create instance: Mux_2_1_26, and set properties
  set Mux_2_1_26 [ create_bd_cell -type ip -vlnv xilinx.com:user:Mux_2_1:1.0 Mux_2_1_26 ]

  # Create instance: Mux_2_1_27, and set properties
  set Mux_2_1_27 [ create_bd_cell -type ip -vlnv xilinx.com:user:Mux_2_1:1.0 Mux_2_1_27 ]

  # Create instance: Mux_2_1_28, and set properties
  set Mux_2_1_28 [ create_bd_cell -type ip -vlnv xilinx.com:user:Mux_2_1:1.0 Mux_2_1_28 ]

  # Create instance: Mux_2_1_29, and set properties
  set Mux_2_1_29 [ create_bd_cell -type ip -vlnv xilinx.com:user:Mux_2_1:1.0 Mux_2_1_29 ]

  # Create instance: Mux_2_1_30, and set properties
  set Mux_2_1_30 [ create_bd_cell -type ip -vlnv xilinx.com:user:Mux_2_1:1.0 Mux_2_1_30 ]

  # Create instance: Mux_2_1_31, and set properties
  set Mux_2_1_31 [ create_bd_cell -type ip -vlnv xilinx.com:user:Mux_2_1:1.0 Mux_2_1_31 ]

  # Create instance: input_split
  create_hier_cell_input_split [current_bd_instance .] input_split

  # Create instance: xlconcat_0, and set properties
  set xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_0 ]
  set_property -dict [ list \
   CONFIG.NUM_PORTS {8} \
 ] $xlconcat_0

  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
 ] $xlconstant_0

  # Create port connections
  connect_bd_net -net Din_1 [get_bd_ports Din] [get_bd_pins input_split/Din]
  connect_bd_net -net Mux_2_1_0_I [get_bd_pins Mux_2_1_0/I] [get_bd_pins Mux_2_1_8/A]
  connect_bd_net -net Mux_2_1_10_I [get_bd_pins Mux_2_1_10/I] [get_bd_pins Mux_2_1_16/B] [get_bd_pins Mux_2_1_18/A]
  connect_bd_net -net Mux_2_1_11_I [get_bd_pins Mux_2_1_11/I] [get_bd_pins Mux_2_1_17/B] [get_bd_pins Mux_2_1_19/A]
  connect_bd_net -net Mux_2_1_12_I [get_bd_pins Mux_2_1_12/I] [get_bd_pins Mux_2_1_18/B] [get_bd_pins Mux_2_1_20/A]
  connect_bd_net -net Mux_2_1_13_I [get_bd_pins Mux_2_1_13/I] [get_bd_pins Mux_2_1_19/B] [get_bd_pins Mux_2_1_21/A]
  connect_bd_net -net Mux_2_1_14_I [get_bd_pins Mux_2_1_14/I] [get_bd_pins Mux_2_1_20/B] [get_bd_pins Mux_2_1_22/A]
  connect_bd_net -net Mux_2_1_15_I [get_bd_pins Mux_2_1_15/I] [get_bd_pins Mux_2_1_21/B] [get_bd_pins Mux_2_1_23/A]
  connect_bd_net -net Mux_2_1_16_I [get_bd_pins Mux_2_1_16/I] [get_bd_pins Mux_2_1_24/A]
  connect_bd_net -net Mux_2_1_17_I [get_bd_pins Mux_2_1_17/I] [get_bd_pins Mux_2_1_25/A]
  connect_bd_net -net Mux_2_1_18_I [get_bd_pins Mux_2_1_18/I] [get_bd_pins Mux_2_1_26/A]
  connect_bd_net -net Mux_2_1_19_I [get_bd_pins Mux_2_1_19/I] [get_bd_pins Mux_2_1_27/A]
  connect_bd_net -net Mux_2_1_1_I [get_bd_pins Mux_2_1_1/I] [get_bd_pins Mux_2_1_8/B] [get_bd_pins Mux_2_1_9/A]
  connect_bd_net -net Mux_2_1_20_I [get_bd_pins Mux_2_1_20/I] [get_bd_pins Mux_2_1_24/B] [get_bd_pins Mux_2_1_28/A]
  connect_bd_net -net Mux_2_1_21_I [get_bd_pins Mux_2_1_21/I] [get_bd_pins Mux_2_1_25/B] [get_bd_pins Mux_2_1_29/A]
  connect_bd_net -net Mux_2_1_22_I [get_bd_pins Mux_2_1_22/I] [get_bd_pins Mux_2_1_26/B] [get_bd_pins Mux_2_1_30/A]
  connect_bd_net -net Mux_2_1_23_I [get_bd_pins Mux_2_1_23/I] [get_bd_pins Mux_2_1_27/B] [get_bd_pins Mux_2_1_31/A]
  connect_bd_net -net Mux_2_1_24_I [get_bd_pins Mux_2_1_24/I] [get_bd_pins xlconcat_0/In7]
  connect_bd_net -net Mux_2_1_25_I [get_bd_pins Mux_2_1_25/I] [get_bd_pins xlconcat_0/In6]
  connect_bd_net -net Mux_2_1_26_I [get_bd_pins Mux_2_1_26/I] [get_bd_pins xlconcat_0/In5]
  connect_bd_net -net Mux_2_1_27_I [get_bd_pins Mux_2_1_27/I] [get_bd_pins xlconcat_0/In4]
  connect_bd_net -net Mux_2_1_28_I [get_bd_pins Mux_2_1_28/I] [get_bd_pins xlconcat_0/In3]
  connect_bd_net -net Mux_2_1_29_I [get_bd_pins Mux_2_1_29/I] [get_bd_pins xlconcat_0/In2]
  connect_bd_net -net Mux_2_1_2_I [get_bd_pins Mux_2_1_10/A] [get_bd_pins Mux_2_1_2/I] [get_bd_pins Mux_2_1_9/B]
  connect_bd_net -net Mux_2_1_30_I [get_bd_pins Mux_2_1_30/I] [get_bd_pins xlconcat_0/In1]
  connect_bd_net -net Mux_2_1_31_I [get_bd_pins Mux_2_1_31/I] [get_bd_pins xlconcat_0/In0]
  connect_bd_net -net Mux_2_1_3_I [get_bd_pins Mux_2_1_10/B] [get_bd_pins Mux_2_1_11/A] [get_bd_pins Mux_2_1_3/I]
  connect_bd_net -net Mux_2_1_4_I [get_bd_pins Mux_2_1_11/B] [get_bd_pins Mux_2_1_12/A] [get_bd_pins Mux_2_1_4/I]
  connect_bd_net -net Mux_2_1_5_I [get_bd_pins Mux_2_1_12/B] [get_bd_pins Mux_2_1_13/A] [get_bd_pins Mux_2_1_5/I]
  connect_bd_net -net Mux_2_1_6_I [get_bd_pins Mux_2_1_13/B] [get_bd_pins Mux_2_1_14/A] [get_bd_pins Mux_2_1_6/I]
  connect_bd_net -net Mux_2_1_7_I [get_bd_pins Mux_2_1_14/B] [get_bd_pins Mux_2_1_15/A] [get_bd_pins Mux_2_1_7/I]
  connect_bd_net -net Mux_2_1_8_I [get_bd_pins Mux_2_1_16/A] [get_bd_pins Mux_2_1_8/I]
  connect_bd_net -net Mux_2_1_9_I [get_bd_pins Mux_2_1_17/A] [get_bd_pins Mux_2_1_9/I]
  connect_bd_net -net Net [get_bd_ports s_0] [get_bd_pins Mux_2_1_10/S] [get_bd_pins Mux_2_1_11/S] [get_bd_pins Mux_2_1_12/S] [get_bd_pins Mux_2_1_13/S] [get_bd_pins Mux_2_1_14/S] [get_bd_pins Mux_2_1_15/S] [get_bd_pins Mux_2_1_8/S] [get_bd_pins Mux_2_1_9/S]
  connect_bd_net -net Net1 [get_bd_ports s_1] [get_bd_pins Mux_2_1_16/S] [get_bd_pins Mux_2_1_17/S] [get_bd_pins Mux_2_1_18/S] [get_bd_pins Mux_2_1_19/S] [get_bd_pins Mux_2_1_20/S] [get_bd_pins Mux_2_1_21/S] [get_bd_pins Mux_2_1_22/S] [get_bd_pins Mux_2_1_23/S]
  connect_bd_net -net Net2 [get_bd_ports s_2] [get_bd_pins Mux_2_1_24/S] [get_bd_pins Mux_2_1_25/S] [get_bd_pins Mux_2_1_26/S] [get_bd_pins Mux_2_1_27/S] [get_bd_pins Mux_2_1_28/S] [get_bd_pins Mux_2_1_29/S] [get_bd_pins Mux_2_1_30/S] [get_bd_pins Mux_2_1_31/S]
  connect_bd_net -net Net3 [get_bd_ports lr] [get_bd_pins Mux_2_1_0/S] [get_bd_pins Mux_2_1_1/S] [get_bd_pins Mux_2_1_2/S] [get_bd_pins Mux_2_1_3/S] [get_bd_pins Mux_2_1_4/S] [get_bd_pins Mux_2_1_5/S] [get_bd_pins Mux_2_1_6/S] [get_bd_pins Mux_2_1_7/S]
  connect_bd_net -net xlconcat_0_dout [get_bd_ports Dout] [get_bd_pins xlconcat_0/dout]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins Mux_2_1_15/B] [get_bd_pins Mux_2_1_22/B] [get_bd_pins Mux_2_1_23/B] [get_bd_pins Mux_2_1_28/B] [get_bd_pins Mux_2_1_29/B] [get_bd_pins Mux_2_1_30/B] [get_bd_pins Mux_2_1_31/B] [get_bd_pins xlconstant_0/dout]
  connect_bd_net -net xlslice_0_Dout [get_bd_pins Mux_2_1_0/A] [get_bd_pins Mux_2_1_7/B] [get_bd_pins input_split/Dout]
  connect_bd_net -net xlslice_1_Dout [get_bd_pins Mux_2_1_1/A] [get_bd_pins Mux_2_1_6/B] [get_bd_pins input_split/Dout1]
  connect_bd_net -net xlslice_2_Dout [get_bd_pins Mux_2_1_2/A] [get_bd_pins Mux_2_1_5/B] [get_bd_pins input_split/Dout2]
  connect_bd_net -net xlslice_3_Dout [get_bd_pins Mux_2_1_3/A] [get_bd_pins Mux_2_1_4/B] [get_bd_pins input_split/Dout3]
  connect_bd_net -net xlslice_4_Dout [get_bd_pins Mux_2_1_3/B] [get_bd_pins Mux_2_1_4/A] [get_bd_pins input_split/Dout4]
  connect_bd_net -net xlslice_5_Dout [get_bd_pins Mux_2_1_2/B] [get_bd_pins Mux_2_1_5/A] [get_bd_pins input_split/Dout5]
  connect_bd_net -net xlslice_6_Dout [get_bd_pins Mux_2_1_1/B] [get_bd_pins Mux_2_1_6/A] [get_bd_pins input_split/Dout6]
  connect_bd_net -net xlslice_7_Dout [get_bd_pins Mux_2_1_0/B] [get_bd_pins Mux_2_1_7/A] [get_bd_pins input_split/Dout7]

  # Create address segments


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


