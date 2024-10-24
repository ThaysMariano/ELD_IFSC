transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/aluno/ELD_IFSC/Encontro12_/binary_counter4_pulse.vhd}

