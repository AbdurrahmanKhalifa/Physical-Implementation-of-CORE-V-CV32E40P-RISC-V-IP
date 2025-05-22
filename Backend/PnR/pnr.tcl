##############################################
########### 1. DESIGN SETUP ##################
##############################################
set_host_options -max_cores 4
sh date

set design cv32e40p_top

sh rm -rf $design

set sc_dir "/mnt/hgfs"

set rtl       "/home/ICer/ITI/PnR_Grad/rtl"
set LIB_PATH  "/mnt/hgfs/saed14_pdk/stdcell_rvt/db_ccs"

lappend search_path $LIB_PATH
lappend search_path $rtl
lappend search_path "/home/ICer/ITI/PnR_Grad/rtl/include"
lappend search_path "/home/ICer/ITI/PnR_Grad/rtl/dft_top"
lappend search_path "/home/ICer/ITI/PnR_Grad/rtl/vendor/pulp_platform_fpnew/src"

set SSLIB "saed14rvt_ss0p6v125c.db" 
set TTLIB "saed14rvt_tt0p6v25c.db"
set FFLIB "saed14rvt_ff0p88v125c.db" 

## Standard Cell libraries 
set target_library [list $SSLIB $TTLIB $FFLIB]

## Standard Cell & Hard Macros libraries 
set link_library [list * $SSLIB $TTLIB $FFLIB] 


#sh rm -rf ndm
#sh mkdir -p ndm


# ============================== #
# ======== std_cell NDM ======== #
# ============================== #
create_lib -technology "/mnt/hgfs/saed14_pdk/ttt/SAED14nm_PDK_12232018/techfiles/saed14nm_1p9m_mw.tf" \
-ref_libs "/home/ICer/ITI/PnR_Grad/Backend/PnR/ndm/saed14rvt.ndm" ${design}.dlib

# ============================== #
# ========= Load Design ======== #
# ============================== #
read_verilog ../DFT/netlists/${design}.v

################# Define Constraints File #################
source -e -v ../DFT/sdc/cv32e40p_top.sdc

# -------- Linking -------- #
link_block


################# Multi Mode Multi Corner Analysis #################
source -e -v ./scripts/MMMC.tcl


save_block -as ${design}_1_imported

##############################################
########### 2. Floorplan #####################
##############################################

## Create Starting Floorplan
############################

set_attribute [get_layers [list M1 M3 M5 M7 M9]] routing_direction horizontal
set_attribute [get_layers [list M2 M4 M6 M8]] routing_direction vertical

set_attribute [get_layers MRDL] routing_direction horizontal

set_wire_track_pattern -site_def unit -layer M1 -mode uniform \
-mask_constraint {mask_two mask_one} -coord 0.037 -space 0.074 -direction horizontal


initialize_floorplan -boundary "{0 0} {500 500}" -flip_first_row true -core_offset {17 17 17 17} -control_type die

#remove_tracks -all

#create_track -layer M1 -coord 0 -space 0.074
#create_track -layer M2 -coord 0 -space 0.06 
#create_track -layer M3 -coord 0 -space 0.074 
#create_track -layer M4 -coord 0 -space 0.074
#create_track -layer M5 -coord 0 -space 0.12
#create_track -layer M6 -coord 0 -space 0.12 
#create_track -layer M7 -coord 0 -space 0.12  
#create_track -layer M8 -coord 0 -space 0.12  
#create_track -layer M9 -coord 0 -space 0.12 
#create_track -layer MRDL -coord 0 -space 0.6

place_pins -ports [get_ports *]

#create_placement -timing_driven -floorplan
create_tap_cells -lib_cell  [get_lib_cell */SAEDRVT14_TAPDS] -pattern stagger -distance 30

create_net VDD -power
create_net VSS -ground

connect_pg_net -net "VDD" [get_pins -hierarchical "*/VDD*"]
connect_pg_net -net "VSS" [get_pins -hierarchical "*/VSS"]

## CONSTRAINTS
##############
## Here, We define more constraints on your design that are related to floorplan stage.
#report_ignored_layers
#remove_ignored_layers -all
#set_ignored_layers -max_routing_layer metal6
#AH## ## To show design-specific blocks
##AH## gui_set_highlight_options -current_color yellow
##AH## change_selection [get_cells   alu_unit/*]

##AH## gui_set_highlight_options -current_color blue
##AH## change_selection [get_cells   ALU_Control_unit/*]

##AH## gui_set_highlight_options -current_color green
##AH## change_selection [get_cells   datamem/*]

##AH## gui_set_highlight_options -current_color orange
##AH## change_selection [get_cells   reg_file/*]

save_block -as ${design}_2_fp

##################################################
########### 3. POWER NETWORK #####################
##################################################
#ICC2 commands

############################
########  PG RINGS  ########
############################


remove_pg_via_master_rules -all
remove_pg_patterns -all
remove_pg_strategies -all
remove_pg_strategy_via_rules -all

set top_ring_width 5
set top_offset 2
set top_ring_spacing 5
set hm_top M9
set vm_top M8


create_pg_region top_power_ring_region -core -expand_by_edge  \
          "{{side: 1} {offset: $top_offset}} {{side: 2} {offset: $top_offset}} {{side: 3} {offset: $top_offset}} {{side: 4} {offset: $top_offset}}"
	 
create_pg_ring_pattern \
                 ring \
                 -horizontal_layer $hm_top -vertical_layer $vm_top \
                 -horizontal_width $top_ring_width -vertical_width $top_ring_width \
                 -horizontal_spacing $top_ring_spacing -vertical_spacing $top_ring_spacing

set_pg_strategy  ring -pg_regions { top_power_ring_region } -pattern {{ name: ring} { nets: "VSS VDD" }}

compile_pg -strategies ring
####Connect P/G Pins and Creafte Power Rails#################

create_pg_mesh_pattern P_top_two \
	-layers { \
		{ {horizontal_layer: M9} {width: 5} {spacing: interleaving} {pitch: 30} {offset: 0.856} {trim : true} } \
		{ {vertical_layer: M8}   {width: 5} {spacing: interleaving} {pitch: 30} {offset: 6.08}  {trim : true} } \
		} 

set_pg_strategy S_default_vddvss \
	-core \
	-pattern   { {name: P_top_two} {nets:{VSS VDD}} } \
	-extension { {{stop:design_boundary_and_generate_pin}} }
	

compile_pg -strategies {S_default_vddvss} 



#------------ no need for 2nd mesh however I can simply add the 2 lines to the above layers instead of rewriting the full command -----------------#



#create_pg_mesh_pattern P_top_two_2 \
#	-layers { \
#		{ {horizontal_layer: M7} {width: 2} {spacing: interleaving} {pitch: 30} {offset: 0.856} {trim : true} } \
#		{ {vertical_layer: M6}   {width: 2} {spacing: interleaving} {pitch: 30} {offset: 6.08}  {trim : true} } \
#		} 

#set_pg_strategy S_default_vddvss_2 \
#	-core \
#	-pattern   { {name: P_top_two_2} {nets:{VSS VDD}} }
	

#compile_pg -strategies {S_default_vddvss_2} 





## Create std rail
#VDD VSS
set_app_option plan.pgroute.disable_via_createion -value true

create_pg_std_cell_conn_pattern std_rail_conn1 -rail_width 0.094 -layers M1
# -rail_mask mask_one

set_pg_strategy  std_rail_1 -pattern {{name : std_rail_conn1} {nets: "VDD VSS"}} -core

set_pg_strategy_via_rule VIA_NIL -via_rule { { {intersection: undefined} {via_master:NIL}}}

compile_pg -via_rule VIA_NIL -strategies std_rail_1


# ---------------------- Commands to remove Vias ---------------------- #
#remove_shapes [get_shapes -filter "shape_use == lib_cell_pin_connect"]
#remove_vias [get_vias -filter "upper_layer.name != M9"]



set vm_top 7
set vm_bottom 2


# -------------- Power VIAs -------------- #

set via_list [get_vias -within {{17 17} {483 483}} -filter "net_type == power"]

foreach_in_collection v1 $via_list {
    set orig [get_attribute [get_vias $v1] origin]
    set x [lindex $orig 0]
    set y [lindex $orig 1]

    for {set i $vm_top} {$i >= $vm_bottom} {incr i -1} {
        set layer "M$i"

        # Even → Vertical, Odd → Horizontal
        if {[expr $i % 2] == 0} {
            set x1 [expr $x - 0.3]
            set x2 [expr $x + 0.3]
            set path "{$x1 $y} {$x2 $y}"
        } else {
            set y1 [expr $y - 0.3]
            set y2 [expr $y + 0.3]
            set path "{$x $y1} {$x $y2}"
        }

        # Custom width for top layer
        if {$i == $vm_top} {
            set width 5
        } elseif {[expr $i % 2] == 0} {
            set width 0.6
        } else {
            set width 0.688
        }

        create_shape -shape_type path -shape_use strip -layer $layer -path $path -net "VDD" -width $width
    }
}


# -------------- Ground VIAs -------------- #

set via_list [get_vias -within {{17 17} {483 483}} -filter "net_type == ground"]

foreach_in_collection v1 $via_list {
    set orig [get_attribute [get_vias $v1] origin]
    set x [lindex $orig 0]
    set y [lindex $orig 1]

    for {set i $vm_top} {$i >= $vm_bottom} {incr i -1} {
        set layer "M$i"

        # Even → Vertical, Odd → Horizontal
        if {[expr $i % 2] == 0} {
            set x1 [expr $x - 0.3]
            set x2 [expr $x + 0.3]
            set path "{$x1 $y} {$x2 $y}"
        } else {
            set y1 [expr $y - 0.3]
            set y2 [expr $y + 0.3]
            set path "{$x $y1} {$x $y2}"
        }

        # Custom width for top layer
        if {$i == $vm_top} {
            set width 5
        } elseif {[expr $i % 2] == 0} {
            set width 0.6
        } else {
            set width 0.688
        }

        create_shape -shape_type path -shape_use strip -layer $layer -path $path -net "VSS" -width $width
    }
}




create_pg_vias -nets { VDD VSS } -from_layers M8 -to_layers M7 -drc no_check

create_pg_vias -nets { VDD VSS } -from_layers M7 -to_layers M6 -drc no_check

create_pg_vias -nets { VDD VSS } -from_layers M6 -to_layers M5 -drc no_check

create_pg_vias -nets { VDD VSS } -from_layers M5 -to_layers M4 -drc no_check

create_pg_vias -nets { VDD VSS } -from_layers M4 -to_layers M3 -drc no_check

create_pg_vias -nets { VDD VSS } -from_layers M3 -to_layers M2 -drc no_check

create_pg_vias -nets { VDD VSS } -from_layers M2 -to_layers M1 -drc no_check

#set_via_def -via_def VIA12SQ_C -pitch "0.2 0.2" -vias [get_vias -filter "via_def.name == VIA12SQ_C"] -size "1 10"
#set_via_def -via_def VIA23SQ_C -pitch "0.13 0.13" -vias [get_vias -filter "via_def.name == VIA23SQ_C"] -size "1 10"


check_pg_drc
check_pg_connectivity
check_pg_missing_vias

save_block -as ${design}_3_power


##############################################
########### 4. Placement #####################
##############################################
puts "start_place"

source /mnt/hgfs/VM_share/ASIC-implementation-of-CV32E40P-RISC-V-core--main/1-Synthesis/cons/dont_use_generic.tcl

set_placement_spacing_label -name {X} -side both -lib_cells [get_lib_cells */*/frame]
set_placement_spacing_rule -labels {X X} {1 2}

add_spare_cells -cell_name sspare -lib_cell "*/SAEDRVT14_ND2_2 */SAEDRVT14_NR2_2" \
 -num_instances 25

set spare_cells [get_cells *sspare*]
spread_spare_cells -cells $spare_cells
place_eco_cells -cells $spare_cells -legalize_only 

set_app_options -list {opt.tie_cell.max_fanout 25}
add_tie_cells -objects $spare_cells -tie_low_lib_cells [get_lib_cells */SAEDRVT14_TIE0_4]  -tie_high_lib_cells [get_lib_cells  */SAEDRVT14_TIE1_4] \
 -legalize
set_dont_touch $spare_cells
set_fixed_objects $spare_cells

## CHECKS
#########
#report_ignored_layers ; # To Make sure they are as wanted.
#check_physical_design -stage pre_place_opt
#check_physical_constraints

## CONSTRAINTS 
##############
## Here, We define more constraints on your design that are related to placement stage.

#### Scenario Creation ####create_scenario pw
#### Scenario Creation ####set_operating_conditions worst_low
#### Scenario Creation ####set_tlu_plus_files -max_tluplus $tlupmax \
#### Scenario Creation ####                   -min_tluplus $tlupmin \
#### Scenario Creation ####     		   -tech2itf_map $tech2itf
#### Scenario Creation ####
#### Scenario Creation ####set_scenario_options -leakage_power true; #If we need to optimize leakage power, more effective for multi-Vth designs.
#### Scenario Creation ####set power_default_toggle_rate 0.003
#### Scenario Creation ####set_scenario_options -dynamic_power true
#### Scenario Creation ####
#### Scenario Creation ####source  ../syn/cons/cons.tcl
#### Scenario Creation ####set_propagated_clock [get_clocks clk]
#### Scenario Creation ####
#### Scenario Creation ####set_optimize_pre_cts_power_options -low_power_placement true
#### Scenario Creation ####
#### Scenario Creation ####report_scenario_options


## INITIAL PLACEMENT
####################
## Initial Placement can be done using the following command using any of its target options 
#place_opt -area_recovery |-power |-congestion|

set_app_options -name place.coarse.continue_on_missing_scandef -value true

set_app_option -name place.coarse.congestion_driven_max_util -value 0.3
set_app_options -name place.coarse.max_density -value 0.2

#not in this version
#set_app_options -name place.legalize.high_local_density_threshold -value 0.7

set_app_options -name place.coarse.target_routing_density -value 0.6

set_app_options -name opt.common.user_instance_name_prefix -value "PLACE_"
#set_app_options -name cts.common.user_instance_name_prefix -value "PLACE_"


#place_opt
create_placement -congestion
legalize_placement

## ASSESSMENT
#############
## Open Congestion Map. == > If congested, improve congestion similar to floorplanning.
## Report Timing 

## FIXES
########
# For seriuos congestion issue use the following commands:
#   set placer_enable_enhanced_router TRUE; # enabling the actual GR instead of GR estimator. Increased run time!
#   refine_placement ==> Optimizes congestion only

# If there are violating timing paths, apply optimization -focus- as needed: 
#   report_path_group
#   group_path -name clk -critical_range 1 -weight 5


## OPTIMIZATION
###############
# psynopt -area_recovery |-power| |-congestion| 
#psynopt

#The  psynopt  command  performs incremental preroute or postroute opti-
#mization on the current design. Performs incremental timing-driven  (setup timing, by default) logic optimization with placement legalization.
# It considers other targets using different options
# ex : psynopt -no_design_rule | -only_design_rule | -size_only ==> Used for Focused placment optimization

## FINAL ASSESSMENT
###################

connect_pg_net -net "VDD" [get_pins -hierarchical "*/VDD*"]
connect_pg_net -net "VSS" [get_pins -hierarchical "*/VSS"]


check_legality
## If no legalized cells => legalize_placement -effort high -incremental 
# Check Congestion
# Check Timing 
# report_design_physical -utilization

# DEFINING POWER/GROUND NETS AND PINS			 
#derive_pg_connection     -power_net VDD		\
#			 -ground_net VSS	\
#			 -power_pin VDD		\
#			 -ground_pin VSS	

## Tie fixed values
#set tie_pins [get_pins -all -filter "constant_value == 0 || constant_value == 0 && name !~ V* && is_hierarchical == false "]

#derive_pg_connection 	 -power_net VDD		\
#			 -ground_net VSS	\
#			 -tie

#if {[sizeof_collection $tie_pins] > 0 } {
#	connect_tie_cells -objects $tie_pins \
#                  -obj_type port_inst \
#		  -tie_low_lib_cell  */LOGIC0_X1 \
#		  -tie_high_lib_cell */LOGIC1_X1
#}




puts "finish_place"

save_block -as ${design}_4_placed

##############################################
########### 5. CTS       #####################
##############################################

puts "start_cts"

## CHECKS
#########
#check_physical_design -stage pre_clock_opt 
#check_clock_tree 
#report_clock_tree


## CONSTRAINTS 
##############
## Here, We define more constraints on your design that are related to CTS stage.

#set_driving_cell -lib_cell BUF_X16 -pin Z [get_ports clk]
###OR
 set_input_transition -rise 0.3 [get_ports clk]
 set_input_transition -fall 0.2 [get_ports clk]


#### Set Clock Exceptions

set_ignored_layers -max_routing_layer M9 -min_routing_layer M1 -verbose

remove_clock_tree_options -all -target_latency -target_skew -max_levels



set_lib_cell_purpose -exclude cts [get_lib_cells -of [get_cells *]]

#set_lib_cell_purpose -exclude cts [get_lib_cells "*/*BUF* */*INV* */*DEL*"]
#set_lib_cell_purpose -include cts [get_lib_cells */*INV_S_6*]

set_lib_cell_purpose -include cts */*_INV_S_3*
set_lib_cell_purpose -include cts */*_INV_S_4*
set_lib_cell_purpose -include cts */*_INV_S_6*
set_lib_cell_purpose -include cts */*_INV_S_8*

#saed14rvt_frame_timing_ccs/SAEDRVT14_INV_S_6
##here
set_lib_cell_purpose -include hold [get_lib_cells */*DEL*]

create_routing_rule clknet_NDR -multiplier_spacing 2 -multiplier_width 2
set_clock_routing_rules -net_type root -rules clknet_NDR -max_routing_layer M9 -min_routing_layer M3
set_clock_routing_rules -net_type internal -rules clknet_NDR -max_routing_layer M9 -min_routing_layer M3
set_clock_routing_rules -default_rule -max_routing_layer M9 -min_routing_layer M3


set_max_transition -clock_path 0.100 [get_clocks ]
set_app_options -as_user_default -list {cts.common.max_fanout 25}
set_clock_tree_options -corners [all_corners ] -target_skew 0.050

set_app_options -name cts.common.user_instance_name_prefix -value "CTS_"
set_app_options -name opt.common.user_instance_name_prefix -value "CTS_"

## Selection of CTS cells
###set_clock_tree_references -references [get_lib_cells */CLKBUF*] 
####set_clock_tree_references -references [get_lib_cells */BUF*] 
####set_clock_tree_references -references [get_lib_cells */INV*] 

## Selection of CTO cells
#set_clock_tree_references -sizing_only -references "BEST_PRACTICE_buffers_for_CTS_CTO_sizing"
#set_clock_tree_references -delay_insertion_only -references "BEST_PRACTICE_cels_for_CTS_CTO_delay_insertion" 



### Set Clock Physical Constraints
## Clock Non-Default Ruls (NDR) - Set it to be double width and double spacing 
### define_routing_rule my_route_rule  \
###   -widths   {metal3 0.14 metal4 0.28 metal5 0.28} \
###   -spacings {metal3 0.14 metal4 0.28 metal5 0.28} 

### set_clock_tree_options -clock_trees clk \
###                        -routing_rule my_route_rule  \
### 		       -layer_list "metal3 metal4 metal5"

## To avoid NDR at clock sinks
#set_clock_tree_options -use_default_routing_for_sinks 1

#report_clock_tree -settings
report_clock_settings

## Clock Tree : Synhtesis, Optimization, and Routing
####################################################
## The 3 steps can be done with the combo command clock_opt. But below, we do them individually.
set cts_enable_drc_fixing_on_data true
#clock_opt
clock_opt -to build_clock
clock_opt -from route_clock -to route_clock

connect_pg_net -net "VDD" [get_pins -hierarchical "*/VDD*"]
connect_pg_net -net "VSS" [get_pins -hierarchical "*/VSS"]

			 
save_block -as ${design}_5_cts
puts "finish_cts"

##############################################
########### 6. Routing   #####################
##############################################

puts "start_route"


set_ignored_layer -max M9 -min M1

sh date
route_opt
sh date

connect_pg_net -net "VDD" [get_pins -hierarchical "*/VDD*"]
connect_pg_net -net "VSS" [get_pins -hierarchical "*/VSS"]

save_block -as ${design}_6_route

##############################################
########### 7. Finishing #####################
##############################################

## std filler
set pnr_std_fillers " */SAEDRVT14_FILL_ECO_18   */SAEDRVT14_FILL_ECO_15 */SAEDRVT14_FILL_ECO_12 */SAEDRVT14_FILL_ECO_9   */SAEDRVT14_FILL_ECO_2 */SAEDRVT14_FILL_ECO_1    */SAEDRVT14_FILL_NNWIV1Y2_2 */SAEDRVT14_FILL_NNWIV1Y2_3 */SAEDRVT14_FILL_NNWIY2_2 */SAEDRVT14_FILL_NNWIY2_3 */SAEDRVT14_FILL_NNWSPACERY2_7 */SAEDRVT14_FILL_NNWVDDBRKY2_3 */SAEDRVT14_FILLP2 */SAEDRVT14_FILLP3 */SAEDRVT14_FILL_SPACER_7 */SAEDRVT14_FILL_Y2_3 "

set std_fillers "  */SAEDRVT14_DCAP_PV1ECO_18   "
#foreach filler $pnr_std_fillers { lappend std_fillers "*/${filler}" }
create_stdcell_filler -lib_cell $std_fillers

remove_stdcell_fillers_with_violation
#######
create_stdcell_filler -lib_cell $pnr_std_fillers

connect_pg_net -net "VDD" [get_pins -hierarchical "*/VDD*"]
connect_pg_net -net "VSS" [get_pins -hierarchical "*/VSS"]

save_block -as ${design}_7_finishing

##############################################
########### 8. Checks and Outputs ############
##############################################

#write_oasis or write_gds for ICC2

define_name_rules  no_case -case_insensitive
change_names -rule no_case -hierarchy
change_names -rule verilog -hierarchy
set verilogout_no_tri	 true
set verilogout_equation  false


write_verilog -pg -no_physical_only_cells ./output/${design}_icc.v
write_verilog -no_physical_only_cells ./output/${design}_icc_nopg.v

extract_rc
write_parasitics -output {./output/mips_16.spef}


#close_mw_cel
#close_mw_lib

close_blocks
save_lib
close_lib

exit
