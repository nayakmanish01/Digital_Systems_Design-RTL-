Overview
This repository contains Verilog code for Digital Hardware Modeling using verilog, organized into four main folders: Demo_IP, Mini_Projects, seq_components, seq_components2 and seq_components3. Each folder contains its own set of design sources and simulation testbenches.

Directory Structure
Digital_Systems_Design-RTL/
├── Demo_IP
│   ├── Demo_IP.srcs
│   │   ├── sources_1
│   │   │   ├── bd
│   │   │   │   ├── BCD_7_seg_display
│   │   │   │   ├── MAC
│   │   │   │   ├── MUX_4_1
│   │   │   │   ├── MUX_8_1from_4_1
│   │   │   │   ├── Mux_2_1
│   │   │   │   ├── Mux_8_1
│   │   │   │   ├── barrel_shifter_4_bit
│   │   │   │   ├── barrel_shifter_8_bit
│   │   │   │   ├── design_1
│   │   │   │   ├── mref
│   │   │   │   ├── mux_16_1
│   │   │   │   ├── ripple_carry_adder_4bit
│   │   │   │   └── shift_reg
│   │   │   └── new
│   │   │       ├── 2_1_Mux.v
│   │   │       ├── BCD_to_7_seg.v
│   │   │       ├── MAC.v
│   │   │       ├── Mux_16_1.v
│   │   │       ├── Mux_2_1.v
│   │   │       ├── component.xml
│   │   │       ├── dff.v
│   │   │       └── fa.v
│   └── Demo_IP.xpr
├── Mini_Projects
│   ├── Mini_Projects.srcs
│   │   ├── sources_1
│   │   │   └── new
│   │   │       ├── I2Cv.v
│   │   │       ├── PWM.v
│   │   │       ├── SPI.v
│   │   │       └── UART.v
│   │   └── sim_1
│   │       └── new
│   │           └── UART_tb.v
│   └── Mini_Projects.xpr
├── seq_components
│   ├── seq_components.srcs
│   │   ├── sources_1
│   │   │   └── new
│   │   │       ├── JK_FF_bh.v
│   │   │       ├── PISO_shift_reg.v
│   │   │       ├── basic_counter.v
│   │   │       ├── concurrent_assignment.v
│   │   │       ├── dff_pe_alr.v
│   │   │       ├── dff_pe_air_als.v
│   │   │       ├── dff_pe_asy.v
│   │   │       ├── dlatch_bh.v
│   │   │       ├── dlatch_bh_rst.v
│   │   │       ├── dlatch_df.v
│   │   │       ├── freq_divider.v
│   │   │       ├── left_shift_register.v
│   │   │       ├── mod_counter.v
│   │   │       ├── mod_range_counter.v
│   │   │       ├── right_shift_register.v
│   │   │       └── universal_shift_register.v
│   └── seq_components.srcs
│       └── sim_1
│           └── new
│               └── mod_counter_tb.v
│               └── seq_components_tb.v
├── seq_components2
│   ├── seq_components2.srcs
│   │   ├── sources_1
│   │   │   └── new
│   │   │       ├── Booth_Multiplication.v
│   │   │       ├── Booth_Multiplication_controller.v
│   │   │       ├── FIFO.v
│   │   │       ├── FIFO_dual_clock.v
│   │   │       ├── FIFO_single_clock.v
│   │   │       ├── GCD_algo_datapath.v
│   │   │       ├── GCD_controller.v
│   │   │       ├── PIPO_concate.v
│   │   │       ├── Rep_MUL_Datapath.v
│   │   │       ├── Rep_Mul_controller.v
│   │   │       ├── add_right_shift_multiplier_datapath.v
│   │   │       ├── add_shift_right_controller.v
│   │   │       ├── cyclic_lamp.v
│   │   │       ├── freq_divider.v
│   │   │       ├── fsm_3_procc_moore.v
│   │   │       ├── fsm_examples.v
│   │   │       ├── serial_adder.v
│   │   │       ├── serial_parity_detector.v
│   │   │       └── water_reservior_controller.v
│   └── seq_components2.srcs
│       └── sim_1
│           └── new
│               └── Booth_Multiplication_tb.v
│               └── FIFO_tb.v
│               └── GCD_tb.v
│               └── PIPO_concate_tb.v
│               └── Rep_MUL_tb.v
│               └── add_right_shift_multiplier_tb.v
│               └── cyclic_lamp_tb.v
│               └── freq_divider_4_tb.v
│               └── freq_divider_tb.v
│               └── fsm_examples_tb.v
│               └── serial_adder_tb.v
│               └── serial_parity_detector_tb.v
├── seq_components3
│   ├── seq_components3.srcs
│   │   ├── sources_1
│   │   │   └── new
│   │   │       ├── Dual_port_synch_v1.v
│   │   │       ├── FIFO.v
│   │   │       ├── clock_divide_3.v
│   │   │       ├── fsm_examples.v
│   │   │       ├── single_port_synchronous_ramV3.v
│   │   │       ├── single_port_asynchronous_ram.v
│   │   │       ├── single_port_synchronous_ram.v
│   │   │       ├── single_port_synchronous_ramV2.v
│   │   │       └── true_dual_port.v
│   └── seq_components3.srcs
│       └── sim_1
│           └── new
│               └── FIFO_tb.v
│               └── fsm_examples_tb.v
│               └── [other_testbench_files_for_seq_components3]
├── Booths Algorithm.pdf
└── Greatest common Divisor.pdf
└── Multiplication By Repeated Addition.pdf
Component Descriptions
Demo_IP: Contains components related to digital system demonstrations, including multiplexers, adders, and other combinational circuits.
Mini_Projects: Contains smaller-scale projects implementing various functionalities, such as I2C, PWM, SPI, and UART.
seq_components: Contains sequential components like flip-flops, registers, and counters.
seq_components2: Contains more advanced sequential components, including multipliers, FIFOs, and finite state machines.
seq_components3: Contains additional sequential components, such as dual-port memories and RAM modules.
Booths Algorithm.pdf: A PDF document likely explaining Booth's algorithm, which is often used for efficient multiplication.
Greatest common Divisor.pdf: A PDF document likely explaining the Greatest Common Divisor (GCD) algorithm.
Multiplication By Repeated Addition.pdf: A PDF document likely explaining the concept of multiplication through repeated addition.
Usage
Design: To use the design components, include the necessary Verilog files in your project and instantiate them according to their interfaces.
Simulation: To test the components, you can create your own testbenches or use the provided testbenches in the sim subdirectories of each folder.
