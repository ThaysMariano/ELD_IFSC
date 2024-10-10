# Reading pref.tcl
# do hamming_distance_run_msim_rtl_vhdl.do
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
# vcom -93 -work work {C:/Users/thays/Desktop/hammingAT/hamming_distance.vhd}
# Model Technology ModelSim - Intel FPGA Edition vcom 2020.1 Compiler 2020.02 Feb 28 2020
# Start time: 13:47:08 on Oct 09,2024
# vcom -reportprogress 300 -93 -work work C:/Users/thays/Desktop/hammingAT/hamming_distance.vhd 
# -- Loading package STANDARD
# -- Loading package TEXTIO
# -- Loading package std_logic_1164
# -- Loading package NUMERIC_STD
# -- Compiling entity hamming_distance
# -- Compiling architecture ifsc_arch_gen of hamming_distance
# End time: 13:47:08 on Oct 09,2024, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
# 
vsim work.hamming_distance(ifsc_arch_gen)
# vsim work.hamming_distance(ifsc_arch_gen) 
# Start time: 13:47:15 on Oct 09,2024
# Loading std.standard
# Loading std.textio(body)
# Loading ieee.std_logic_1164(body)
# Loading ieee.numeric_std(body)
# Loading work.hamming_distance(ifsc_arch_gen)
vsim work.hamming_distance(ifsc_arch_gen)
# End time: 13:47:20 on Oct 09,2024, Elapsed time: 0:00:05
# Errors: 0, Warnings: 0
# vsim work.hamming_distance(ifsc_arch_gen) 
# Start time: 13:47:20 on Oct 09,2024
# Loading std.standard
# Loading std.textio(body)
# Loading ieee.std_logic_1164(body)
# Loading ieee.numeric_std(body)
# Loading work.hamming_distance(ifsc_arch_gen)
add wave -position end  sim:/hamming_distance/a
add wave -position end  sim:/hamming_distance/b
add wave -position end  sim:/hamming_distance/y
