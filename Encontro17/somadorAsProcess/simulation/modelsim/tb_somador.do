
vlib rtl_work
vmap work rtl_work

 vmap work rtl_work 

vcom -93 -work work {../../moecke.vhd}
vcom -93 -work work {/home/aluno/ELD_IFSC/Encontro17/somadorAsProcess/moecke.vhd}

vsim work.somador_deas_gen_process(ifsc_v1)


do wave.do
force -freeze sim:/somador_deas_gen_process/a(0) 5 0
force -freeze sim:/somador_deas_gen_process/a(1) 3 0
force -freeze sim:/somador_deas_gen_process/a(2) 2 0
force -freeze sim:/somador_deas_gen_process/a(3) 6 0
run


