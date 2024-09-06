vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr \
"../../../../Demo_IP.srcs/sources_1/bd/barrel_shifter_4_bit/sim/barrel_shifter_4_bit.v" \


vlog -work xil_defaultlib \
"glbl.v"

