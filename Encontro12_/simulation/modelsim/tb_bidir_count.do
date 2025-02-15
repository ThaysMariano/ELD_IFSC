
 vlib rtl_work
 vmap work rtl_work
 vmap work rtl_work 
 vcom -93 -work work {../../binary_counter4_pulse.vhd}
 vsim work.binary_counter4_pulse(two_seg_arch)
 do wave.do

#add wave -position end  sim:/binary_counter4_pulse/clk
#add wave -position end  sim:/binary_counter4_pulse/reset
#add wave -position end  sim:/binary_counter4_pulse/dir
#add wave -position end  sim:/binary_counter4_pulse/q
#add wave -position end  sim:/binary_counter4_pulse/r_reg
#add wave -position end  sim:/binary_counter4_pulse/r_next

force -freeze sim:/binary_counter4_pulse/reset 1 0, 0 20
force -freeze sim:/binary_counter4_pulse/dir 0 0, 1 1600
force -freeze sim:/binary_counter4_pulse/clk 1 0, 0 {50ps} -r 100
run 3000
