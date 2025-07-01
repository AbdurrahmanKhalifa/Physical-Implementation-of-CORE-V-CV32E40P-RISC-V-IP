file delete -force ./work
set multi_scenario_working_directory ./work 

create_scenario -name slow_Cmax -image func_fast_Cmax
create_scenario -name slow_Cmin -image func_fast_Cmin
create_scenario -name fast_Cmax -image func_slow_Cmax
create_scenario -name fast_Cmin -image func_slow_Cmin

set_host_options -num_processes 4 -max_cores 4
start_hosts

current_session {slow_Cmax slow_Cmin fast_Cmax fast_Cmin}

report_constraints -all_violators > constraint_violations_final.rpt 
report_global_timing > globar_timing_final.rpt

# report_constraints -all_violators > constraint_violations_before.rpt 
# report_global_timing > globar_timing_before.rpt

# remote_execute {source /mnt/hgfs/Test_GP/DFT/cons/dont_use.tcl}

# # fix_eco_timing -type setup -buffer_list {SAEDRVT14_BUF_1 SAEDRVT14_BUF_2 SAEDRVT14_BUF_3 SAEDRVT14_BUF_4 SAEDRVT14_BUF_6 SAEDRVT14_BUF_8 SAEDRVT14_BUF_10}
# fix_eco_drc -type max_capacitance -buffer_list {SAEDRVT14_BUF_1 SAEDRVT14_BUF_2 SAEDRVT14_BUF_3 SAEDRVT14_BUF_4 SAEDRVT14_BUF_6 SAEDRVT14_BUF_8 SAEDRVT14_BUF_10}

# report_constraints -all_violators > constraint_violations_after.rpt 
# report_global_timing > globar_timing_after.rpt

# remote_execute {write_changes -o /mnt/hgfs/Test_GP/PnR/prime_time/After_finishing/eco.tcl}
save_session all_corners