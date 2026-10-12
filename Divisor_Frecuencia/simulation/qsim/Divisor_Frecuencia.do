onerror {exit -code 1}
vlib work
vlog -work work Divisor_Frecuencia.vo
vlog -work work Waveform1.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Divisor_Frecuencia_vlg_vec_tst -voptargs="+acc"
vcd file -direction Divisor_Frecuencia.msim.vcd
vcd add -internal Divisor_Frecuencia_vlg_vec_tst/*
vcd add -internal Divisor_Frecuencia_vlg_vec_tst/i1/*
run -all
quit -f
