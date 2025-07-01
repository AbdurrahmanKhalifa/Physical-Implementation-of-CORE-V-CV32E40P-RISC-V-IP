
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

set NETLIST     "../Synthesis/netlists"
set LIB_PATH  "/mnt/hgfs/saed14_pdk/stdcell_rvt/db_ccs"

lappend search_path $LIB_PATH

set SSLIB "saed14rvt_ss0p6v125c.db"
set TTLIB "saed14rvt_tt0p6v25c.db"
set FFLIB "saed14rvt_ff0p88v125c.db"

## Standard Cell libraries 
set target_library $TTLIB

## Standard Cell & Hard Macros libraries 
set link_library [list * $SSLIB $TTLIB $FFLIB]  

# ----  Test Mode ---- #  
set test_default_scan_style
######################## Reading RTL Files #################################

puts "###########################################"
puts "#             Reading RTL Files           #"
puts "###########################################"

# ---- Read_files ---- #
# --Netlist 
read_verilog $NETLIST/cv32e40p_top_dft.v
###################### Defining toplevel ###################################
current_design $top_module




#################### Liniking All The Design Parts #########################
puts "###############################################"
puts "######## checking design consistency ##########"
puts "###############################################"

check_design > reports/check_design.rpt


#################### Archirecture Scan Chains #########################
puts "###############################################"
puts "############ Configure scan chains ############"
puts "###############################################"

# set_scan_configuration -clock_mixing no_mix  \
#                        -style multiplexed_flip_flop \
#                        -replace true -max_length 452 \
#                        -chain_count 5
set_scan_configuration -chain_count 5

###################### Mapping and optimization ########################
puts "###############################################"
puts "########## Mapping & Optimization #############"
puts "###############################################"

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

set_dft_signal -view existing_dft -type ScanClock   -port clk_i        -timing {30 60}
set_dft_signal -view existing_dft -type Reset       -port rst_ni       -active 0
set_dft_signal -view existing_dft -type ScanEnable  -port scan_cg_en_i -active 1
set_dft_signal -view existing_dft -type ScanDataIn  -port [get_ports SI]       
set_dft_signal -view existing_dft -type ScanDataOut -port [get_ports SO]       


############################# Create Test Protocol #######################
                                           
create_test_protocol

#################### Define DFT Constraints #########################
puts "###############################################"
puts "############ Design Constraints #### ##########"
puts "###############################################"
#----- constraints ------
source -echo -v cons/cv32e40p_core.sdc
source -echo -v cons/cons.tcl
source -echo -v cons/dont_use.tcl
# Preclock Measure Protocol (default protocol)
# set test_default_period 100
# set test_default_delay 0
# set test_default_bidir_delay 0
# set test_default_strobe 20
# set test_default_strobe_width 0

###################### Pre-DFT Design Rule Checking #######################

dft_drc -verbose

############################# Insert DFT ##############################
link

# To prevent uniquification of your design, enter the command
set_dft_insertion_configuration -preserve_design_name true

######################## Optimize Logic post DFT #######################
compile -scan -incremental
############################# Preview DFT ##############################

preview_dft -show scan_summary
insert_dft

###################### Design Rule Checking #######################

dft_drc -verbose -coverage_estimate > reports/dft_drc_post_dft.rpt

##################### Close Formality Setup file ###########################

set_svf -off

#############################################################################
# Write out files
#############################################################################

write_file -format ddc -hierarchy -output netlists/$top_module.ddc
write_file -format verilog -hierarchy -output netlists/$top_module.v
write_sdf  sdf/$top_module.sdf
write_sdc  -nosplit sdc/$top_module.sdc
write_scan_def -out ./dft_def/$top_module.scandef
################# reporting #######################

report_area -hierarchy > reports/area.rpt
report_power -hierarchy > reports/power.rpt
report_timing -max_paths 10 -delay_type min > reports/hold.rpt
report_timing -max_paths 10 -delay_type max > reports/setup.rpt
report_clock -attributes > reports/clocks.rpt
report_constraint -all_violators > reports/constraints.rpt
report_port > reports/ports.rpt
# dft_drc -coverage_estimate 
# ------- Report All Signals 
report_dft_signal -view exist > reports/dft_exist_sig.rpt
report_dft_signal -view spec >  reports/dft_spec_sig.rpt

################# starting graphical user interface #######################

gui_start

# exit
