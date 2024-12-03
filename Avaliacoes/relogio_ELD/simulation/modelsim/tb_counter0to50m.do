vlib rtl_work
vmap work rtl_work
vcom -93 -work work {../../counter0to50m.vhd}
vsim work.counter0to50m

add wave -position end  sim:/counter0to50m/clk
add wave -position end  sim:/counter0to50m/reset
add wave -position end -radix unsigned sim:/counter0to50m/r_reg
add wave -position end  sim:/counter0to50m/clk_out

force -freeze sim:/counter0to50m/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/counter0to50m/reset 1 0, 0 20

run 2400