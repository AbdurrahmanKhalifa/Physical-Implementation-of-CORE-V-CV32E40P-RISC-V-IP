## General paths
set DESIGN_TOP            "cv32e40p_top"
set DESIGN_NAME           "cv32e40p_top"
set DESIGN_REF_PATH 	  /mnt/hgfs/saed14_pdk/stdcell_rvt
set DESIGN_REF_TECH_PATH  $DESIGN_REF_PATH

set DB_PATH 	"$DESIGN_REF_PATH/db_ccs"
set SSLIB "saed14rvt_ss0p6v125c.db"
set TTLIB "saed14rvt_tt0p8v25c.db"
set FFLIB "saed14rvt_ff0p88v25c.db"

## Paths to dft files
set SYN_PATH            "../../DFT"
set GATE_NET_PATH       ${SYN_PATH}/netlists
set SDC_PATH            ${SYN_PATH}/sdc

set_app_var search_path  "$DESIGN_REF_PATH $DB_PATH $GATE_NET_PATH"
set target_library $DB_PATH/$TTLIB
set link_library "* $target_library"


## Paths to tech files
set TECH_FILE           "${DESIGN_REF_TECH_PATH}/saed14nm_1p9m_mw.tf"
set MAP_FILE            "${DESIGN_REF_TECH_PATH}/saed14nm_1p9m_layer.map"
set TLUPLUS_MAX_FILE    "${DESIGN_REF_TECH_PATH}/saed14nm_1p9m_Cmax.tluplus"
set TLUPLUS_MIN_FILE    "${DESIGN_REF_TECH_PATH}/saed14nm_1p9m_Cmin.tluplus"

## Constraints for the design
set SDC_FILE $SYN_PATH/sdc/${DESIGN_NAME}.sdc


## Library creation
create_lib  $DESIGN_NAME -technology $TECH_FILE \
-ref_libs "./saed14rvt.ndm"

## ??
set_attribute [get_site_defs unit] is_default true
set_attribute [get_site_defs unit] symmetry Y

## Reading the netlist
read_verilog  $GATE_NET_PATH/${DESIGN_NAME}.ddc -top $DESIGN_TOP
current_design $DESIGN_TOP


############ corners ############
remove_corners -all
remove_modes -all
remove_scenarios -all

#corners
create_corner slow
create_corner typical
create_corner fast

############ Modes ############
create_mode func
create_mode Scan

#current mode
current_mode func

############ Slow Corner ############
read_parasitic_tech \
-tlup $TLUPLUS_MAX_FILE \
-layermap $MAP_FILE \
-name tlup_max

set_parasitics_parameters \
-early_spec tlup_max \
-late_spec tlup_max \
-corners {slow}

############ Fast Corner ############
read_parasitic_tech \
-tlup $TLUPLUS_MIN_FILE \
-layermap $MAP_FILE \
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


set_scenario_status -leakage_power false -dynamic_power false [get_scenarios [list func_slow func_fast]]
report_scenarios


save_block -as ${DESIGN_NAME}_init
