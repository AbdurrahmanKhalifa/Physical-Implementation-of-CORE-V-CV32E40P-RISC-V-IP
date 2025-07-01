open_block ../ndm/cv32e40p_top:cv32e40p_routing
copy_block -from_block cv32e40p_top:cv32e40p_routing -to_block cv32e40p_finish
current_block cv32e40p_finish

source -v ../prime_time/eco.tcl

# place_eco_cells -eco_changed_cells
legalize_placement
check_legality

connect_pg_net -net "VDD" [get_pins -hierarchical "*/VDD*"]
connect_pg_net -net "VSS" [get_pins -hierarchical "*/VSS"]
check_pg_connectivity
check_pg_drc 

route_eco -open_net_driven true
check_lvs

check_routes

write_verilog  ./output/cv32e40p.v
foreach scenario {func_fast_Cmax func_fast_Cmin func_slow_Cmax func_slow_Cmin} {
    write_sdc -output ./output/$scenario.sdc -scenario $scenario
}

write_parasitics -output {./output/cv32e40p.spef}
# -------------- After iteration in prime time -----------------------------------------------
source -v ../prime_time/After_finishing/eco.tcl

# place_eco_cells -eco_changed_cells
legalize_placement
check_legality

connect_pg_net -net "VDD" [get_pins -hierarchical "*/VDD*"]
connect_pg_net -net "VSS" [get_pins -hierarchical "*/VSS"]
check_pg_connectivity
check_pg_drc 

route_eco -open_net_driven true
check_lvs

check_routes

##############################################
##############################################

# std filler
remove_placement_spacing_rules -all

set DecapCells "*/*DCAP*"
create_stdcell_fillers -lib_cells $DecapCells -utilization 10


set pnr_std_fillers " */SAEDRVT14_FILL_ECO_18   */SAEDRVT14_FILL_ECO_15 */SAEDRVT14_FILL_ECO_12 */SAEDRVT14_FILL_ECO_9   */SAEDRVT14_FILL_ECO_2 */SAEDRVT14_FILL_ECO_1    */SAEDRVT14_FILL_NNWIV1Y2_2 */SAEDRVT14_FILL_NNWIV1Y2_3 */SAEDRVT14_FILL_NNWIY2_2 */SAEDRVT14_FILL_NNWIY2_3 */SAEDRVT14_FILL_NNWSPACERY2_7 */SAEDRVT14_FILL_NNWVDDBRKY2_3 */SAEDRVT14_FILLP2 */SAEDRVT14_FILLP3 */SAEDRVT14_FILL_SPACER_7 */SAEDRVT14_FILL_Y2_3 "
set std_fillers "  */SAEDRVT14_DCAP_PV1ECO_18   "
#foreach filler $pnr_std_fillers { lappend std_fillers "*/${filler}" }
create_stdcell_filler -lib_cell $std_fillers
remove_stdcell_fillers_with_violation
#######
create_stdcell_filler -lib_cell $pnr_std_fillers

connect_pg_net -net "VDD" [get_pins -hierarchical "*/VDD*"]
connect_pg_net -net "VSS" [get_pins -hierarchical "*/VSS"]


define_name_rules  no_case -case_insensitive
change_names -rule no_case -hierarchy
change_names -rule verilog -hierarchy
set verilogout_no_tri	 true
set verilogout_equation  false

sh mkdir -p output reports
write_verilog  ./output/cv32e40p.v