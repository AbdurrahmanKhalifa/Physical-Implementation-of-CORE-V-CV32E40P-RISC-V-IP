#########################################################
       #### Section 1 : Clock Definition ####
#########################################################
set_fix_multiple_port_nets -all -buffer_constants -feedthroughs

set scan_clock_period 100
# Prevent assign statements in the generated netlist (must be applied before compile command)


set_fix_multiple_port_nets -all -buffer_constants -feedthroughs


set_input_delay  [expr 0.3 * $scan_clock_period] -clock clk_i [get_ports {test_mode SI SE}]
set_output_delay [expr 0.3 * $scan_clock_period] -clock clk_i [get_ports SO]

# Clocks
set_dont_touch_network [get_clocks clk_i]

# # Resets
set_dont_touch_network [get_ports rst_ni]

#########################################################
       #### Section 2 : Clocks Relationship ####
#########################################################
# set_clock_groups -physically_exclusive -group {scan_clk} -group {clk_i}

#########################################################
       #### Section 4 : Driving cells ####
#########################################################
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [remove_from_collection [all_inputs] {clk_i rst_ni}]

#########################################################
       #### Section 5 : Output load ####
#########################################################
set_load 0.5 [all_outputs] 

set_max_fanout 15 [current_design]


#########################################################
       #### Section 6 : Operating Condition ####
#########################################################

# Define the Worst Library for Max(#setup) analysis
# Define the Best Library for Min(hold) analysis

# set_operating_conditions -min_library "saed14rvt_ff0p88v25c" -min "ff0p88v25c" -max_library "saed14rvt_ss0p6v125c" -max "ss0p6v125c"

#ungroup -flatten -all
