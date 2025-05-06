
########################### Define Top Module ############################
                                                   
set top_module cv32e40p_top

##################### Define Working Library Directory ######################
                                                   
define_design_lib work -path ./work

############################# Formality Setup File ##########################
                                                   
set_svf $top_module.svf

################## Design Compiler Library Files #setup ######################

puts "###########################################"
puts "#      #setting Design Libraries          #"
puts "###########################################"

#Add the path of the libraries and RTL files to the search_path variable

set rtl       "/home/ICer/ITI/PnR_Grad/rtl"
set LIB_PATH  "/mnt/hgfs/saed14_pdk/SAED14nm_EDK_CORE_HVT_v_062020/stdcell_hvt/db_ccs"

lappend search_path $LIB_PATH
lappend search_path $rtl
lappend search_path "/home/ICer/ITI/PnR_Grad/rtl/include"
lappend search_path "/home/ICer/ITI/PnR_Grad/rtl/dft_top"
lappend search_path "/home/ICer/ITI/PnR_Grad/rtl/vendor/pulp_platform_fpnew/src"

set SSLIB "saed14hvt_ss0p6v125c.db" 
set TTLIB "saed14hvt_tt0p6v25c.db"
set FFLIB "saed14hvt_ff0p88v125c.db" 

## Standard Cell libraries 
set target_library [list $SSLIB]

## Standard Cell & Hard Macros libraries 
set link_library [list * $target_library]  

######################## Reading RTL Files #################################

puts "###########################################"
puts "#             Reading RTL Files           #"
puts "###########################################"

set file_format sverilog

analyze -format $file_format cv32e40p_pkg.sv
analyze -format $file_format cv32e40p_fpu_pkg.sv
analyze -format $file_format cv32e40p_apu_core_pkg.sv
analyze -format $file_format fpnew_pkg.sv

analyze -format $file_format cv32e40p_aligner.sv
analyze -format $file_format cv32e40p_alu.sv
analyze -format $file_format cv32e40p_alu_div.sv
analyze -format $file_format cv32e40p_apu_disp.sv
analyze -format $file_format cv32e40p_compressed_decoder.sv
analyze -format $file_format cv32e40p_controller.sv
analyze -format $file_format cv32e40p_core.sv
analyze -format $file_format cv32e40p_cs_registers.sv
analyze -format $file_format cv32e40p_decoder.sv
analyze -format $file_format cv32e40p_ex_stage.sv
analyze -format $file_format cv32e40p_ff_one.sv
analyze -format $file_format cv32e40p_fifo.sv
analyze -format $file_format cv32e40p_fp_wrapper.sv
analyze -format $file_format cv32e40p_hwloop_regs.sv
analyze -format $file_format cv32e40p_id_stage.sv
analyze -format $file_format cv32e40p_if_stage.sv
analyze -format $file_format cv32e40p_int_controller.sv
analyze -format $file_format cv32e40p_load_store_unit.sv
analyze -format $file_format cv32e40p_mult.sv
analyze -format $file_format cv32e40p_obi_interface.sv
analyze -format $file_format cv32e40p_popcnt.sv
analyze -format $file_format cv32e40p_prefetch_buffer.sv
analyze -format $file_format cv32e40p_prefetch_controller.sv
analyze -format $file_format cv32e40p_register_file_ff.sv
##analyze -format $file_format cv32e40p_register_file_latch.sv
analyze -format $file_format cv32e40p_clock_gate.sv
analyze -format $file_format cv32e40p_sleep_unit.sv
analyze -format $file_format mux2X1.sv


analyze -format $file_format /home/ICer/ITI/PnR_Grad/rtl/dft_top/cv32e40p_top.sv

elaborate -lib WORK cv32e40p_top

###################### Defining toplevel ###################################

current_design $top_module

#################### Liniking All The Design Parts #########################
puts "###############################################"
puts "######## Liniking All The Design Parts ########"
puts "###############################################"

link 

#################### Liniking All The Design Parts #########################
puts "###############################################"
puts "######## checking design consistency ##########"
puts "###############################################"

check_design >> reports/check_design.rpt

#################### Define Design Constraints #########################
puts "###############################################"
puts "############ Design Constraints #### ##########"
puts "###############################################"

source -echo -v cons/cv32e40p_core.sdc
source -echo -v cons/cons.tcl


#################### Archirecture Scan Chains #########################
puts "###############################################"
puts "############ Configure scan chains ############"
puts "###############################################"

set_scan_configuration -clock_mixing no_mix  \
                       -style multiplexed_flip_flop \
                       -replace true -max_length 452

###################### Mapping and optimization ########################
puts "###############################################"
puts "########## Mapping & Optimization #############"
puts "###############################################"

#test_ready compile
compile -scan

################################################################### 
# Setting Test Timing Variables
################################################################### 

# Preclock Measure Protocol (default protocol)
set test_default_period 100
set test_default_delay 0
set test_default_bidir_delay 0
set test_default_strobe 20
set test_default_strobe_width 0

########################## Define DFT Signals ##########################

set_dft_signal -port [get_ports scan_clk]  -type ScanClock   -view existing_dft  -timing {30 60}
set_dft_signal -port [get_ports scan_rst]  -type Reset       -view existing_dft  -active_state 0
set_dft_signal -port [get_ports test_mode] -type Constant    -view existing_dft  -active_state 1 
set_dft_signal -port [get_ports test_mode] -type TestMode    -view spec          -active_state 1 
set_dft_signal -port [get_ports SE]        -type ScanEnable  -view spec          -active_state 1   -usage scan
set_dft_signal -port [get_ports SI]        -type ScanDataIn  -view spec 
set_dft_signal -port [get_ports SO]        -type ScanDataOut -view spec  

############################# Create Test Protocol #######################
                                           
create_test_protocol

###################### Pre-DFT Design Rule Checking #######################

dft_drc -verbose

############################# Preview DFT ##############################

preview_dft -show scan_summary

############################# Insert DFT ##############################

insert_dft

######################## Optimize Logic post DFT #######################

compile -scan -incremental

###################### Design Rule Checking #######################

dft_drc -verbose -coverage_estimate

##################### Close Formality Setup file ###########################

set_svf -off

#############################################################################
# Write out files
#############################################################################

write_file -format verilog -hierarchy -output netlists/$top_module.ddc
write_file -format verilog -hierarchy -output netlists/$top_module.sv
write_sdf  sdf/$top_module.sdf
write_sdc  -nosplit sdc/$top_module.sdc

################# reporting #######################

report_area -hierarchy > reports/area.rpt
report_power -hierarchy > reports/power.rpt
report_timing -max_paths 10 -delay_type min > reports/hold.rpt
report_timing -max_paths 10 -delay_type max > reports/setup.rpt
report_clock -attributes > reports/clocks.rpt
report_constraint -all_violators > reports/constraints.rpt
report_port > reports/ports.rpt
dft_drc -coverage_estimate > reports/dft_drc_post_dft.rpt

################# starting graphical user interface #######################

#gui_start

exit
