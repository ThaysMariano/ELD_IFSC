onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /binary_counter4_pulse/clk
add wave -noupdate /binary_counter4_pulse/reset
add wave -noupdate /binary_counter4_pulse/dir
add wave -noupdate -radix unsigned /binary_counter4_pulse/q
add wave -noupdate -radix unsigned /binary_counter4_pulse/r_reg
add wave -noupdate -radix unsigned /binary_counter4_pulse/r_next
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {896 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {3150 ps}
