# Reading pref.tcl
# do binary_counter4_pulse_run_msim_rtl_vhdl.do
# if {[file exists rtl_work]} {
# 	vdel -lib rtl_work -all
# }
# vlib rtl_work
# vmap work rtl_work
# Model Technology ModelSim - Intel FPGA Edition vmap 2020.1 Lib Mapping Utility 2020.02 Feb 28 2020
# vmap work rtl_work 
# Copying C:/intelFPGA_lite/20.1/modelsim_ase/win32aloem/../modelsim.ini to modelsim.ini
# Modifying modelsim.ini
# 
# vcom -93 -work work {C:/Users/thays/Desktop/repo/ELD_IFSC/Contador0-9/binary_counter4_pulse.vhd}
# Model Technology ModelSim - Intel FPGA Edition vcom 2020.1 Compiler 2020.02 Feb 28 2020
# Start time: 11:09:43 on Oct 29,2024
# vcom -reportprogress 300 -93 -work work C:/Users/thays/Desktop/repo/ELD_IFSC/Contador0-9/binary_counter4_pulse.vhd 
# -- Loading package STANDARD
# -- Loading package TEXTIO
# -- Loading package std_logic_1164
# -- Loading package NUMERIC_STD
# -- Compiling entity binary_counter4_pulse
# -- Compiling architecture two_seg_arch of binary_counter4_pulse
# End time: 11:09:43 on Oct 29,2024, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
# 
vsim work.binary_counter4_pulse(two_seg_arch)
# vsim work.binary_counter4_pulse(two_seg_arch) 
# Start time: 11:09:52 on Oct 29,2024
# Loading std.standard
# Loading std.textio(body)
# Loading ieee.std_logic_1164(body)
# Loading ieee.numeric_std(body)
# Loading work.binary_counter4_pulse(two_seg_arch)
add wave -position end  sim:/binary_counter4_pulse/clk
add wave -position end  sim:/binary_counter4_pulse/reset
add wave -position end  sim:/binary_counter4_pulse/fire
add wave -position end  sim:/binary_counter4_pulse/q
add wave -position end  sim:/binary_counter4_pulse/r_reg
add wave -position end  sim:/binary_counter4_pulse/r_next
force -freeze sim:/binary_counter4_pulse/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/binary_counter4_pulse/reset 1 0
run 
# ** Warning: NUMERIC_STD."=": metavalue detected, returning FALSE
#    Time: 0 ps  Iteration: 0  Instance: /binary_counter4_pulse
# ** Warning: NUMERIC_STD."=": metavalue detected, returning FALSE
#    Time: 0 ps  Iteration: 0  Instance: /binary_counter4_pulse
force -freeze sim:/binary_counter4_pulse/reset 0 0
run 500 ps
run 500 ps
run
run
run
force -freeze sim:/binary_counter4_pulse/reset 1 0
run
run
run
force -freeze sim:/binary_counter4_pulse/reset 0 0
run
run
run
run 500 ps
run 
run
run
run
force -freeze sim:/binary_counter4_pulse/reset 1 0
run
force -freeze sim:/binary_counter4_pulse/reset 0 0
run
run
