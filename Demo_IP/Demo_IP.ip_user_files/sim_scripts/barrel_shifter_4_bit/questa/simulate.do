onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib barrel_shifter_4_bit_opt

do {wave.do}

view wave
view structure
view signals

do {barrel_shifter_4_bit.udo}

run -all

quit -force
