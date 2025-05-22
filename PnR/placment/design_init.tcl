## General paths
set DESIGN_TOP            "cv32e40p_top"
set DESIGN_NAME           "cv32e40p_top"
set DESIGN_REF_PATH 	  /home/ICer/Desktop/share/GP/library/saed_14_pdk/stdcell_rvt
set DESIGN_REF_TECH_PATH  /home/ICer/Desktop/share/GP/library/saed_14_pdk_tech

set DB_PATH 	"/home/ICer/Desktop/share/GP/library/saed_14_pdk/stdcell_rvt/db_ccs"
set SSLIB "saed14rvt_ss0p6v125c.db"
set TTLIB "saed14rvt_tt0p8v25c.db"
set FFLIB "saed14rvt_ff0p88v25c.db"

##
set slow_corner "./cons/saed14rvt_ss0p6v125c.tcl"
set fast_corner "./cons/saed14rvt_ff0p88v25c.tcl"

## 
lappend search_path $DB_PATH
set target_library $DB_PATH/$TTLIB
set link_library "* $target_library"

## Paths to dft files
set SYN_PATH            "/home/ICer/Desktop/share/GP/synthesis/dft"
set GATE_NET_PATH       ${SYN_PATH}/netlists
set SDC_PATH            ${SYN_PATH}/sdc

## Paths to tech files
set TECH_FILE           "${DESIGN_REF_TECH_PATH}/techfiles/saed14nm_1p9m_mw.tf"
set MAP_FILE            "${DESIGN_REF_TECH_PATH}/starrc/saed14nm_tf_itf_tluplus.map"
set TLUPLUS_MAX_FILE    "${DESIGN_REF_TECH_PATH}/starrc/max/saed14nm_1p9m_Cmax.tluplus"
set TLUPLUS_MIN_FILE    "${DESIGN_REF_TECH_PATH}/starrc/min/saed14nm_1p9m_Cmin.tluplus"

## Defining power/ground nets and ports
set NDM_POWER_NET       "VDD"
set NDM_POWER_PORT      "VDD"
set NDM_GROUND_NET      "VSS" 
set NDM_GROUND_PORT     "VSS"

## Constraints for the design
set SDC_FILE $SYN_PATH/sdc/${DESIGN_NAME}_func.sdc

## Setting search paths
set_app_var search_path  "$DESIGN_REF_PATH $DB_PATH $GATE_NET_PATH"

## Library creation
create_lib  ./ndm/$DESIGN_NAME -technology $TECH_FILE \
-ref_libs "$DESIGN_REF_PATH/ndm/saed14rvt_frame_timing_ccs.ndm"

## ??
set_attribute [get_site_defs unit] is_default true
set_attribute [get_site_defs unit] symmetry Y

## Reading the netlist
read_verilog  $GATE_NET_PATH/${DESIGN_NAME}.sv -top $DESIGN_TOP
current_design $DESIGN_TOP

##
remove_corners -all
remove_modes -all
remove_scenarios -all

##
create_corner slow
# create_corner fast

##
read_parasitic_tech \
	-tlup $TLUPLUS_MAX_FILE \
	-layermap $MAP_FILE \
	-name tlup_max

##
# read_parasitic_tech \
# 	-tlup $TLUPLUS_MIN_FILE \
# 	-layermap $MAP_FILE \
# 	-name tlup_min

## 
set_parasitic_parameters -corner slow -early_spec tlup_max -late_spec tlup_max
# set_parasitic_parameters -corner fast -early_spec tlup_min -late_spec tlup_min

##
create_mode func

# ## func mode fast
# current_corner fast
# source $fast_corner
# create_scenario -mode func -corner fast -name func_fast
# source ./cons/func_mode.tcl

## func mode slow
current_corner slow
source $slow_corner
create_scenario -mode func -corner slow -name func_slow
source ./cons/func_mode.tcl

## 
current_scenario func_slow


##
report_corners

##
set_scenario_status -leakage_power false -dynamic_power false [get_scenarios func_slow]

## 
save_block -as ${DESIGN_NAME}_init
