
remove_pg_via_master_rules -all
remove_pg_patterns -all
remove_pg_strategies -all
remove_pg_strategy_via_rules -all

set top_offset 5
set top_ring_width 5
set top_ring_spacing 2

set HM M8
set VM M9

set_app_options -name plan.pgroute.merge_shapes_for_via_creation -value true  
set_pg_via_master_rule PG_VIA_4x1 -cut_spacing 0.25 -via_array_dimension {4 1}

## Creates a power ground (PG) ring pattern. 
## The pattern created is associated with a region or area of  the  design by  using  the  set_pg_strategy     
create_pg_ring_pattern \
                ring \
                -nets {VDD} \
                -horizontal_layer $HM -vertical_layer $VM \
                -horizontal_width $top_ring_width -vertical_width $top_ring_width \
                -horizontal_spacing $top_ring_spacing -vertical_spacing $top_ring_spacing \
                -via_rule {{intersection: all}}

 
## Specifies the power ground network creation strategy. -pg_regions {top_power_ring_region}
set_pg_strategy  ring -core -pattern {{name: ring} {nets: "VDD VSS"}}  -extension {{stop: innermost_ring}}
compile_pg -strategies ring

## 

create_pg_mesh_pattern m8_mesh -layers {{{horizontal_layer: M8} {width: 4} {spacing: 20} {pitch: 50} {offset: 8}}}
set_pg_strategy m8_s -core -extension {{direction: T B L R} {stop: innermost_ring}} -pattern {{name: m8_mesh} {nets: VDD VSS}} 
compile_pg -strategies m8_s

## 
create_pg_mesh_pattern m9_mesh -layers {{{vertical_layer: M9} {width: 4} {spacing: 20} {pitch: 50} {offset: 8}}}
set_pg_strategy m9_s -core -extension {{direction: T B L R} {stop: innermost_ring}} -pattern {{name: m9_mesh} {nets: VDD VSS}} 
compile_pg -strategies m9_s


## 
create_pg_std_cell_conn_pattern std_rails -rail_width 0.1 -layers M1; # temp solution
set_pg_strategy  std_rail_s -pattern {{name : std_rails} {nets: VDD VSS}} -core
compile_pg -strategies std_rail_s

## 
create_pg_vias -from_layers M9 -to_layers M1 -via_masters PG_VIA_4x1 -drc no_check -nets VDD; 
create_pg_vias -from_layers M9 -to_layers M1 -via_masters PG_VIA_4x1 -drc no_check -nets VSS; 

connect_pg_net -net $NDM_POWER_NET [get_pins -hierarchical "*/VDD"]
connect_pg_net -net $NDM_GROUND_NET [get_pins -hierarchical "*/VSS"]

## 
check_pg_drc
check_pg_missing_vias
check_pg_connectivity -check_std_cell_pins none

## 
check_pg_connectivity > ./reports/check_pg_connectivity.rpt
check_pg_missing_vias > ./reports/check_pg_missing_vias.rpt
check_pg_drc > ./reports/check_pg_drc.rpt

save_block -as ${DESIGN_NAME}_powerplan

