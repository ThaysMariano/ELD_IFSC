transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/thays/Desktop/ProjetosQuartus/Modelo_SIGAA/nand_gate/nand_gate.vhd}

