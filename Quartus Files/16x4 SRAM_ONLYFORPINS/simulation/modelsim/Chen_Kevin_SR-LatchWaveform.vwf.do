vlog -work work C:/Users/kille/Desktop/Chen_Kevin/Lab 2/Quartus Files/16x4 SRAM/simulation/modelsim/Chen_Kevin_SR-LatchWaveform.vwf.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Chen_Kevin_SR-Latch_vlg_vec_tst
onerror {resume}
add wave {Chen_Kevin_SR-Latch_vlg_vec_tst/i1/Chen_Kevin_Q}
add wave {Chen_Kevin_SR-Latch_vlg_vec_tst/i1/Chen_Kevin_QNOT}
add wave {Chen_Kevin_SR-Latch_vlg_vec_tst/i1/Chen_Kevin_R}
add wave {Chen_Kevin_SR-Latch_vlg_vec_tst/i1/Chen_Kevin_S}
run -all
