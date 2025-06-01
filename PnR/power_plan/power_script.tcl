# ================================================ #
# ================== Start_Step ================== #
# ================================================ #

# sh rm -rf "../ndm/cv32e40p_top/cv32e40p_powerplan/"
open_block ../ndm/cv32e40p_top:cv32e40p_floorplan
copy_block -from_block cv32e40p_top:cv32e40p_floorplan -to_block cv32e40p_powerplan
current_block cv32e40p_powerplan


remove_pg_via_master_rules -all
remove_pg_patterns -all
remove_pg_strategies -all
remove_pg_strategy_via_rules -all

set top_ring_width 5
set top_offset 2
set top_ring_spacing 5
set hm_top M9
set vm_top M8

set_app_options -name plan.pgroute.merge_shapes_for_via_creation -value true 
set_app_option -name plan.pgroute.auto_connect_pg_net -value true

# set_pg_via_master_rule PG_VIA_4x1 -cut_spacing 0.25 -via_array_dimension {4 1}

# ================================================ #
#         #  Creation Power and GND Ports  #
# ================================================ #
# --- Creation Power and GND Ports 
create_port -port_type ground -direction inout VSS 
create_port -port_type power  -direction inout VDD

# --- Creation VDD and VSS nets for Network {PDN} 
# create_net -power VDD 
# create_net -ground VSS

connect_net -net VDD [get_ports VDD]
connect_net -net VSS [get_ports VSS]

# --- Connect pins of cells and submodules  to rails   
# hierarchical [include top module + sub modules]
connect_pg_net -net "VDD" [get_pins -hierarchical "*/VDD"]
connect_pg_net -net "VSS" [get_pins -hierarchical "*/VSS"]


# ================================================ #
#     #  Creates a power ground (PG) ring  #
# ================================================ #
create_pg_region top_power_ring_region -core -expand_by_edge  \
          "{{side: 1} {offset: $top_offset}} {{side: 2} {offset: $top_offset}} {{side: 3} {offset: $top_offset}} {{side: 4} {offset: $top_offset}}"
create_pg_ring_pattern \
                 ring \
                 -horizontal_layer $hm_top -vertical_layer $vm_top \
                 -horizontal_width $top_ring_width -vertical_width $top_ring_width \
                 -horizontal_spacing $top_ring_spacing -vertical_spacing $top_ring_spacing

set_pg_strategy  ring -pg_regions { top_power_ring_region } -pattern {{ name: ring} { nets: "VSS VDD" }}

compile_pg -strategies ring

# ================================================ #
#     #  Creates a  Mesh  #
# ================================================ #

create_pg_mesh_pattern P_mesh \
	-layers { \
		{ {horizontal_layer: M9} {width: 5} {spacing: interleaving} {pitch: 30} {offset: 6.08} {trim : true} } \
		{ {vertical_layer: M8}   {width: 5} {spacing: interleaving} {pitch: 30} {offset: 0.856}  {trim : true} } \
		} 

set_pg_strategy S_default_vddvss \
	-core \
	-pattern   { {name: P_mesh} {nets:{VSS VDD}} } \
	-extension { {{stop:outermost_ring}} }
	

compile_pg -strategies {S_default_vddvss} 

# ================================================ #
#             #  Creates rails  #
# ================================================ #
 
create_pg_std_cell_conn_pattern std_rail_conn1 -rail_width 0.094 -layers M1

set_pg_strategy  std_rail_1 -pattern {{name : std_rail_conn1} {nets: "VDD VSS"}} -core

compile_pg -strategies std_rail_1

# ================================================ #
#             #  Creates vias  #
# ================================================ #
create_pg_vias -nets { VDD VSS } -from_layers M8 -to_layers M1 -drc no_check
set_via_def -pitch "0.27 0.27" -vias [get_vias -filter "via_def.name != VIA89_C"] -size "1 7"
# set_via_def -via_def VIA23SQ_C -pitch "0.2 0.2" -vias [get_vias -filter "via_def.name == VIA23SQ_C"] -size "1 10"

## 
check_pg_drc
check_pg_missing_vias
check_pg_connectivity -check_std_cell_pins none

## 
sh mkdir -p reports
check_pg_connectivity > ./reports/check_pg_connectivity.rpt
check_pg_missing_vias > ./reports/check_pg_missing_vias.rpt
check_pg_drc > ./reports/check_pg_drc.rpt

save_block -as cv32e40p_powerplan
start_gui

