vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 \
"../../../../Demo_IP.srcs/sources_1/bd/BCD_7_seg_display/sim/BCD_7_seg_display.v" \


vlog -work xil_defaultlib \
"glbl.v"

