vlib work
vlib riviera

vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../../Demo_IP.srcs/sources_1/bd/barrel_shifter_8_bit/sim/barrel_shifter_8_bit.v" \


vlog -work xil_defaultlib \
"glbl.v"

