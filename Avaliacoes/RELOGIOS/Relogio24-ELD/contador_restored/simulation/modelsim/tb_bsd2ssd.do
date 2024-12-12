vlib rtl_work
vmap work rtl_work
vcom -93 -work work {../../bcd2ssd.vhd}
vsim work.bcd2ssd 

add wave -position end -noupdate -radix unsigned sim:/bcd2ssd/bcd
add wave -position end  sim:/bcd2ssd/zop
add wave -position end  sim:/bcd2ssd/ssd
add wave -position end  sim:/bcd2ssd/dPin
add wave -position end  sim:/bcd2ssd/dPout


force -freeze sim:/bcd2ssd/DPin 0 0
force -freeze sim:/bcd2ssd/dPin 1 100
force -freeze sim:/bcd2ssd/zop 0 0
force -freeze sim:/bcd2ssd/bcd 0000 0 
force -freeze sim:/bcd2ssd/zop 1 100
force -freeze sim:/bcd2ssd/bcd 0000 100 
force -freeze sim:/bcd2ssd/bcd 0001 200 
force -freeze sim:/bcd2ssd/bcd 0010 300 
force -freeze sim:/bcd2ssd/bcd 0011 400
force -freeze sim:/bcd2ssd/bcd 0100 500 
force -freeze sim:/bcd2ssd/bcd 0101 600 
force -freeze sim:/bcd2ssd/bcd 0110 700 
force -freeze sim:/bcd2ssd/bcd 0111 800 
force -freeze sim:/bcd2ssd/bcd 1000 900 
force -freeze sim:/bcd2ssd/bcd 1001 1000
force -freeze sim:/bcd2ssd/bcd 1010 1100 
force -freeze sim:/bcd2ssd/bcd 1011 1200 
force -freeze sim:/bcd2ssd/bcd 1100 1300 
force -freeze sim:/bcd2ssd/bcd 1101 1400 
force -freeze sim:/bcd2ssd/bcd 1110 1500  
force -freeze sim:/bcd2ssd/bcd 1111 1600 

run 2000
