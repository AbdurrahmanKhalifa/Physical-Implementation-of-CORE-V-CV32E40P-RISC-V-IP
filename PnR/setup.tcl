# ================================================ #
# ================== Search path ================= #
# ================================================ #
set search_path /mnt/hgfs/virtual_share/SAED14nm_EDK_CORE_HVT_v_062020/stdcell_hvt/


# ================================================ #
# ================== NDM_library ================= #
# ================================================ #
set reference_library /mnt/hgfs/virtual_share/SAED14nm_EDK_CORE_HVT_v_062020/stdcell_hvt/ndm/saed14hvt_frame_timing_ccs.ndm

# ================================================ #
# =================== Techfile =================== #
# ================================================ #
set TECH_FILE $search_path/saed14nm_1p9m_mw.tf

# ================================================ #
# ================ Design Library ================ #
# ================================================ #
sh rm -rf cv32e40p.dlib

create_lib -technology $TECH_FILE -ref_libs $reference_library cv32e40p.dlib


# ================================================ #
# ================== Load Design ================= #
# ================================================ #
read_verilog -top cv32e40p_top ../../dft/netlists/cv32e40p_top.ddc
# ----------- Read_SDC ----------- #
read_sdc ../../dft/sdc/cv32e40p_top.sdc
# -----------  Linking ----------- #
link_block

# ================================================ #
# ===================== TLU+ ===================== #
# ================================================ #

read_parasitic_tech  -tlup $search_path/saed14nm_1p9m_Cmax.tluplus -name maxTLU

read_parasitic_tech  -tlup $search_path/saed14nm_1p9m_Cmin.tluplus  -name minTLU

set_parasitic_parameters -late_spec maxTLU -early_spec minTLU


# ================================================ #
# =================== End_Step =================== #
# ================================================ #
save_block -as cv32e40p_setup cv32e40p.dlib:cv32e40p_top.design







