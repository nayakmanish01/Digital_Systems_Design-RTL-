onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+barrel_shifter_4_bit -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.barrel_shifter_4_bit xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {barrel_shifter_4_bit.udo}

run -all

endsim

quit -force
