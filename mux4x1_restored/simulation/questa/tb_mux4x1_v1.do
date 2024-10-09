# Reading C:/intelFPGA/18.1/modelsim_ase/tcl/vsim/pref.tcl
# do mux4x1_run_msim_rtl_vhdl.do
# if {[file exists rtl_work]} {
# 	vdel -lib rtl_work -all
# }
# vlib rtl_work
# vmap work rtl_work
# Model Technology ModelSim - Intel FPGA Edition vmap 10.5b Lib Mapping Utility 2016.10 Oct  5 2016
# vmap work rtl_work 
# Copying C:/intelFPGA/18.1/modelsim_ase/win32aloem/../modelsim.ini to modelsim.ini
# Modifying modelsim.ini
# 
# vcom -93 -work work {C:/Users/thays/Desktop/repo/ELD_IFSC/mux4x1_restored/mux4x1.vhd}
# Model Technology ModelSim - Intel FPGA Edition vcom 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 15:52:49 on Oct 08,2024
# vcom -reportprogress 300 -93 -work work C:/Users/thays/Desktop/repo/ELD_IFSC/mux4x1_restored/mux4x1.vhd 
# -- Loading package STANDARD
# -- Compiling entity mux4x1
# -- Compiling architecture v_logica_pura of mux4x1
# -- Compiling architecture v_WHEN_ELSE of mux4x1
# -- Loading entity mux4x1
# -- Compiling architecture v_WITH_SELECT of mux4x1
# -- Loading entity mux4x1
# -- Compiling configuration cfg_ifsc
# -- Loading entity mux4x1
# -- Loading architecture v_WITH_SELECT of mux4x1
# End time: 15:52:49 on Oct 08,2024, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
# 
vsim work.mux4x1(v_with_select)
# vsim work.mux4x1(v_with_select) 
# Start time: 15:52:58 on Oct 08,2024
# Loading std.standard
# Loading work.mux4x1(v_with_select)
add wave -position end  sim:/mux4x1/X
add wave -position end  sim:/mux4x1/Sel
add wave -position end  sim:/mux4x1/Y
force -freeze sim:/mux4x1/X 0001 0
force -freeze sim:/mux4x1/Sel 00 0
run
force -freeze sim:/mux4x1/X 1110 0
run
do tb_mux4x1_v1.do
# ** Warning: (vlib-34) Library already exists at "rtl_work".
# Model Technology ModelSim - Intel FPGA Edition vmap 10.5b Lib Mapping Utility 2016.10 Oct  5 2016
# vmap work rtl_work 
# Modifying modelsim.ini
# Model Technology ModelSim - Intel FPGA Edition vcom 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 16:02:38 on Oct 08,2024
# vcom -reportprogress 300 -93 -work work ../../mux4x1.vhd 
# -- Loading package STANDARD
# -- Compiling entity mux4x1
# -- Compiling architecture v_logica_pura of mux4x1
# -- Compiling architecture v_WHEN_ELSE of mux4x1
# -- Loading entity mux4x1
# -- Compiling architecture v_WITH_SELECT of mux4x1
# -- Loading entity mux4x1
# -- Compiling configuration cfg_ifsc
# -- Loading entity mux4x1
# -- Loading architecture v_WITH_SELECT of mux4x1
# End time: 16:02:38 on Oct 08,2024, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
# Model Technology ModelSim - Intel FPGA Edition vcom 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 16:02:38 on Oct 08,2024
# vcom -reportprogress 300 -93 -work work ../../mux4x1.vhd 
# -- Loading package STANDARD
# -- Compiling entity mux4x1
# -- Compiling architecture v_logica_pura of mux4x1
# -- Compiling architecture v_WHEN_ELSE of mux4x1
# -- Loading entity mux4x1
# -- Compiling architecture v_WITH_SELECT of mux4x1
# -- Loading entity mux4x1
# -- Compiling configuration cfg_ifsc
# -- Loading entity mux4x1
# -- Loading architecture v_WITH_SELECT of mux4x1
# End time: 16:02:38 on Oct 08,2024, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
# End time: 16:02:40 on Oct 08,2024, Elapsed time: 0:09:42
# Errors: 0, Warnings: 0
# vsim work.mux4x1(v_with_select) 
# Start time: 16:02:40 on Oct 08,2024
# Loading std.standard
# Loading work.mux4x1(v_with_select)
do tb_mux4x1_v1.do
# ** Warning: (vlib-34) Library already exists at "rtl_work".
# Model Technology ModelSim - Intel FPGA Edition vmap 10.5b Lib Mapping Utility 2016.10 Oct  5 2016
# vmap work rtl_work 
# Modifying modelsim.ini
# Model Technology ModelSim - Intel FPGA Edition vcom 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 16:08:57 on Oct 08,2024
# vcom -reportprogress 300 -93 -work work ../../mux4x1.vhd 
# -- Loading package STANDARD
# -- Compiling entity mux4x1
# -- Compiling architecture v_logica_pura of mux4x1
# -- Compiling architecture v_WHEN_ELSE of mux4x1
# -- Loading entity mux4x1
# -- Compiling architecture v_WITH_SELECT of mux4x1
# -- Loading entity mux4x1
# -- Compiling configuration cfg_ifsc
# -- Loading entity mux4x1
# -- Loading architecture v_WITH_SELECT of mux4x1
# End time: 16:08:57 on Oct 08,2024, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
# Model Technology ModelSim - Intel FPGA Edition vcom 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 16:08:57 on Oct 08,2024
# vcom -reportprogress 300 -93 -work work ../../mux4x1.vhd 
# -- Loading package STANDARD
# -- Compiling entity mux4x1
# -- Compiling architecture v_logica_pura of mux4x1
# -- Compiling architecture v_WHEN_ELSE of mux4x1
# -- Loading entity mux4x1
# -- Compiling architecture v_WITH_SELECT of mux4x1
# -- Loading entity mux4x1
# -- Compiling configuration cfg_ifsc
# -- Loading entity mux4x1
# -- Loading architecture v_WITH_SELECT of mux4x1
# End time: 16:08:57 on Oct 08,2024, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
# End time: 16:08:58 on Oct 08,2024, Elapsed time: 0:06:18
# Errors: 0, Warnings: 0
# vsim work.mux4x1(v_with_select) 
# Start time: 16:08:58 on Oct 08,2024
# Loading std.standard
# Loading work.mux4x1(v_with_select)
