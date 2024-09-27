# do nand_gate_run_msim_rtl_vhdl.do
# if {[file exists rtl_work]} {
# 	vdel -lib rtl_work -all
# }
# vlib rtl_work
# vmap work rtl_work
# Model Technology ModelSim - Intel FPGA Edition vmap 2020.1 Lib Mapping Utility 2020.02 Feb 28 2020
# vmap work rtl_work 
# Modifying /opt/altera/intelFPGA/20.1/modelsim_ae/linuxaloem/../modelsim.ini
# 
# vcom -93 -work work {/home/aluno/ELD2/nand_gate/nand_gate.vhd}
# Model Technology ModelSim - Intel FPGA Edition vcom 2020.1 Compiler 2020.02 Feb 28 2020
# Start time: 14:35:31 on Sep 24,2024
# vcom -reportprogress 300 -93 -work work /home/aluno/ELD2/nand_gate/nand_gate.vhd 
# -- Loading package STANDARD
# -- Compiling entity nand_gate
# -- Compiling architecture ifsc_v1 of nand_gate
# End time: 14:35:32 on Sep 24,2024, Elapsed time: 0:00:01
# Errors: 0, Warnings: 0
# 
# 
# stdin: <EOF>
vsim work.nand_gate
# vsim work.nand_gate 
# Start time: 14:35:36 on Sep 24,2024
# //  ModelSim - Intel FPGA Edition 2020.1 Feb 28 2020 Linux 6.1.0-25-amd64
# //
# //  Copyright 1991-2020 Mentor Graphics Corporation
# //  All Rights Reserved.
# //
# //  ModelSim - Intel FPGA Edition and its associated documentation contain trade
# //  secrets and commercial or financial information that are the property of
# //  Mentor Graphics Corporation and are privileged, confidential,
# //  and exempt from disclosure under the Freedom of Information Act,
# //  5 U.S.C. Section 552. Furthermore, this information
# //  is prohibited from disclosure under the Trade Secrets Act,
# //  18 U.S.C. Section 1905.
# //
# Loading std.standard
# Loading work.nand_gate(ifsc_v1)
add wave -position end  sim:/nand_gate/a
add wave -position end  sim:/nand_gate/b
add wave -position end  sim:/nand_gate/x
RUN
# invalid command name "RUN"
run
run
run 100
force -freeze sim:/nand_gate/b 1 0
run 100
force -freeze sim:/nand_gate/a 1 0
run 100
force -freeze sim:/nand_gate/b 0 0
run 100
