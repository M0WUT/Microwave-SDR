
################################################################
# This is a generated script based on design: zsys
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
set scripts_vivado_version 2019.2
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
# source zsys_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# adau1361_handler, overdrive_warning, overdrive_warning, Segment_Driver, binary_to_bcd, axis_demux, axis_mux, ptt_mux, cordic, cordic, cordic, phase_accumulator, phase_accumulator, cordic, cw_generator, phase_accumulator

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7z020clg484-1
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name zsys

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


# Hierarchical cell: Tone_CW
proc create_hier_cell_Tone_CW { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_Tone_CW() - Empty argument(s)!"}
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
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 M_AXIS_X_COS_THETA_MINUS_Y_SIN_THETA


  # Create pins
  create_bd_pin -dir I CW_TONEn
  create_bd_pin -dir I -from 31 -to 0 iS_phaseDelta
  create_bd_pin -dir I i_clk
  create_bd_pin -dir I i_cw_key_n
  create_bd_pin -dir I i_resetn

  # Create instance: cordic_0, and set properties
  set block_name cordic
  set block_cell_name cordic_0
  if { [catch {set cordic_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $cordic_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: cw_generator_0, and set properties
  set block_name cw_generator
  set block_cell_name cw_generator_0
  if { [catch {set cw_generator_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $cw_generator_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: phase_accumulator_0, and set properties
  set block_name phase_accumulator
  set block_cell_name phase_accumulator_0
  if { [catch {set phase_accumulator_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $phase_accumulator_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: util_vector_logic_0, and set properties
  set util_vector_logic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_0 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_0

  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]

  # Create instance: xlconstant_1, and set properties
  set xlconstant_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_1 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {32000} \
   CONFIG.CONST_WIDTH {16} \
 ] $xlconstant_1

  # Create instance: xlconstant_2, and set properties
  set xlconstant_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_2 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
   CONFIG.CONST_WIDTH {16} \
 ] $xlconstant_2

  # Create interface connections
  connect_bd_intf_net -intf_net cordic_0_M_AXIS_X_COS_THETA_MINUS_Y_SIN_THETA [get_bd_intf_pins M_AXIS_X_COS_THETA_MINUS_Y_SIN_THETA] [get_bd_intf_pins cordic_0/M_AXIS_X_COS_THETA_MINUS_Y_SIN_THETA]
  connect_bd_intf_net -intf_net phase_accumulator_0_M_AXIS_ANGLE [get_bd_intf_pins cordic_0/S_AXIS_THETA] [get_bd_intf_pins phase_accumulator_0/M_AXIS_ANGLE]

  # Create port connections
  connect_bd_net -net CW_TONEn_1 [get_bd_pins CW_TONEn] [get_bd_pins util_vector_logic_0/Op2]
  connect_bd_net -net cw_generator_0_oS_output [get_bd_pins cordic_0/iS_xIn] [get_bd_pins cw_generator_0/oS_output]
  connect_bd_net -net iS_phaseDelta_1 [get_bd_pins iS_phaseDelta] [get_bd_pins phase_accumulator_0/iS_phaseDelta]
  connect_bd_net -net i_clk_1 [get_bd_pins i_clk] [get_bd_pins cordic_0/i_clk] [get_bd_pins cw_generator_0/i_clk] [get_bd_pins phase_accumulator_0/i_clk]
  connect_bd_net -net i_cw_key_n_1 [get_bd_pins i_cw_key_n] [get_bd_pins util_vector_logic_0/Op1]
  connect_bd_net -net i_resetn_1 [get_bd_pins i_resetn] [get_bd_pins cordic_0/i_resetn] [get_bd_pins phase_accumulator_0/i_resetn]
  connect_bd_net -net util_vector_logic_0_Res [get_bd_pins cw_generator_0/i_key_n] [get_bd_pins util_vector_logic_0/Res]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins cordic_0/i_xValid] [get_bd_pins cordic_0/i_yValid] [get_bd_pins phase_accumulator_0/i_valid] [get_bd_pins xlconstant_0/dout]
  connect_bd_net -net xlconstant_1_dout [get_bd_pins cw_generator_0/iS_amplitude] [get_bd_pins xlconstant_1/dout]
  connect_bd_net -net xlconstant_2_dout [get_bd_pins cordic_0/iS_yIn] [get_bd_pins xlconstant_2/dout]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: SSB
proc create_hier_cell_SSB { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_SSB() - Empty argument(s)!"}
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
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 M_AXIS_SSB

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 S_AXIS_AF


  # Create pins
  create_bd_pin -dir I ADD_SUBTRACTn
  create_bd_pin -dir I -from 31 -to 0 iS_phaseDelta_af
  create_bd_pin -dir I -from 31 -to 0 iS_phaseDelta_rf
  create_bd_pin -dir I -type clk i_clk
  create_bd_pin -dir I -type rst i_resetn
  create_bd_pin -dir O -from 2 -to 0 o_error

  # Create instance: axis_subset_converter_0, and set properties
  set axis_subset_converter_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_subset_converter:1.1 axis_subset_converter_0 ]
  set_property -dict [ list \
   CONFIG.M_HAS_TREADY {0} \
   CONFIG.M_TDATA_NUM_BYTES {2} \
   CONFIG.S_HAS_TREADY {0} \
   CONFIG.S_TDATA_NUM_BYTES {2} \
   CONFIG.TDATA_REMAP {tdata[15:0]} \
 ] $axis_subset_converter_0

  # Create instance: c_addsub_0, and set properties
  set c_addsub_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:c_addsub:12.0 c_addsub_0 ]
  set_property -dict [ list \
   CONFIG.A_Width {16} \
   CONFIG.Add_Mode {Add_Subtract} \
   CONFIG.B_Value {0000000000000000} \
   CONFIG.B_Width {16} \
   CONFIG.CE {false} \
   CONFIG.Latency {1} \
   CONFIG.Out_Width {16} \
 ] $c_addsub_0

  # Create instance: cic_compiler_1, and set properties
  set cic_compiler_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:cic_compiler:4.0 cic_compiler_1 ]
  set_property -dict [ list \
   CONFIG.Clock_Frequency {80.0} \
   CONFIG.Fixed_Or_Initial_Rate {2048} \
   CONFIG.Input_Data_Width {16} \
   CONFIG.Input_Sample_Frequency {0.0390625} \
   CONFIG.Maximum_Rate {2048} \
   CONFIG.Minimum_Rate {2048} \
   CONFIG.Number_Of_Channels {1} \
   CONFIG.Number_Of_Stages {3} \
   CONFIG.Output_Data_Width {16} \
   CONFIG.Passband_Max {0.0005} \
   CONFIG.Quantization {Truncation} \
   CONFIG.SamplePeriod {2048} \
 ] $cic_compiler_1

  # Create instance: cic_compiler_2, and set properties
  set cic_compiler_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:cic_compiler:4.0 cic_compiler_2 ]
  set_property -dict [ list \
   CONFIG.Clock_Frequency {80.0} \
   CONFIG.Fixed_Or_Initial_Rate {2048} \
   CONFIG.Input_Data_Width {16} \
   CONFIG.Input_Sample_Frequency {0.0390625} \
   CONFIG.Maximum_Rate {2048} \
   CONFIG.Minimum_Rate {2048} \
   CONFIG.Number_Of_Channels {1} \
   CONFIG.Number_Of_Stages {3} \
   CONFIG.Output_Data_Width {16} \
   CONFIG.Passband_Max {0.0005} \
   CONFIG.Quantization {Truncation} \
   CONFIG.SamplePeriod {2048} \
 ] $cic_compiler_2

  # Create instance: cordic_0, and set properties
  set block_name cordic
  set block_cell_name cordic_0
  if { [catch {set cordic_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $cordic_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: cordic_1, and set properties
  set block_name cordic
  set block_cell_name cordic_1
  if { [catch {set cordic_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $cordic_1 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: cordic_2, and set properties
  set block_name cordic
  set block_cell_name cordic_2
  if { [catch {set cordic_2 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $cordic_2 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: fir_compiler_1, and set properties
  set fir_compiler_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:fir_compiler:7.2 fir_compiler_1 ]
  set_property -dict [ list \
   CONFIG.BestPrecision {true} \
   CONFIG.Clock_Frequency {80} \
   CONFIG.CoefficientVector {0.0005301568549654419,   0.00006393518835997023,   0.00005738859167497046,   0.00004338987340945184,   0.000022051781979735328,   -0.000006054306049617033,   -0.000039902767616475936,   -0.00007804283517097216,   -0.0001186388087130439,   -0.00015955622832839858,   -0.0001984953979661791,   -0.00023311541520489666,   -0.0002611586599345181,   -0.00028062548439992436,   -0.00028992567773032543,   -0.0002879368651991218,   -0.0002742106705087938,   -0.0002489361329191936,   -0.00021303349632444135,   -0.00016809634890038163,   -0.00011634577318997903,   -0.000060511281161317194,   -0.000003688661722200005,   0.0000508377439375819,   0.00009980215742912645,   0.00014016394028108106,   0.000169310394930918,   0.00018524211352920688,   0.00018673567812981485,   0.00017343075036938728,   0.00014592102244833006,   0.00010572238453748261,   0.000055232882823971535,   -0.0000024003125301238913,   -0.00006345356526636345,   -0.00012385235513596654,   -0.00017942246677473764,   -0.0002261646704303122,   -0.000260526856272902,   -0.00027965012631829084,   -0.0002815916087452791,   -0.00026547384374199176,   -0.00023160885529887796,   -0.0001814837031024612,   -0.00011776095198315651,   -0.000044098110812567134,   0.000035032386958893286,   0.00011461260383671019,   0.00018940544462782473,   0.0002542878255710424,   0.00030458741680297754,   0.00033642180707489595,   0.00034699041514079,   0.0003347959010194655,   0.0002998149965532201,   0.0002434926958732427,   0.0001688760903703858,   0.00008008576600868937,   -0.00001734509806522312,   -0.00011732693541286485,   -0.00021333152346519798,   -0.0002987866621040009,   -0.00036762652442667745,   -0.0004147068291232882,   -0.0004361099606421561,   -0.000429457843764001,   -0.00039418390808593776,   -0.00033162035114237876,   -0.0002449186151089871,   -0.00013896311495607429,   -0.000020166158144706697,   0.00010416148869187228,   0.00022589524756009278,   0.00033691599464366406,   0.00042947404620668735,   0.0004967997326186481,   0.0005335608410174303,   0.0005362775862422715,   0.0005036088973071943,   0.00043650856599329027,   0.00033825202758871326,   0.00021429997639582185,   0.00007200257602023325,   -0.00007982067509942405,   -0.0002314093793162946,   -0.0003727170550386536,   -0.000494025244426794,   -0.0005866424789596213,   -0.000643486733954927,   -0.0006596245513453766,   -0.0006326601935657222,   -0.0005629833876251326,   -0.00045382984825060316,   -0.0003111571247278629,   -0.00014333892110813761,   0.00003931805718642359,   0.00022519228698186753,   0.0004020847729695572,   0.0005579915616065953,   0.0006819337788356992,   0.0007646822009075012,   0.0007994555785811166,   0.0007824338551323459,   0.0007131114699884057,   0.0005944430740028248,   0.00043275818252203974,   0.00023744003425329248,   0.000020399274920475764,   -0.00020464262115528622,   -0.0004230233874884904,   -0.0006200732590545277,   -0.0007821208248811516,   -0.000897362686812131,   -0.0009568042954846602,   -0.0009547905850631885,   -0.0008895905757156121,   -0.0007635820851814426,   -0.0005832164731654933,   -0.00035877793517834314,   -0.00010383988081828998,   0.00016555266050530552,   0.00043189857532070964,   0.0006774367303066042,   0.0008854470209305067,   0.0010414177918416578,   0.0011336520402371708,   0.0011519944458426004,   0.0010960206443678296,   0.0009654152376523162,   0.0007671603127385662,   0.0005123421637660198,   0.00021616348528699387,   -0.00010298891272177306,   -0.0004246567309961579,   -0.0007276145004782092,   -0.0009912667647061417,   -0.0011970156074253917,   -0.001329547081515234,   -0.0013779636776103654,   -0.0013366209293878613,   -0.0012056256623930758,   -0.0009910724726092186,   -0.0007047206370885805,   -0.00036345552027128753,   0.000011731244250112979,   0.0003969877785688768,   0.00076711155347287,   0.0010971690601370375,   0.0013641559100392852,   0.0015485794642970752,   0.0016358459625094193,   0.0016173698860029084,   0.0014913158837831816,   0.0012629191480759366,   0.000944326487340492,   0.0005540213551563383,   0.00011574982950438409,   -0.00034287000733014057,   -0.000792079634267749,   -0.0012018797670332306,   -0.0015440089356608972,   -0.001793859176708545,   -0.0019322138049301621,   -0.0019466731268055683,   -0.0018326691770784896,   -0.0015940021826009595,   -0.0012428197120235036,   -0.0007990774224528687,   -0.00028941082924474056,   0.00025437089746305067,   0.000797299787369804,   0.0013034181032845064,   0.0017381439666380053,   0.0020706069482448867,   0.0022757795325427503,   0.0023362996660734082,   0.0022438551652613466,   0.0019999944716107944,   0.0016163143908594045,   0.001114010174529067,   0.0005227215791995615,   -0.00012101574080627546,   -0.0007764331474456598,   -0.0014001978810090166,   -0.0019503095882062893,   -0.0023880728837908185,   -0.0026809725121795087,   -0.002805173737211216,   -0.0027472737341876293,   -0.0025054206570715313,   -0.0020898280849919303,   -0.0015225308997630555,   -0.0008362811072038716,   -0.00007270416786720615,   0.0007201199605118557,   0.001490646413100908,   0.0021872497160790234,   0.002761372269113474,   0.003171069733063798,   0.003383798020458287,   0.003378966636892171,   0.003149646297186104,   0.0027034918195447777,   0.00206270799595422,   0.0012630732141493894,   0.00035205388019120514,   -0.0006139194751949582,   -0.0015728490334750694,   -0.002461036451749209,   -0.003217201081156495,   -0.0037866055141977718,   -0.0041248364214982024,   -0.004201123998901283,   -0.004000809374671624,   -0.0035269045389464504,   -0.0028005255375260817,   -0.0018601823173922036,   -0.0007599023966185753,   0.00043371262469512446,   0.0016453546642979523,   0.002795590463716705,   0.003805874949574743,   0.004603712117462733,   0.005127603779279628,   0.005331520270797173,   0.005188484672270496,   0.00469314561648354,   0.0038629929995671075,   0.0027381922639710364,   0.001379950530595239,   -0.00013254016461915194,   -0.0017064342169246405,   -0.003240606756407896,   -0.004631797059484829,   -0.005781159362595332,   -0.006600809081323297,   -0.007020012380366093,   -0.006990497186692081,   -0.006490758261857952,   -0.0055285861032288225,   -0.004142235439676081,   -0.002399426051803042,   -0.0003946233151478414,   0.001755433875111008,   0.0039178700168579,   0.00595110642073332,   0.007713205073545164,   0.009070739078918753,   0.00990763242707658,   0.010133282593012936,   0.009689443196368193,   0.008555855020965557,   0.00675518326666639,   0.004352040965713982,   0.0014544369801845795,   -0.0017910185571532661,   -0.005204327782385749,   -0.008580082850399814,   -0.011697092236250928,   -0.014329362588497825,   -0.016257841755380004,   -0.017282305599660427,   -0.017232791346250182,   -0.015979931612452255,   -0.013443571275528527,   -0.009599208215107582,   -0.004481882465604279,   0.0018129257893003154,   0.009131250073131507,   0.017265692931829946,   0.025963174768729863,   0.03493517532213005,   0.04386991998818515,   0.0524459739538281,   0.060346560080020394,   0.06727389192732537,   0.07296281727721064,   0.07719307035726908,   0.0797995204503935,   0.08067987951980564,   0.0797995204503935,   0.07719307035726908,   0.07296281727721064,   0.06727389192732537,   0.060346560080020394,   0.0524459739538281,   0.04386991998818515,   0.03493517532213005,   0.025963174768729863,   0.017265692931829946,   0.009131250073131507,   0.0018129257893003154,   -0.004481882465604279,   -0.009599208215107582,   -0.013443571275528527,   -0.015979931612452255,   -0.017232791346250182,   -0.017282305599660427,   -0.016257841755380004,   -0.014329362588497825,   -0.011697092236250928,   -0.008580082850399814,   -0.005204327782385749,   -0.0017910185571532661,   0.0014544369801845795,   0.004352040965713982,   0.00675518326666639,   0.008555855020965557,   0.009689443196368193,   0.010133282593012936,   0.00990763242707658,   0.009070739078918753,   0.007713205073545164,   0.00595110642073332,   0.0039178700168579,   0.001755433875111008,   -0.0003946233151478414,   -0.002399426051803042,   -0.004142235439676081,   -0.0055285861032288225,   -0.006490758261857952,   -0.006990497186692081,   -0.007020012380366093,   -0.006600809081323297,   -0.005781159362595332,   -0.004631797059484829,   -0.003240606756407896,   -0.0017064342169246405,   -0.00013254016461915194,   0.001379950530595239,   0.0027381922639710364,   0.0038629929995671075,   0.00469314561648354,   0.005188484672270496,   0.005331520270797173,   0.005127603779279628,   0.004603712117462733,   0.003805874949574743,   0.002795590463716705,   0.0016453546642979523,   0.00043371262469512446,   -0.0007599023966185753,   -0.0018601823173922036,   -0.0028005255375260817,   -0.0035269045389464504,   -0.004000809374671624,   -0.004201123998901283,   -0.0041248364214982024,   -0.0037866055141977718,   -0.003217201081156495,   -0.002461036451749209,   -0.0015728490334750694,   -0.0006139194751949582,   0.00035205388019120514,   0.0012630732141493894,   0.00206270799595422,   0.0027034918195447777,   0.003149646297186104,   0.003378966636892171,   0.003383798020458287,   0.003171069733063798,   0.002761372269113474,   0.0021872497160790234,   0.001490646413100908,   0.0007201199605118557,   -0.00007270416786720615,   -0.0008362811072038716,   -0.0015225308997630555,   -0.0020898280849919303,   -0.0025054206570715313,   -0.0027472737341876293,   -0.002805173737211216,   -0.0026809725121795087,   -0.0023880728837908185,   -0.0019503095882062893,   -0.0014001978810090166,   -0.0007764331474456598,   -0.00012101574080627546,   0.0005227215791995615,   0.001114010174529067,   0.0016163143908594045,   0.0019999944716107944,   0.0022438551652613466,   0.0023362996660734082,   0.0022757795325427503,   0.0020706069482448867,   0.0017381439666380053,   0.0013034181032845064,   0.000797299787369804,   0.00025437089746305067,   -0.00028941082924474056,   -0.0007990774224528687,   -0.0012428197120235036,   -0.0015940021826009595,   -0.0018326691770784896,   -0.0019466731268055683,   -0.0019322138049301621,   -0.001793859176708545,   -0.0015440089356608972,   -0.0012018797670332306,   -0.000792079634267749,   -0.00034287000733014057,   0.00011574982950438409,   0.0005540213551563383,   0.000944326487340492,   0.0012629191480759366,   0.0014913158837831816,   0.0016173698860029084,   0.0016358459625094193,   0.0015485794642970752,   0.0013641559100392852,   0.0010971690601370375,   0.00076711155347287,   0.0003969877785688768,   0.000011731244250112979,   -0.00036345552027128753,   -0.0007047206370885805,   -0.0009910724726092186,   -0.0012056256623930758,   -0.0013366209293878613,   -0.0013779636776103654,   -0.001329547081515234,   -0.0011970156074253917,   -0.0009912667647061417,   -0.0007276145004782092,   -0.0004246567309961579,   -0.00010298891272177306,   0.00021616348528699387,   0.0005123421637660198,   0.0007671603127385662,   0.0009654152376523162,   0.0010960206443678296,   0.0011519944458426004,   0.0011336520402371708,   0.0010414177918416578,   0.0008854470209305067,   0.0006774367303066042,   0.00043189857532070964,   0.00016555266050530552,   -0.00010383988081828998,   -0.00035877793517834314,   -0.0005832164731654933,   -0.0007635820851814426,   -0.0008895905757156121,   -0.0009547905850631885,   -0.0009568042954846602,   -0.000897362686812131,   -0.0007821208248811516,   -0.0006200732590545277,   -0.0004230233874884904,   -0.00020464262115528622,   0.000020399274920475764,   0.00023744003425329248,   0.00043275818252203974,   0.0005944430740028248,   0.0007131114699884057,   0.0007824338551323459,   0.0007994555785811166,   0.0007646822009075012,   0.0006819337788356992,   0.0005579915616065953,   0.0004020847729695572,   0.00022519228698186753,   0.00003931805718642359,   -0.00014333892110813761,   -0.0003111571247278629,   -0.00045382984825060316,   -0.0005629833876251326,   -0.0006326601935657222,   -0.0006596245513453766,   -0.000643486733954927,   -0.0005866424789596213,   -0.000494025244426794,   -0.0003727170550386536,   -0.0002314093793162946,   -0.00007982067509942405,   0.00007200257602023325,   0.00021429997639582185,   0.00033825202758871326,   0.00043650856599329027,   0.0005036088973071943,   0.0005362775862422715,   0.0005335608410174303,   0.0004967997326186481,   0.00042947404620668735,   0.00033691599464366406,   0.00022589524756009278,   0.00010416148869187228,   -0.000020166158144706697,   -0.00013896311495607429,   -0.0002449186151089871,   -0.00033162035114237876,   -0.00039418390808593776,   -0.000429457843764001,   -0.0004361099606421561,   -0.0004147068291232882,   -0.00036762652442667745,   -0.0002987866621040009,   -0.00021333152346519798,   -0.00011732693541286485,   -0.00001734509806522312,   0.00008008576600868937,   0.0001688760903703858,   0.0002434926958732427,   0.0002998149965532201,   0.0003347959010194655,   0.00034699041514079,   0.00033642180707489595,   0.00030458741680297754,   0.0002542878255710424,   0.00018940544462782473,   0.00011461260383671019,   0.000035032386958893286,   -0.000044098110812567134,   -0.00011776095198315651,   -0.0001814837031024612,   -0.00023160885529887796,   -0.00026547384374199176,   -0.0002815916087452791,   -0.00027965012631829084,   -0.000260526856272902,   -0.0002261646704303122,   -0.00017942246677473764,   -0.00012385235513596654,   -0.00006345356526636345,   -0.0000024003125301238913,   0.000055232882823971535,   0.00010572238453748261,   0.00014592102244833006,   0.00017343075036938728,   0.00018673567812981485,   0.00018524211352920688,   0.000169310394930918,   0.00014016394028108106,   0.00009980215742912645,   0.0000508377439375819,   -0.000003688661722200005,   -0.000060511281161317194,   -0.00011634577318997903,   -0.00016809634890038163,   -0.00021303349632444135,   -0.0002489361329191936,   -0.0002742106705087938,   -0.0002879368651991218,   -0.00028992567773032543,   -0.00028062548439992436,   -0.0002611586599345181,   -0.00023311541520489666,   -0.0001984953979661791,   -0.00015955622832839858,   -0.0001186388087130439,   -0.00007804283517097216,   -0.000039902767616475936,   -0.000006054306049617033,   0.000022051781979735328,   0.00004338987340945184,   0.00005738859167497046,   0.00006393518835997023,   0.0005301568549654419} \
   CONFIG.Coefficient_Fractional_Bits {18} \
   CONFIG.Coefficient_Sets {1} \
   CONFIG.Coefficient_Sign {Signed} \
   CONFIG.Coefficient_Structure {Inferred} \
   CONFIG.Coefficient_Width {16} \
   CONFIG.Data_Width {16} \
   CONFIG.Filter_Architecture {Systolic_Multiply_Accumulate} \
   CONFIG.Number_Paths {2} \
   CONFIG.Output_Rounding_Mode {Truncate_LSBs} \
   CONFIG.Output_Width {18} \
   CONFIG.Passband_Max {0.07} \
   CONFIG.Quantization {Quantize_Only} \
   CONFIG.Sample_Frequency {0.0390625} \
 ] $fir_compiler_1

  # Create instance: phase_accumulator_0, and set properties
  set block_name phase_accumulator
  set block_cell_name phase_accumulator_0
  if { [catch {set phase_accumulator_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $phase_accumulator_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: phase_accumulator_1, and set properties
  set block_name phase_accumulator
  set block_cell_name phase_accumulator_1
  if { [catch {set phase_accumulator_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $phase_accumulator_1 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: xlconcat_0, and set properties
  set xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_0 ]
  set_property -dict [ list \
   CONFIG.NUM_PORTS {3} \
 ] $xlconcat_0

  # Create instance: xlconcat_2, and set properties
  set xlconcat_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_2 ]

  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]
  set_property USER_COMMENTS.comment_4 "Constant 1" [get_bd_cells /TX/SSB/xlconstant_0]

  # Create instance: xlconstant_3, and set properties
  set xlconstant_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_3 ]
  set_property USER_COMMENTS.comment_2 "Constant 0" [get_bd_cells /TX/SSB/xlconstant_3]
  set_property USER_COMMENTS.comment_3 "Enter Comments here" [get_bd_cells /TX/SSB/xlconstant_3]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
   CONFIG.CONST_WIDTH {16} \
 ] $xlconstant_3

  # Create instance: xlslice_3, and set properties
  set xlslice_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_3 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {39} \
   CONFIG.DIN_TO {24} \
   CONFIG.DIN_WIDTH {48} \
   CONFIG.DOUT_WIDTH {16} \
 ] $xlslice_3

  # Create instance: xlslice_4, and set properties
  set xlslice_4 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_4 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {15} \
   CONFIG.DIN_WIDTH {48} \
   CONFIG.DOUT_WIDTH {16} \
 ] $xlslice_4

  # Create interface connections
  connect_bd_intf_net -intf_net S_AXIS_AF_1 [get_bd_intf_pins S_AXIS_AF] [get_bd_intf_pins cordic_0/S_AXIS_X]
  connect_bd_intf_net -intf_net axis_subset_converter_0_M_AXIS [get_bd_intf_pins M_AXIS_SSB] [get_bd_intf_pins axis_subset_converter_0/M_AXIS]
  connect_bd_intf_net -intf_net cic_compiler_1_M_AXIS_DATA [get_bd_intf_pins cic_compiler_1/M_AXIS_DATA] [get_bd_intf_pins cordic_2/S_AXIS_X]
  connect_bd_intf_net -intf_net cic_compiler_2_M_AXIS_DATA [get_bd_intf_pins cic_compiler_2/M_AXIS_DATA] [get_bd_intf_pins cordic_1/S_AXIS_X]
  connect_bd_intf_net -intf_net phase_accumulator_0_M_AXIS_ANGLE [get_bd_intf_pins cordic_0/S_AXIS_THETA] [get_bd_intf_pins phase_accumulator_0/M_AXIS_ANGLE]

  # Create port connections
  connect_bd_net -net ADD_SUBTRACTn_1 [get_bd_pins ADD_SUBTRACTn] [get_bd_pins c_addsub_0/ADD]
  connect_bd_net -net c_addsub_0_S [get_bd_pins axis_subset_converter_0/s_axis_tdata] [get_bd_pins c_addsub_0/S]
  connect_bd_net -net cordic_0_o_error [get_bd_pins cordic_0/o_error] [get_bd_pins xlconcat_0/In0]
  connect_bd_net -net cordic_1_oS_xOut [get_bd_pins cordic_0/oS_xOut] [get_bd_pins xlconcat_2/In0]
  connect_bd_net -net cordic_1_oS_yOut [get_bd_pins cordic_0/oS_yOut] [get_bd_pins xlconcat_2/In1]
  connect_bd_net -net cordic_1_o_error [get_bd_pins cordic_1/o_error] [get_bd_pins xlconcat_0/In2]
  connect_bd_net -net cordic_1_o_xValid [get_bd_pins cordic_0/o_xValid] [get_bd_pins fir_compiler_1/s_axis_data_tvalid]
  connect_bd_net -net cordic_2_oS_xOut [get_bd_pins c_addsub_0/A] [get_bd_pins cordic_1/oS_yOut]
  connect_bd_net -net cordic_2_o_error [get_bd_pins cordic_2/o_error] [get_bd_pins xlconcat_0/In1]
  connect_bd_net -net cordic_3_oS_yOut [get_bd_pins c_addsub_0/B] [get_bd_pins cordic_2/oS_xOut]
  connect_bd_net -net fir_compiler_1_m_axis_data_tdata [get_bd_pins fir_compiler_1/m_axis_data_tdata] [get_bd_pins xlslice_3/Din] [get_bd_pins xlslice_4/Din]
  connect_bd_net -net fir_compiler_1_m_axis_data_tvalid [get_bd_pins cic_compiler_1/s_axis_data_tvalid] [get_bd_pins cic_compiler_2/s_axis_data_tvalid] [get_bd_pins fir_compiler_1/m_axis_data_tvalid]
  connect_bd_net -net iS_phaseDelta_af_1 [get_bd_pins iS_phaseDelta_af] [get_bd_pins phase_accumulator_0/iS_phaseDelta]
  connect_bd_net -net iS_phaseDelta_rf_1 [get_bd_pins iS_phaseDelta_rf] [get_bd_pins phase_accumulator_1/iS_phaseDelta]
  connect_bd_net -net phase_accumulator_1_oS_phaseAngle1 [get_bd_pins cordic_1/iS_angle] [get_bd_pins cordic_2/iS_angle] [get_bd_pins phase_accumulator_1/oS_phaseAngle]
  connect_bd_net -net util_ds_buf_0_IBUF_OUT [get_bd_pins i_clk] [get_bd_pins axis_subset_converter_0/aclk] [get_bd_pins c_addsub_0/CLK] [get_bd_pins cic_compiler_1/aclk] [get_bd_pins cic_compiler_2/aclk] [get_bd_pins cordic_0/i_clk] [get_bd_pins cordic_1/i_clk] [get_bd_pins cordic_2/i_clk] [get_bd_pins fir_compiler_1/aclk] [get_bd_pins phase_accumulator_0/i_clk] [get_bd_pins phase_accumulator_1/i_clk]
  connect_bd_net -net xlconcat_0_dout [get_bd_pins o_error] [get_bd_pins xlconcat_0/dout]
  connect_bd_net -net xlconcat_2_dout [get_bd_pins fir_compiler_1/s_axis_data_tdata] [get_bd_pins xlconcat_2/dout]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins i_resetn] [get_bd_pins axis_subset_converter_0/aresetn] [get_bd_pins cordic_0/i_resetn] [get_bd_pins cordic_1/i_resetn] [get_bd_pins cordic_2/i_resetn] [get_bd_pins phase_accumulator_0/i_resetn] [get_bd_pins phase_accumulator_1/i_resetn]
  connect_bd_net -net xlconstant_0_dout1 [get_bd_pins axis_subset_converter_0/s_axis_tvalid] [get_bd_pins cordic_0/i_yValid] [get_bd_pins cordic_1/i_angleValid] [get_bd_pins cordic_1/i_yValid] [get_bd_pins cordic_2/i_angleValid] [get_bd_pins cordic_2/i_yValid] [get_bd_pins phase_accumulator_0/i_valid] [get_bd_pins phase_accumulator_1/i_valid] [get_bd_pins xlconstant_0/dout]
  connect_bd_net -net xlconstant_3_dout1 [get_bd_pins cordic_0/iS_yIn] [get_bd_pins cordic_1/iS_yIn] [get_bd_pins cordic_2/iS_yIn] [get_bd_pins xlconstant_3/dout]
  connect_bd_net -net xlslice_3_Dout [get_bd_pins cic_compiler_2/s_axis_data_tdata] [get_bd_pins xlslice_3/Dout]
  connect_bd_net -net xlslice_4_Dout [get_bd_pins cic_compiler_1/s_axis_data_tdata] [get_bd_pins xlslice_4/Dout]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: TX
proc create_hier_cell_TX { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_TX() - Empty argument(s)!"}
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
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 S_AXIS_AF


  # Create pins
  create_bd_pin -dir I -from 31 -to 0 iS_phaseDelta_af
  create_bd_pin -dir I -from 31 -to 0 iS_phaseDelta_rf
  create_bd_pin -dir I i_clk
  create_bd_pin -dir I i_cw_key_n
  create_bd_pin -dir I i_ptt_cw_n
  create_bd_pin -dir I i_ptt_n
  create_bd_pin -dir I i_resetn
  create_bd_pin -dir I -from 3 -to 0 mode
  create_bd_pin -dir O -from 2 -to 0 o_SSBerror
  create_bd_pin -dir O o_tx_led
  create_bd_pin -dir O -from 13 -to 0 rf_dac_data
  create_bd_pin -dir O -from 0 -to 0 rf_dac_mode

  # Create instance: SSB
  create_hier_cell_SSB $hier_obj SSB

  # Create instance: Tone_CW
  create_hier_cell_Tone_CW $hier_obj Tone_CW

  # Create instance: axis_demux_0, and set properties
  set block_name axis_demux
  set block_cell_name axis_demux_0
  if { [catch {set axis_demux_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $axis_demux_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: axis_mux_0, and set properties
  set block_name axis_mux
  set block_cell_name axis_mux_0
  if { [catch {set axis_mux_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $axis_mux_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: ptt_mux_0, and set properties
  set block_name ptt_mux
  set block_cell_name ptt_mux_0
  if { [catch {set ptt_mux_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $ptt_mux_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]
  set_property USER_COMMENTS.comment_9 "DAC Mode needs setting to 1 for 2's complement data" [get_bd_cells /TX/xlconstant_0]

  # Create instance: xlslice_0, and set properties
  set xlslice_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_0 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {3} \
   CONFIG.DIN_TO {1} \
   CONFIG.DIN_WIDTH {4} \
   CONFIG.DOUT_WIDTH {3} \
 ] $xlslice_0

  # Create instance: xlslice_1, and set properties
  set xlslice_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_1 ]
  set_property -dict [ list \
   CONFIG.DIN_WIDTH {4} \
 ] $xlslice_1

  # Create instance: xlslice_2, and set properties
  set xlslice_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_2 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {15} \
   CONFIG.DIN_TO {2} \
   CONFIG.DIN_WIDTH {16} \
   CONFIG.DOUT_WIDTH {14} \
 ] $xlslice_2

  # Create interface connections
  connect_bd_intf_net -intf_net SSB_M_AXIS_SSB [get_bd_intf_pins SSB/M_AXIS_SSB] [get_bd_intf_pins axis_mux_0/S_AXIS_INPUT0]
  connect_bd_intf_net -intf_net S_AXIS_AF_1 [get_bd_intf_pins S_AXIS_AF] [get_bd_intf_pins axis_demux_0/S_AXIS_DATA]
  connect_bd_intf_net -intf_net Tone_M_AXIS_X_COS_THETA_MINUS_Y_SIN_THETA [get_bd_intf_pins Tone_CW/M_AXIS_X_COS_THETA_MINUS_Y_SIN_THETA] [get_bd_intf_pins axis_mux_0/S_AXIS_INPUT1]
  connect_bd_intf_net -intf_net axis_demux_0_M_AXIS_OUTPUT0 [get_bd_intf_pins SSB/S_AXIS_AF] [get_bd_intf_pins axis_demux_0/M_AXIS_OUTPUT0]

  # Create port connections
  connect_bd_net -net ADD_SUBTRACTn_1 [get_bd_pins SSB/ADD_SUBTRACTn] [get_bd_pins Tone_CW/CW_TONEn] [get_bd_pins xlslice_1/Dout]
  connect_bd_net -net SSB_o_error [get_bd_pins o_SSBerror] [get_bd_pins SSB/o_error]
  connect_bd_net -net axis_mux_0_oS_data [get_bd_pins axis_mux_0/oS_data] [get_bd_pins xlslice_2/Din]
  connect_bd_net -net axis_mux_0_o_enabled [get_bd_pins o_tx_led] [get_bd_pins axis_mux_0/o_enabled]
  connect_bd_net -net iS_phaseDelta_af_1 [get_bd_pins iS_phaseDelta_af] [get_bd_pins SSB/iS_phaseDelta_af]
  connect_bd_net -net iS_phaseDelta_rf_1 [get_bd_pins iS_phaseDelta_rf] [get_bd_pins SSB/iS_phaseDelta_rf] [get_bd_pins Tone_CW/iS_phaseDelta]
  connect_bd_net -net i_clk_1 [get_bd_pins i_clk] [get_bd_pins SSB/i_clk] [get_bd_pins Tone_CW/i_clk] [get_bd_pins axis_demux_0/i_clk] [get_bd_pins axis_mux_0/i_clk] [get_bd_pins ptt_mux_0/i_clk]
  connect_bd_net -net i_cw_key_n_1 [get_bd_pins i_cw_key_n] [get_bd_pins Tone_CW/i_cw_key_n]
  connect_bd_net -net i_ptt_cw_n_1 [get_bd_pins i_ptt_cw_n] [get_bd_pins ptt_mux_0/i_ptt_cw_n]
  connect_bd_net -net i_ptt_n_1 [get_bd_pins i_ptt_n] [get_bd_pins ptt_mux_0/i_ptt_n]
  connect_bd_net -net i_resetn_1 [get_bd_pins i_resetn] [get_bd_pins SSB/i_resetn] [get_bd_pins Tone_CW/i_resetn] [get_bd_pins axis_demux_0/i_resetn] [get_bd_pins axis_mux_0/i_resetn]
  connect_bd_net -net mode_1 [get_bd_pins mode] [get_bd_pins ptt_mux_0/i_mode] [get_bd_pins xlslice_0/Din] [get_bd_pins xlslice_1/Din]
  connect_bd_net -net ptt_mux_0_o_ptt [get_bd_pins axis_mux_0/i_en_n] [get_bd_pins ptt_mux_0/o_ptt]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins rf_dac_mode] [get_bd_pins xlconstant_0/dout]
  connect_bd_net -net xlslice_0_Dout [get_bd_pins axis_demux_0/i_ctl] [get_bd_pins axis_mux_0/i_ctl] [get_bd_pins xlslice_0/Dout]
  connect_bd_net -net xlslice_2_Dout [get_bd_pins rf_dac_data] [get_bd_pins xlslice_2/Dout]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: Control
proc create_hier_cell_Control { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_Control() - Empty argument(s)!"}
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
  create_bd_pin -dir O LED_Blank
  create_bd_pin -dir O LED_Clock
  create_bd_pin -dir O LED_Data
  create_bd_pin -dir O LED_Latch
  create_bd_pin -dir I clk
  create_bd_pin -dir I i_dispBlank
  create_bd_pin -dir I -from 31 -to 0 i_dispFrequency
  create_bd_pin -dir I i_dispFrequencyMode
  create_bd_pin -dir O -from 39 -to 0 o_bcd
  create_bd_pin -dir I resetn

  # Create instance: Segment_Driver_0, and set properties
  set block_name Segment_Driver
  set block_cell_name Segment_Driver_0
  if { [catch {set Segment_Driver_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Segment_Driver_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: binary_to_bcd_0, and set properties
  set block_name binary_to_bcd
  set block_cell_name binary_to_bcd_0
  if { [catch {set binary_to_bcd_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $binary_to_bcd_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
    set_property -dict [ list \
   CONFIG.DECIMAL_DIGITS {10} \
   CONFIG.INPUT_WIDTH {32} \
 ] $binary_to_bcd_0

  # Create port connections
  connect_bd_net -net Segment_Driver_0_o_blank [get_bd_pins LED_Blank] [get_bd_pins Segment_Driver_0/o_blank]
  connect_bd_net -net Segment_Driver_0_o_data [get_bd_pins LED_Data] [get_bd_pins Segment_Driver_0/o_data]
  connect_bd_net -net Segment_Driver_0_o_lat [get_bd_pins LED_Latch] [get_bd_pins Segment_Driver_0/o_lat]
  connect_bd_net -net Segment_Driver_0_o_ledClk [get_bd_pins LED_Clock] [get_bd_pins Segment_Driver_0/o_ledClk]
  connect_bd_net -net binary_to_bcd_0_o_bcd [get_bd_pins o_bcd] [get_bd_pins Segment_Driver_0/i_bcdData] [get_bd_pins binary_to_bcd_0/o_bcd]
  connect_bd_net -net clk_1 [get_bd_pins clk] [get_bd_pins Segment_Driver_0/i_clk] [get_bd_pins binary_to_bcd_0/i_clk]
  connect_bd_net -net i_dispBlank_1 [get_bd_pins i_dispBlank] [get_bd_pins Segment_Driver_0/i_blank]
  connect_bd_net -net i_dispFrequencyMode_1 [get_bd_pins i_dispFrequencyMode] [get_bd_pins Segment_Driver_0/i_mode]
  connect_bd_net -net i_dispFrequency_1 [get_bd_pins i_dispFrequency] [get_bd_pins binary_to_bcd_0/i_binary]
  connect_bd_net -net resetn_1 [get_bd_pins resetn] [get_bd_pins Segment_Driver_0/i_resetn] [get_bd_pins binary_to_bcd_0/i_resetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: AF
proc create_hier_cell_AF { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_AF() - Empty argument(s)!"}
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
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 M_AXIS_LEFT_ADC

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 M_AXIS_RIGHT_ADC

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 S_AXIS_LEFT_DAC

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 S_AXIS_RIGHT_DAC

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:iic_rtl:1.0 af_iic


  # Create pins
  create_bd_pin -dir O AF_ADC_DAC_BCLK
  create_bd_pin -dir O AF_ADC_DAC_LRCLK
  create_bd_pin -dir O AF_ADC_DAC_MCLK
  create_bd_pin -dir I AF_ADC_DATA
  create_bd_pin -dir O AF_DAC_DATA
  create_bd_pin -dir O af_iic_irq
  create_bd_pin -dir I i_clk
  create_bd_pin -dir I i_resetn
  create_bd_pin -dir O o_error
  create_bd_pin -dir O -from 0 -to 0 overdrive_left
  create_bd_pin -dir O -from 0 -to 0 overdrive_right

  # Create instance: adau1361_handler_0, and set properties
  set block_name adau1361_handler
  set block_cell_name adau1361_handler_0
  if { [catch {set adau1361_handler_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $adau1361_handler_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: axi_iic_0, and set properties
  set axi_iic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_iic:2.0 axi_iic_0 ]
  set_property -dict [ list \
   CONFIG.C_SCL_INERTIAL_DELAY {30} \
   CONFIG.C_SDA_INERTIAL_DELAY {4} \
 ] $axi_iic_0

  # Create instance: axis_subset_converter_0, and set properties
  set axis_subset_converter_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_subset_converter:1.1 axis_subset_converter_0 ]
  set_property -dict [ list \
   CONFIG.M_HAS_TREADY {0} \
   CONFIG.M_TDATA_NUM_BYTES {2} \
   CONFIG.S_HAS_TREADY {0} \
   CONFIG.S_TDATA_NUM_BYTES {2} \
   CONFIG.TDATA_REMAP {tdata[15:0]} \
 ] $axis_subset_converter_0

  # Create instance: axis_subset_converter_1, and set properties
  set axis_subset_converter_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_subset_converter:1.1 axis_subset_converter_1 ]
  set_property -dict [ list \
   CONFIG.M_HAS_TREADY {0} \
   CONFIG.M_TDATA_NUM_BYTES {2} \
   CONFIG.S_HAS_TREADY {0} \
   CONFIG.S_TDATA_NUM_BYTES {2} \
   CONFIG.TDATA_REMAP {tdata[15:0]} \
 ] $axis_subset_converter_1

  # Create instance: fir_compiler_0, and set properties
  set fir_compiler_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:fir_compiler:7.2 fir_compiler_0 ]
  set_property -dict [ list \
   CONFIG.BestPrecision {true} \
   CONFIG.Clock_Frequency {80} \
   CONFIG.CoefficientVector {0.0006017081117752789,   0.00021698174443565994,   0.00020156548976001752,   0.00014513363278048318,   0.00005070559211108667,   -0.00007106179770952879,   -0.00020294484311072142,   -0.00032401594539006943,   -0.0004133589536671213,   -0.00045399678625327903,   -0.0004366354368462227,   -0.0003622340522348285,   -0.000242517995835705,   -0.00009834613008847372,   0.000043737650503994175,   0.00015637313179047422,   0.00021689341008021646,   0.00021222332797243967,   0.00014201166446065245,   0.000019357889745307187,   -0.00013110280096560948,   -0.0002776377128822356,   -0.0003876736678100843,   -0.00043459699567176475,   -0.0004036590352339894,   -0.000295744645545904,   -0.00012810486447302737,   0.00006831644601745875,   0.0002546055382030617,   0.00039160868376282354,   0.00044817789114791156,   0.0004082370098746187,   0.0002750687101153801,   0.0000717322092954802,   -0.000162661529789659,   -0.00038024479219731823,   -0.0005339602983436044,   -0.0005875380844864783,   -0.0005237705573172044,   -0.00034921375316935633,   -0.00009412872627630275,   0.0001925820538801017,   0.00045265529859966176,   0.0006302280346493054,   0.0006837222437681512,   0.0005953670819798373,   0.00037623573167553254,   0.0000654743830746401,   -0.00027644451909361915,   -0.000579327800915809,   -0.0007775187846771833,   -0.0008239434001388537,   -0.0007009752868251534,   -0.00042565495755496525,   -0.00004787580782989473,   0.00035842485418590304,   0.0007095733116967656,   0.0009292489095714983,   0.0009648978713199216,   0.0007999680445826354,   0.0004591770212609978,   0.000005359853837119094,   -0.0004718630953643613,   -0.0008736128476705366,   -0.0011120691334370342,   -0.0011294333131689363,   -0.0009114979049915206,   -0.0004927161022150633,   0.000048712213403736885,   0.0006051824283553711,   0.0010608780545121412,   0.0013156838978517946,   0.00130692517946355,   0.0010242527005374232,   0.0005142238657530738,   -0.00012684020586012536,   -0.0007707490486527846,   -0.001282842279097082,   -0.001549921952346763,   -0.001504962753878516,   -0.00114325938386286,   -0.0005262382010059911,   0.00022842935131315485,   0.0009689639206096996,   0.001539760584381881,   0.0018138145366206136,   0.0017205982854002493,   0.0012633540090470653,   0.0005216841548601011,   -0.00036176626591647614,   -0.0012084135726673163,   -0.0018395258384572288,   -0.002113607212373283,   -0.001957643922758817,   -0.0013853937552829553,   -0.0004983193364323939,   0.000531779845704317,   0.0014956238042692126,   0.002188629428337861,   0.0024539625197676227,   0.002217443961092526,   0.001506663244018722,   0.0004496430855842754,   -0.0007475811784565236,   -0.001840698823943102,   -0.0025965371498616013,   -0.002842214882814595,   -0.0025038787515871503,   -0.0016265620784683388,   -0.00037008396327911717,   0.0010193191579899057,   0.002256724085648409,   0.003076435629711162,   0.0032884403713000676,   0.002821447106343092,   0.0017428502211384533,   0.00025070736251735584,   -0.001361493974610037,   -0.0027615023622913205,   -0.003646275915375085,   -0.00380732525961702,   -0.003178371105316936,   -0.0018541560841357912,   -0.00007875269023135716,   0.0017951425080673913,   0.003381434556273129,   0.00433355052385623,   0.004422135910484142,   0.0035869695260376286,   0.0019585541052840176,   -0.00016059808200474002,   -0.0023507388387758715,   -0.004156409374887954,   -0.005179771993432773,   -0.0051667252489220215,   -0.004067083437099234,   -0.0020552000859830398,   0.0004948393982279724,   0.003076692419402504,   0.005150372804830213,   0.006253124163822241,   0.006100022657851296,   0.004652968535412203,   0.0021422556417744713,   -0.0009662873159771815,   -0.004054825599820006,   -0.0064732748989426,   -0.007672624899963379,   -0.007325182806879691,   -0.005406224003316856,   -0.0022179425206576803,   0.001652628446982068,   0.005437010821546088,   0.00833260371927803,   0.009666664311599479,   0.009044592995173076,   0.006451281868277574,   0.002281820289788967,   -0.002709422152839851,   -0.007536686685258467,   -0.011167366880504672,   -0.012730227944703307,   -0.011707429190244324,   -0.008070974489882097,   -0.0023323619891411087,   0.004511117464752529,   0.01113116112334622,   0.01610247469063117,   0.01817760594950707,   0.01655380852156582,   0.011081263268284163,   0.0023694083483853734,   -0.008236014334986407,   -0.01881086779249836,   -0.027127291673754512,   -0.03100512071230612,   -0.028684251726358734,   -0.01915553122886009,   -0.0023917850776806263,   0.020565029025579964,   0.04768206547330468,   0.07617377555958868,   0.10286773820677735,   0.12464382149279006,   0.1388790150498258,   0.14382801220807023,   0.1388790150498258,   0.12464382149279006,   0.10286773820677735,   0.07617377555958868,   0.04768206547330468,   0.020565029025579964,   -0.0023917850776806263,   -0.01915553122886009,   -0.028684251726358734,   -0.03100512071230612,   -0.027127291673754512,   -0.01881086779249836,   -0.008236014334986407,   0.0023694083483853734,   0.011081263268284163,   0.01655380852156582,   0.01817760594950707,   0.01610247469063117,   0.01113116112334622,   0.004511117464752529,   -0.0023323619891411087,   -0.008070974489882097,   -0.011707429190244324,   -0.012730227944703307,   -0.011167366880504672,   -0.007536686685258467,   -0.002709422152839851,   0.002281820289788967,   0.006451281868277574,   0.009044592995173076,   0.009666664311599479,   0.00833260371927803,   0.005437010821546088,   0.001652628446982068,   -0.0022179425206576803,   -0.005406224003316856,   -0.007325182806879691,   -0.007672624899963379,   -0.0064732748989426,   -0.004054825599820006,   -0.0009662873159771815,   0.0021422556417744713,   0.004652968535412203,   0.006100022657851296,   0.006253124163822241,   0.005150372804830213,   0.003076692419402504,   0.0004948393982279724,   -0.0020552000859830398,   -0.004067083437099234,   -0.0051667252489220215,   -0.005179771993432773,   -0.004156409374887954,   -0.0023507388387758715,   -0.00016059808200474002,   0.0019585541052840176,   0.0035869695260376286,   0.004422135910484142,   0.00433355052385623,   0.003381434556273129,   0.0017951425080673913,   -0.00007875269023135716,   -0.0018541560841357912,   -0.003178371105316936,   -0.00380732525961702,   -0.003646275915375085,   -0.0027615023622913205,   -0.001361493974610037,   0.00025070736251735584,   0.0017428502211384533,   0.002821447106343092,   0.0032884403713000676,   0.003076435629711162,   0.002256724085648409,   0.0010193191579899057,   -0.00037008396327911717,   -0.0016265620784683388,   -0.0025038787515871503,   -0.002842214882814595,   -0.0025965371498616013,   -0.001840698823943102,   -0.0007475811784565236,   0.0004496430855842754,   0.001506663244018722,   0.002217443961092526,   0.0024539625197676227,   0.002188629428337861,   0.0014956238042692126,   0.000531779845704317,   -0.0004983193364323939,   -0.0013853937552829553,   -0.001957643922758817,   -0.002113607212373283,   -0.0018395258384572288,   -0.0012084135726673163,   -0.00036176626591647614,   0.0005216841548601011,   0.0012633540090470653,   0.0017205982854002493,   0.0018138145366206136,   0.001539760584381881,   0.0009689639206096996,   0.00022842935131315485,   -0.0005262382010059911,   -0.00114325938386286,   -0.001504962753878516,   -0.001549921952346763,   -0.001282842279097082,   -0.0007707490486527846,   -0.00012684020586012536,   0.0005142238657530738,   0.0010242527005374232,   0.00130692517946355,   0.0013156838978517946,   0.0010608780545121412,   0.0006051824283553711,   0.000048712213403736885,   -0.0004927161022150633,   -0.0009114979049915206,   -0.0011294333131689363,   -0.0011120691334370342,   -0.0008736128476705366,   -0.0004718630953643613,   0.000005359853837119094,   0.0004591770212609978,   0.0007999680445826354,   0.0009648978713199216,   0.0009292489095714983,   0.0007095733116967656,   0.00035842485418590304,   -0.00004787580782989473,   -0.00042565495755496525,   -0.0007009752868251534,   -0.0008239434001388537,   -0.0007775187846771833,   -0.000579327800915809,   -0.00027644451909361915,   0.0000654743830746401,   0.00037623573167553254,   0.0005953670819798373,   0.0006837222437681512,   0.0006302280346493054,   0.00045265529859966176,   0.0001925820538801017,   -0.00009412872627630275,   -0.00034921375316935633,   -0.0005237705573172044,   -0.0005875380844864783,   -0.0005339602983436044,   -0.00038024479219731823,   -0.000162661529789659,   0.0000717322092954802,   0.0002750687101153801,   0.0004082370098746187,   0.00044817789114791156,   0.00039160868376282354,   0.0002546055382030617,   0.00006831644601745875,   -0.00012810486447302737,   -0.000295744645545904,   -0.0004036590352339894,   -0.00043459699567176475,   -0.0003876736678100843,   -0.0002776377128822356,   -0.00013110280096560948,   0.000019357889745307187,   0.00014201166446065245,   0.00021222332797243967,   0.00021689341008021646,   0.00015637313179047422,   0.000043737650503994175,   -0.00009834613008847372,   -0.000242517995835705,   -0.0003622340522348285,   -0.0004366354368462227,   -0.00045399678625327903,   -0.0004133589536671213,   -0.00032401594539006943,   -0.00020294484311072142,   -0.00007106179770952879,   0.00005070559211108667,   0.00014513363278048318,   0.00020156548976001752,   0.00021698174443565994,   0.0006017081117752789} \
   CONFIG.Coefficient_Fractional_Bits {17} \
   CONFIG.Coefficient_Sets {1} \
   CONFIG.Coefficient_Sign {Signed} \
   CONFIG.Coefficient_Structure {Inferred} \
   CONFIG.Coefficient_Width {16} \
   CONFIG.Data_Width {16} \
   CONFIG.Filter_Architecture {Systolic_Multiply_Accumulate} \
   CONFIG.Number_Paths {2} \
   CONFIG.Output_Rounding_Mode {Truncate_LSBs} \
   CONFIG.Output_Width {18} \
   CONFIG.Passband_Max {0.14} \
   CONFIG.Quantization {Quantize_Only} \
   CONFIG.Sample_Frequency {0.0390625} \
 ] $fir_compiler_0

  # Create instance: overdrive_warning_0, and set properties
  set block_name overdrive_warning
  set block_cell_name overdrive_warning_0
  if { [catch {set overdrive_warning_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $overdrive_warning_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: overdrive_warning_1, and set properties
  set block_name overdrive_warning
  set block_cell_name overdrive_warning_1
  if { [catch {set overdrive_warning_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $overdrive_warning_1 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: util_vector_logic_0, and set properties
  set util_vector_logic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_0 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {or} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_orgate.png} \
 ] $util_vector_logic_0

  # Create instance: util_vector_logic_1, and set properties
  set util_vector_logic_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_1 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {or} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_orgate.png} \
 ] $util_vector_logic_1

  # Create instance: xlconcat_0, and set properties
  set xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_0 ]

  # Create instance: xlslice_0, and set properties
  set xlslice_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_0 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {39} \
   CONFIG.DIN_TO {24} \
   CONFIG.DIN_WIDTH {48} \
   CONFIG.DOUT_WIDTH {16} \
 ] $xlslice_0

  # Create instance: xlslice_1, and set properties
  set xlslice_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_1 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {15} \
   CONFIG.DIN_TO {0} \
   CONFIG.DIN_WIDTH {48} \
   CONFIG.DOUT_WIDTH {16} \
 ] $xlslice_1

  # Create interface connections
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins S_AXI] [get_bd_intf_pins axi_iic_0/S_AXI]
  connect_bd_intf_net -intf_net Conn2 [get_bd_intf_pins af_iic] [get_bd_intf_pins axi_iic_0/IIC]
  connect_bd_intf_net -intf_net S_AXIS_LEFT_DAC_1 [get_bd_intf_pins S_AXIS_LEFT_DAC] [get_bd_intf_pins adau1361_handler_0/S_AXIS_LEFT_DAC]
  connect_bd_intf_net -intf_net S_AXIS_RIGHT_DAC_1 [get_bd_intf_pins S_AXIS_RIGHT_DAC] [get_bd_intf_pins adau1361_handler_0/S_AXIS_RIGHT_DAC]
  connect_bd_intf_net -intf_net adau1361_handler_0_M_AXIS_LEFT_ADC [get_bd_intf_pins adau1361_handler_0/M_AXIS_LEFT_ADC] [get_bd_intf_pins overdrive_warning_0/S_AXIS_DATA]
  connect_bd_intf_net -intf_net adau1361_handler_0_M_AXIS_RIGHT_ADC [get_bd_intf_pins adau1361_handler_0/M_AXIS_RIGHT_ADC] [get_bd_intf_pins overdrive_warning_1/S_AXIS_DATA]
  connect_bd_intf_net -intf_net axis_subset_converter_0_M_AXIS [get_bd_intf_pins M_AXIS_LEFT_ADC] [get_bd_intf_pins axis_subset_converter_0/M_AXIS]
  connect_bd_intf_net -intf_net axis_subset_converter_1_M_AXIS [get_bd_intf_pins M_AXIS_RIGHT_ADC] [get_bd_intf_pins axis_subset_converter_1/M_AXIS]

  # Create port connections
  connect_bd_net -net AF_ADC_DATA_1 [get_bd_pins AF_ADC_DATA] [get_bd_pins adau1361_handler_0/i_adcData]
  connect_bd_net -net adau1361_handler_0_o_af_dac_data [get_bd_pins AF_DAC_DATA] [get_bd_pins adau1361_handler_0/o_dacData]
  connect_bd_net -net adau1361_handler_0_o_bclk [get_bd_pins AF_ADC_DAC_BCLK] [get_bd_pins adau1361_handler_0/o_bclk]
  connect_bd_net -net adau1361_handler_0_o_error [get_bd_pins o_error] [get_bd_pins adau1361_handler_0/o_error]
  connect_bd_net -net adau1361_handler_0_o_lrclk [get_bd_pins AF_ADC_DAC_LRCLK] [get_bd_pins adau1361_handler_0/o_lrclk]
  connect_bd_net -net adau1361_handler_0_o_mclk [get_bd_pins AF_ADC_DAC_MCLK] [get_bd_pins adau1361_handler_0/o_mclk]
  connect_bd_net -net af_clk_1 [get_bd_pins i_clk] [get_bd_pins adau1361_handler_0/i_clk] [get_bd_pins axi_iic_0/s_axi_aclk] [get_bd_pins axis_subset_converter_0/aclk] [get_bd_pins axis_subset_converter_1/aclk] [get_bd_pins fir_compiler_0/aclk] [get_bd_pins overdrive_warning_0/i_clk] [get_bd_pins overdrive_warning_1/i_clk]
  connect_bd_net -net axi_iic_0_iic2intc_irpt [get_bd_pins af_iic_irq] [get_bd_pins axi_iic_0/iic2intc_irpt]
  connect_bd_net -net fir_compiler_0_m_axis_data_tdata [get_bd_pins fir_compiler_0/m_axis_data_tdata] [get_bd_pins xlslice_0/Din] [get_bd_pins xlslice_1/Din]
  connect_bd_net -net fir_compiler_0_m_axis_data_tvalid [get_bd_pins axis_subset_converter_0/s_axis_tvalid] [get_bd_pins axis_subset_converter_1/s_axis_tvalid] [get_bd_pins fir_compiler_0/m_axis_data_tvalid]
  connect_bd_net -net i_resetn_1 [get_bd_pins i_resetn] [get_bd_pins adau1361_handler_0/i_resetn] [get_bd_pins axi_iic_0/s_axi_aresetn] [get_bd_pins axis_subset_converter_0/aresetn] [get_bd_pins axis_subset_converter_1/aresetn] [get_bd_pins overdrive_warning_0/i_resetn] [get_bd_pins overdrive_warning_1/i_resetn]
  connect_bd_net -net overdrive_warning_0_oS_data [get_bd_pins overdrive_warning_0/oS_data] [get_bd_pins xlconcat_0/In0]
  connect_bd_net -net overdrive_warning_0_o_negativeOverload [get_bd_pins overdrive_warning_0/o_negativeOverload] [get_bd_pins util_vector_logic_0/Op2]
  connect_bd_net -net overdrive_warning_0_o_positiveOverload [get_bd_pins overdrive_warning_0/o_positiveOverload] [get_bd_pins util_vector_logic_0/Op1]
  connect_bd_net -net overdrive_warning_0_o_valid [get_bd_pins fir_compiler_0/s_axis_data_tvalid] [get_bd_pins overdrive_warning_0/o_valid]
  connect_bd_net -net overdrive_warning_1_oS_data [get_bd_pins overdrive_warning_1/oS_data] [get_bd_pins xlconcat_0/In1]
  connect_bd_net -net overdrive_warning_1_o_negativeOverload [get_bd_pins overdrive_warning_1/o_negativeOverload] [get_bd_pins util_vector_logic_1/Op2]
  connect_bd_net -net overdrive_warning_1_o_positiveOverload [get_bd_pins overdrive_warning_1/o_positiveOverload] [get_bd_pins util_vector_logic_1/Op1]
  connect_bd_net -net util_vector_logic_0_Res [get_bd_pins overdrive_left] [get_bd_pins util_vector_logic_0/Res]
  connect_bd_net -net util_vector_logic_1_Res [get_bd_pins overdrive_right] [get_bd_pins util_vector_logic_1/Res]
  connect_bd_net -net xlconcat_0_dout [get_bd_pins fir_compiler_0/s_axis_data_tdata] [get_bd_pins xlconcat_0/dout]
  connect_bd_net -net xlslice_0_Dout [get_bd_pins axis_subset_converter_1/s_axis_tdata] [get_bd_pins xlslice_0/Dout]
  connect_bd_net -net xlslice_1_Dout [get_bd_pins axis_subset_converter_0/s_axis_tdata] [get_bd_pins xlslice_1/Dout]

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
  set DDR [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddrx_rtl:1.0 DDR ]

  set FIXED_IO [ create_bd_intf_port -mode Master -vlnv xilinx.com:display_processing_system7:fixedio_rtl:1.0 FIXED_IO ]

  set af_i2c [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:iic_rtl:1.0 af_i2c ]

  set eeprom_iic [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:iic_rtl:1.0 eeprom_iic ]

  set gpio_rs485 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 gpio_rs485 ]


  # Create ports
  set LED_Display_Blank [ create_bd_port -dir O LED_Display_Blank ]
  set LED_Display_Clock [ create_bd_port -dir O LED_Display_Clock ]
  set LED_Display_Data [ create_bd_port -dir O LED_Display_Data ]
  set LED_Display_Latch [ create_bd_port -dir O LED_Display_Latch ]
  set Link_Active [ create_bd_port -dir O -from 0 -to 0 Link_Active ]
  set Link_Activity [ create_bd_port -dir O -from 0 -to 0 Link_Activity ]
  set PL_pin_K16 [ create_bd_port -dir I PL_pin_K16 ]
  set PL_pin_K19 [ create_bd_port -dir I PL_pin_K19 ]
  set PL_pin_K20 [ create_bd_port -dir O PL_pin_K20 ]
  set PL_pin_L16 [ create_bd_port -dir O PL_pin_L16 ]
  set PL_pin_M15 [ create_bd_port -dir I PL_pin_M15 ]
  set PL_pin_N15 [ create_bd_port -dir I PL_pin_N15 ]
  set PL_pin_N22 [ create_bd_port -dir O PL_pin_N22 ]
  set PL_pin_P16 [ create_bd_port -dir I PL_pin_P16 ]
  set PL_pin_P22 [ create_bd_port -dir I PL_pin_P22 ]
  set adc_clk_n [ create_bd_port -dir I -type clk -freq_hz 80000000 adc_clk_n ]
  set adc_clk_p [ create_bd_port -dir I -type clk -freq_hz 80000000 adc_clk_p ]
  set af_adc_data [ create_bd_port -dir I af_adc_data ]
  set af_bclk [ create_bd_port -dir O -type clk af_bclk ]
  set af_dac_data [ create_bd_port -dir O af_dac_data ]
  set af_lrclk [ create_bd_port -dir O -type clk af_lrclk ]
  set af_mclk [ create_bd_port -dir O -type clk af_mclk ]
  set cw_key_n [ create_bd_port -dir I cw_key_n ]
  set debug_leds [ create_bd_port -dir O -from 7 -to 0 debug_leds ]
  set i_ptt_cw_n [ create_bd_port -dir I i_ptt_cw_n ]
  set i_ptt_n [ create_bd_port -dir I i_ptt_n ]
  set oS_dacData [ create_bd_port -dir O -from 13 -to 0 oS_dacData ]
  set o_dacClk [ create_bd_port -dir O -from 0 -to 0 -type clk o_dacClk ]
  set o_dacMode [ create_bd_port -dir O -from 0 -to 0 o_dacMode ]
  set rf_adc_dither [ create_bd_port -dir O rf_adc_dither ]
  set rf_adc_random [ create_bd_port -dir O rf_adc_random ]

  # Create instance: AF
  create_hier_cell_AF [current_bd_instance .] AF

  # Create instance: Control
  create_hier_cell_Control [current_bd_instance .] Control

  # Create instance: RS485_and_Status_LEDs, and set properties
  set RS485_and_Status_LEDs [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 RS485_and_Status_LEDs ]
  set_property -dict [ list \
   CONFIG.C_ALL_OUTPUTS {0} \
   CONFIG.C_GPIO_WIDTH {6} \
   CONFIG.C_IS_DUAL {0} \
 ] $RS485_and_Status_LEDs

  # Create instance: SC0720_0, and set properties
  set SC0720_0 [ create_bd_cell -type ip -vlnv trenz.biz:user:SC0720:1.0 SC0720_0 ]

  # Create instance: SDR_Status_Registers_0, and set properties
  set SDR_Status_Registers_0 [ create_bd_cell -type ip -vlnv user.org:user:SDR_Status_Registers:0.2 SDR_Status_Registers_0 ]

  # Create instance: TX
  create_hier_cell_TX [current_bd_instance .] TX

  # Create instance: axi_iic_0, and set properties
  set axi_iic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_iic:2.0 axi_iic_0 ]

  # Create instance: processing_system7_0, and set properties
  set processing_system7_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7:5.5 processing_system7_0 ]
  set_property -dict [ list \
   CONFIG.PCW_ACT_APU_PERIPHERAL_FREQMHZ {666.666687} \
   CONFIG.PCW_ACT_CAN0_PERIPHERAL_FREQMHZ {23.8095} \
   CONFIG.PCW_ACT_CAN1_PERIPHERAL_FREQMHZ {23.8095} \
   CONFIG.PCW_ACT_CAN_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_DCI_PERIPHERAL_FREQMHZ {10.158730} \
   CONFIG.PCW_ACT_ENET0_PERIPHERAL_FREQMHZ {125.000000} \
   CONFIG.PCW_ACT_ENET1_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_FPGA0_PERIPHERAL_FREQMHZ {100.000000} \
   CONFIG.PCW_ACT_FPGA1_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_FPGA2_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_FPGA3_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_I2C_PERIPHERAL_FREQMHZ {50} \
   CONFIG.PCW_ACT_PCAP_PERIPHERAL_FREQMHZ {200.000000} \
   CONFIG.PCW_ACT_QSPI_PERIPHERAL_FREQMHZ {200.000000} \
   CONFIG.PCW_ACT_SDIO_PERIPHERAL_FREQMHZ {100.000000} \
   CONFIG.PCW_ACT_SMC_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_SPI_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_TPIU_PERIPHERAL_FREQMHZ {200.000000} \
   CONFIG.PCW_ACT_TTC0_CLK0_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ACT_TTC0_CLK1_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ACT_TTC0_CLK2_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ACT_TTC1_CLK0_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ACT_TTC1_CLK1_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ACT_TTC1_CLK2_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ACT_TTC_PERIPHERAL_FREQMHZ {50} \
   CONFIG.PCW_ACT_UART_PERIPHERAL_FREQMHZ {100.000000} \
   CONFIG.PCW_ACT_USB0_PERIPHERAL_FREQMHZ {60} \
   CONFIG.PCW_ACT_USB1_PERIPHERAL_FREQMHZ {60} \
   CONFIG.PCW_ACT_WDT_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_APU_CLK_RATIO_ENABLE {6:2:1} \
   CONFIG.PCW_APU_PERIPHERAL_FREQMHZ {666.666666} \
   CONFIG.PCW_ARMPLL_CTRL_FBDIV {40} \
   CONFIG.PCW_CAN0_BASEADDR {0xE0008000} \
   CONFIG.PCW_CAN0_GRP_CLK_ENABLE {0} \
   CONFIG.PCW_CAN0_HIGHADDR {0xE0008FFF} \
   CONFIG.PCW_CAN0_PERIPHERAL_CLKSRC {External} \
   CONFIG.PCW_CAN0_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_CAN0_PERIPHERAL_FREQMHZ {-1} \
   CONFIG.PCW_CAN1_BASEADDR {0xE0009000} \
   CONFIG.PCW_CAN1_GRP_CLK_ENABLE {0} \
   CONFIG.PCW_CAN1_HIGHADDR {0xE0009FFF} \
   CONFIG.PCW_CAN1_PERIPHERAL_CLKSRC {External} \
   CONFIG.PCW_CAN1_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_CAN1_PERIPHERAL_FREQMHZ {-1} \
   CONFIG.PCW_CAN_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_CAN_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_CAN_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_CAN_PERIPHERAL_FREQMHZ {100} \
   CONFIG.PCW_CAN_PERIPHERAL_VALID {0} \
   CONFIG.PCW_CLK0_FREQ {100000000} \
   CONFIG.PCW_CLK1_FREQ {10000000} \
   CONFIG.PCW_CLK2_FREQ {10000000} \
   CONFIG.PCW_CLK3_FREQ {10000000} \
   CONFIG.PCW_CORE0_FIQ_INTR {0} \
   CONFIG.PCW_CORE0_IRQ_INTR {0} \
   CONFIG.PCW_CORE1_FIQ_INTR {0} \
   CONFIG.PCW_CORE1_IRQ_INTR {0} \
   CONFIG.PCW_CPU_CPU_6X4X_MAX_RANGE {667} \
   CONFIG.PCW_CPU_CPU_PLL_FREQMHZ {1333.333} \
   CONFIG.PCW_CPU_PERIPHERAL_CLKSRC {ARM PLL} \
   CONFIG.PCW_CPU_PERIPHERAL_DIVISOR0 {2} \
   CONFIG.PCW_CRYSTAL_PERIPHERAL_FREQMHZ {33.333333} \
   CONFIG.PCW_DCI_PERIPHERAL_CLKSRC {DDR PLL} \
   CONFIG.PCW_DCI_PERIPHERAL_DIVISOR0 {15} \
   CONFIG.PCW_DCI_PERIPHERAL_DIVISOR1 {7} \
   CONFIG.PCW_DCI_PERIPHERAL_FREQMHZ {10.159} \
   CONFIG.PCW_DDRPLL_CTRL_FBDIV {32} \
   CONFIG.PCW_DDR_DDR_PLL_FREQMHZ {1066.667} \
   CONFIG.PCW_DDR_HPRLPR_QUEUE_PARTITION {HPR(0)/LPR(32)} \
   CONFIG.PCW_DDR_HPR_TO_CRITICAL_PRIORITY_LEVEL {15} \
   CONFIG.PCW_DDR_LPR_TO_CRITICAL_PRIORITY_LEVEL {2} \
   CONFIG.PCW_DDR_PERIPHERAL_CLKSRC {DDR PLL} \
   CONFIG.PCW_DDR_PERIPHERAL_DIVISOR0 {2} \
   CONFIG.PCW_DDR_PORT0_HPR_ENABLE {0} \
   CONFIG.PCW_DDR_PORT1_HPR_ENABLE {0} \
   CONFIG.PCW_DDR_PORT2_HPR_ENABLE {0} \
   CONFIG.PCW_DDR_PORT3_HPR_ENABLE {0} \
   CONFIG.PCW_DDR_RAM_BASEADDR {0x00100000} \
   CONFIG.PCW_DDR_RAM_HIGHADDR {0x3FFFFFFF} \
   CONFIG.PCW_DDR_WRITE_TO_CRITICAL_PRIORITY_LEVEL {2} \
   CONFIG.PCW_DM_WIDTH {4} \
   CONFIG.PCW_DQS_WIDTH {4} \
   CONFIG.PCW_DQ_WIDTH {32} \
   CONFIG.PCW_ENET0_BASEADDR {0xE000B000} \
   CONFIG.PCW_ENET0_ENET0_IO {MIO 16 .. 27} \
   CONFIG.PCW_ENET0_GRP_MDIO_ENABLE {1} \
   CONFIG.PCW_ENET0_GRP_MDIO_IO {MIO 52 .. 53} \
   CONFIG.PCW_ENET0_HIGHADDR {0xE000BFFF} \
   CONFIG.PCW_ENET0_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_ENET0_PERIPHERAL_DIVISOR0 {8} \
   CONFIG.PCW_ENET0_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_ENET0_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_ENET0_PERIPHERAL_FREQMHZ {1000 Mbps} \
   CONFIG.PCW_ENET0_RESET_ENABLE {0} \
   CONFIG.PCW_ENET1_BASEADDR {0xE000C000} \
   CONFIG.PCW_ENET1_ENET1_IO {<Select>} \
   CONFIG.PCW_ENET1_GRP_MDIO_ENABLE {0} \
   CONFIG.PCW_ENET1_HIGHADDR {0xE000CFFF} \
   CONFIG.PCW_ENET1_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_ENET1_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_ENET1_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_ENET1_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_ENET1_PERIPHERAL_FREQMHZ {1000 Mbps} \
   CONFIG.PCW_ENET1_RESET_ENABLE {0} \
   CONFIG.PCW_ENET_RESET_ENABLE {0} \
   CONFIG.PCW_ENET_RESET_POLARITY {Active Low} \
   CONFIG.PCW_EN_4K_TIMER {0} \
   CONFIG.PCW_EN_CAN0 {0} \
   CONFIG.PCW_EN_CAN1 {0} \
   CONFIG.PCW_EN_CLK0_PORT {1} \
   CONFIG.PCW_EN_CLK1_PORT {0} \
   CONFIG.PCW_EN_CLK2_PORT {0} \
   CONFIG.PCW_EN_CLK3_PORT {0} \
   CONFIG.PCW_EN_CLKTRIG0_PORT {0} \
   CONFIG.PCW_EN_CLKTRIG1_PORT {0} \
   CONFIG.PCW_EN_CLKTRIG2_PORT {0} \
   CONFIG.PCW_EN_CLKTRIG3_PORT {0} \
   CONFIG.PCW_EN_DDR {1} \
   CONFIG.PCW_EN_EMIO_CAN0 {0} \
   CONFIG.PCW_EN_EMIO_CAN1 {0} \
   CONFIG.PCW_EN_EMIO_CD_SDIO0 {0} \
   CONFIG.PCW_EN_EMIO_CD_SDIO1 {0} \
   CONFIG.PCW_EN_EMIO_ENET0 {0} \
   CONFIG.PCW_EN_EMIO_ENET1 {0} \
   CONFIG.PCW_EN_EMIO_GPIO {1} \
   CONFIG.PCW_EN_EMIO_I2C0 {0} \
   CONFIG.PCW_EN_EMIO_I2C1 {1} \
   CONFIG.PCW_EN_EMIO_MODEM_UART0 {0} \
   CONFIG.PCW_EN_EMIO_MODEM_UART1 {0} \
   CONFIG.PCW_EN_EMIO_PJTAG {0} \
   CONFIG.PCW_EN_EMIO_SDIO0 {0} \
   CONFIG.PCW_EN_EMIO_SDIO1 {0} \
   CONFIG.PCW_EN_EMIO_SPI0 {0} \
   CONFIG.PCW_EN_EMIO_SPI1 {0} \
   CONFIG.PCW_EN_EMIO_SRAM_INT {0} \
   CONFIG.PCW_EN_EMIO_TRACE {0} \
   CONFIG.PCW_EN_EMIO_TTC0 {1} \
   CONFIG.PCW_EN_EMIO_TTC1 {1} \
   CONFIG.PCW_EN_EMIO_UART0 {0} \
   CONFIG.PCW_EN_EMIO_UART1 {0} \
   CONFIG.PCW_EN_EMIO_WDT {1} \
   CONFIG.PCW_EN_EMIO_WP_SDIO0 {0} \
   CONFIG.PCW_EN_EMIO_WP_SDIO1 {0} \
   CONFIG.PCW_EN_ENET0 {1} \
   CONFIG.PCW_EN_ENET1 {0} \
   CONFIG.PCW_EN_GPIO {1} \
   CONFIG.PCW_EN_I2C0 {0} \
   CONFIG.PCW_EN_I2C1 {1} \
   CONFIG.PCW_EN_MODEM_UART0 {0} \
   CONFIG.PCW_EN_MODEM_UART1 {0} \
   CONFIG.PCW_EN_PJTAG {0} \
   CONFIG.PCW_EN_PTP_ENET0 {0} \
   CONFIG.PCW_EN_PTP_ENET1 {0} \
   CONFIG.PCW_EN_QSPI {1} \
   CONFIG.PCW_EN_RST0_PORT {1} \
   CONFIG.PCW_EN_RST1_PORT {0} \
   CONFIG.PCW_EN_RST2_PORT {0} \
   CONFIG.PCW_EN_RST3_PORT {0} \
   CONFIG.PCW_EN_SDIO0 {1} \
   CONFIG.PCW_EN_SDIO1 {0} \
   CONFIG.PCW_EN_SMC {0} \
   CONFIG.PCW_EN_SPI0 {0} \
   CONFIG.PCW_EN_SPI1 {0} \
   CONFIG.PCW_EN_TRACE {0} \
   CONFIG.PCW_EN_TTC0 {1} \
   CONFIG.PCW_EN_TTC1 {1} \
   CONFIG.PCW_EN_UART0 {1} \
   CONFIG.PCW_EN_UART1 {1} \
   CONFIG.PCW_EN_USB0 {1} \
   CONFIG.PCW_EN_USB1 {0} \
   CONFIG.PCW_EN_WDT {1} \
   CONFIG.PCW_FCLK0_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_FCLK0_PERIPHERAL_DIVISOR0 {5} \
   CONFIG.PCW_FCLK0_PERIPHERAL_DIVISOR1 {2} \
   CONFIG.PCW_FCLK1_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_FCLK1_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_FCLK1_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_FCLK2_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_FCLK2_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_FCLK2_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_FCLK3_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_FCLK3_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_FCLK3_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_FCLK_CLK0_BUF {TRUE} \
   CONFIG.PCW_FCLK_CLK1_BUF {FALSE} \
   CONFIG.PCW_FCLK_CLK2_BUF {FALSE} \
   CONFIG.PCW_FCLK_CLK3_BUF {FALSE} \
   CONFIG.PCW_FPGA0_PERIPHERAL_FREQMHZ {100} \
   CONFIG.PCW_FPGA1_PERIPHERAL_FREQMHZ {100} \
   CONFIG.PCW_FPGA2_PERIPHERAL_FREQMHZ {50} \
   CONFIG.PCW_FPGA3_PERIPHERAL_FREQMHZ {50} \
   CONFIG.PCW_FPGA_FCLK0_ENABLE {1} \
   CONFIG.PCW_FPGA_FCLK1_ENABLE {0} \
   CONFIG.PCW_FPGA_FCLK2_ENABLE {0} \
   CONFIG.PCW_FPGA_FCLK3_ENABLE {0} \
   CONFIG.PCW_GP0_EN_MODIFIABLE_TXN {1} \
   CONFIG.PCW_GP0_NUM_READ_THREADS {4} \
   CONFIG.PCW_GP0_NUM_WRITE_THREADS {4} \
   CONFIG.PCW_GP1_EN_MODIFIABLE_TXN {1} \
   CONFIG.PCW_GP1_NUM_READ_THREADS {4} \
   CONFIG.PCW_GP1_NUM_WRITE_THREADS {4} \
   CONFIG.PCW_GPIO_BASEADDR {0xE000A000} \
   CONFIG.PCW_GPIO_EMIO_GPIO_ENABLE {1} \
   CONFIG.PCW_GPIO_EMIO_GPIO_IO {64} \
   CONFIG.PCW_GPIO_EMIO_GPIO_WIDTH {64} \
   CONFIG.PCW_GPIO_HIGHADDR {0xE000AFFF} \
   CONFIG.PCW_GPIO_MIO_GPIO_ENABLE {1} \
   CONFIG.PCW_GPIO_MIO_GPIO_IO {MIO} \
   CONFIG.PCW_GPIO_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_I2C0_BASEADDR {0xE0004000} \
   CONFIG.PCW_I2C0_GRP_INT_ENABLE {0} \
   CONFIG.PCW_I2C0_HIGHADDR {0xE0004FFF} \
   CONFIG.PCW_I2C0_I2C0_IO {<Select>} \
   CONFIG.PCW_I2C0_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_I2C0_RESET_ENABLE {0} \
   CONFIG.PCW_I2C1_BASEADDR {0xE0005000} \
   CONFIG.PCW_I2C1_GRP_INT_ENABLE {1} \
   CONFIG.PCW_I2C1_GRP_INT_IO {EMIO} \
   CONFIG.PCW_I2C1_HIGHADDR {0xE0005FFF} \
   CONFIG.PCW_I2C1_I2C1_IO {EMIO} \
   CONFIG.PCW_I2C1_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_I2C1_RESET_ENABLE {0} \
   CONFIG.PCW_I2C_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_I2C_RESET_ENABLE {0} \
   CONFIG.PCW_I2C_RESET_POLARITY {Active Low} \
   CONFIG.PCW_IMPORT_BOARD_PRESET {None} \
   CONFIG.PCW_INCLUDE_ACP_TRANS_CHECK {0} \
   CONFIG.PCW_INCLUDE_TRACE_BUFFER {0} \
   CONFIG.PCW_IOPLL_CTRL_FBDIV {30} \
   CONFIG.PCW_IO_IO_PLL_FREQMHZ {1000.000} \
   CONFIG.PCW_IRQ_F2P_INTR {1} \
   CONFIG.PCW_IRQ_F2P_MODE {DIRECT} \
   CONFIG.PCW_MIO_0_DIRECTION {inout} \
   CONFIG.PCW_MIO_0_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_0_PULLUP {enabled} \
   CONFIG.PCW_MIO_0_SLEW {slow} \
   CONFIG.PCW_MIO_10_DIRECTION {inout} \
   CONFIG.PCW_MIO_10_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_10_PULLUP {enabled} \
   CONFIG.PCW_MIO_10_SLEW {slow} \
   CONFIG.PCW_MIO_11_DIRECTION {inout} \
   CONFIG.PCW_MIO_11_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_11_PULLUP {enabled} \
   CONFIG.PCW_MIO_11_SLEW {slow} \
   CONFIG.PCW_MIO_12_DIRECTION {out} \
   CONFIG.PCW_MIO_12_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_12_PULLUP {enabled} \
   CONFIG.PCW_MIO_12_SLEW {slow} \
   CONFIG.PCW_MIO_13_DIRECTION {in} \
   CONFIG.PCW_MIO_13_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_13_PULLUP {enabled} \
   CONFIG.PCW_MIO_13_SLEW {slow} \
   CONFIG.PCW_MIO_14_DIRECTION {in} \
   CONFIG.PCW_MIO_14_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_14_PULLUP {enabled} \
   CONFIG.PCW_MIO_14_SLEW {slow} \
   CONFIG.PCW_MIO_15_DIRECTION {out} \
   CONFIG.PCW_MIO_15_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_15_PULLUP {enabled} \
   CONFIG.PCW_MIO_15_SLEW {slow} \
   CONFIG.PCW_MIO_16_DIRECTION {out} \
   CONFIG.PCW_MIO_16_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_16_PULLUP {enabled} \
   CONFIG.PCW_MIO_16_SLEW {slow} \
   CONFIG.PCW_MIO_17_DIRECTION {out} \
   CONFIG.PCW_MIO_17_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_17_PULLUP {enabled} \
   CONFIG.PCW_MIO_17_SLEW {slow} \
   CONFIG.PCW_MIO_18_DIRECTION {out} \
   CONFIG.PCW_MIO_18_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_18_PULLUP {enabled} \
   CONFIG.PCW_MIO_18_SLEW {slow} \
   CONFIG.PCW_MIO_19_DIRECTION {out} \
   CONFIG.PCW_MIO_19_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_19_PULLUP {enabled} \
   CONFIG.PCW_MIO_19_SLEW {slow} \
   CONFIG.PCW_MIO_1_DIRECTION {out} \
   CONFIG.PCW_MIO_1_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_1_PULLUP {enabled} \
   CONFIG.PCW_MIO_1_SLEW {slow} \
   CONFIG.PCW_MIO_20_DIRECTION {out} \
   CONFIG.PCW_MIO_20_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_20_PULLUP {enabled} \
   CONFIG.PCW_MIO_20_SLEW {slow} \
   CONFIG.PCW_MIO_21_DIRECTION {out} \
   CONFIG.PCW_MIO_21_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_21_PULLUP {enabled} \
   CONFIG.PCW_MIO_21_SLEW {slow} \
   CONFIG.PCW_MIO_22_DIRECTION {in} \
   CONFIG.PCW_MIO_22_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_22_PULLUP {enabled} \
   CONFIG.PCW_MIO_22_SLEW {slow} \
   CONFIG.PCW_MIO_23_DIRECTION {in} \
   CONFIG.PCW_MIO_23_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_23_PULLUP {enabled} \
   CONFIG.PCW_MIO_23_SLEW {slow} \
   CONFIG.PCW_MIO_24_DIRECTION {in} \
   CONFIG.PCW_MIO_24_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_24_PULLUP {enabled} \
   CONFIG.PCW_MIO_24_SLEW {slow} \
   CONFIG.PCW_MIO_25_DIRECTION {in} \
   CONFIG.PCW_MIO_25_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_25_PULLUP {enabled} \
   CONFIG.PCW_MIO_25_SLEW {slow} \
   CONFIG.PCW_MIO_26_DIRECTION {in} \
   CONFIG.PCW_MIO_26_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_26_PULLUP {enabled} \
   CONFIG.PCW_MIO_26_SLEW {slow} \
   CONFIG.PCW_MIO_27_DIRECTION {in} \
   CONFIG.PCW_MIO_27_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_27_PULLUP {enabled} \
   CONFIG.PCW_MIO_27_SLEW {slow} \
   CONFIG.PCW_MIO_28_DIRECTION {inout} \
   CONFIG.PCW_MIO_28_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_28_PULLUP {enabled} \
   CONFIG.PCW_MIO_28_SLEW {slow} \
   CONFIG.PCW_MIO_29_DIRECTION {in} \
   CONFIG.PCW_MIO_29_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_29_PULLUP {enabled} \
   CONFIG.PCW_MIO_29_SLEW {slow} \
   CONFIG.PCW_MIO_2_DIRECTION {inout} \
   CONFIG.PCW_MIO_2_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_2_PULLUP {disabled} \
   CONFIG.PCW_MIO_2_SLEW {slow} \
   CONFIG.PCW_MIO_30_DIRECTION {out} \
   CONFIG.PCW_MIO_30_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_30_PULLUP {enabled} \
   CONFIG.PCW_MIO_30_SLEW {slow} \
   CONFIG.PCW_MIO_31_DIRECTION {in} \
   CONFIG.PCW_MIO_31_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_31_PULLUP {enabled} \
   CONFIG.PCW_MIO_31_SLEW {slow} \
   CONFIG.PCW_MIO_32_DIRECTION {inout} \
   CONFIG.PCW_MIO_32_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_32_PULLUP {enabled} \
   CONFIG.PCW_MIO_32_SLEW {slow} \
   CONFIG.PCW_MIO_33_DIRECTION {inout} \
   CONFIG.PCW_MIO_33_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_33_PULLUP {enabled} \
   CONFIG.PCW_MIO_33_SLEW {slow} \
   CONFIG.PCW_MIO_34_DIRECTION {inout} \
   CONFIG.PCW_MIO_34_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_34_PULLUP {enabled} \
   CONFIG.PCW_MIO_34_SLEW {slow} \
   CONFIG.PCW_MIO_35_DIRECTION {inout} \
   CONFIG.PCW_MIO_35_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_35_PULLUP {enabled} \
   CONFIG.PCW_MIO_35_SLEW {slow} \
   CONFIG.PCW_MIO_36_DIRECTION {in} \
   CONFIG.PCW_MIO_36_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_36_PULLUP {enabled} \
   CONFIG.PCW_MIO_36_SLEW {slow} \
   CONFIG.PCW_MIO_37_DIRECTION {inout} \
   CONFIG.PCW_MIO_37_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_37_PULLUP {enabled} \
   CONFIG.PCW_MIO_37_SLEW {slow} \
   CONFIG.PCW_MIO_38_DIRECTION {inout} \
   CONFIG.PCW_MIO_38_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_38_PULLUP {enabled} \
   CONFIG.PCW_MIO_38_SLEW {slow} \
   CONFIG.PCW_MIO_39_DIRECTION {inout} \
   CONFIG.PCW_MIO_39_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_39_PULLUP {enabled} \
   CONFIG.PCW_MIO_39_SLEW {slow} \
   CONFIG.PCW_MIO_3_DIRECTION {inout} \
   CONFIG.PCW_MIO_3_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_3_PULLUP {disabled} \
   CONFIG.PCW_MIO_3_SLEW {slow} \
   CONFIG.PCW_MIO_40_DIRECTION {inout} \
   CONFIG.PCW_MIO_40_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_40_PULLUP {disabled} \
   CONFIG.PCW_MIO_40_SLEW {slow} \
   CONFIG.PCW_MIO_41_DIRECTION {inout} \
   CONFIG.PCW_MIO_41_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_41_PULLUP {disabled} \
   CONFIG.PCW_MIO_41_SLEW {slow} \
   CONFIG.PCW_MIO_42_DIRECTION {inout} \
   CONFIG.PCW_MIO_42_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_42_PULLUP {disabled} \
   CONFIG.PCW_MIO_42_SLEW {slow} \
   CONFIG.PCW_MIO_43_DIRECTION {inout} \
   CONFIG.PCW_MIO_43_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_43_PULLUP {disabled} \
   CONFIG.PCW_MIO_43_SLEW {slow} \
   CONFIG.PCW_MIO_44_DIRECTION {inout} \
   CONFIG.PCW_MIO_44_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_44_PULLUP {disabled} \
   CONFIG.PCW_MIO_44_SLEW {slow} \
   CONFIG.PCW_MIO_45_DIRECTION {inout} \
   CONFIG.PCW_MIO_45_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_45_PULLUP {disabled} \
   CONFIG.PCW_MIO_45_SLEW {slow} \
   CONFIG.PCW_MIO_46_DIRECTION {inout} \
   CONFIG.PCW_MIO_46_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_46_PULLUP {enabled} \
   CONFIG.PCW_MIO_46_SLEW {slow} \
   CONFIG.PCW_MIO_47_DIRECTION {inout} \
   CONFIG.PCW_MIO_47_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_47_PULLUP {enabled} \
   CONFIG.PCW_MIO_47_SLEW {slow} \
   CONFIG.PCW_MIO_48_DIRECTION {inout} \
   CONFIG.PCW_MIO_48_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_48_PULLUP {enabled} \
   CONFIG.PCW_MIO_48_SLEW {slow} \
   CONFIG.PCW_MIO_49_DIRECTION {inout} \
   CONFIG.PCW_MIO_49_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_49_PULLUP {enabled} \
   CONFIG.PCW_MIO_49_SLEW {slow} \
   CONFIG.PCW_MIO_4_DIRECTION {inout} \
   CONFIG.PCW_MIO_4_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_4_PULLUP {disabled} \
   CONFIG.PCW_MIO_4_SLEW {slow} \
   CONFIG.PCW_MIO_50_DIRECTION {inout} \
   CONFIG.PCW_MIO_50_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_50_PULLUP {enabled} \
   CONFIG.PCW_MIO_50_SLEW {slow} \
   CONFIG.PCW_MIO_51_DIRECTION {inout} \
   CONFIG.PCW_MIO_51_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_51_PULLUP {enabled} \
   CONFIG.PCW_MIO_51_SLEW {slow} \
   CONFIG.PCW_MIO_52_DIRECTION {out} \
   CONFIG.PCW_MIO_52_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_52_PULLUP {enabled} \
   CONFIG.PCW_MIO_52_SLEW {slow} \
   CONFIG.PCW_MIO_53_DIRECTION {inout} \
   CONFIG.PCW_MIO_53_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_53_PULLUP {enabled} \
   CONFIG.PCW_MIO_53_SLEW {slow} \
   CONFIG.PCW_MIO_5_DIRECTION {inout} \
   CONFIG.PCW_MIO_5_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_5_PULLUP {disabled} \
   CONFIG.PCW_MIO_5_SLEW {slow} \
   CONFIG.PCW_MIO_6_DIRECTION {out} \
   CONFIG.PCW_MIO_6_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_6_PULLUP {disabled} \
   CONFIG.PCW_MIO_6_SLEW {slow} \
   CONFIG.PCW_MIO_7_DIRECTION {out} \
   CONFIG.PCW_MIO_7_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_7_PULLUP {disabled} \
   CONFIG.PCW_MIO_7_SLEW {slow} \
   CONFIG.PCW_MIO_8_DIRECTION {out} \
   CONFIG.PCW_MIO_8_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_8_PULLUP {disabled} \
   CONFIG.PCW_MIO_8_SLEW {slow} \
   CONFIG.PCW_MIO_9_DIRECTION {inout} \
   CONFIG.PCW_MIO_9_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_9_PULLUP {enabled} \
   CONFIG.PCW_MIO_9_SLEW {slow} \
   CONFIG.PCW_MIO_PRIMITIVE {54} \
   CONFIG.PCW_MIO_TREE_PERIPHERALS {GPIO#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#GPIO#Quad SPI Flash#GPIO#GPIO#GPIO#UART 1#UART 1#UART 0#UART 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#SD 0#SD 0#SD 0#SD 0#SD 0#SD 0#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#Enet 0#Enet 0} \
   CONFIG.PCW_MIO_TREE_SIGNALS {gpio[0]#qspi0_ss_b#qspi0_io[0]#qspi0_io[1]#qspi0_io[2]#qspi0_io[3]/HOLD_B#qspi0_sclk#gpio[7]#qspi_fbclk#gpio[9]#gpio[10]#gpio[11]#tx#rx#rx#tx#tx_clk#txd[0]#txd[1]#txd[2]#txd[3]#tx_ctl#rx_clk#rxd[0]#rxd[1]#rxd[2]#rxd[3]#rx_ctl#data[4]#dir#stp#nxt#data[0]#data[1]#data[2]#data[3]#clk#data[5]#data[6]#data[7]#clk#cmd#data[0]#data[1]#data[2]#data[3]#gpio[46]#gpio[47]#gpio[48]#gpio[49]#gpio[50]#gpio[51]#mdc#mdio} \
   CONFIG.PCW_M_AXI_GP0_ENABLE_STATIC_REMAP {0} \
   CONFIG.PCW_M_AXI_GP0_ID_WIDTH {12} \
   CONFIG.PCW_M_AXI_GP0_SUPPORT_NARROW_BURST {0} \
   CONFIG.PCW_M_AXI_GP0_THREAD_ID_WIDTH {12} \
   CONFIG.PCW_M_AXI_GP1_ENABLE_STATIC_REMAP {0} \
   CONFIG.PCW_M_AXI_GP1_ID_WIDTH {12} \
   CONFIG.PCW_M_AXI_GP1_SUPPORT_NARROW_BURST {0} \
   CONFIG.PCW_M_AXI_GP1_THREAD_ID_WIDTH {12} \
   CONFIG.PCW_NAND_CYCLES_T_AR {1} \
   CONFIG.PCW_NAND_CYCLES_T_CLR {1} \
   CONFIG.PCW_NAND_CYCLES_T_RC {11} \
   CONFIG.PCW_NAND_CYCLES_T_REA {1} \
   CONFIG.PCW_NAND_CYCLES_T_RR {1} \
   CONFIG.PCW_NAND_CYCLES_T_WC {11} \
   CONFIG.PCW_NAND_CYCLES_T_WP {1} \
   CONFIG.PCW_NAND_GRP_D8_ENABLE {0} \
   CONFIG.PCW_NAND_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_NOR_CS0_T_CEOE {1} \
   CONFIG.PCW_NOR_CS0_T_PC {1} \
   CONFIG.PCW_NOR_CS0_T_RC {11} \
   CONFIG.PCW_NOR_CS0_T_TR {1} \
   CONFIG.PCW_NOR_CS0_T_WC {11} \
   CONFIG.PCW_NOR_CS0_T_WP {1} \
   CONFIG.PCW_NOR_CS0_WE_TIME {0} \
   CONFIG.PCW_NOR_CS1_T_CEOE {1} \
   CONFIG.PCW_NOR_CS1_T_PC {1} \
   CONFIG.PCW_NOR_CS1_T_RC {11} \
   CONFIG.PCW_NOR_CS1_T_TR {1} \
   CONFIG.PCW_NOR_CS1_T_WC {11} \
   CONFIG.PCW_NOR_CS1_T_WP {1} \
   CONFIG.PCW_NOR_CS1_WE_TIME {0} \
   CONFIG.PCW_NOR_GRP_A25_ENABLE {0} \
   CONFIG.PCW_NOR_GRP_CS0_ENABLE {0} \
   CONFIG.PCW_NOR_GRP_CS1_ENABLE {0} \
   CONFIG.PCW_NOR_GRP_SRAM_CS0_ENABLE {0} \
   CONFIG.PCW_NOR_GRP_SRAM_CS1_ENABLE {0} \
   CONFIG.PCW_NOR_GRP_SRAM_INT_ENABLE {0} \
   CONFIG.PCW_NOR_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_NOR_SRAM_CS0_T_CEOE {1} \
   CONFIG.PCW_NOR_SRAM_CS0_T_PC {1} \
   CONFIG.PCW_NOR_SRAM_CS0_T_RC {11} \
   CONFIG.PCW_NOR_SRAM_CS0_T_TR {1} \
   CONFIG.PCW_NOR_SRAM_CS0_T_WC {11} \
   CONFIG.PCW_NOR_SRAM_CS0_T_WP {1} \
   CONFIG.PCW_NOR_SRAM_CS0_WE_TIME {0} \
   CONFIG.PCW_NOR_SRAM_CS1_T_CEOE {1} \
   CONFIG.PCW_NOR_SRAM_CS1_T_PC {1} \
   CONFIG.PCW_NOR_SRAM_CS1_T_RC {11} \
   CONFIG.PCW_NOR_SRAM_CS1_T_TR {1} \
   CONFIG.PCW_NOR_SRAM_CS1_T_WC {11} \
   CONFIG.PCW_NOR_SRAM_CS1_T_WP {1} \
   CONFIG.PCW_NOR_SRAM_CS1_WE_TIME {0} \
   CONFIG.PCW_OVERRIDE_BASIC_CLOCK {0} \
   CONFIG.PCW_P2F_CAN0_INTR {0} \
   CONFIG.PCW_P2F_CAN1_INTR {0} \
   CONFIG.PCW_P2F_CTI_INTR {0} \
   CONFIG.PCW_P2F_DMAC0_INTR {0} \
   CONFIG.PCW_P2F_DMAC1_INTR {0} \
   CONFIG.PCW_P2F_DMAC2_INTR {0} \
   CONFIG.PCW_P2F_DMAC3_INTR {0} \
   CONFIG.PCW_P2F_DMAC4_INTR {0} \
   CONFIG.PCW_P2F_DMAC5_INTR {0} \
   CONFIG.PCW_P2F_DMAC6_INTR {0} \
   CONFIG.PCW_P2F_DMAC7_INTR {0} \
   CONFIG.PCW_P2F_DMAC_ABORT_INTR {0} \
   CONFIG.PCW_P2F_ENET0_INTR {0} \
   CONFIG.PCW_P2F_ENET1_INTR {0} \
   CONFIG.PCW_P2F_GPIO_INTR {0} \
   CONFIG.PCW_P2F_I2C0_INTR {0} \
   CONFIG.PCW_P2F_I2C1_INTR {0} \
   CONFIG.PCW_P2F_QSPI_INTR {0} \
   CONFIG.PCW_P2F_SDIO0_INTR {0} \
   CONFIG.PCW_P2F_SDIO1_INTR {0} \
   CONFIG.PCW_P2F_SMC_INTR {0} \
   CONFIG.PCW_P2F_SPI0_INTR {0} \
   CONFIG.PCW_P2F_SPI1_INTR {0} \
   CONFIG.PCW_P2F_UART0_INTR {0} \
   CONFIG.PCW_P2F_UART1_INTR {0} \
   CONFIG.PCW_P2F_USB0_INTR {0} \
   CONFIG.PCW_P2F_USB1_INTR {0} \
   CONFIG.PCW_PACKAGE_DDR_BOARD_DELAY0 {0.063} \
   CONFIG.PCW_PACKAGE_DDR_BOARD_DELAY1 {0.062} \
   CONFIG.PCW_PACKAGE_DDR_BOARD_DELAY2 {0.065} \
   CONFIG.PCW_PACKAGE_DDR_BOARD_DELAY3 {0.083} \
   CONFIG.PCW_PACKAGE_DDR_DQS_TO_CLK_DELAY_0 {-0.007} \
   CONFIG.PCW_PACKAGE_DDR_DQS_TO_CLK_DELAY_1 {-0.010} \
   CONFIG.PCW_PACKAGE_DDR_DQS_TO_CLK_DELAY_2 {-0.006} \
   CONFIG.PCW_PACKAGE_DDR_DQS_TO_CLK_DELAY_3 {-0.048} \
   CONFIG.PCW_PACKAGE_NAME {clg484} \
   CONFIG.PCW_PCAP_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_PCAP_PERIPHERAL_DIVISOR0 {5} \
   CONFIG.PCW_PCAP_PERIPHERAL_FREQMHZ {200} \
   CONFIG.PCW_PERIPHERAL_BOARD_PRESET {part0} \
   CONFIG.PCW_PJTAG_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_PLL_BYPASSMODE_ENABLE {0} \
   CONFIG.PCW_PRESET_BANK0_VOLTAGE {LVCMOS 3.3V} \
   CONFIG.PCW_PRESET_BANK1_VOLTAGE {LVCMOS 1.8V} \
   CONFIG.PCW_PS7_SI_REV {PRODUCTION} \
   CONFIG.PCW_QSPI_GRP_FBCLK_ENABLE {1} \
   CONFIG.PCW_QSPI_GRP_FBCLK_IO {MIO 8} \
   CONFIG.PCW_QSPI_GRP_IO1_ENABLE {0} \
   CONFIG.PCW_QSPI_GRP_SINGLE_SS_ENABLE {1} \
   CONFIG.PCW_QSPI_GRP_SINGLE_SS_IO {MIO 1 .. 6} \
   CONFIG.PCW_QSPI_GRP_SS1_ENABLE {0} \
   CONFIG.PCW_QSPI_INTERNAL_HIGHADDRESS {0xFCFFFFFF} \
   CONFIG.PCW_QSPI_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_QSPI_PERIPHERAL_DIVISOR0 {5} \
   CONFIG.PCW_QSPI_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_QSPI_PERIPHERAL_FREQMHZ {200} \
   CONFIG.PCW_QSPI_QSPI_IO {MIO 1 .. 6} \
   CONFIG.PCW_SD0_GRP_CD_ENABLE {0} \
   CONFIG.PCW_SD0_GRP_POW_ENABLE {0} \
   CONFIG.PCW_SD0_GRP_WP_ENABLE {0} \
   CONFIG.PCW_SD0_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_SD0_SD0_IO {MIO 40 .. 45} \
   CONFIG.PCW_SD1_GRP_CD_ENABLE {0} \
   CONFIG.PCW_SD1_GRP_POW_ENABLE {0} \
   CONFIG.PCW_SD1_GRP_WP_ENABLE {0} \
   CONFIG.PCW_SD1_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_SD1_SD1_IO {<Select>} \
   CONFIG.PCW_SDIO0_BASEADDR {0xE0100000} \
   CONFIG.PCW_SDIO0_HIGHADDR {0xE0100FFF} \
   CONFIG.PCW_SDIO1_BASEADDR {0xE0101000} \
   CONFIG.PCW_SDIO1_HIGHADDR {0xE0101FFF} \
   CONFIG.PCW_SDIO_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_SDIO_PERIPHERAL_DIVISOR0 {10} \
   CONFIG.PCW_SDIO_PERIPHERAL_FREQMHZ {100} \
   CONFIG.PCW_SDIO_PERIPHERAL_VALID {1} \
   CONFIG.PCW_SINGLE_QSPI_DATA_MODE {x4} \
   CONFIG.PCW_SMC_CYCLE_T0 {NA} \
   CONFIG.PCW_SMC_CYCLE_T1 {NA} \
   CONFIG.PCW_SMC_CYCLE_T2 {NA} \
   CONFIG.PCW_SMC_CYCLE_T3 {NA} \
   CONFIG.PCW_SMC_CYCLE_T4 {NA} \
   CONFIG.PCW_SMC_CYCLE_T5 {NA} \
   CONFIG.PCW_SMC_CYCLE_T6 {NA} \
   CONFIG.PCW_SMC_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_SMC_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_SMC_PERIPHERAL_FREQMHZ {100} \
   CONFIG.PCW_SMC_PERIPHERAL_VALID {0} \
   CONFIG.PCW_SPI0_BASEADDR {0xE0006000} \
   CONFIG.PCW_SPI0_GRP_SS0_ENABLE {0} \
   CONFIG.PCW_SPI0_GRP_SS1_ENABLE {0} \
   CONFIG.PCW_SPI0_GRP_SS2_ENABLE {0} \
   CONFIG.PCW_SPI0_HIGHADDR {0xE0006FFF} \
   CONFIG.PCW_SPI0_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_SPI1_BASEADDR {0xE0007000} \
   CONFIG.PCW_SPI1_GRP_SS0_ENABLE {0} \
   CONFIG.PCW_SPI1_GRP_SS1_ENABLE {0} \
   CONFIG.PCW_SPI1_GRP_SS2_ENABLE {0} \
   CONFIG.PCW_SPI1_HIGHADDR {0xE0007FFF} \
   CONFIG.PCW_SPI1_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_SPI_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_SPI_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_SPI_PERIPHERAL_FREQMHZ {166.666666} \
   CONFIG.PCW_SPI_PERIPHERAL_VALID {0} \
   CONFIG.PCW_S_AXI_ACP_ARUSER_VAL {31} \
   CONFIG.PCW_S_AXI_ACP_AWUSER_VAL {31} \
   CONFIG.PCW_S_AXI_ACP_ID_WIDTH {3} \
   CONFIG.PCW_S_AXI_GP0_ID_WIDTH {6} \
   CONFIG.PCW_S_AXI_GP1_ID_WIDTH {6} \
   CONFIG.PCW_S_AXI_HP0_DATA_WIDTH {64} \
   CONFIG.PCW_S_AXI_HP0_ID_WIDTH {6} \
   CONFIG.PCW_S_AXI_HP1_DATA_WIDTH {64} \
   CONFIG.PCW_S_AXI_HP1_ID_WIDTH {6} \
   CONFIG.PCW_S_AXI_HP2_DATA_WIDTH {64} \
   CONFIG.PCW_S_AXI_HP2_ID_WIDTH {6} \
   CONFIG.PCW_S_AXI_HP3_DATA_WIDTH {64} \
   CONFIG.PCW_S_AXI_HP3_ID_WIDTH {6} \
   CONFIG.PCW_TPIU_PERIPHERAL_CLKSRC {External} \
   CONFIG.PCW_TPIU_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_TPIU_PERIPHERAL_FREQMHZ {200} \
   CONFIG.PCW_TRACE_BUFFER_CLOCK_DELAY {12} \
   CONFIG.PCW_TRACE_BUFFER_FIFO_SIZE {128} \
   CONFIG.PCW_TRACE_GRP_16BIT_ENABLE {0} \
   CONFIG.PCW_TRACE_GRP_2BIT_ENABLE {0} \
   CONFIG.PCW_TRACE_GRP_32BIT_ENABLE {0} \
   CONFIG.PCW_TRACE_GRP_4BIT_ENABLE {0} \
   CONFIG.PCW_TRACE_GRP_8BIT_ENABLE {0} \
   CONFIG.PCW_TRACE_INTERNAL_WIDTH {2} \
   CONFIG.PCW_TRACE_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_TRACE_PIPELINE_WIDTH {8} \
   CONFIG.PCW_TTC0_BASEADDR {0xE0104000} \
   CONFIG.PCW_TTC0_CLK0_PERIPHERAL_CLKSRC {CPU_1X} \
   CONFIG.PCW_TTC0_CLK0_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_TTC0_CLK0_PERIPHERAL_FREQMHZ {133.333333} \
   CONFIG.PCW_TTC0_CLK1_PERIPHERAL_CLKSRC {CPU_1X} \
   CONFIG.PCW_TTC0_CLK1_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_TTC0_CLK1_PERIPHERAL_FREQMHZ {133.333333} \
   CONFIG.PCW_TTC0_CLK2_PERIPHERAL_CLKSRC {CPU_1X} \
   CONFIG.PCW_TTC0_CLK2_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_TTC0_CLK2_PERIPHERAL_FREQMHZ {133.333333} \
   CONFIG.PCW_TTC0_HIGHADDR {0xE0104fff} \
   CONFIG.PCW_TTC0_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_TTC0_TTC0_IO {EMIO} \
   CONFIG.PCW_TTC1_BASEADDR {0xE0105000} \
   CONFIG.PCW_TTC1_CLK0_PERIPHERAL_CLKSRC {CPU_1X} \
   CONFIG.PCW_TTC1_CLK0_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_TTC1_CLK0_PERIPHERAL_FREQMHZ {133.333333} \
   CONFIG.PCW_TTC1_CLK1_PERIPHERAL_CLKSRC {CPU_1X} \
   CONFIG.PCW_TTC1_CLK1_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_TTC1_CLK1_PERIPHERAL_FREQMHZ {133.333333} \
   CONFIG.PCW_TTC1_CLK2_PERIPHERAL_CLKSRC {CPU_1X} \
   CONFIG.PCW_TTC1_CLK2_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_TTC1_CLK2_PERIPHERAL_FREQMHZ {133.333333} \
   CONFIG.PCW_TTC1_HIGHADDR {0xE0105fff} \
   CONFIG.PCW_TTC1_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_TTC1_TTC1_IO {EMIO} \
   CONFIG.PCW_TTC_PERIPHERAL_FREQMHZ {50} \
   CONFIG.PCW_UART0_BASEADDR {0xE0000000} \
   CONFIG.PCW_UART0_BAUD_RATE {115200} \
   CONFIG.PCW_UART0_GRP_FULL_ENABLE {0} \
   CONFIG.PCW_UART0_HIGHADDR {0xE0000FFF} \
   CONFIG.PCW_UART0_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_UART0_UART0_IO {MIO 14 .. 15} \
   CONFIG.PCW_UART1_BASEADDR {0xE0001000} \
   CONFIG.PCW_UART1_BAUD_RATE {115200} \
   CONFIG.PCW_UART1_GRP_FULL_ENABLE {0} \
   CONFIG.PCW_UART1_HIGHADDR {0xE0001FFF} \
   CONFIG.PCW_UART1_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_UART1_UART1_IO {MIO 12 .. 13} \
   CONFIG.PCW_UART_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_UART_PERIPHERAL_DIVISOR0 {10} \
   CONFIG.PCW_UART_PERIPHERAL_FREQMHZ {100} \
   CONFIG.PCW_UART_PERIPHERAL_VALID {1} \
   CONFIG.PCW_UIPARAM_ACT_DDR_FREQ_MHZ {533.333374} \
   CONFIG.PCW_UIPARAM_DDR_ADV_ENABLE {0} \
   CONFIG.PCW_UIPARAM_DDR_AL {0} \
   CONFIG.PCW_UIPARAM_DDR_BANK_ADDR_COUNT {3} \
   CONFIG.PCW_UIPARAM_DDR_BL {8} \
   CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY0 {0.25} \
   CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY1 {0.25} \
   CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY2 {0.25} \
   CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY3 {0.25} \
   CONFIG.PCW_UIPARAM_DDR_BUS_WIDTH {32 Bit} \
   CONFIG.PCW_UIPARAM_DDR_CL {7} \
   CONFIG.PCW_UIPARAM_DDR_CLOCK_0_LENGTH_MM {0} \
   CONFIG.PCW_UIPARAM_DDR_CLOCK_0_PACKAGE_LENGTH {61.0905} \
   CONFIG.PCW_UIPARAM_DDR_CLOCK_0_PROPOGATION_DELAY {160} \
   CONFIG.PCW_UIPARAM_DDR_CLOCK_1_LENGTH_MM {0} \
   CONFIG.PCW_UIPARAM_DDR_CLOCK_1_PACKAGE_LENGTH {61.0905} \
   CONFIG.PCW_UIPARAM_DDR_CLOCK_1_PROPOGATION_DELAY {160} \
   CONFIG.PCW_UIPARAM_DDR_CLOCK_2_LENGTH_MM {0} \
   CONFIG.PCW_UIPARAM_DDR_CLOCK_2_PACKAGE_LENGTH {61.0905} \
   CONFIG.PCW_UIPARAM_DDR_CLOCK_2_PROPOGATION_DELAY {160} \
   CONFIG.PCW_UIPARAM_DDR_CLOCK_3_LENGTH_MM {0} \
   CONFIG.PCW_UIPARAM_DDR_CLOCK_3_PACKAGE_LENGTH {61.0905} \
   CONFIG.PCW_UIPARAM_DDR_CLOCK_3_PROPOGATION_DELAY {160} \
   CONFIG.PCW_UIPARAM_DDR_CLOCK_STOP_EN {0} \
   CONFIG.PCW_UIPARAM_DDR_COL_ADDR_COUNT {10} \
   CONFIG.PCW_UIPARAM_DDR_CWL {6} \
   CONFIG.PCW_UIPARAM_DDR_DEVICE_CAPACITY {4096 MBits} \
   CONFIG.PCW_UIPARAM_DDR_DQS_0_LENGTH_MM {0} \
   CONFIG.PCW_UIPARAM_DDR_DQS_0_PACKAGE_LENGTH {68.4725} \
   CONFIG.PCW_UIPARAM_DDR_DQS_0_PROPOGATION_DELAY {160} \
   CONFIG.PCW_UIPARAM_DDR_DQS_1_LENGTH_MM {0} \
   CONFIG.PCW_UIPARAM_DDR_DQS_1_PACKAGE_LENGTH {71.086} \
   CONFIG.PCW_UIPARAM_DDR_DQS_1_PROPOGATION_DELAY {160} \
   CONFIG.PCW_UIPARAM_DDR_DQS_2_LENGTH_MM {0} \
   CONFIG.PCW_UIPARAM_DDR_DQS_2_PACKAGE_LENGTH {66.794} \
   CONFIG.PCW_UIPARAM_DDR_DQS_2_PROPOGATION_DELAY {160} \
   CONFIG.PCW_UIPARAM_DDR_DQS_3_LENGTH_MM {0} \
   CONFIG.PCW_UIPARAM_DDR_DQS_3_PACKAGE_LENGTH {108.7385} \
   CONFIG.PCW_UIPARAM_DDR_DQS_3_PROPOGATION_DELAY {160} \
   CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_0 {0.0} \
   CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_1 {0.0} \
   CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_2 {0.0} \
   CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_3 {0.0} \
   CONFIG.PCW_UIPARAM_DDR_DQ_0_LENGTH_MM {0} \
   CONFIG.PCW_UIPARAM_DDR_DQ_0_PACKAGE_LENGTH {64.1705} \
   CONFIG.PCW_UIPARAM_DDR_DQ_0_PROPOGATION_DELAY {160} \
   CONFIG.PCW_UIPARAM_DDR_DQ_1_LENGTH_MM {0} \
   CONFIG.PCW_UIPARAM_DDR_DQ_1_PACKAGE_LENGTH {63.686} \
   CONFIG.PCW_UIPARAM_DDR_DQ_1_PROPOGATION_DELAY {160} \
   CONFIG.PCW_UIPARAM_DDR_DQ_2_LENGTH_MM {0} \
   CONFIG.PCW_UIPARAM_DDR_DQ_2_PACKAGE_LENGTH {68.46} \
   CONFIG.PCW_UIPARAM_DDR_DQ_2_PROPOGATION_DELAY {160} \
   CONFIG.PCW_UIPARAM_DDR_DQ_3_LENGTH_MM {0} \
   CONFIG.PCW_UIPARAM_DDR_DQ_3_PACKAGE_LENGTH {105.4895} \
   CONFIG.PCW_UIPARAM_DDR_DQ_3_PROPOGATION_DELAY {160} \
   CONFIG.PCW_UIPARAM_DDR_DRAM_WIDTH {16 Bits} \
   CONFIG.PCW_UIPARAM_DDR_ECC {Disabled} \
   CONFIG.PCW_UIPARAM_DDR_ENABLE {1} \
   CONFIG.PCW_UIPARAM_DDR_FREQ_MHZ {533.333333} \
   CONFIG.PCW_UIPARAM_DDR_HIGH_TEMP {Normal (0-85)} \
   CONFIG.PCW_UIPARAM_DDR_MEMORY_TYPE {DDR 3} \
   CONFIG.PCW_UIPARAM_DDR_PARTNO {MT41J256M16 RE-125} \
   CONFIG.PCW_UIPARAM_DDR_ROW_ADDR_COUNT {15} \
   CONFIG.PCW_UIPARAM_DDR_SPEED_BIN {DDR3_1066F} \
   CONFIG.PCW_UIPARAM_DDR_TRAIN_DATA_EYE {1} \
   CONFIG.PCW_UIPARAM_DDR_TRAIN_READ_GATE {1} \
   CONFIG.PCW_UIPARAM_DDR_TRAIN_WRITE_LEVEL {1} \
   CONFIG.PCW_UIPARAM_DDR_T_FAW {40.0} \
   CONFIG.PCW_UIPARAM_DDR_T_RAS_MIN {35.0} \
   CONFIG.PCW_UIPARAM_DDR_T_RC {48.91} \
   CONFIG.PCW_UIPARAM_DDR_T_RCD {7} \
   CONFIG.PCW_UIPARAM_DDR_T_RP {7} \
   CONFIG.PCW_UIPARAM_DDR_USE_INTERNAL_VREF {0} \
   CONFIG.PCW_UIPARAM_GENERATE_SUMMARY {NA} \
   CONFIG.PCW_USB0_BASEADDR {0xE0102000} \
   CONFIG.PCW_USB0_HIGHADDR {0xE0102fff} \
   CONFIG.PCW_USB0_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_USB0_PERIPHERAL_FREQMHZ {60} \
   CONFIG.PCW_USB0_RESET_ENABLE {0} \
   CONFIG.PCW_USB0_USB0_IO {MIO 28 .. 39} \
   CONFIG.PCW_USB1_BASEADDR {0xE0103000} \
   CONFIG.PCW_USB1_HIGHADDR {0xE0103fff} \
   CONFIG.PCW_USB1_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_USB1_PERIPHERAL_FREQMHZ {60} \
   CONFIG.PCW_USB1_RESET_ENABLE {0} \
   CONFIG.PCW_USB_RESET_ENABLE {0} \
   CONFIG.PCW_USB_RESET_POLARITY {Active Low} \
   CONFIG.PCW_USE_AXI_FABRIC_IDLE {0} \
   CONFIG.PCW_USE_AXI_NONSECURE {0} \
   CONFIG.PCW_USE_CORESIGHT {0} \
   CONFIG.PCW_USE_CROSS_TRIGGER {0} \
   CONFIG.PCW_USE_CR_FABRIC {1} \
   CONFIG.PCW_USE_DDR_BYPASS {0} \
   CONFIG.PCW_USE_DEBUG {0} \
   CONFIG.PCW_USE_DEFAULT_ACP_USER_VAL {0} \
   CONFIG.PCW_USE_DMA0 {0} \
   CONFIG.PCW_USE_DMA1 {0} \
   CONFIG.PCW_USE_DMA2 {0} \
   CONFIG.PCW_USE_DMA3 {0} \
   CONFIG.PCW_USE_EXPANDED_IOP {0} \
   CONFIG.PCW_USE_EXPANDED_PS_SLCR_REGISTERS {0} \
   CONFIG.PCW_USE_FABRIC_INTERRUPT {1} \
   CONFIG.PCW_USE_HIGH_OCM {0} \
   CONFIG.PCW_USE_M_AXI_GP0 {1} \
   CONFIG.PCW_USE_M_AXI_GP1 {0} \
   CONFIG.PCW_USE_PROC_EVENT_BUS {0} \
   CONFIG.PCW_USE_PS_SLCR_REGISTERS {0} \
   CONFIG.PCW_USE_S_AXI_ACP {0} \
   CONFIG.PCW_USE_S_AXI_GP0 {0} \
   CONFIG.PCW_USE_S_AXI_GP1 {0} \
   CONFIG.PCW_USE_S_AXI_HP0 {1} \
   CONFIG.PCW_USE_S_AXI_HP1 {0} \
   CONFIG.PCW_USE_S_AXI_HP2 {0} \
   CONFIG.PCW_USE_S_AXI_HP3 {0} \
   CONFIG.PCW_USE_TRACE {0} \
   CONFIG.PCW_USE_TRACE_DATA_EDGE_DETECTOR {0} \
   CONFIG.PCW_VALUE_SILVERSION {3} \
   CONFIG.PCW_WDT_PERIPHERAL_CLKSRC {CPU_1X} \
   CONFIG.PCW_WDT_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_WDT_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_WDT_PERIPHERAL_FREQMHZ {133.333333} \
   CONFIG.PCW_WDT_WDT_IO {EMIO} \
 ] $processing_system7_0

  # Create instance: ps7_0_axi_periph, and set properties
  set ps7_0_axi_periph [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 ps7_0_axi_periph ]
  set_property -dict [ list \
   CONFIG.NUM_MI {5} \
 ] $ps7_0_axi_periph

  # Create instance: rst_ps7_0_100M, and set properties
  set rst_ps7_0_100M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_ps7_0_100M ]

  # Create instance: util_ds_buf_0, and set properties
  set util_ds_buf_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_ds_buf:2.1 util_ds_buf_0 ]

  # Create instance: util_vector_logic_0, and set properties
  set util_vector_logic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_0 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $util_vector_logic_0

  # Create instance: xlconcat_0, and set properties
  set xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_0 ]
  set_property -dict [ list \
   CONFIG.NUM_PORTS {2} \
 ] $xlconcat_0

  # Create instance: xlconcat_1, and set properties
  set xlconcat_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_1 ]
  set_property -dict [ list \
   CONFIG.NUM_PORTS {4} \
 ] $xlconcat_1

  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]

  # Create instance: xlconstant_1, and set properties
  set xlconstant_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_1 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
   CONFIG.CONST_WIDTH {16} \
 ] $xlconstant_1

  # Create instance: xlconstant_3, and set properties
  set xlconstant_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_3 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
   CONFIG.CONST_WIDTH {2} \
 ] $xlconstant_3

  # Create instance: xlslice_0, and set properties
  set xlslice_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_0 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {3} \
   CONFIG.DIN_WIDTH {8} \
   CONFIG.DOUT_WIDTH {4} \
 ] $xlslice_0

  # Create instance: xlslice_1, and set properties
  set xlslice_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_1 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {3} \
   CONFIG.DIN_WIDTH {8} \
   CONFIG.DOUT_WIDTH {4} \
 ] $xlslice_1

  # Create interface connections
  connect_bd_intf_net -intf_net AF_M_AXIS_LEFT_ADC [get_bd_intf_pins AF/M_AXIS_LEFT_ADC] [get_bd_intf_pins TX/S_AXIS_AF]
  connect_bd_intf_net -intf_net AF_iic_rtl [get_bd_intf_ports af_i2c] [get_bd_intf_pins AF/af_iic]
  connect_bd_intf_net -intf_net axi_gpio_0_GPIO [get_bd_intf_ports gpio_rs485] [get_bd_intf_pins RS485_and_Status_LEDs/GPIO]
  connect_bd_intf_net -intf_net axi_iic_0_IIC [get_bd_intf_ports eeprom_iic] [get_bd_intf_pins axi_iic_0/IIC]
  connect_bd_intf_net -intf_net processing_system7_0_DDR [get_bd_intf_ports DDR] [get_bd_intf_pins processing_system7_0/DDR]
  connect_bd_intf_net -intf_net processing_system7_0_FIXED_IO [get_bd_intf_ports FIXED_IO] [get_bd_intf_pins processing_system7_0/FIXED_IO]
  connect_bd_intf_net -intf_net processing_system7_0_IIC_1 [get_bd_intf_pins SC0720_0/EMIO_I2C1] [get_bd_intf_pins processing_system7_0/IIC_1]
  connect_bd_intf_net -intf_net processing_system7_0_M_AXI_GP0 [get_bd_intf_pins processing_system7_0/M_AXI_GP0] [get_bd_intf_pins ps7_0_axi_periph/S00_AXI]
  connect_bd_intf_net -intf_net ps7_0_axi_periph_M00_AXI [get_bd_intf_pins AF/S_AXI] [get_bd_intf_pins ps7_0_axi_periph/M00_AXI]
  connect_bd_intf_net -intf_net ps7_0_axi_periph_M01_AXI [get_bd_intf_pins SDR_Status_Registers_0/S00_AXI] [get_bd_intf_pins ps7_0_axi_periph/M01_AXI]
  connect_bd_intf_net -intf_net ps7_0_axi_periph_M02_AXI [get_bd_intf_pins axi_iic_0/S_AXI] [get_bd_intf_pins ps7_0_axi_periph/M02_AXI]
  connect_bd_intf_net -intf_net ps7_0_axi_periph_M03_AXI [get_bd_intf_pins RS485_and_Status_LEDs/S_AXI] [get_bd_intf_pins ps7_0_axi_periph/M03_AXI]

  # Create port connections
  connect_bd_net -net AF_ADC_DATA_1 [get_bd_ports af_adc_data] [get_bd_pins AF/AF_ADC_DATA]
  connect_bd_net -net AF_AF_ADC_DAC_BCLK [get_bd_ports af_bclk] [get_bd_pins AF/AF_ADC_DAC_BCLK]
  connect_bd_net -net AF_AF_ADC_DAC_LRCLK [get_bd_ports af_lrclk] [get_bd_pins AF/AF_ADC_DAC_LRCLK]
  connect_bd_net -net AF_AF_ADC_DAC_MCLK [get_bd_ports af_mclk] [get_bd_pins AF/AF_ADC_DAC_MCLK]
  connect_bd_net -net AF_AF_DAC_DATA [get_bd_ports af_dac_data] [get_bd_pins AF/AF_DAC_DATA]
  connect_bd_net -net AF_af_iic_irq [get_bd_pins AF/af_iic_irq] [get_bd_pins xlconcat_0/In0]
  connect_bd_net -net Control_LED_Blank [get_bd_ports LED_Display_Blank] [get_bd_pins Control/LED_Blank]
  connect_bd_net -net Control_LED_Clock [get_bd_ports LED_Display_Clock] [get_bd_pins Control/LED_Clock]
  connect_bd_net -net Control_LED_Data [get_bd_ports LED_Display_Data] [get_bd_pins Control/LED_Data]
  connect_bd_net -net Control_LED_Latch [get_bd_ports LED_Display_Latch] [get_bd_pins Control/LED_Latch]
  connect_bd_net -net PL_pin_K16_1 [get_bd_ports PL_pin_K16] [get_bd_pins SC0720_0/PL_pin_K16]
  connect_bd_net -net PL_pin_K19_1 [get_bd_ports PL_pin_K19] [get_bd_pins SC0720_0/PL_pin_K19]
  connect_bd_net -net PL_pin_M15_1 [get_bd_ports PL_pin_M15] [get_bd_pins SC0720_0/PL_pin_M15]
  connect_bd_net -net PL_pin_N15_1 [get_bd_ports PL_pin_N15] [get_bd_pins SC0720_0/PL_pin_N15]
  connect_bd_net -net PL_pin_P16_1 [get_bd_ports PL_pin_P16] [get_bd_pins SC0720_0/PL_pin_P16]
  connect_bd_net -net PL_pin_P22_1 [get_bd_ports PL_pin_P22] [get_bd_pins SC0720_0/PL_pin_P22]
  connect_bd_net -net SC0720_0_PHY_LED1 [get_bd_ports Link_Activity] [get_bd_pins SC0720_0/PHY_LED1]
  connect_bd_net -net SC0720_0_PHY_LED2 [get_bd_ports Link_Active] [get_bd_pins SC0720_0/PHY_LED2]
  connect_bd_net -net SC0720_0_PL_pin_K20 [get_bd_ports PL_pin_K20] [get_bd_pins SC0720_0/PL_pin_K20]
  connect_bd_net -net SC0720_0_PL_pin_L16 [get_bd_ports PL_pin_L16] [get_bd_pins SC0720_0/PL_pin_L16]
  connect_bd_net -net SC0720_0_PL_pin_N22 [get_bd_ports PL_pin_N22] [get_bd_pins SC0720_0/PL_pin_N22]
  connect_bd_net -net SDR_Status_Registers_0_o_adcDither [get_bd_ports rf_adc_dither] [get_bd_pins SDR_Status_Registers_0/o_adcDither]
  connect_bd_net -net SDR_Status_Registers_0_o_adcRandom [get_bd_ports rf_adc_random] [get_bd_pins SDR_Status_Registers_0/o_adcRandom]
  connect_bd_net -net SDR_Status_Registers_0_o_demodMode [get_bd_pins SDR_Status_Registers_0/o_demodMode] [get_bd_pins xlslice_0/Din] [get_bd_pins xlslice_1/Din]
  connect_bd_net -net SDR_Status_Registers_0_o_displayFrequencyBlank [get_bd_pins Control/i_dispBlank] [get_bd_pins SDR_Status_Registers_0/o_displayFrequencyBlank]
  connect_bd_net -net TX_o_tx_led [get_bd_pins TX/o_tx_led] [get_bd_pins xlconcat_1/In3]
  connect_bd_net -net TX_rf_dac_data [get_bd_ports oS_dacData] [get_bd_pins TX/rf_dac_data]
  connect_bd_net -net TX_rf_dac_mode [get_bd_ports o_dacMode] [get_bd_pins TX/rf_dac_mode]
  connect_bd_net -net adc_clk_n_1 [get_bd_ports adc_clk_n] [get_bd_pins util_ds_buf_0/IBUF_DS_N]
  connect_bd_net -net adc_clk_p_1 [get_bd_ports adc_clk_p] [get_bd_pins util_ds_buf_0/IBUF_DS_P]
  connect_bd_net -net axi_iic_0_iic2intc_irpt [get_bd_pins axi_iic_0/iic2intc_irpt] [get_bd_pins xlconcat_0/In1]
  connect_bd_net -net cw_key_n_1 [get_bd_ports cw_key_n] [get_bd_pins TX/i_cw_key_n] [get_bd_pins util_vector_logic_0/Op1]
  connect_bd_net -net iS_phaseDelta_af_1 [get_bd_pins SDR_Status_Registers_0/o_rfPhaseAccumulatorAngle1] [get_bd_pins TX/iS_phaseDelta_af]
  connect_bd_net -net iS_phaseDelta_rf_1 [get_bd_pins SDR_Status_Registers_0/o_fftPhaseAccumulatorAngle] [get_bd_pins TX/iS_phaseDelta_rf]
  connect_bd_net -net i_dispFrequencyMode_1 [get_bd_pins Control/i_dispFrequencyMode] [get_bd_pins SDR_Status_Registers_0/o_displayFrequencyMode]
  connect_bd_net -net i_dispFrequency_1 [get_bd_pins Control/i_dispFrequency] [get_bd_pins SDR_Status_Registers_0/o_displayFrequency]
  connect_bd_net -net i_ptt_cw_n_1 [get_bd_ports i_ptt_cw_n] [get_bd_pins TX/i_ptt_cw_n]
  connect_bd_net -net i_ptt_n_1 [get_bd_ports i_ptt_n] [get_bd_pins TX/i_ptt_n]
  connect_bd_net -net processing_system7_0_FCLK_RESET0_N [get_bd_pins processing_system7_0/FCLK_RESET0_N] [get_bd_pins rst_ps7_0_100M/ext_reset_in]
  connect_bd_net -net rst_ps7_0_100M_peripheral_aresetn [get_bd_pins AF/i_resetn] [get_bd_pins Control/resetn] [get_bd_pins RS485_and_Status_LEDs/s_axi_aresetn] [get_bd_pins SDR_Status_Registers_0/s00_axi_aresetn] [get_bd_pins TX/i_resetn] [get_bd_pins axi_iic_0/s_axi_aresetn] [get_bd_pins ps7_0_axi_periph/ARESETN] [get_bd_pins ps7_0_axi_periph/M00_ARESETN] [get_bd_pins ps7_0_axi_periph/M01_ARESETN] [get_bd_pins ps7_0_axi_periph/M02_ARESETN] [get_bd_pins ps7_0_axi_periph/M03_ARESETN] [get_bd_pins ps7_0_axi_periph/M04_ARESETN] [get_bd_pins ps7_0_axi_periph/S00_ARESETN] [get_bd_pins rst_ps7_0_100M/peripheral_aresetn]
  connect_bd_net -net util_ds_buf_0_IBUF_OUT1 [get_bd_ports o_dacClk] [get_bd_pins AF/i_clk] [get_bd_pins Control/clk] [get_bd_pins RS485_and_Status_LEDs/s_axi_aclk] [get_bd_pins SDR_Status_Registers_0/s00_axi_aclk] [get_bd_pins TX/i_clk] [get_bd_pins axi_iic_0/s_axi_aclk] [get_bd_pins processing_system7_0/M_AXI_GP0_ACLK] [get_bd_pins processing_system7_0/S_AXI_HP0_ACLK] [get_bd_pins ps7_0_axi_periph/ACLK] [get_bd_pins ps7_0_axi_periph/M00_ACLK] [get_bd_pins ps7_0_axi_periph/M01_ACLK] [get_bd_pins ps7_0_axi_periph/M02_ACLK] [get_bd_pins ps7_0_axi_periph/M03_ACLK] [get_bd_pins ps7_0_axi_periph/M04_ACLK] [get_bd_pins ps7_0_axi_periph/S00_ACLK] [get_bd_pins rst_ps7_0_100M/slowest_sync_clk] [get_bd_pins util_ds_buf_0/IBUF_OUT]
  connect_bd_net -net util_vector_logic_0_Res [get_bd_pins util_vector_logic_0/Res] [get_bd_pins xlconcat_1/In2]
  connect_bd_net -net xlconcat_0_dout [get_bd_pins processing_system7_0/IRQ_F2P] [get_bd_pins xlconcat_0/dout]
  connect_bd_net -net xlconcat_1_dout [get_bd_ports debug_leds] [get_bd_pins xlconcat_1/dout]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins AF/S_AXIS_LEFT_DAC_tvalid] [get_bd_pins xlconstant_0/dout]
  connect_bd_net -net xlconstant_1_dout [get_bd_pins AF/S_AXIS_LEFT_DAC_tdata] [get_bd_pins xlconstant_1/dout]
  connect_bd_net -net xlconstant_3_dout [get_bd_pins xlconcat_1/In1] [get_bd_pins xlconstant_3/dout]
  connect_bd_net -net xlslice_0_Dout [get_bd_pins TX/mode] [get_bd_pins xlslice_0/Dout]
  connect_bd_net -net xlslice_1_Dout [get_bd_pins xlconcat_1/In0] [get_bd_pins xlslice_1/Dout]

  # Create address segments
  assign_bd_address -offset 0x43C00000 -range 0x00010000 -target_address_space [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs SDR_Status_Registers_0/S00_AXI/S00_AXI_reg] -force
  assign_bd_address -offset 0x41200000 -range 0x00010000 -target_address_space [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs RS485_and_Status_LEDs/S_AXI/Reg] -force
  assign_bd_address -offset 0x41600000 -range 0x00010000 -target_address_space [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs AF/axi_iic_0/S_AXI/Reg] -force
  assign_bd_address -offset 0x41610000 -range 0x00010000 -target_address_space [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_iic_0/S_AXI/Reg] -force


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


