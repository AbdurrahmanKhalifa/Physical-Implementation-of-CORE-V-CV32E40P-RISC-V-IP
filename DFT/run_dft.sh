mkdir -p reports
mkdir -p sdf
mkdir -p sdc
mkdir -p netlists
mkdir -p log
mkdir -p dft_def
rm -rf ./log/*
dc_shell -f ./scripts/dft_script.tcl |tee ./log/dft.log
