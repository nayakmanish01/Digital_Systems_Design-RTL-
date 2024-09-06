onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+BCD_7_seg_display -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.BCD_7_seg_display xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {BCD_7_seg_display.udo}

run -all

endsim

quit -force
