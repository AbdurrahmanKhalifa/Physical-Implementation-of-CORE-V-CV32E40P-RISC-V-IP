mkdir -p reports
mkdir -p sdf
mkdir -p sdc
mkdir -p netlists
mkdir -p log

dc_shell -f scripts/syn_script.tcl | tee log/syn.log
