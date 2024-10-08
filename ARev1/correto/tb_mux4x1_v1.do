# Reading C:/intelFPGA/18.1/modelsim_ase/tcl/vsim/pref.tcl
vsim work.mux4x1(v_logica_pura)
# vsim work.mux4x1(v_logica_pura) 
# Start time: 11:21:09 on Oct 06,2024
# Loading std.standard
# Loading work.mux4x1(v_logica_pura)
add wave -position insertpoint sim:/mux4x1/*
run 100 ps
force -freeze sim:/mux4x1/X 0001 0
run 100 ps
force -freeze sim:/mux4x1/Sel 01 0
run 100 po
# Invalid time value: 100 po
run 100 ps
force -freeze sim:/mux4x1/X 0010 0
run 100 ps
force -freeze sim:/mux4x1/Sel 10 0
run 100 ps
force -freeze sim:/mux4x1/X 0100 0
run 100 ps
force -freeze sim:/mux4x1/Sel 11 0
run 100 ps
force -freeze sim:/mux4x1/X 1000 0
run 100 ps
write format wave -window .main_pane.wave.interior.cs.body.pw.wf C:/Users/thays/Desktop/repo/ELD_IFSC/ARev1/correto/mux4x1_v1_wave.do
