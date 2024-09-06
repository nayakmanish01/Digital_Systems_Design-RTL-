vlib work
vlib activehdl

vlib activehdl/xil_defaultlib

vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../../Demo_IP.srcs/sources_1/bd/BCD_7_seg_display/sim/BCD_7_seg_display.v" \


vlog -work xil_defaultlib \
"glbl.v"

