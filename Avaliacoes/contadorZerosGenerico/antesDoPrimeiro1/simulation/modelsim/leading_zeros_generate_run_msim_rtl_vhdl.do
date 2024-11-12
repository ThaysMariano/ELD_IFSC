transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/thays/Desktop/repo/ELD_IFSC/Avaliacoes/contadorZerosGenerico/antesDoPrimeiro1/leading_zeros_generate.vhd}

