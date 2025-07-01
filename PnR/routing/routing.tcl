##############################################
########### 6. Routing   #####################
##############################################

puts "start_route"
open_block ../ndm/cv32e40p_top:cv32e40p_CTS
copy_block -from_block cv32e40p_top:cv32e40p_CTS -to_block cv32e40p_routing
current_block cv32e40p_routing


set_ignored_layer -max M9 -min M1

sh date
route_global
route_track
route_detail
route_opt
sh date

connect_pg_net -net "VDD" [get_pins -hierarchical "*/VDD*"]
connect_pg_net -net "VSS" [get_pins -hierarchical "*/VSS"]

foreach scenario {func_fast_Cmax func_fast_Cmin func_slow_Cmax func_slow_Cmin} {
    write_sdc -nosplit -output ./output/$scenario.sdc -scenario $scenario }
    
write_verilog -top_module_first -include {all} ./output/cv32e40p_all.v
write_verilog -top_module_first ./output/cv32e40p.v
write_parasitics -output {./output/cv32e40p.spef}

# ================================================ #
# =================== Reports ==================== #
# ================================================ #

report_routing_rules -verbose >  reports/routing_rules.rpt
report_utilization > reports/utilization.rpt
check_pg_drc  > reports/drc_final.rpt
check_routes  > reports/routes_violations.rpt
report_design > reports/design.rpt
report_cell   > reports/cells.rpt
report_qor    > reports/qor.rpt
report_timing -nosplit -delay_type max -max_paths 10 -significant_digits 3 > reports/setup.rpt
report_timing -nosplit -delay_type min -max_paths 10 -significant_digits 3 > reports/hold.rpt

save_block -as cv32e40p_routing
start_gui
