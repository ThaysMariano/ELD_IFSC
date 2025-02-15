
 vlib rtl_work
 vmap work rtl_work

 vmap work rtl_work 

 vcom -93 -work work {/home/aluno/ELD_IFSC/Encontro28/fifo_sync_ctrl4.vhd}

 vsim work.fifo_sync_ctrl4(enlarged_bin_arch) 

add wave -position end  sim:/fifo_sync_ctrl4/W
add wave -position end  sim:/fifo_sync_ctrl4/clk
add wave -position end  sim:/fifo_sync_ctrl4/reset
add wave -position end  sim:/fifo_sync_ctrl4/wr
add wave -position end  sim:/fifo_sync_ctrl4/rd
add wave -position end  sim:/fifo_sync_ctrl4/full
add wave -position end  sim:/fifo_sync_ctrl4/empty
add wave -position end  sim:/fifo_sync_ctrl4/w_addr
add wave -position end  sim:/fifo_sync_ctrl4/r_addr
add wave -position end  sim:/fifo_sync_ctrl4/full_flag
add wave -position end  sim:/fifo_sync_ctrl4/empty_flag


force -freeze sim:/fifo_sync_ctrl4/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/fifo_sync_ctrl4/reset 1 0, 0 20
force -freeze sim:/fifo_sync_ctrl4/wr 1 0
force -freeze sim:/fifo_sync_ctrl4/rd 0 0
run 800
force -freeze sim:/fifo_sync_ctrl4/wr 0 0
force -freeze sim:/fifo_sync_ctrl4/rd 1 0
run 500
run 300
#empty
force -freeze sim:/fifo_sync_ctrl4/wr 1 0
force -freeze sim:/fifo_sync_ctrl4/rd 0 0
run 400
force -freeze sim:/fifo_sync_ctrl4/wr 0 0
force -freeze sim:/fifo_sync_ctrl4/rd 1 0
run 700
force -freeze sim:/fifo_sync_ctrl4/wr 1 0
force -freeze sim:/fifo_sync_ctrl4/rd 0 0
run 800

