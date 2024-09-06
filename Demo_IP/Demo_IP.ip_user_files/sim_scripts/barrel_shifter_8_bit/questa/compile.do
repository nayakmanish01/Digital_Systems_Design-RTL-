vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 \
"../../../../Demo_IP.srcs/sources_1/bd/barrel_shifter_8_bit/sim/barrel_shifter_8_bit.v" \


vlog -work xil_defaultlib \
"glbl.v"

