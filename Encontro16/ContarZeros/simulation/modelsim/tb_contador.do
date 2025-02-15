
vlib rtl_work
vmap work rtl_work
vcom -93 -work work {/home/aluno/ELD_IFSC/Encontro16/leading_zeros.vhd}
vcom -reportprogress 300 -93 -work work /home/aluno/ELD_IFSC/Encontro16/leading_zeros.vhd 

vsim work.leading_zeros(ifsc_v2)

add wave -position end  sim:/leading_zeros/data
add wave -position end  sim:/leading_zeros/zeros
force -freeze sim:/leading_zeros/data 00000000 0
run
force -freeze sim:/leading_zeros/data 00000001 0
run
force -freeze sim:/leading_zeros/data 00000010 0
run
force -freeze sim:/leading_zeros/data 00000100 0
run
force -freeze sim:/leading_zeros/data 00001000 0
run
force -freeze sim:/leading_zeros/data 00010000 0
run
force -freeze sim:/leading_zeros/data 00100000 0
run
force -freeze sim:/leading_zeros/data 01000000 0
run
force -freeze sim:/leading_zeros/data 10000000 0
run


