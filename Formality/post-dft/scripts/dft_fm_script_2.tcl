
############################  Search PATH ################################

set top_module cv32e40p_top



set syn       "/mnt/hgfs/GP/Synthesis"
set LIB_PATH  "/mnt/hgfs/saed14_pdk/stdcell_rvt/db_ccs"

lappend search_path $LIB_PATH



####################### Read Reference tech libs ########################
 

set TTLIB "saed14rvt_tt0p6v25c.db"


######################### Formality Setup File ###########################

# Synopsys setup variable
set synopsys_auto_setup true

# Formality Setup File
# set_svf $top_module.svf


###################################################################
###################### Reference Container ########################
###################################################################

read_verilog  -container Ref $syn/netlists/cv32e40p_top.v


# Read Reference technology libraries
read_db -container Ref [list $TTLIB]


# set the top Reference Design
set_reference_design cv32e40p_top
set_top cv32e40p_top

###################################################################
#################### Implementation Container #####################
###################################################################

# Read Implementation Design Files
read_verilog -container Imp -netlist "$syn/../DFT/netlists/cv32e40p_top.v"

# Read Implementation technology libraries
read_db -container Imp [list $TTLIB]

# set the top Implementation Design
set_implementation_design cv32e40p_top
set_top cv32e40p_top


########################## Don't verify ###########################

# do not verify scan in & scan out ports as a compare point as it is existed only after synthesis and not existed in the RTL

#scan in
# set_dont_verify_points -type port Imp:/WORK/*/SI*

#scan_out
# set_dont_verify_points -type port Imp:/WORK/*/SO*


############################### contants ##########################

# all atpg enable (test_mode, scan_enable) are zero during formal compare

#scan_enable
set_constant Ref:/WORK/*/scan_cg_en_i 0
set_constant Imp:/WORK/*/scan_cg_en_i 0


###################### Matching Compare points ####################

match

######################### Run Verification ########################

set successful [verify]
if {!$successful} {
diagnose
analyze_points -failing
}

########################### Reporting ############################# 
report_passing_points > reports/passing_points.rpt
report_failing_points > reports/failing_points.rpt
report_aborted_points > reports/aborted_points.rpt
report_unverified_points > reports/unverified_points.rpt


start_gui


