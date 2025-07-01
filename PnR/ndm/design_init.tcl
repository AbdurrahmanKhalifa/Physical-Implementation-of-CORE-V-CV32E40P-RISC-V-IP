## General paths
set DESIGN_TOP            "cv32e40p_top"
set DESIGN_NAME           "cv32e40p_top"
set DESIGN_REF_PATH 	  /mnt/hgfs/saed14_pdk/stdcell_rvt

set DB_PATH 	"$DESIGN_REF_PATH/db_ccs"
set SSLIB "saed14rvt_ss0p6v125c.db"
set TTLIB "saed14rvt_tt0p8v25c.db"
set FFLIB "saed14rvt_ff0p88v25c.db"

## Paths to dft files
set SYN_PATH            "../../Synthesis"
set DFT_PATH            "../../DFT"
set GATE_NET_PATH       ${DFT_PATH}/netlists

set_app_var search_path  "$DESIGN_REF_PATH $DB_PATH $GATE_NET_PATH"
set target_library $TTLIB
set link_library "* $SSLIB $TTLIB $FFLIB"


## Paths to tech files
set TECH_FILE           "${DESIGN_REF_PATH}/saed14nm_1p9m_mw.tf"
set MAP_FILE            "${DESIGN_REF_PATH}/saed14nm_1p9m_layer.map"
set TLUPLUS_MAX_FILE    "${DESIGN_REF_PATH}/saed14nm_1p9m_Cmax.tluplus"
set TLUPLUS_MIN_FILE    "${DESIGN_REF_PATH}/saed14nm_1p9m_Cmin.tluplus"

## Constraints for the design
set SDC_FILE $SYN_PATH/sdc/${DESIGN_NAME}.sdc
set SDC_FILE_scan $DFT_PATH/sdc/${DESIGN_NAME}.sdc


## Library creation
create_lib  $DESIGN_NAME -technology $TECH_FILE \
-ref_libs "./saed14rvt.ndm"


## Reading the netlist
read_verilog  $GATE_NET_PATH/${DESIGN_NAME}.v -top $DESIGN_TOP
current_design $DESIGN_TOP

############ Read Parasitics Parameters ############
read_parasitic_tech \
-tlup $TLUPLUS_MAX_FILE \
-layermap $MAP_FILE \
-name tlup_max

read_parasitic_tech \
-tlup $TLUPLUS_MIN_FILE \
-layermap $MAP_FILE \
-name tlup_min

############### MCMM #####################################################
remove_corners -all
remove_modes -all
remove_scenarios -all

############ Modes ############
create_mode func
create_mode scan

############ corners ############
# We must specify temperature and voltage to use the library
create_corner fast_Cmax
create_corner fast_Cmin
create_corner slow_Cmax 
create_corner slow_Cmin

set_process_label "ff"  -corners {fast_Cmax fast_Cmin}
set_temperature 25      -corners {fast_Cmax fast_Cmin}
set_voltage 0.88        -corners {fast_Cmax fast_Cmin}

set_process_label "ss"  -corners {slow_Cmax slow_Cmin}
set_temperature 125     -corners {slow_Cmax slow_Cmin}
set_voltage 0.6         -corners {slow_Cmax slow_Cmin}


#scenarios
create_scenario -mode func -corner fast_Cmax -name func_fast_Cmax
create_scenario -mode func -corner fast_Cmin -name func_fast_Cmin
create_scenario -mode func -corner slow_Cmax -name func_slow_Cmax
create_scenario -mode func -corner slow_Cmin -name func_slow_Cmin

create_scenario -mode scan -corner fast_Cmax -name scan_fast_Cmax
create_scenario -mode scan -corner fast_Cmin -name scan_fast_Cmin
create_scenario -mode scan -corner slow_Cmax -name scan_slow_Cmax
create_scenario -mode scan -corner slow_Cmin -name scan_slow_Cmin

#-------------------------------------------------------------------------

set_parasitic_parameters \
-early_spec tlup_min \
-late_spec tlup_min \
-early_temperature 25 \
-late_temperature 25 \
-corners {fast_Cmin}

set_parasitic_parameters \
-early_spec tlup_max \
-late_spec tlup_max \
-early_temperature 25 \
-late_temperature 25 \
-corners {fast_Cmax}

set_parasitic_parameters \
-early_spec tlup_min \
-late_spec tlup_min \
-early_temperature 125 \
-late_temperature 125 \
-corners {slow_Cmin}

set_parasitic_parameters \
-early_spec tlup_max \
-late_spec tlup_max \
-early_temperature 125 \
-late_temperature 125 \
-corners {slow_Cmax}

##############################################



foreach scenario {func_fast_Cmax func_fast_Cmin func_slow_Cmax func_slow_Cmin} {
    current_scenario $scenario 
    # set_propagated_clock [get_clocks ] 
    read_sdc -e $SDC_FILE
} 

foreach scenario {scan_fast_Cmax scan_fast_Cmin scan_slow_Cmax scan_slow_Cmin} {
    current_scenario $scenario 
    # set_propagated_clock [get_clocks ] 
    read_sdc -e $SDC_FILE_scan
} 


#current scenario
current_scenario func_slow_Cmax


set_scenario_status -leakage_power false -dynamic_power false [get_scenarios ]
report_scenarios


save_block -as ${DESIGN_NAME}_init
