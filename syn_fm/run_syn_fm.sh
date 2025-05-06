mkdir -p reports
mkdir -p log

fm_shell -f scripts/syn_fm_script.tcl | tee log/syn_fm.log
