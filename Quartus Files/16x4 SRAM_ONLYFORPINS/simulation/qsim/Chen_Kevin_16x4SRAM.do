onerror {quit -f}
vlib work
vlog -work work Chen_Kevin_16x4SRAM.vo
vlog -work work Chen_Kevin_16x4SRAM.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Chen_Kevin_16x4SRAM_vlg_vec_tst
vcd file -direction Chen_Kevin_16x4SRAM.msim.vcd
vcd add -internal Chen_Kevin_16x4SRAM_vlg_vec_tst/*
vcd add -internal Chen_Kevin_16x4SRAM_vlg_vec_tst/i1/*
add wave /*
run -all
