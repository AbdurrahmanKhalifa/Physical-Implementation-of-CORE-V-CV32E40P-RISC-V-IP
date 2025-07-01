################################################################################
#
# Design name:  cv32e40p_routing
#
# Created by icc2 write_sdc on Sun Jun 29 19:53:13 2025
#
################################################################################

set sdc_version 2.1
set_units -time ns -resistance MOhm -capacitance fF -voltage V -current uA

################################################################################
#
# Units
# time_unit               : 1e-09
# resistance_unit         : 1000000
# capacitive_load_unit    : 1e-15
# voltage_unit            : 1
# current_unit            : 1e-06
# power_unit              : 1e-12
################################################################################


# Mode: func
# Corner: slow_Cmax
# Scenario: func_slow_Cmax

# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 389
create_clock -name clk_i -period 5 -waveform {0 2.5} [get_ports {clk_i}]
set_propagated_clock [get_clocks {clk_i}]
set_load -pin_load 0.5 [get_ports {instr_req_o}]
set_load -pin_load 0.5 [get_ports {instr_addr_o[31]}]
set_load -pin_load 0.5 [get_ports {instr_addr_o[30]}]
set_load -pin_load 0.5 [get_ports {instr_addr_o[29]}]
set_load -pin_load 0.5 [get_ports {instr_addr_o[28]}]
set_load -pin_load 0.5 [get_ports {instr_addr_o[27]}]
set_load -pin_load 0.5 [get_ports {instr_addr_o[26]}]
set_load -pin_load 0.5 [get_ports {instr_addr_o[25]}]
set_load -pin_load 0.5 [get_ports {instr_addr_o[24]}]
set_load -pin_load 0.5 [get_ports {instr_addr_o[23]}]
set_load -pin_load 0.5 [get_ports {instr_addr_o[22]}]
set_load -pin_load 0.5 [get_ports {instr_addr_o[21]}]
set_load -pin_load 0.5 [get_ports {instr_addr_o[20]}]
set_load -pin_load 0.5 [get_ports {instr_addr_o[19]}]
set_load -pin_load 0.5 [get_ports {instr_addr_o[18]}]
set_load -pin_load 0.5 [get_ports {instr_addr_o[17]}]
set_load -pin_load 0.5 [get_ports {instr_addr_o[16]}]
set_load -pin_load 0.5 [get_ports {instr_addr_o[15]}]
set_load -pin_load 0.5 [get_ports {instr_addr_o[14]}]
set_load -pin_load 0.5 [get_ports {instr_addr_o[13]}]
set_load -pin_load 0.5 [get_ports {instr_addr_o[12]}]
set_load -pin_load 0.5 [get_ports {instr_addr_o[11]}]
set_load -pin_load 0.5 [get_ports {instr_addr_o[10]}]
set_load -pin_load 0.5 [get_ports {instr_addr_o[9]}]
set_load -pin_load 0.5 [get_ports {instr_addr_o[8]}]
set_load -pin_load 0.5 [get_ports {instr_addr_o[7]}]
set_load -pin_load 0.5 [get_ports {instr_addr_o[6]}]
set_load -pin_load 0.5 [get_ports {instr_addr_o[5]}]
set_load -pin_load 0.5 [get_ports {instr_addr_o[4]}]
set_load -pin_load 0.5 [get_ports {instr_addr_o[3]}]
set_load -pin_load 0.5 [get_ports {instr_addr_o[2]}]
set_load -pin_load 0.5 [get_ports {instr_addr_o[1]}]
set_load -pin_load 0.5 [get_ports {instr_addr_o[0]}]
set_load -pin_load 0.5 [get_ports {data_req_o}]
set_load -pin_load 0.5 [get_ports {data_we_o}]
set_load -pin_load 0.5 [get_ports {data_be_o[3]}]
set_load -pin_load 0.5 [get_ports {data_be_o[2]}]
set_load -pin_load 0.5 [get_ports {data_be_o[1]}]
set_load -pin_load 0.5 [get_ports {data_be_o[0]}]
set_load -pin_load 0.5 [get_ports {data_addr_o[31]}]
set_load -pin_load 0.5 [get_ports {data_addr_o[30]}]
set_load -pin_load 0.5 [get_ports {data_addr_o[29]}]
set_load -pin_load 0.5 [get_ports {data_addr_o[28]}]
set_load -pin_load 0.5 [get_ports {data_addr_o[27]}]
set_load -pin_load 0.5 [get_ports {data_addr_o[26]}]
set_load -pin_load 0.5 [get_ports {data_addr_o[25]}]
set_load -pin_load 0.5 [get_ports {data_addr_o[24]}]
set_load -pin_load 0.5 [get_ports {data_addr_o[23]}]
set_load -pin_load 0.5 [get_ports {data_addr_o[22]}]
set_load -pin_load 0.5 [get_ports {data_addr_o[21]}]
set_load -pin_load 0.5 [get_ports {data_addr_o[20]}]
set_load -pin_load 0.5 [get_ports {data_addr_o[19]}]
set_load -pin_load 0.5 [get_ports {data_addr_o[18]}]
set_load -pin_load 0.5 [get_ports {data_addr_o[17]}]
set_load -pin_load 0.5 [get_ports {data_addr_o[16]}]
set_load -pin_load 0.5 [get_ports {data_addr_o[15]}]
set_load -pin_load 0.5 [get_ports {data_addr_o[14]}]
set_load -pin_load 0.5 [get_ports {data_addr_o[13]}]
set_load -pin_load 0.5 [get_ports {data_addr_o[12]}]
set_load -pin_load 0.5 [get_ports {data_addr_o[11]}]
set_load -pin_load 0.5 [get_ports {data_addr_o[10]}]
set_load -pin_load 0.5 [get_ports {data_addr_o[9]}]
set_load -pin_load 0.5 [get_ports {data_addr_o[8]}]
set_load -pin_load 0.5 [get_ports {data_addr_o[7]}]
set_load -pin_load 0.5 [get_ports {data_addr_o[6]}]
set_load -pin_load 0.5 [get_ports {data_addr_o[5]}]
set_load -pin_load 0.5 [get_ports {data_addr_o[4]}]
set_load -pin_load 0.5 [get_ports {data_addr_o[3]}]
set_load -pin_load 0.5 [get_ports {data_addr_o[2]}]
set_load -pin_load 0.5 [get_ports {data_addr_o[1]}]
set_load -pin_load 0.5 [get_ports {data_addr_o[0]}]
set_load -pin_load 0.5 [get_ports {data_wdata_o[31]}]
set_load -pin_load 0.5 [get_ports {data_wdata_o[30]}]
set_load -pin_load 0.5 [get_ports {data_wdata_o[29]}]
set_load -pin_load 0.5 [get_ports {data_wdata_o[28]}]
set_load -pin_load 0.5 [get_ports {data_wdata_o[27]}]
set_load -pin_load 0.5 [get_ports {data_wdata_o[26]}]
set_load -pin_load 0.5 [get_ports {data_wdata_o[25]}]
set_load -pin_load 0.5 [get_ports {data_wdata_o[24]}]
set_load -pin_load 0.5 [get_ports {data_wdata_o[23]}]
set_load -pin_load 0.5 [get_ports {data_wdata_o[22]}]
set_load -pin_load 0.5 [get_ports {data_wdata_o[21]}]
set_load -pin_load 0.5 [get_ports {data_wdata_o[20]}]
set_load -pin_load 0.5 [get_ports {data_wdata_o[19]}]
set_load -pin_load 0.5 [get_ports {data_wdata_o[18]}]
set_load -pin_load 0.5 [get_ports {data_wdata_o[17]}]
set_load -pin_load 0.5 [get_ports {data_wdata_o[16]}]
set_load -pin_load 0.5 [get_ports {data_wdata_o[15]}]
set_load -pin_load 0.5 [get_ports {data_wdata_o[14]}]
set_load -pin_load 0.5 [get_ports {data_wdata_o[13]}]
set_load -pin_load 0.5 [get_ports {data_wdata_o[12]}]
set_load -pin_load 0.5 [get_ports {data_wdata_o[11]}]
set_load -pin_load 0.5 [get_ports {data_wdata_o[10]}]
set_load -pin_load 0.5 [get_ports {data_wdata_o[9]}]
set_load -pin_load 0.5 [get_ports {data_wdata_o[8]}]
set_load -pin_load 0.5 [get_ports {data_wdata_o[7]}]
set_load -pin_load 0.5 [get_ports {data_wdata_o[6]}]
set_load -pin_load 0.5 [get_ports {data_wdata_o[5]}]
set_load -pin_load 0.5 [get_ports {data_wdata_o[4]}]
set_load -pin_load 0.5 [get_ports {data_wdata_o[3]}]
set_load -pin_load 0.5 [get_ports {data_wdata_o[2]}]
set_load -pin_load 0.5 [get_ports {data_wdata_o[1]}]
set_load -pin_load 0.5 [get_ports {data_wdata_o[0]}]
set_load -pin_load 0.5 [get_ports {irq_ack_o}]
set_load -pin_load 0.5 [get_ports {irq_id_o[4]}]
set_load -pin_load 0.5 [get_ports {irq_id_o[3]}]
set_load -pin_load 0.5 [get_ports {irq_id_o[2]}]
set_load -pin_load 0.5 [get_ports {irq_id_o[1]}]
set_load -pin_load 0.5 [get_ports {irq_id_o[0]}]
set_load -pin_load 0.5 [get_ports {debug_havereset_o}]
set_load -pin_load 0.5 [get_ports {debug_running_o}]
set_load -pin_load 0.5 [get_ports {debug_halted_o}]
set_load -pin_load 0.5 [get_ports {core_sleep_o}]
set_load -pin_load 0.5 [get_ports {SO[4]}]
set_load -pin_load 0.5 [get_ports {SO[3]}]
set_load -pin_load 0.5 [get_ports {SO[2]}]
set_load -pin_load 0.5 [get_ports {SO[1]}]
set_load -pin_load 0.5 [get_ports {SO[0]}]
# Set latency for io paths.
# -origin user
set_clock_latency -min 0.148571 [get_clocks {clk_i}]
# -origin user
set_clock_latency -max 0.148887 [get_clocks {clk_i}]
# Set propagated on clock sources to avoid removing latency for IO paths.
set_propagated_clock  [get_ports {clk_i}]
# /mnt/hgfs/GP/PnR/CTS/cts.tcl, line 28
set_driving_cell -lib_cell SAEDRVT14_BUF_4 -pin X [get_ports {clk_i}]
# /mnt/hgfs/GP/PnR/CTS/cts.tcl, line 28
set_driving_cell -lib_cell SAEDRVT14_BUF_4 -pin X [get_ports {rst_ni}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 12
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {pulp_clock_en_i}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 13
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {scan_cg_en_i}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 14
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {boot_addr_i[31]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 15
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {boot_addr_i[30]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 16
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {boot_addr_i[29]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 17
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {boot_addr_i[28]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 18
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {boot_addr_i[27]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 19
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {boot_addr_i[26]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 20
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {boot_addr_i[25]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 21
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {boot_addr_i[24]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 22
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {boot_addr_i[23]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 23
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {boot_addr_i[22]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 24
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {boot_addr_i[21]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 25
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {boot_addr_i[20]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 26
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {boot_addr_i[19]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 27
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {boot_addr_i[18]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 28
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {boot_addr_i[17]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 29
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {boot_addr_i[16]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 30
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {boot_addr_i[15]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 31
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {boot_addr_i[14]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 32
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {boot_addr_i[13]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 33
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {boot_addr_i[12]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 34
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {boot_addr_i[11]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 35
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {boot_addr_i[10]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 36
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {boot_addr_i[9]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 37
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {boot_addr_i[8]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 38
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {boot_addr_i[7]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 39
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {boot_addr_i[6]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 40
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {boot_addr_i[5]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 41
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {boot_addr_i[4]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 42
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {boot_addr_i[3]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 43
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {boot_addr_i[2]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 44
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {boot_addr_i[1]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 45
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {boot_addr_i[0]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 46
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {mtvec_addr_i[31]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 47
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {mtvec_addr_i[30]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 48
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {mtvec_addr_i[29]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 49
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {mtvec_addr_i[28]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 50
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {mtvec_addr_i[27]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 51
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {mtvec_addr_i[26]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 52
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {mtvec_addr_i[25]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 53
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {mtvec_addr_i[24]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 54
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {mtvec_addr_i[23]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 55
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {mtvec_addr_i[22]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 56
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {mtvec_addr_i[21]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 57
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {mtvec_addr_i[20]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 58
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {mtvec_addr_i[19]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 59
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {mtvec_addr_i[18]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 60
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {mtvec_addr_i[17]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 61
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {mtvec_addr_i[16]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 62
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {mtvec_addr_i[15]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 63
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {mtvec_addr_i[14]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 64
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {mtvec_addr_i[13]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 65
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {mtvec_addr_i[12]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 66
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {mtvec_addr_i[11]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 67
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {mtvec_addr_i[10]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 68
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {mtvec_addr_i[9]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 69
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {mtvec_addr_i[8]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 70
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {mtvec_addr_i[7]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 71
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {mtvec_addr_i[6]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 72
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {mtvec_addr_i[5]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 73
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {mtvec_addr_i[4]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 74
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {mtvec_addr_i[3]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 75
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {mtvec_addr_i[2]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 76
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {mtvec_addr_i[1]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 77
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {mtvec_addr_i[0]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 78
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {dm_halt_addr_i[31]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 79
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {dm_halt_addr_i[30]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 80
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {dm_halt_addr_i[29]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 81
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {dm_halt_addr_i[28]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 82
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {dm_halt_addr_i[27]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 83
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {dm_halt_addr_i[26]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 84
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {dm_halt_addr_i[25]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 85
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {dm_halt_addr_i[24]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 86
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {dm_halt_addr_i[23]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 87
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {dm_halt_addr_i[22]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 88
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {dm_halt_addr_i[21]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 89
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {dm_halt_addr_i[20]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 90
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {dm_halt_addr_i[19]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 91
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {dm_halt_addr_i[18]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 92
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {dm_halt_addr_i[17]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 93
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {dm_halt_addr_i[16]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 94
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {dm_halt_addr_i[15]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 95
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {dm_halt_addr_i[14]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 96
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {dm_halt_addr_i[13]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 97
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {dm_halt_addr_i[12]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 98
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {dm_halt_addr_i[11]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 99
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {dm_halt_addr_i[10]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 100
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {dm_halt_addr_i[9]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 101
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {dm_halt_addr_i[8]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 102
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {dm_halt_addr_i[7]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 103
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {dm_halt_addr_i[6]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 104
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {dm_halt_addr_i[5]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 105
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {dm_halt_addr_i[4]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 106
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {dm_halt_addr_i[3]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 107
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {dm_halt_addr_i[2]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 108
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {dm_halt_addr_i[1]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 109
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {dm_halt_addr_i[0]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 110
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {hart_id_i[31]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 111
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {hart_id_i[30]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 112
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {hart_id_i[29]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 113
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {hart_id_i[28]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 114
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {hart_id_i[27]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 115
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {hart_id_i[26]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 116
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {hart_id_i[25]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 117
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {hart_id_i[24]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 118
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {hart_id_i[23]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 119
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {hart_id_i[22]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 120
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {hart_id_i[21]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 121
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {hart_id_i[20]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 122
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {hart_id_i[19]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 123
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {hart_id_i[18]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 124
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {hart_id_i[17]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 125
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {hart_id_i[16]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 126
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {hart_id_i[15]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 127
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {hart_id_i[14]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 128
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {hart_id_i[13]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 129
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {hart_id_i[12]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 130
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {hart_id_i[11]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 131
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {hart_id_i[10]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 132
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {hart_id_i[9]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 133
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {hart_id_i[8]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 134
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {hart_id_i[7]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 135
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {hart_id_i[6]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 136
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {hart_id_i[5]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 137
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {hart_id_i[4]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 138
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {hart_id_i[3]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 139
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {hart_id_i[2]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 140
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {hart_id_i[1]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 141
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {hart_id_i[0]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 142
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {dm_exception_addr_i[31]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 143
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {dm_exception_addr_i[30]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 144
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {dm_exception_addr_i[29]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 145
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {dm_exception_addr_i[28]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 146
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {dm_exception_addr_i[27]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 147
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {dm_exception_addr_i[26]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 148
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {dm_exception_addr_i[25]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 149
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {dm_exception_addr_i[24]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 150
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {dm_exception_addr_i[23]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 151
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {dm_exception_addr_i[22]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 152
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {dm_exception_addr_i[21]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 153
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {dm_exception_addr_i[20]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 154
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {dm_exception_addr_i[19]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 155
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {dm_exception_addr_i[18]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 156
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {dm_exception_addr_i[17]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 157
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {dm_exception_addr_i[16]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 158
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {dm_exception_addr_i[15]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 159
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {dm_exception_addr_i[14]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 160
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {dm_exception_addr_i[13]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 161
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {dm_exception_addr_i[12]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 162
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {dm_exception_addr_i[11]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 163
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {dm_exception_addr_i[10]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 164
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {dm_exception_addr_i[9]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 165
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {dm_exception_addr_i[8]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 166
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {dm_exception_addr_i[7]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 167
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {dm_exception_addr_i[6]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 168
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {dm_exception_addr_i[5]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 169
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {dm_exception_addr_i[4]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 170
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {dm_exception_addr_i[3]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 171
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {dm_exception_addr_i[2]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 172
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {dm_exception_addr_i[1]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 173
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {dm_exception_addr_i[0]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 174
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {instr_gnt_i}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 175
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {instr_rvalid_i}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 176
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {instr_rdata_i[31]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 177
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {instr_rdata_i[30]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 178
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {instr_rdata_i[29]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 179
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {instr_rdata_i[28]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 180
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {instr_rdata_i[27]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 181
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {instr_rdata_i[26]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 182
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {instr_rdata_i[25]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 183
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {instr_rdata_i[24]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 184
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {instr_rdata_i[23]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 185
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {instr_rdata_i[22]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 186
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {instr_rdata_i[21]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 187
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {instr_rdata_i[20]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 188
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {instr_rdata_i[19]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 189
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {instr_rdata_i[18]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 190
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {instr_rdata_i[17]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 191
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {instr_rdata_i[16]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 192
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {instr_rdata_i[15]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 193
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {instr_rdata_i[14]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 194
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {instr_rdata_i[13]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 195
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {instr_rdata_i[12]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 196
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {instr_rdata_i[11]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 197
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {instr_rdata_i[10]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 198
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {instr_rdata_i[9]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 199
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {instr_rdata_i[8]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 200
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {instr_rdata_i[7]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 201
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {instr_rdata_i[6]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 202
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {instr_rdata_i[5]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 203
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {instr_rdata_i[4]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 204
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {instr_rdata_i[3]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 205
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {instr_rdata_i[2]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 206
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {instr_rdata_i[1]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 207
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {instr_rdata_i[0]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 208
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {data_gnt_i}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 209
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {data_rvalid_i}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 210
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {data_rdata_i[31]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 211
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {data_rdata_i[30]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 212
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {data_rdata_i[29]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 213
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {data_rdata_i[28]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 214
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {data_rdata_i[27]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 215
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {data_rdata_i[26]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 216
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {data_rdata_i[25]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 217
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {data_rdata_i[24]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 218
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {data_rdata_i[23]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 219
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {data_rdata_i[22]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 220
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {data_rdata_i[21]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 221
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {data_rdata_i[20]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 222
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {data_rdata_i[19]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 223
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {data_rdata_i[18]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 224
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {data_rdata_i[17]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 225
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {data_rdata_i[16]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 226
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {data_rdata_i[15]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 227
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {data_rdata_i[14]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 228
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {data_rdata_i[13]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 229
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {data_rdata_i[12]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 230
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {data_rdata_i[11]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 231
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {data_rdata_i[10]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 232
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {data_rdata_i[9]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 233
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {data_rdata_i[8]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 234
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {data_rdata_i[7]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 235
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {data_rdata_i[6]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 236
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {data_rdata_i[5]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 237
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {data_rdata_i[4]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 238
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {data_rdata_i[3]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 239
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {data_rdata_i[2]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 240
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {data_rdata_i[1]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 241
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {data_rdata_i[0]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 242
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {irq_i[31]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 243
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {irq_i[30]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 244
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {irq_i[29]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 245
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {irq_i[28]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 246
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {irq_i[27]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 247
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {irq_i[26]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 248
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {irq_i[25]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 249
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {irq_i[24]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 250
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {irq_i[23]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 251
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {irq_i[22]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 252
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {irq_i[21]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 253
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {irq_i[20]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 254
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {irq_i[19]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 255
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {irq_i[18]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 256
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {irq_i[17]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 257
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {irq_i[16]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 258
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {irq_i[15]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 259
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {irq_i[14]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 260
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {irq_i[13]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 261
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {irq_i[12]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 262
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {irq_i[11]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 263
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {irq_i[10]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 264
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {irq_i[9]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 265
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {irq_i[8]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 266
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {irq_i[7]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 267
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {irq_i[6]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 268
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {irq_i[5]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 269
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {irq_i[4]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 270
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {irq_i[3]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 271
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {irq_i[2]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 272
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {irq_i[1]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 273
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {irq_i[0]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 274
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {debug_req_i}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 275
set_driving_cell -lib_cell SAEDRVT14_BUF_1 -pin X [get_ports {fetch_enable_i}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 651
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {rst_ni}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 652
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {pulp_clock_en_i}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 653
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {scan_cg_en_i}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 491
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {boot_addr_i[31]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 492
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {boot_addr_i[30]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 493
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {boot_addr_i[29]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 494
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {boot_addr_i[28]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 495
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {boot_addr_i[27]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 496
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {boot_addr_i[26]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 497
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {boot_addr_i[25]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 498
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {boot_addr_i[24]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 499
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {boot_addr_i[23]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 500
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {boot_addr_i[22]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 501
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {boot_addr_i[21]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 502
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {boot_addr_i[20]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 503
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {boot_addr_i[19]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 504
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {boot_addr_i[18]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 505
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {boot_addr_i[17]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 506
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {boot_addr_i[16]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 507
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {boot_addr_i[15]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 508
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {boot_addr_i[14]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 509
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {boot_addr_i[13]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 510
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {boot_addr_i[12]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 511
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {boot_addr_i[11]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 512
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {boot_addr_i[10]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 513
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {boot_addr_i[9]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 514
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {boot_addr_i[8]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 515
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {boot_addr_i[7]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 516
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {boot_addr_i[6]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 517
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {boot_addr_i[5]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 518
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {boot_addr_i[4]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 519
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {boot_addr_i[3]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 520
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {boot_addr_i[2]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 521
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {boot_addr_i[1]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 522
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {boot_addr_i[0]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 523
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {mtvec_addr_i[31]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 524
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {mtvec_addr_i[30]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 525
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {mtvec_addr_i[29]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 526
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {mtvec_addr_i[28]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 527
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {mtvec_addr_i[27]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 528
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {mtvec_addr_i[26]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 529
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {mtvec_addr_i[25]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 530
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {mtvec_addr_i[24]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 531
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {mtvec_addr_i[23]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 532
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {mtvec_addr_i[22]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 533
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {mtvec_addr_i[21]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 534
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {mtvec_addr_i[20]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 535
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {mtvec_addr_i[19]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 536
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {mtvec_addr_i[18]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 537
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {mtvec_addr_i[17]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 538
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {mtvec_addr_i[16]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 539
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {mtvec_addr_i[15]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 540
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {mtvec_addr_i[14]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 541
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {mtvec_addr_i[13]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 542
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {mtvec_addr_i[12]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 543
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {mtvec_addr_i[11]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 544
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {mtvec_addr_i[10]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 545
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {mtvec_addr_i[9]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 546
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {mtvec_addr_i[8]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 547
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {mtvec_addr_i[7]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 548
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {mtvec_addr_i[6]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 549
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {mtvec_addr_i[5]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 550
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {mtvec_addr_i[4]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 551
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {mtvec_addr_i[3]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 552
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {mtvec_addr_i[2]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 553
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {mtvec_addr_i[1]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 554
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {mtvec_addr_i[0]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 555
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_halt_addr_i[31]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 556
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_halt_addr_i[30]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 557
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_halt_addr_i[29]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 558
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_halt_addr_i[28]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 559
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_halt_addr_i[27]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 560
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_halt_addr_i[26]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 561
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_halt_addr_i[25]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 562
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_halt_addr_i[24]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 563
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_halt_addr_i[23]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 564
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_halt_addr_i[22]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 565
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_halt_addr_i[21]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 566
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_halt_addr_i[20]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 567
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_halt_addr_i[19]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 568
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_halt_addr_i[18]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 569
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_halt_addr_i[17]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 570
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_halt_addr_i[16]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 571
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_halt_addr_i[15]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 572
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_halt_addr_i[14]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 573
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_halt_addr_i[13]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 574
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_halt_addr_i[12]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 575
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_halt_addr_i[11]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 576
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_halt_addr_i[10]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 577
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_halt_addr_i[9]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 578
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_halt_addr_i[8]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 579
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_halt_addr_i[7]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 580
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_halt_addr_i[6]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 581
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_halt_addr_i[5]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 582
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_halt_addr_i[4]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 583
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_halt_addr_i[3]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 584
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_halt_addr_i[2]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 585
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_halt_addr_i[1]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 586
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_halt_addr_i[0]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 587
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {hart_id_i[31]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 588
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {hart_id_i[30]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 589
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {hart_id_i[29]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 590
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {hart_id_i[28]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 591
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {hart_id_i[27]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 592
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {hart_id_i[26]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 593
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {hart_id_i[25]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 594
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {hart_id_i[24]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 595
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {hart_id_i[23]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 596
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {hart_id_i[22]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 597
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {hart_id_i[21]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 598
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {hart_id_i[20]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 599
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {hart_id_i[19]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 600
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {hart_id_i[18]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 601
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {hart_id_i[17]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 602
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {hart_id_i[16]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 603
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {hart_id_i[15]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 604
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {hart_id_i[14]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 605
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {hart_id_i[13]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 606
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {hart_id_i[12]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 607
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {hart_id_i[11]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 608
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {hart_id_i[10]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 609
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {hart_id_i[9]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 610
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {hart_id_i[8]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 611
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {hart_id_i[7]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 612
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {hart_id_i[6]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 613
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {hart_id_i[5]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 614
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {hart_id_i[4]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 615
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {hart_id_i[3]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 616
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {hart_id_i[2]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 617
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {hart_id_i[1]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 618
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {hart_id_i[0]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 619
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_exception_addr_i[31]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 620
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_exception_addr_i[30]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 621
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_exception_addr_i[29]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 622
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_exception_addr_i[28]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 623
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_exception_addr_i[27]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 624
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_exception_addr_i[26]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 625
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_exception_addr_i[25]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 626
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_exception_addr_i[24]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 627
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_exception_addr_i[23]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 628
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_exception_addr_i[22]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 629
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_exception_addr_i[21]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 630
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_exception_addr_i[20]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 631
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_exception_addr_i[19]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 632
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_exception_addr_i[18]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 633
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_exception_addr_i[17]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 634
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_exception_addr_i[16]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 635
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_exception_addr_i[15]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 636
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_exception_addr_i[14]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 637
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_exception_addr_i[13]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 638
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_exception_addr_i[12]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 639
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_exception_addr_i[11]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 640
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_exception_addr_i[10]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 641
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_exception_addr_i[9]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 642
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_exception_addr_i[8]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 643
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_exception_addr_i[7]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 644
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_exception_addr_i[6]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 645
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_exception_addr_i[5]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 646
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_exception_addr_i[4]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 647
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_exception_addr_i[3]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 648
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_exception_addr_i[2]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 649
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_exception_addr_i[1]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 650
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_exception_addr_i[0]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 661
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {instr_req_o}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 422
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {instr_gnt_i}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 423
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {instr_rvalid_i}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 662
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {instr_addr_o[31]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 663
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {instr_addr_o[30]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 664
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {instr_addr_o[29]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 665
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {instr_addr_o[28]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 666
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {instr_addr_o[27]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 667
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {instr_addr_o[26]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 668
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {instr_addr_o[25]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 669
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {instr_addr_o[24]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 670
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {instr_addr_o[23]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 671
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {instr_addr_o[22]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 672
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {instr_addr_o[21]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 673
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {instr_addr_o[20]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 674
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {instr_addr_o[19]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 675
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {instr_addr_o[18]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 676
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {instr_addr_o[17]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 677
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {instr_addr_o[16]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 678
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {instr_addr_o[15]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 679
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {instr_addr_o[14]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 680
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {instr_addr_o[13]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 681
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {instr_addr_o[12]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 682
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {instr_addr_o[11]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 683
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {instr_addr_o[10]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 684
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {instr_addr_o[9]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 685
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {instr_addr_o[8]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 686
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {instr_addr_o[7]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 687
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {instr_addr_o[6]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 688
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {instr_addr_o[5]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 689
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {instr_addr_o[4]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 690
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {instr_addr_o[3]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 691
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {instr_addr_o[2]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 692
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {instr_addr_o[1]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 693
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {instr_addr_o[0]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 424
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {instr_rdata_i[31]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 425
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {instr_rdata_i[30]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 426
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {instr_rdata_i[29]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 427
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {instr_rdata_i[28]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 428
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {instr_rdata_i[27]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 429
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {instr_rdata_i[26]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 430
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {instr_rdata_i[25]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 431
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {instr_rdata_i[24]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 432
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {instr_rdata_i[23]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 433
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {instr_rdata_i[22]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 434
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {instr_rdata_i[21]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 435
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {instr_rdata_i[20]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 436
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {instr_rdata_i[19]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 437
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {instr_rdata_i[18]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 438
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {instr_rdata_i[17]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 439
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {instr_rdata_i[16]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 440
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {instr_rdata_i[15]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 441
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {instr_rdata_i[14]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 442
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {instr_rdata_i[13]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 443
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {instr_rdata_i[12]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 444
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {instr_rdata_i[11]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 445
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {instr_rdata_i[10]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 446
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {instr_rdata_i[9]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 447
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {instr_rdata_i[8]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 448
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {instr_rdata_i[7]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 449
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {instr_rdata_i[6]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 450
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {instr_rdata_i[5]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 451
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {instr_rdata_i[4]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 452
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {instr_rdata_i[3]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 453
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {instr_rdata_i[2]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 454
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {instr_rdata_i[1]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 455
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {instr_rdata_i[0]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 694
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_req_o}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 456
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {data_gnt_i}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 457
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {data_rvalid_i}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 695
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_we_o}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 696
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_be_o[3]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 697
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_be_o[2]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 698
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_be_o[1]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 699
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_be_o[0]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 700
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_addr_o[31]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 701
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_addr_o[30]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 702
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_addr_o[29]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 703
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_addr_o[28]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 704
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_addr_o[27]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 705
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_addr_o[26]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 706
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_addr_o[25]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 707
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_addr_o[24]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 708
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_addr_o[23]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 709
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_addr_o[22]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 710
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_addr_o[21]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 711
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_addr_o[20]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 712
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_addr_o[19]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 713
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_addr_o[18]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 714
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_addr_o[17]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 715
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_addr_o[16]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 716
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_addr_o[15]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 717
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_addr_o[14]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 718
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_addr_o[13]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 719
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_addr_o[12]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 720
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_addr_o[11]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 721
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_addr_o[10]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 722
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_addr_o[9]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 723
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_addr_o[8]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 724
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_addr_o[7]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 725
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_addr_o[6]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 726
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_addr_o[5]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 727
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_addr_o[4]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 728
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_addr_o[3]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 729
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_addr_o[2]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 730
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_addr_o[1]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 731
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_addr_o[0]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 732
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_wdata_o[31]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 733
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_wdata_o[30]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 734
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_wdata_o[29]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 735
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_wdata_o[28]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 736
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_wdata_o[27]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 737
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_wdata_o[26]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 738
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_wdata_o[25]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 739
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_wdata_o[24]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 740
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_wdata_o[23]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 741
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_wdata_o[22]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 742
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_wdata_o[21]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 743
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_wdata_o[20]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 744
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_wdata_o[19]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 745
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_wdata_o[18]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 746
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_wdata_o[17]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 747
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_wdata_o[16]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 748
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_wdata_o[15]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 749
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_wdata_o[14]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 750
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_wdata_o[13]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 751
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_wdata_o[12]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 752
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_wdata_o[11]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 753
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_wdata_o[10]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 754
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_wdata_o[9]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 755
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_wdata_o[8]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 756
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_wdata_o[7]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 757
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_wdata_o[6]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 758
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_wdata_o[5]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 759
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_wdata_o[4]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 760
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_wdata_o[3]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 761
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_wdata_o[2]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 762
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_wdata_o[1]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 763
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_wdata_o[0]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 458
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {data_rdata_i[31]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 459
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {data_rdata_i[30]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 460
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {data_rdata_i[29]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 461
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {data_rdata_i[28]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 462
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {data_rdata_i[27]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 463
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {data_rdata_i[26]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 464
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {data_rdata_i[25]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 465
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {data_rdata_i[24]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 466
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {data_rdata_i[23]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 467
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {data_rdata_i[22]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 468
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {data_rdata_i[21]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 469
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {data_rdata_i[20]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 470
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {data_rdata_i[19]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 471
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {data_rdata_i[18]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 472
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {data_rdata_i[17]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 473
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {data_rdata_i[16]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 474
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {data_rdata_i[15]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 475
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {data_rdata_i[14]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 476
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {data_rdata_i[13]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 477
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {data_rdata_i[12]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 478
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {data_rdata_i[11]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 479
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {data_rdata_i[10]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 480
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {data_rdata_i[9]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 481
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {data_rdata_i[8]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 482
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {data_rdata_i[7]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 483
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {data_rdata_i[6]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 484
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {data_rdata_i[5]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 485
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {data_rdata_i[4]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 486
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {data_rdata_i[3]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 487
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {data_rdata_i[2]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 488
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {data_rdata_i[1]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 489
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {data_rdata_i[0]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 390
set_input_delay -clock [get_clocks {clk_i}] 2.5 [get_ports {irq_i[31]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 391
set_input_delay -clock [get_clocks {clk_i}] 2.5 [get_ports {irq_i[30]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 392
set_input_delay -clock [get_clocks {clk_i}] 2.5 [get_ports {irq_i[29]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 393
set_input_delay -clock [get_clocks {clk_i}] 2.5 [get_ports {irq_i[28]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 394
set_input_delay -clock [get_clocks {clk_i}] 2.5 [get_ports {irq_i[27]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 395
set_input_delay -clock [get_clocks {clk_i}] 2.5 [get_ports {irq_i[26]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 396
set_input_delay -clock [get_clocks {clk_i}] 2.5 [get_ports {irq_i[25]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 397
set_input_delay -clock [get_clocks {clk_i}] 2.5 [get_ports {irq_i[24]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 398
set_input_delay -clock [get_clocks {clk_i}] 2.5 [get_ports {irq_i[23]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 399
set_input_delay -clock [get_clocks {clk_i}] 2.5 [get_ports {irq_i[22]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 400
set_input_delay -clock [get_clocks {clk_i}] 2.5 [get_ports {irq_i[21]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 401
set_input_delay -clock [get_clocks {clk_i}] 2.5 [get_ports {irq_i[20]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 402
set_input_delay -clock [get_clocks {clk_i}] 2.5 [get_ports {irq_i[19]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 403
set_input_delay -clock [get_clocks {clk_i}] 2.5 [get_ports {irq_i[18]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 404
set_input_delay -clock [get_clocks {clk_i}] 2.5 [get_ports {irq_i[17]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 405
set_input_delay -clock [get_clocks {clk_i}] 2.5 [get_ports {irq_i[16]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 406
set_input_delay -clock [get_clocks {clk_i}] 2.5 [get_ports {irq_i[15]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 407
set_input_delay -clock [get_clocks {clk_i}] 2.5 [get_ports {irq_i[14]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 408
set_input_delay -clock [get_clocks {clk_i}] 2.5 [get_ports {irq_i[13]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 409
set_input_delay -clock [get_clocks {clk_i}] 2.5 [get_ports {irq_i[12]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 410
set_input_delay -clock [get_clocks {clk_i}] 2.5 [get_ports {irq_i[11]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 411
set_input_delay -clock [get_clocks {clk_i}] 2.5 [get_ports {irq_i[10]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 412
set_input_delay -clock [get_clocks {clk_i}] 2.5 [get_ports {irq_i[9]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 413
set_input_delay -clock [get_clocks {clk_i}] 2.5 [get_ports {irq_i[8]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 414
set_input_delay -clock [get_clocks {clk_i}] 2.5 [get_ports {irq_i[7]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 415
set_input_delay -clock [get_clocks {clk_i}] 2.5 [get_ports {irq_i[6]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 416
set_input_delay -clock [get_clocks {clk_i}] 2.5 [get_ports {irq_i[5]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 417
set_input_delay -clock [get_clocks {clk_i}] 2.5 [get_ports {irq_i[4]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 418
set_input_delay -clock [get_clocks {clk_i}] 2.5 [get_ports {irq_i[3]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 419
set_input_delay -clock [get_clocks {clk_i}] 2.5 [get_ports {irq_i[2]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 420
set_input_delay -clock [get_clocks {clk_i}] 2.5 [get_ports {irq_i[1]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 421
set_input_delay -clock [get_clocks {clk_i}] 2.5 [get_ports {irq_i[0]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 655
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {irq_ack_o}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 656
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {irq_id_o[4]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 657
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {irq_id_o[3]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 658
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {irq_id_o[2]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 659
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {irq_id_o[1]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 660
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {irq_id_o[0]}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 490
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {debug_req_i}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 764
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {debug_havereset_o}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 765
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {debug_running_o}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 766
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {debug_halted_o}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 654
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {fetch_enable_i}]
# /mnt/hgfs/GP/Synthesis/sdc/cv32e40p_top.sdc, line 767
set_output_delay -clock [get_clocks {clk_i}] 1.25 [get_ports {core_sleep_o}]
set_max_transition 0.3 [get_clocks {clk_i}] -clock_path
