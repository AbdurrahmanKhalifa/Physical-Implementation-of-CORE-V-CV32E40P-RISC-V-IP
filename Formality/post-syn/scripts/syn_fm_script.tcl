
############################  Search PATH ################################

set top_module cv32e40p_top



set rtl       "/mnt/hgfs/GP/rtl"
set LIB_PATH  "/mnt/hgfs/saed14_pdk/stdcell_rvt/db_ccs"

lappend search_path $LIB_PATH
lappend search_path $rtl
lappend search_path "$rtl/../Synthesis"
lappend search_path "$rtl/include"
lappend search_path "$rtl/vendor/pulp_platform_fpnew/src"



####################### Read Reference tech libs ########################
 

set SSLIB "saed14rvt_ss0p72v125c.db" 
set TTLIB "saed14rvt_tt0p6v25c.db" 
set FFLIB "saed14rvt_ff0p88vm40c.db"


######################### Formality Setup File ###########################

# Synopsys setup variable
set synopsys_auto_setup true

# Formality Setup File
set_svf $top_module.svf


###################################################################
###################### Reference Container ########################
###################################################################

read_sverilog  -container Ref cv32e40p_pkg.sv
read_sverilog  -container Ref cv32e40p_fpu_pkg.sv
read_sverilog  -container Ref cv32e40p_apu_core_pkg.sv

read_sverilog  -container Ref fpnew_pkg.sv


read_sverilog  -container Ref cv32e40p_aligner.sv
read_sverilog  -container Ref cv32e40p_alu.sv
read_sverilog  -container Ref cv32e40p_alu_div.sv
read_sverilog  -container Ref cv32e40p_apu_disp.sv
read_sverilog  -container Ref cv32e40p_compressed_decoder.sv
read_sverilog  -container Ref cv32e40p_controller.sv
read_sverilog  -container Ref cv32e40p_core.sv
read_sverilog  -container Ref cv32e40p_cs_registers.sv
read_sverilog  -container Ref cv32e40p_decoder.sv
read_sverilog  -container Ref cv32e40p_ex_stage.sv
read_sverilog  -container Ref cv32e40p_ff_one.sv
read_sverilog  -container Ref cv32e40p_fifo.sv
read_sverilog  -container Ref cv32e40p_fp_wrapper.sv
read_sverilog  -container Ref cv32e40p_hwloop_regs.sv
read_sverilog  -container Ref cv32e40p_id_stage.sv
read_sverilog  -container Ref cv32e40p_if_stage.sv
read_sverilog  -container Ref cv32e40p_int_controller.sv
read_sverilog  -container Ref cv32e40p_load_store_unit.sv
read_sverilog  -container Ref cv32e40p_mult.sv
read_sverilog  -container Ref cv32e40p_obi_interface.sv
read_sverilog  -container Ref cv32e40p_popcnt.sv
read_sverilog  -container Ref cv32e40p_prefetch_buffer.sv
read_sverilog  -container Ref cv32e40p_prefetch_controller.sv
read_sverilog  -container Ref cv32e40p_register_file_ff.sv
read_sverilog  -container Ref cv32e40p_sleep_unit.sv
read_sverilog  -container Ref cv32e40p_clock_gate.sv
read_sverilog  -container Ref cv32e40p_top.sv


# Read Reference technology libraries
read_db -container Ref [list $TTLIB]


# set the top Reference Design
set_reference_design cv32e40p_top
set_top cv32e40p_top

###################################################################
#################### Implementation Container #####################
###################################################################

# Read Implementation Design Files
read_verilog -container Imp -netlist "$rtl/../Synthesis/netlists/cv32e40p_top.v"

# Read Implementation technology libraries
read_db -container Imp [list $TTLIB]

# set the top Implementation Design
set_implementation_design cv32e40p_top
set_top cv32e40p_top


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

