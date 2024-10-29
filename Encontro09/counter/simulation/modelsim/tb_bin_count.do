 vlib rtl_work
 vmap work rtl_work
 vcom -93 -work work {../../binary_counter4_pulse.vhd}
 vsim work.binary_counter4_pulse(two_seg_arch)

do wave.do
#add wave -position insertpoint  \
#sim:/binary_counter4_pulse/clk \
#sim:/binary_counter4_pulse/reset \
#sim:/binary_counter4_pulse/max_pulse \
#sim:/binary_counter4_pulse/q \
#sim:/binary_counter4_pulse/r_reg \
#sim:/binary_counter4_pulse/r_next

force -freeze sim:/binary_counter4_pulse/reset 0 0
run
force -freeze sim:/binary_counter4_pulse/reset 1 0
run 300
force -freeze sim:/binary_counter4_pulse/reset 0 0
run
force -freeze sim:/binary_counter4_pulse/clk 1 0
run
force -freeze sim:/binary_counter4_pulse/clk 0 0
run
force -freeze sim:/binary_counter4_pulse/clk 1 0
run
force -freeze sim:/binary_counter4_pulse/clk 1 0, 0 {50 ps} -r 100
run 1700



