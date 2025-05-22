mkdir -p reports
mkdir -p log

fm_shell -f scripts/dft_fm_script.tcl | tee log/dft_fm.log
