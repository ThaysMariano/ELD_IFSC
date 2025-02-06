vlib rtl_work
vmap work rtl_work
vcom -93 -work work {../../divisorClock.vhd}
vsim work.divisorClock

add wave -position end  sim:/divisorClock/clk
add wave -position end  sim:/divisorClock/reset
add wave -position end -radix unsigned sim:/divisorClock/r_reg
add wave -position end  sim:/divisorClock/clk_out
force -freeze sim:/divisorClock/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/divisorClock/reset 1 0, 0 20

run 2400