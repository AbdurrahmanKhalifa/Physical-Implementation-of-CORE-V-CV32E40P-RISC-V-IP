
remove_corners -all
remove_modes -all
remove_scenarios -all

#corners
create_corner slow
create_corner typical
create_corner fast

#load files
set tluplus_max_file "/mnt/hgfs/saed14_pdk/ttt/SAED14nm_PDK_12232018/starrc/max/saed14nm_1p9m_Cmax.tluplus"
set tluplus_min_file "/mnt/hgfs/saed14_pdk/ttt/SAED14nm_PDK_12232018/starrc/min/saed14nm_1p9m_Cmin.tluplus"
set map_file "/mnt/hgfs/saed14_pdk/ttt/SAED14nm_PDK_12232018/starrc/saed14nm_1p9m_layer.map"

#modes
create_mode func
create_mode Scan

#current mode
current_mode func

############ Slow Corner ############
read_parasitic_tech \
-tlup $tluplus_max_file \
-layermap $map_file \
-name tlup_max

set_parasitics_parameters \
-early_spec tlup_max \
-late_spec tlup_max \
-corners {slow}

############ Fast Corner############
read_parasitic_tech \
-tlup $tluplus_min_file \
-layermap $map_file \
-name tlup_min

set_parasitics_parameters \
-early_spec tlup_min \
-late_spec tlup_min \
-corners {fast}


#scenarios
create_scenario -mode func -corner slow -name func_slow
create_scenario -mode func -corner fast -name func_fast

#current scenario
current_scenario func_slow


report_scenarios
set_scenario_status -leakage_power false -dynamic_power false [get_scenarios [list func_slow func_fast]]
report_scenarios
