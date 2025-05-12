# ================================================ #
# ================== Start_Step ================== #
# ================================================ #
open_block ./cv32e40p.dlib:cv32e40p_setup.design

copy_block -from_block cv32e40p.dlib:cv32e40p_setup.design -to_block cv32e40p_floorpaln

current_block cv32e40p_floorpaln.design


# ================================================ #
# ================= First Step =================== #
# ================================================ #

# -- Metal layers Directions 
set_attribute [get_layers {M1 M3 M5 M7 M9}] routing_direction horizontal 
set_attribute [get_layers {M2 M4 M6 M8}] routing_direction vertical

# -- Metal Layers Offest 
# set_attribute [get_layers {M1}] track_offset 0.03 
# set_attribute [get_layers {M2}] track_offset 0.04

# -- For power Layers 
set_ignored_layers -max_routing_layer M8 
set_ignored_layers -max_routing_layer M9

# -- site def attribute 
set Name_unit [get_site_defs]
set_attribute [get_site_defs $Name_unit] is_default true
set_attribute [get_site_defs  $Name_unit] symmetry {Y}



# ================================================ #
# ================== Second Step ================= #
# ================================================ #
# -- Initialize_Floor_planning 
initialize_floorplan -core_utilization .7 -shape R -orientation N -core_offset {1}  -flip_first_row false -side_ratio {1 1}


# ================================================ #
# ================= Third Step =================== #
# ================================================ #
# -- Muliple Power Domains (if UPF File existing) 
# ================================================ #
# ================= Fourth Step ================== #
# ================================================ #
# --- IO Pad Cells
set_block_pin_constraints -self -allowed_layers {M5 M6} -pin_spacing 2 -sides {1 2} -corner_keepout_num_tracks 1
place_pins -ports [get_ports -filter {direction == in }] 

set_block_pin_constraints -self -allowed_layers {M5 M6}  -pin_spacing 2 -sides {3 4} -corner_keepout_num_tracks 1
place_pins -ports [get_ports -filter {direction == out }] 



# ================================================ #
# ================= Fifth Step =================== #
# ================================================ #
# --- Placement Blockage  
# ================================================ #
# ================ Seventh Step ================== #
# ================================================ #
# --- Place Macro cells
# ================================================ #
# ================ Seventh Step ================== #
# ================================================ #
create_tap_cells -lib_cell saed14hvt_frame_timing_ccs/SAEDHVT14_TAPDS  -pattern stagger -distance 20

# ================================================ #
# ================== Reports ===================== #
# ================================================ #
sh mkdir -p reports outputs
report_ports [all_inputs] > ./reports/input_port.rpt
report_ports [all_outputs] > ./reports/output_port.rpt
report_cell  > ./reports/cells.rpt
report_nets  > ./reports/nets.rpt
report_qor   > ./reports/qor.rpt
report_timing > ./reports/timing.rpt 
report_timing -delay max -max_paths 2 > ./reports/two_critical_path_setup.rpt
report_utilization > ./reports/utilization.rpt
get_placement_blockages > ./reports/Blockage.rpt
# ================================================ #
# =================== End_Step =================== #
# ================================================ #
write_def ./outputs/cv32e40p.def
write_verilog -include {all} ./outputs/cv32e40p.ddc
write_verilog -include {all} ./outputs/cv32e40p.v
write_sdc -output ./outputs/cv32e40p.sdc

save_block ; # NDM database  


