open_block ../ndm/cv32e40p_top:cv32e40p_top_init
copy_block -from_block cv32e40p_top:cv32e40p_top_init -to_block cv32e40p_floorplan
current_block cv32e40p_floorplan

remove_ignored_layers -all

## Defining power/ground nets and ports
set NDM_POWER_NET       "VDD"
set NDM_POWER_PORT      "VDD"
set NDM_GROUND_NET      "VSS" 
set NDM_GROUND_PORT     "VSS"

## Making layers perpendicular on each other
set_attribute [get_site_defs unit] is_default true
set_attribute [get_site_defs unit] symmetry Y
set_attribute [get_layers {M1 M3 M5 M7 M9}] routing_direction horizontal
set_attribute [get_layers {M2 M4 M6 M8}]    routing_direction vertical
set_attribute [get_layers MRDL]           routing_direction horizontal


## Initial floorplan
initialize_floorplan \
  -core_utilization 0.4 \
  -flip_first_row true \
  -core_offset {5 5 5 5}

## 
set_block_pin_constraints -allowed_layers {M4 M5 M6} -pin_spacing  8 -self

## Pin placement
place_pins -ports [get_ports *]

## Defining tap cells
create_tap_cells -lib_cell [get_lib_cells */SAEDRVT14_TAPDS] -distance 30 -pattern stagger



## Creating and connecting power and ground nets
create_net -power $NDM_POWER_NET
create_net -ground $NDM_GROUND_NET 

connect_pg_net -net $NDM_POWER_NET [get_pins -hierarchical "*/VDD"]
connect_pg_net -net $NDM_GROUND_NET [get_pins -hierarchical "*/VSS"]


## Outputting the floorplan report
sh mkdir -p reports sdc
report_qor > ./reports/fp_qor.rpt
report_utilization > ./reports/fp_utilization.rpt
write_sdc  -output ./sdc/cv32e40p.sdc

save_block -as cv32e40p_floorplan
