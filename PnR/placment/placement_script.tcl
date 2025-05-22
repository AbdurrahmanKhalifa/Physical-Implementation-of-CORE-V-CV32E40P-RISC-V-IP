set_scenario_status func_slow -hold false

remove_ideal_network -all

check_design -checks pre_placement_stage
check_design -checks physical_constraints
analyze_lib_cell_placement -lib_cells *


set SCANDEF_FILE $SYN_PATH/netlists/${DESIGN_NAME}.def
read_def $SCANDEF_FILE

## 
set_app_options -name place.coarse.continue_on_missing_scandef -value false


## 
report_placement_spacing_rules

## 
place_opt
legalize_placement
check_pg_drc
analyze_design_violations

connect_pg_net -net "VDD" [get_pins -hierarchical "*/VDD"]
connect_pg_net -net "VSS" [get_pins -hierarchical "*/VSS"]

check_legality -verbose > ./reports/check_legality.rpt
report_congestion  > ./reports/report_congestion.rpt
report_utilization > ./reports/report_utilization_after_place.rpt
report_timing -nosplit -delay_type max -max_paths 5 > ./reports/timing_max_place.rpt
report_timing -nosplit -delay_type min -max_paths 5 > ./reports/timing_min_place.rpt
report_qor > ./reports/report_qor_place.rpt
create_qor_snapshot -name placement

check_routability -connect_standard_cells_within_pins true

save_block -as ${DESIGN_NAME}_placement

start_gui
