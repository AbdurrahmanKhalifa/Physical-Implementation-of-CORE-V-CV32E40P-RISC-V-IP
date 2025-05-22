remove_ignored_layers -all

## Making layers perpendicular on each other
set_attribute [get_layers M1] routing_direction vertical
set_attribute [get_layers M2] routing_direction horizontal
set_attribute [get_layers M3] routing_direction vertical
set_attribute [get_layers M4] routing_direction horizontal
set_attribute [get_layers M5] routing_direction vertical
set_attribute [get_layers M6] routing_direction horizontal
set_attribute [get_layers M7] routing_direction vertical
set_attribute [get_layers M8] routing_direction horizontal
set_attribute [get_layers M9] routing_direction vertical
set_attribute [get_layers MRDL] routing_direction horizontal


## Initial floorplan
initialize_floorplan \
  -core_utilization 0.7 \
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
report_qor > ./reports/fp_qor.rpt
report_utilization > ./reports/fp_utilization.rpt
write_sdc  -output ./sdc/$DESIGN_TOP.sdc

save_block -as ${DESIGN_NAME}_floorplan
