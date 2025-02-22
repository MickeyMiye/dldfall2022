onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider -height 32 FSM
add wave -noupdate -radix hexadecimal /stimulus/dut/lights
add wave -noupdate -radix hexadecimal /stimulus/dut/reset
add wave -noupdate -radix hexadecimal /stimulus/dut/clk
add wave -noupdate -radix hexadecimal /stimulus/dut/left
add wave -noupdate -radix hexadecimal /stimulus/dut/hazards
add wave -noupdate -radix hexadecimal /stimulus/dut/right
add wave -noupdate -radix hexadecimal /stimulus/dut/state
add wave -noupdate -radix hexadecimal /stimulus/dut/nextstate
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
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
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {75 ns}
