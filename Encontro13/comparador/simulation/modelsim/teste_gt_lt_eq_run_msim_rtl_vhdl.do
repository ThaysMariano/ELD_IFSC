transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/thays/Desktop/repo/ELD_IFSC/Encontro13/comparador/teste_gt_lt_eq.vhd}

