vlib rtl_work
vmap work rtl_work
vcom -93 -work work {../../contador.vhd}
vsim work.contador

add wave -position end  sim:/contador/clk
add wave -position end  sim:/contador/reset
add wave -position end -radix unsigned sim:/contador/dez
add wave -position end  -radix unsigned sim:/contador/uni
force -freeze sim:/contador/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/contador/reset 1 0, 0 20

run 8000