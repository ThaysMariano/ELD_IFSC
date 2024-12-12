
 vlib rtl_work
 vmap work rtl_work

 # 4 vcom com relogio por ultimo
 
 vcom -93 -work work {../../bcd2ssd.vhd}
 vcom -93 -work work {../../contador.vhd}
 vcom -93 -work work {../../divisorClock.vhd}
 vcom -93 -work work {../../relogio.vhd}
 
vsim work.relogio(top_level)

add wave -position end  sim:/relogio/CC_ACn
add wave -position end  sim:/relogio/clk50MHz
add wave -position end  sim:/relogio/rst
add wave -position end  sim:/relogio/zopIn
add wave -position end  sim:/relogio/stopIn
add wave -position end  sim:/relogio/SSD_UNIHH
add wave -position end  sim:/relogio/SSD_DEZHH
add wave -position end  sim:/relogio/SSD_UNIMM
add wave -position end  sim:/relogio/SSD_DEZMM
add wave -position end  sim:/relogio/SSD_UNISS
add wave -position end  sim:/relogio/SSD_DEZSS
add wave -position end  sim:/relogio/clk_1sec
add wave -position end  sim:/relogio/clk_1min
add wave -position end  sim:/relogio/clk_1hr
add wave -position end  -radix unsigned sim:/relogio/bcd_unihh
add wave -position end  -radix unsigned sim:/relogio/bcd_dezhh
add wave -position end  -radix unsigned sim:/relogio/bcd_unimm
add wave -position end  -radix unsigned sim:/relogio/bcd_dezmm
add wave -position end  -radix unsigned sim:/relogio/bcd_uniss
add wave -position end  -radix unsigned sim:/relogio/bcd_dezss
force -freeze sim:/relogio/clk50MHz 1 0, 0 {50 ps} -r 100
force -freeze sim:/relogio/rst 1 0
force -freeze sim:/relogio/zopIn 0 0
force -freeze sim:/relogio/stopIn 0 0
run
force -freeze sim:/relogio/rst 0 0
run
run 95000


