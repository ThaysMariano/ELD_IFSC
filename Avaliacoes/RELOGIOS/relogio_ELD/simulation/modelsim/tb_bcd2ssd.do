vlib rtl_work
vmap work rtl_work
vcom -93 -work work {../../bcd2ssd.vhd}
vsim work.bcd2ssd 

add wave -position end -noupdate -radix unsigned sim:/bcd2ssd/BCD
add wave -position end  sim:/bcd2ssd/ZOP
add wave -position end  sim:/bcd2ssd/SSD
add wave -position end  sim:/bcd2ssd/DPin
add wave -position end  sim:/bcd2ssd/DPout


force -freeze sim:/bcd2ssd/DPin 0 0
force -freeze sim:/bcd2ssd/DPin 1 100
force -freeze sim:/bcd2ssd/ZOP 0 0
force -freeze sim:/bcd2ssd/BCD 0000 0 
force -freeze sim:/bcd2ssd/ZOP 1 100
force -freeze sim:/bcd2ssd/BCD 0000 100 
force -freeze sim:/bcd2ssd/BCD 0001 200 
force -freeze sim:/bcd2ssd/BCD 0010 300 
force -freeze sim:/bcd2ssd/BCD 0011 400
force -freeze sim:/bcd2ssd/BCD 0100 500 
force -freeze sim:/bcd2ssd/BCD 0101 600 
force -freeze sim:/bcd2ssd/BCD 0110 700 
force -freeze sim:/bcd2ssd/BCD 0111 800 
force -freeze sim:/bcd2ssd/BCD 1000 900 
force -freeze sim:/bcd2ssd/BCD 1001 1000
force -freeze sim:/bcd2ssd/BCD 1010 1100 
force -freeze sim:/bcd2ssd/BCD 1011 1200 
force -freeze sim:/bcd2ssd/BCD 1100 1300 
force -freeze sim:/bcd2ssd/BCD 1101 1400 
force -freeze sim:/bcd2ssd/BCD 1110 1500  
force -freeze sim:/bcd2ssd/BCD 1111 1600 

run 1800

