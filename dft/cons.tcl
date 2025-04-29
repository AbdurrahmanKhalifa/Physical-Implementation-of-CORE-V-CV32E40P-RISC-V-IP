####################################################################################
           #########################################################
                  #### Section 0 : DC Variables ####
           #########################################################
#################################################################################### 

# Prevent assign statements in the generated netlist (must be applied before compile command)
set_fix_multiple_port_nets -all -buffer_constants -feedthroughs

#set_input_transition 0.1 [remove_from_collection [all_inputs] [get_ports clk_i]]

set_clock_uncertainty [expr 0.01 * $clock_period] [get_clocks clk_i]

# Clocks
set_dont_touch_network [get_clocks clk_i]
# Resets
set_dont_touch_network [get_ports rst_ni]

####################################################################################
           #########################################################
                  #### Section 4 : Driving cells ####
           #########################################################
####################################################################################

#set_driving_cell -library saed14hvt_ff0p88v125c -lib_cell SAEDHVT14_BUF_1 -pin X [remove_from_collection [all_inputs] [get_ports clk_i]]
#set_driving_cell -library saed14hvt_tt0p6v25c -lib_cell SAEDHVT14_BUF_1 -pin X [all_inputs]
set_driving_cell -library saed14hvt_ss0p6v125c -lib_cell SAEDHVT14_BUF_1 -pin X [all_inputs]


####################################################################################
           #########################################################
                  #### Section 5 : Output load ####
           #########################################################
####################################################################################
set_load 0.3956 [all_outputs] 
#input cap of buf_1
#set_load 1.59 [all_outputs]   input cap of buf_16
#set_load 10 [all_outputs]
set_max_fanout 4 [current_design]


####################################################################################
           #########################################################
                 #### Section 6 : Operating Condition ####
           #########################################################
####################################################################################

# Define the Worst Library for Max(#setup) analysis
# Define the Best Library for Min(hold) analysis

#set_operating_conditions -min_library "saed14hvt_ff0p88v125c" -min "ff0p88v125c" -max_library "saed14hvt_ss0p6v125c" -max "ss0p6v125c"

#set_operating_conditions -min_library "saed14hvt_tt0p6v25c" -min "tt0p6v25c" -max_library "saed14hvt_tt0p6v25c" -max "tt0p6v25c"
set_operating_conditions -min_library "saed14hvt_ss0p6v125c" -min "ss0p6v125c" -max_library "saed14hvt_ss0p6v125c" -max "ss0p6v125c"
#set_operating_conditions -min_library "saed14hvt_ff0p88v125c" -min "ff0p88v125c" -max_library "saed14hvt_ff0p88v125c" -max "ff0p88v125c"

#ungroup -flatten -all
