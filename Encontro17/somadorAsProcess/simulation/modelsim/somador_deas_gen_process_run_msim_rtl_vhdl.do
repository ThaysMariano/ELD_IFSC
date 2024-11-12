transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/aluno/ELD_IFSC/Encontro17/somadorAsProcess/moecke.vhd}
vcom -93 -work work {/home/aluno/ELD_IFSC/Encontro17/somadorAsProcess/somador_deas_gen_process.vhd}

