onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib BCD_7_seg_display_opt

do {wave.do}

view wave
view structure
view signals

do {BCD_7_seg_display.udo}

run -all

quit -force
