open_block ../ndm/cv32e40p_top:cv32e40p_powerplan
copy_block -from_block cv32e40p_top:cv32e40p_powerplan -to_block cv32e40p_placement
current_block cv32e40p_placement

source ../../DFT/cons/dont_use.tcl

set_attribute [get_layers {M1 M3 M5 M7 M9}] routing_direction vertical
set_attribute [get_layers {M2 M4 M6 M8}]    routing_direction horizontal

add_spare_cells -cell_name sspare -lib_cell "*/SAEDRVT14_ND2_2 */SAEDRVT14_NR2_2" \
 -num_instances 25

set spare_cells [get_cells *sspare*]
spread_spare_cells -cells $spare_cells
place_eco_cells -cells $spare_cells -legalize_only 

set_app_options -list {opt.tie_cell.max_fanout 15}
add_tie_cells -objects $spare_cells -tie_low_lib_cells [get_lib_cells */SAEDRVT14_TIE0_4]  -tie_high_lib_cells [get_lib_cells  */SAEDRVT14_TIE1_4] \
 -legalize
set_dont_touch $spare_cells
set_fixed_objects $spare_cells

set_placement_spacing_label -name {X} -side both -lib_cells [get_lib_cells */*/frame]
set_placement_spacing_rule -labels {X X} {0 2}

# set_app_options -name place.coarse.continue_on_missing_scandef -value true
set_app_option  -name place.coarse.congestion_driven_max_util -value 0.4
set_app_options -name place.coarse.max_density -value 0.2
set_app_options -name place.coarse.target_routing_density -value 0.6
set_app_options -name opt.common.user_instance_name_prefix -value "PLACE_"
set_host_options -max_cores 8 -num_processes 8

# remove_ideal_network -all

check_design -checks pre_placement_stage
check_design -checks physical_constraints
analyze_lib_cell_placement -lib_cells *


read_def ../../DFT/dft_def/cv32e40p_top.scandef

place_opt
legalize_placement
# create_placement -congestion

connect_pg_net -net "VDD" [get_pins -hierarchical "*/VDD"]
connect_pg_net -net "VSS" [get_pins -hierarchical "*/VSS"]

check_pg_drc
analyze_design_violations


sh mkdir -p reports netlist 

check_legality -verbose > ./reports/check_legality.rpt
check_routability -connect_standard_cells_within_pins true > ./reports/routability.rpt
report_congestion  > ./reports/report_congestion.rpt
report_utilization > ./reports/report_utilization_after_place.rpt
report_timing -nosplit -delay_type max -max_paths 5 > ./reports/timing_max_place.rpt
report_timing -nosplit -delay_type min -max_paths 5 > ./reports/timing_min_place.rpt
report_qor > ./reports/report_qor_place.rpt
write_verilog  netlist/cv32e40p.v


save_block -as cv32e40p_placement

start_gui
