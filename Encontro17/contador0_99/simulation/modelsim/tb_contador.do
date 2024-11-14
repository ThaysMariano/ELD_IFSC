
 vlib rtl_work
 vmap work rtl_work

 vmap work rtl_work 
 
 vcom -93 -work work {C:/Users/thays/Desktop/repo/ELD_IFSC/Encontro17/contador0_99/contador.vhd}

vsim work.contador(ifsc_v1)
 
add wave -position end  sim:/contador/clk
add wave -position end  sim:/contador/reset
add wave -position end  sim:/contador/numero
add wave -position end  sim:/contador/r_regUN
add wave -position end  sim:/contador/r_regDZ
add wave -position end  sim:/contador/r_nextUN
add wave -position end  sim:/contador/r_nextDZ
force -freeze sim:/contador/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/contador/reset 1 0
run
force -freeze sim:/contador/reset 0 0
run
run
run 1000 ps
run 2000 ps
run 2000 ps
run 500 ps
run 1000 ps


