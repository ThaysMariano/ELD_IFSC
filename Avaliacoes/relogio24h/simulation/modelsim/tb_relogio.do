
 vlib rtl_work
 vmap work rtl_work

 vmap work rtl_work 
 vcom -93 -work work {../../relogio_24h_dois.vhd}


vsim work.relogio_24h_dois(contador)

add wave -position end  sim:/relogio_24h_dois/clk
add wave -position end  sim:/relogio_24h_dois/reset
add wave -position end  sim:/relogio_24h_dois/hora
add wave -position end  sim:/relogio_24h_dois/minuto
add wave -position end  sim:/relogio_24h_dois/segundo
add wave -position end  sim:/relogio_24h_dois/segundos_reg
add wave -position end  sim:/relogio_24h_dois/minutos_reg
add wave -position end  sim:/relogio_24h_dois/horas_reg
add wave -position end  sim:/relogio_24h_dois/segundos_next
add wave -position end  sim:/relogio_24h_dois/minutos_next
add wave -position end  sim:/relogio_24h_dois/horas_next
force -freeze sim:/relogio_24h_dois/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/relogio_24h_dois/reset 1 0
run
force -freeze sim:/relogio_24h_dois/reset 1 0, 0 20
run
run 900000


