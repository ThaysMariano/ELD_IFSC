transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/thays/Desktop/repo/ELD_IFSC/Avaliacoes/relogio_ELD/relogio.vhd}
vcom -93 -work work {C:/Users/thays/Desktop/repo/ELD_IFSC/Avaliacoes/relogio_ELD/bcd2ssd.vhd}
vcom -93 -work work {C:/Users/thays/Desktop/repo/ELD_IFSC/Avaliacoes/relogio_ELD/counter0to50m.vhd}
vcom -93 -work work {C:/Users/thays/Desktop/repo/ELD_IFSC/Avaliacoes/relogio_ELD/counter0tox.vhd}

