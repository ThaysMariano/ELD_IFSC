transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/thays/Desktop/ProjetosQuartus/Modelo_SIGAA/TESTE/mux4x1_teste/mux4x1_restored/mux4x1.vhd}

