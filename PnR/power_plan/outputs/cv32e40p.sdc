################################################################################
#
# Design name:  cv32e40p_powerplan
#
# Created by icc2 write_sdc on Thu May  8 22:52:54 2025
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


# Mode: default
# Corner: default
# Scenario: default

# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 9
create_clock -name clk_i -period 5 -waveform {0 2.5} [get_ports {clk_i}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 271
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {rst_ni}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 272
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {pulp_clock_en_i}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 111
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {boot_addr_i[31]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 112
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {boot_addr_i[30]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 113
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {boot_addr_i[29]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 114
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {boot_addr_i[28]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 115
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {boot_addr_i[27]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 116
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {boot_addr_i[26]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 117
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {boot_addr_i[25]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 118
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {boot_addr_i[24]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 119
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {boot_addr_i[23]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 120
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {boot_addr_i[22]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 121
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {boot_addr_i[21]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 122
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {boot_addr_i[20]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 123
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {boot_addr_i[19]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 124
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {boot_addr_i[18]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 125
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {boot_addr_i[17]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 126
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {boot_addr_i[16]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 127
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {boot_addr_i[15]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 128
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {boot_addr_i[14]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 129
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {boot_addr_i[13]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 130
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {boot_addr_i[12]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 131
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {boot_addr_i[11]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 132
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {boot_addr_i[10]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 133
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {boot_addr_i[9]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 134
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {boot_addr_i[8]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 135
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {boot_addr_i[7]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 136
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {boot_addr_i[6]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 137
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {boot_addr_i[5]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 138
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {boot_addr_i[4]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 139
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {boot_addr_i[3]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 140
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {boot_addr_i[2]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 141
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {boot_addr_i[1]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 142
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {boot_addr_i[0]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 143
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {mtvec_addr_i[31]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 144
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {mtvec_addr_i[30]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 145
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {mtvec_addr_i[29]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 146
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {mtvec_addr_i[28]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 147
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {mtvec_addr_i[27]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 148
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {mtvec_addr_i[26]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 149
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {mtvec_addr_i[25]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 150
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {mtvec_addr_i[24]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 151
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {mtvec_addr_i[23]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 152
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {mtvec_addr_i[22]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 153
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {mtvec_addr_i[21]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 154
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {mtvec_addr_i[20]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 155
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {mtvec_addr_i[19]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 156
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {mtvec_addr_i[18]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 157
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {mtvec_addr_i[17]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 158
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {mtvec_addr_i[16]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 159
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {mtvec_addr_i[15]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 160
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {mtvec_addr_i[14]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 161
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {mtvec_addr_i[13]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 162
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {mtvec_addr_i[12]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 163
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {mtvec_addr_i[11]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 164
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {mtvec_addr_i[10]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 165
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {mtvec_addr_i[9]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 166
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {mtvec_addr_i[8]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 167
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {mtvec_addr_i[7]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 168
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {mtvec_addr_i[6]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 169
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {mtvec_addr_i[5]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 170
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {mtvec_addr_i[4]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 171
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {mtvec_addr_i[3]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 172
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {mtvec_addr_i[2]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 173
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {mtvec_addr_i[1]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 174
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {mtvec_addr_i[0]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 175
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_halt_addr_i[31]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 176
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_halt_addr_i[30]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 177
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_halt_addr_i[29]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 178
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_halt_addr_i[28]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 179
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_halt_addr_i[27]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 180
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_halt_addr_i[26]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 181
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_halt_addr_i[25]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 182
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_halt_addr_i[24]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 183
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_halt_addr_i[23]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 184
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_halt_addr_i[22]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 185
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_halt_addr_i[21]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 186
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_halt_addr_i[20]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 187
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_halt_addr_i[19]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 188
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_halt_addr_i[18]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 189
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_halt_addr_i[17]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 190
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_halt_addr_i[16]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 191
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_halt_addr_i[15]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 192
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_halt_addr_i[14]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 193
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_halt_addr_i[13]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 194
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_halt_addr_i[12]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 195
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_halt_addr_i[11]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 196
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_halt_addr_i[10]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 197
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_halt_addr_i[9]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 198
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_halt_addr_i[8]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 199
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_halt_addr_i[7]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 200
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_halt_addr_i[6]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 201
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_halt_addr_i[5]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 202
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_halt_addr_i[4]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 203
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_halt_addr_i[3]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 204
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_halt_addr_i[2]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 205
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_halt_addr_i[1]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 206
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_halt_addr_i[0]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 207
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {hart_id_i[31]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 208
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {hart_id_i[30]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 209
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {hart_id_i[29]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 210
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {hart_id_i[28]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 211
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {hart_id_i[27]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 212
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {hart_id_i[26]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 213
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {hart_id_i[25]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 214
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {hart_id_i[24]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 215
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {hart_id_i[23]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 216
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {hart_id_i[22]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 217
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {hart_id_i[21]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 218
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {hart_id_i[20]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 219
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {hart_id_i[19]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 220
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {hart_id_i[18]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 221
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {hart_id_i[17]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 222
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {hart_id_i[16]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 223
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {hart_id_i[15]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 224
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {hart_id_i[14]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 225
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {hart_id_i[13]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 226
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {hart_id_i[12]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 227
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {hart_id_i[11]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 228
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {hart_id_i[10]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 229
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {hart_id_i[9]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 230
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {hart_id_i[8]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 231
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {hart_id_i[7]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 232
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {hart_id_i[6]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 233
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {hart_id_i[5]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 234
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {hart_id_i[4]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 235
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {hart_id_i[3]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 236
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {hart_id_i[2]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 237
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {hart_id_i[1]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 238
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {hart_id_i[0]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 239
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports \
    {dm_exception_addr_i[31]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 240
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports \
    {dm_exception_addr_i[30]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 241
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports \
    {dm_exception_addr_i[29]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 242
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports \
    {dm_exception_addr_i[28]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 243
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports \
    {dm_exception_addr_i[27]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 244
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports \
    {dm_exception_addr_i[26]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 245
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports \
    {dm_exception_addr_i[25]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 246
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports \
    {dm_exception_addr_i[24]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 247
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports \
    {dm_exception_addr_i[23]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 248
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports \
    {dm_exception_addr_i[22]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 249
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports \
    {dm_exception_addr_i[21]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 250
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports \
    {dm_exception_addr_i[20]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 251
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports \
    {dm_exception_addr_i[19]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 252
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports \
    {dm_exception_addr_i[18]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 253
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports \
    {dm_exception_addr_i[17]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 254
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports \
    {dm_exception_addr_i[16]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 255
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports \
    {dm_exception_addr_i[15]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 256
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports \
    {dm_exception_addr_i[14]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 257
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports \
    {dm_exception_addr_i[13]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 258
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports \
    {dm_exception_addr_i[12]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 259
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports \
    {dm_exception_addr_i[11]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 260
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports \
    {dm_exception_addr_i[10]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 261
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports \
    {dm_exception_addr_i[9]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 262
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports \
    {dm_exception_addr_i[8]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 263
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports \
    {dm_exception_addr_i[7]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 264
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports \
    {dm_exception_addr_i[6]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 265
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports \
    {dm_exception_addr_i[5]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 266
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports \
    {dm_exception_addr_i[4]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 267
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports \
    {dm_exception_addr_i[3]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 268
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports \
    {dm_exception_addr_i[2]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 269
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports \
    {dm_exception_addr_i[1]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 270
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports \
    {dm_exception_addr_i[0]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 289
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {instr_req_o}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 42
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {instr_gnt_i}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 43
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {instr_rvalid_i}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 290
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {instr_addr_o[31]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 291
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {instr_addr_o[30]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 292
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {instr_addr_o[29]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 293
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {instr_addr_o[28]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 294
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {instr_addr_o[27]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 295
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {instr_addr_o[26]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 296
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {instr_addr_o[25]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 297
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {instr_addr_o[24]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 298
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {instr_addr_o[23]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 299
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {instr_addr_o[22]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 300
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {instr_addr_o[21]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 301
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {instr_addr_o[20]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 302
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {instr_addr_o[19]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 303
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {instr_addr_o[18]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 304
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {instr_addr_o[17]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 305
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {instr_addr_o[16]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 306
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {instr_addr_o[15]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 307
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {instr_addr_o[14]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 308
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {instr_addr_o[13]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 309
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {instr_addr_o[12]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 310
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {instr_addr_o[11]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 311
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {instr_addr_o[10]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 312
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {instr_addr_o[9]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 313
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {instr_addr_o[8]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 314
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {instr_addr_o[7]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 315
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {instr_addr_o[6]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 316
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {instr_addr_o[5]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 317
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {instr_addr_o[4]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 318
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {instr_addr_o[3]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 319
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {instr_addr_o[2]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 320
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {instr_addr_o[1]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 321
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {instr_addr_o[0]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 44
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {instr_rdata_i[31]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 45
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {instr_rdata_i[30]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 46
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {instr_rdata_i[29]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 47
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {instr_rdata_i[28]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 48
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {instr_rdata_i[27]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 49
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {instr_rdata_i[26]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 50
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {instr_rdata_i[25]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 51
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {instr_rdata_i[24]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 52
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {instr_rdata_i[23]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 53
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {instr_rdata_i[22]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 54
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {instr_rdata_i[21]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 55
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {instr_rdata_i[20]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 56
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {instr_rdata_i[19]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 57
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {instr_rdata_i[18]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 58
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {instr_rdata_i[17]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 59
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {instr_rdata_i[16]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 60
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {instr_rdata_i[15]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 61
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {instr_rdata_i[14]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 62
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {instr_rdata_i[13]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 63
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {instr_rdata_i[12]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 64
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {instr_rdata_i[11]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 65
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {instr_rdata_i[10]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 66
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {instr_rdata_i[9]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 67
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {instr_rdata_i[8]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 68
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {instr_rdata_i[7]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 69
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {instr_rdata_i[6]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 70
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {instr_rdata_i[5]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 71
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {instr_rdata_i[4]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 72
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {instr_rdata_i[3]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 73
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {instr_rdata_i[2]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 74
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {instr_rdata_i[1]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 75
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {instr_rdata_i[0]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 322
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_req_o}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 76
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {data_gnt_i}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 77
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {data_rvalid_i}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 323
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_we_o}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 324
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_be_o[3]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 325
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_be_o[2]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 326
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_be_o[1]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 327
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_be_o[0]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 328
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_addr_o[31]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 329
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_addr_o[30]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 330
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_addr_o[29]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 331
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_addr_o[28]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 332
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_addr_o[27]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 333
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_addr_o[26]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 334
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_addr_o[25]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 335
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_addr_o[24]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 336
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_addr_o[23]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 337
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_addr_o[22]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 338
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_addr_o[21]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 339
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_addr_o[20]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 340
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_addr_o[19]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 341
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_addr_o[18]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 342
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_addr_o[17]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 343
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_addr_o[16]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 344
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_addr_o[15]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 345
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_addr_o[14]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 346
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_addr_o[13]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 347
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_addr_o[12]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 348
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_addr_o[11]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 349
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_addr_o[10]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 350
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_addr_o[9]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 351
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_addr_o[8]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 352
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_addr_o[7]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 353
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_addr_o[6]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 354
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_addr_o[5]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 355
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_addr_o[4]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 356
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_addr_o[3]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 357
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_addr_o[2]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 358
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_addr_o[1]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 359
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_addr_o[0]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 360
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_wdata_o[31]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 361
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_wdata_o[30]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 362
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_wdata_o[29]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 363
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_wdata_o[28]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 364
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_wdata_o[27]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 365
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_wdata_o[26]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 366
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_wdata_o[25]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 367
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_wdata_o[24]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 368
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_wdata_o[23]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 369
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_wdata_o[22]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 370
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_wdata_o[21]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 371
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_wdata_o[20]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 372
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_wdata_o[19]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 373
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_wdata_o[18]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 374
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_wdata_o[17]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 375
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_wdata_o[16]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 376
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_wdata_o[15]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 377
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_wdata_o[14]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 378
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_wdata_o[13]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 379
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_wdata_o[12]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 380
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_wdata_o[11]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 381
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_wdata_o[10]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 382
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_wdata_o[9]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 383
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_wdata_o[8]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 384
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_wdata_o[7]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 385
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_wdata_o[6]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 386
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_wdata_o[5]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 387
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_wdata_o[4]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 388
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_wdata_o[3]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 389
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_wdata_o[2]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 390
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_wdata_o[1]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 391
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_wdata_o[0]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 78
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {data_rdata_i[31]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 79
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {data_rdata_i[30]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 80
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {data_rdata_i[29]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 81
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {data_rdata_i[28]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 82
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {data_rdata_i[27]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 83
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {data_rdata_i[26]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 84
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {data_rdata_i[25]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 85
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {data_rdata_i[24]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 86
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {data_rdata_i[23]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 87
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {data_rdata_i[22]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 88
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {data_rdata_i[21]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 89
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {data_rdata_i[20]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 90
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {data_rdata_i[19]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 91
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {data_rdata_i[18]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 92
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {data_rdata_i[17]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 93
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {data_rdata_i[16]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 94
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {data_rdata_i[15]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 95
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {data_rdata_i[14]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 96
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {data_rdata_i[13]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 97
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {data_rdata_i[12]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 98
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {data_rdata_i[11]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 99
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {data_rdata_i[10]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 100
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {data_rdata_i[9]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 101
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {data_rdata_i[8]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 102
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {data_rdata_i[7]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 103
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {data_rdata_i[6]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 104
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {data_rdata_i[5]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 105
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {data_rdata_i[4]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 106
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {data_rdata_i[3]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 107
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {data_rdata_i[2]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 108
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {data_rdata_i[1]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 109
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {data_rdata_i[0]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 10
set_input_delay -clock [get_clocks {clk_i}] 2.5 [get_ports {irq_i[31]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 11
set_input_delay -clock [get_clocks {clk_i}] 2.5 [get_ports {irq_i[30]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 12
set_input_delay -clock [get_clocks {clk_i}] 2.5 [get_ports {irq_i[29]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 13
set_input_delay -clock [get_clocks {clk_i}] 2.5 [get_ports {irq_i[28]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 14
set_input_delay -clock [get_clocks {clk_i}] 2.5 [get_ports {irq_i[27]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 15
set_input_delay -clock [get_clocks {clk_i}] 2.5 [get_ports {irq_i[26]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 16
set_input_delay -clock [get_clocks {clk_i}] 2.5 [get_ports {irq_i[25]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 17
set_input_delay -clock [get_clocks {clk_i}] 2.5 [get_ports {irq_i[24]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 18
set_input_delay -clock [get_clocks {clk_i}] 2.5 [get_ports {irq_i[23]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 19
set_input_delay -clock [get_clocks {clk_i}] 2.5 [get_ports {irq_i[22]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 20
set_input_delay -clock [get_clocks {clk_i}] 2.5 [get_ports {irq_i[21]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 21
set_input_delay -clock [get_clocks {clk_i}] 2.5 [get_ports {irq_i[20]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 22
set_input_delay -clock [get_clocks {clk_i}] 2.5 [get_ports {irq_i[19]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 23
set_input_delay -clock [get_clocks {clk_i}] 2.5 [get_ports {irq_i[18]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 24
set_input_delay -clock [get_clocks {clk_i}] 2.5 [get_ports {irq_i[17]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 25
set_input_delay -clock [get_clocks {clk_i}] 2.5 [get_ports {irq_i[16]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 26
set_input_delay -clock [get_clocks {clk_i}] 2.5 [get_ports {irq_i[15]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 27
set_input_delay -clock [get_clocks {clk_i}] 2.5 [get_ports {irq_i[14]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 28
set_input_delay -clock [get_clocks {clk_i}] 2.5 [get_ports {irq_i[13]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 29
set_input_delay -clock [get_clocks {clk_i}] 2.5 [get_ports {irq_i[12]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 30
set_input_delay -clock [get_clocks {clk_i}] 2.5 [get_ports {irq_i[11]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 31
set_input_delay -clock [get_clocks {clk_i}] 2.5 [get_ports {irq_i[10]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 32
set_input_delay -clock [get_clocks {clk_i}] 2.5 [get_ports {irq_i[9]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 33
set_input_delay -clock [get_clocks {clk_i}] 2.5 [get_ports {irq_i[8]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 34
set_input_delay -clock [get_clocks {clk_i}] 2.5 [get_ports {irq_i[7]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 35
set_input_delay -clock [get_clocks {clk_i}] 2.5 [get_ports {irq_i[6]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 36
set_input_delay -clock [get_clocks {clk_i}] 2.5 [get_ports {irq_i[5]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 37
set_input_delay -clock [get_clocks {clk_i}] 2.5 [get_ports {irq_i[4]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 38
set_input_delay -clock [get_clocks {clk_i}] 2.5 [get_ports {irq_i[3]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 39
set_input_delay -clock [get_clocks {clk_i}] 2.5 [get_ports {irq_i[2]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 40
set_input_delay -clock [get_clocks {clk_i}] 2.5 [get_ports {irq_i[1]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 41
set_input_delay -clock [get_clocks {clk_i}] 2.5 [get_ports {irq_i[0]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 283
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {irq_ack_o}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 284
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {irq_id_o[4]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 285
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {irq_id_o[3]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 286
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {irq_id_o[2]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 287
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {irq_id_o[1]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 288
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {irq_id_o[0]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 110
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {debug_req_i}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 392
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {debug_havereset_o}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 393
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {debug_running_o}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 394
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {debug_halted_o}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 273
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {fetch_enable_i}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 400
set_output_delay -clock [get_clocks {clk_i}] 1.25 [get_ports {core_sleep_o}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 274
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {scan_clk}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 275
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {scan_rst}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 276
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {test_mode}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 277
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {SE}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 278
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {SI[4]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 279
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {SI[3]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 280
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {SI[2]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 281
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {SI[1]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 282
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {SI[0]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 395
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {SO[4]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 396
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {SO[3]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 397
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {SO[2]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 398
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {SO[1]}]
# /mnt/hgfs/virtual_share/Physical-Implementation-of-CORE-V-CV32E40P-RISC-V-IP-main/dft/sdc/cv32e40p_top.sdc, \
#   line 399
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {SO[0]}]
