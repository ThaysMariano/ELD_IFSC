# Reading C:/intelFPGA/18.1/modelsim_ase/tcl/vsim/pref.tcl
vsim work.nand_gate
# vsim work.nand_gate 
# Start time: 17:33:59 on Oct 01,2024
# Loading std.standard
# Loading work.nand_gate(ifsc_v1)
add wave -position end  sim:/nand_gate/a
add wave -position end  sim:/nand_gate/b
add wave -position end  sim:/nand_gate/x
run 100 ps
force -freeze sim:/nand_gate/a 1 0
run 100 ps
force -freeze sim:/nand_gate/b 1 0
force -freeze sim:/nand_gate/a 0 0
run 100 ps
force -freeze sim:/nand_gate/a 1 0
run 100 ps
