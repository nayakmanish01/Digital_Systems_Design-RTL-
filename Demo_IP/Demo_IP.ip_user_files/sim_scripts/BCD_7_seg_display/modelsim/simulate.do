onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.BCD_7_seg_display xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {BCD_7_seg_display.udo}

run -all

quit -force
