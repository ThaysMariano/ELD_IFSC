
 vlib rtl_work
 vmap work rtl_work

 vmap work rtl_work 

 vcom -93 -work work {../../hamming_distance.vhd}

 vcom -reportprogress 300 -93 -work work ../../hamming_distance.vhd 

vsim work.hamming_distance(ifsc_arch_gen)


add wave -position end  sim:/hamming_distance/a
add wave -position end  sim:/hamming_distance/b
add wave -position end  sim:/hamming_distance/y

force -freeze sim:/hamming_distance/a 0000000000000000000000100 0
force -freeze sim:/hamming_distance/b 0000000000000000000000011 0
run


force -freeze sim:/hamming_distance/a 0000000000000000000000010 0
force -freeze sim:/hamming_distance/b 0000000000000000000000111 0
run

force -freeze sim:/hamming_distance/a 0000000000000000000000110 0
force -freeze sim:/hamming_distance/b 0000000000000000000001110 0
run



