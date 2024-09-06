vlib work
vlib riviera

vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../../Demo_IP.srcs/sources_1/bd/BCD_7_seg_display/sim/BCD_7_seg_display.v" \


vlog -work xil_defaultlib \
"glbl.v"

