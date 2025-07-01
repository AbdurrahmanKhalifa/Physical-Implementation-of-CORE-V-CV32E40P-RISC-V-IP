##############################################
###########    CTS       #####################
##############################################
open_block ../ndm/cv32e40p_top:cv32e40p_placement
copy_block -from_block cv32e40p_top:cv32e40p_placement -to_block cv32e40p_CTS
current_block cv32e40p_CTS

set_dont_use  [get_lib_cells */*DEL_R2V1_2*]
set_dont_use  [get_lib_cells */*DEL_R2V2_2*]
##############
## Track opt
##############
remove_tracks -layer M1
remove_tracks -layer M3
create_track -layer M1 -coord 0.005 -space 0.074
create_track -layer M3 -coord 0.005 -space 0.074

##############
## CONSTRAINTS 
##############

# set_app_options -name time.all_clocks_propagated -value true

## Here, We define more constraints on your design that are related to CTS stage.
remove_ideal_network -all
set_dont_touch_network -clear [get_clocks ]
set_dont_touch_network -clear [get_ports  {clk_i rst_ni scan_clk scan_rst}]
set_driving_cell -lib_cell SAEDRVT14_BUF_4 -pin X [get_ports {clk_i rst_ni scan_clk scan_rst}]
# set_input_transition -rise 0.3 [get_ports {clk_i rst_ni scan_clk scan_rst}]
# set_input_transition -fall 0.2 [get_ports {clk_i rst_ni scan_clk scan_rst}]
set_max_transition -clock_path 0.3 [get_clocks ] ; #--------------------------- from 0.2-> 0.3
set_app_options -as_user_default -list {cts.common.max_fanout 25}
set_clock_tree_options -corners [all_corners ] -target_skew 0.05


#### Set Clock Exceptions
set_ignored_layers -max_routing_layer M9 -min_routing_layer M1 -verbose
remove_clock_tree_options -all -target_latency -target_skew -max_levels

set_lib_cell_purpose -exclude cts [get_lib_cells -of [get_cells *]]
set_lib_cell_purpose -include cts */*_INV_S_4*
set_lib_cell_purpose -include cts */*_INV_S_6*
set_lib_cell_purpose -include cts */*_INV_S_8*

# set_lib_cell_purpose -exclude hold [get_lib_cells -of [get_cells *]]
set_lib_cell_purpose -include hold [get_lib_cells */*DEL*]

create_routing_rule clknet_NDR -multiplier_spacing 2 -multiplier_width 2
set_clock_routing_rules -net_type root -rules clknet_NDR -max_routing_layer M9 -min_routing_layer M3
set_clock_routing_rules -net_type internal -rules clknet_NDR -max_routing_layer M9 -min_routing_layer M3
set_clock_routing_rules -default_rule -max_routing_layer M9 -min_routing_layer M3


set_app_options -name cts.common.user_instance_name_prefix -value "CTS_"
set_app_options -name opt.common.user_instance_name_prefix -value "CTS_"

report_clock_settings

## Clock Tree : Synhtesis, Optimization, and Routing
####################################################
## The 3 steps can be done with the combo command clock_opt.
set cts_enable_drc_fixing_on_data true
clock_opt
# clock_opt -to build_clock
# clock_opt -from route_clock -to route_clock
# clock_opt -from final_opto

## If any issue at analysis, update CT constraints 
##################################################

connect_pg_net -net "VDD" [get_pins -hierarchical "*/VDD*"]
connect_pg_net -net "VSS" [get_pins -hierarchical "*/VSS"]


# ================================================ #
# =================== Reports ==================== #
# ================================================ #

sh mkdir -p reports output_cts 

report_routing_rules -verbose >  reports/cts_routing_rules.rpt
report_clock_routing_rules >  reports/cts_clock_routing_rules.rpt
report_ports -verbose [get_ports *clk*] >  reports/cts_ports.rpt
report_clock_settings >  reports/cts_clk_setting.rpt
report_utilization > reports/utilization.rpt
check_pg_drc  > reports/drc_final.rpt
check_routes  > reports/routes_violations.rpt
report_design > reports/design.rpt
report_cell   > reports/cells.rpt
report_qor    > reports/qor.rpt
report_timing -nosplit -delay_type max -max_paths 10 -significant_digits 3 > reports/setup.rpt
report_timing -nosplit -delay_type min -max_paths 10 -significant_digits 3 > reports/hold.rpt


write_def output_cts/cv32e40p.def
write_verilog -include {all} output_cts/cv32e40p.v
	 
save_block -as cv32e40p_CTS
puts "finish_cts"

start_gui
