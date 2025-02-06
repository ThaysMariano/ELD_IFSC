
vlib rtl_work
 vmap work rtl_work

 vmap work rtl_work 

 vcom -93 -work work {C:/Users/thays/Desktop/repo/ELD_IFSC/Avaliacoes/contadorZerosGenerico/Zerostotais/moecke.vhd}

 vcom -reportprogress 300 -93 -work work C:/Users/thays/Desktop/repo/ELD_IFSC/Avaliacoes/contadorZerosGenerico/Zerostotais/moecke.vhdvsim work.leading_zeros_generate(ifsc_v1)
 vsim work.leading_zeros_generate(ifsc_v1) 

add wave -position end  sim:/leading_zeros_generate/N
add wave -position end  sim:/leading_zeros_generate/resultado
add wave -position end  sim:/leading_zeros_generate/data
add wave -position end  sim:/leading_zeros_generate/tmp


force -freeze sim:/leading_zeros_generate/data(1) 1 0
run
force -freeze sim:/leading_zeros_generate/data(3) 1 0
run
force -freeze sim:/leading_zeros_generate/data(0) 1 0
run
force -freeze sim:/leading_zeros_generate/data(2) 1 0
run
force -freeze sim:/leading_zeros_generate/data(3) 0 0
run


