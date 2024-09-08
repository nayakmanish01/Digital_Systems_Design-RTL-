## Digital_Systems_Design-RTL

### Overview
This repository contains Verilog code for various digital system designs, organized into four main folders: `Demo_IP`, `Mini_Projects`, `seq_components`, `seq_components2` and  `seq_components3`. Each folder contains its own set of design sources and simulation testbenches.

## Directory Descriptions

### 1. **Demo_IP**
   - **Common Location:** `Digital_Systems_Design-RTL/Demo_IP/Demo_IP.srcs/sources_1`
   - **Design Files:**
     - `2_1_Mux.v`: 2-to-1 multiplexer implementation.
     - `BCD_to_7_seg.v`: BCD to 7-segment display decoder.
     - `MAC.v`: Multiply-Accumulate unit.
     - `Mux_16_1.v`: 16-to-1 multiplexer.
     - `Mux_2_1.v`: 2-to-1 multiplexer (alternative design).
     - `dff.v`: D flip-flop implementation.
     - `fa.v`: Full adder implementation.
   - **Block Design Subdirectories:**
     - `bd/`: Contains block designs for IPs like BCD to 7-segment display, MAC, various multiplexers, barrel shifters, ripple carry adder, and shift registers.

### 2. **Mini_Projects**
   - **Common Location:** `Digital_Systems_Design-RTL/Mini_Projects/Mini_Projects.srcs`
   - **Design Files:**
     - `I2Cv.v`: I2C protocol implementation.
     - `PWM.v`: Pulse Width Modulation module.
     - `SPI.v`: Serial Peripheral Interface module.
     - `UART.v`: Universal Asynchronous Receiver/Transmitter module.
   - **Simulation Files:**
     - `UART_tb.v`: Testbench for UART module.

### 3. **seq_components**
   - **Common Location:** `Digital_Systems_Design-RTL/seq_components/seq_components.srcs`
   - **Design Files:**
     - `JK_FF_bh.v`: JK flip-flop with behavioral modeling.
     - `PISO_shift_reg.v`: Parallel-In Serial-Out shift register.
     - `basic_counter.v`: Basic counter.
     - `concurrent_assignment.v`: Module demonstrating concurrent assignments.
     - `dff_pe_alr.v`: D flip-flop with preset and asynchronous reset.
     - `dff_pe_air_als.v`: D flip-flop with preset, asynchronous reset, and asynchronous load.
     - `dff_pe_asy.v`: D flip-flop with preset and asynchronous reset.
     - `dlatch_bh.v`: D latch with behavioral modeling.
     - `dlatch_bh_rst.v`: D latch with reset.
     - `dlatch_df.v`: D latch with dataflow modeling.
     - `freq_divider.v`: Frequency divider.
     - `left_shift_register.v`: Left shift register.
     - `mod_counter.v`: Modulo counter.
     - `mod_range_counter.v`: Modulo range counter.
     - `right_shift_register.v`: Right shift register.
     - `universal_shift_register.v`: Universal shift register.
   - **Simulation Files:**
     - `mod_counter_tb.v`: Testbench for the modulo counter.
     - `seq_components_tb.v`: General testbench covering multiple sequential components.

### 4. **seq_components2**
   - **Common Location:** `Digital_Systems_Design-RTL/seq_components2/seq_components2.srcs`
   - **Design Files:**
     - `Booth_Multiplication.v`: Booth's multiplication algorithm.
     - `Booth_Multiplication_controller.v`: Controller for Booth's multiplication.
     - `FIFO.v`: FIFO memory design.
     - `FIFO_dual_clock.v`: Dual clock FIFO.
     - `FIFO_single_clock.v`: Single clock FIFO.
     - `GCD_algo_datapath.v`: Datapath for GCD algorithm.
     - `GCD_controller.v`: Controller for GCD algorithm.
     - `PIPO_concate.v`: Parallel-In Parallel-Out concatenation module.
     - `Rep_MUL_Datapath.v`: Repeated multiplication datapath.
     - `Rep_Mul_controller.v`: Controller for repeated multiplication.
     - `add_right_shift_multiplier_datapath.v`: Datapath for right-shift add multiplier.
     - `add_shift_right_controller.v`: Controller for right-shift add multiplier.
     - `cyclic_lamp.v`: Cyclic lamp controller.
     - `freq_divider.v`: Frequency divider.
     - `fsm_3_procc_moore.v`: 3-process Moore FSM.
     - `fsm_examples.v`: FSM design examples.
     - `serial_adder.v`: Serial adder.
     - `serial_parity_detector.v`: Serial parity detector.
     - `water_reservior_controller.v`: Water reservoir controller FSM.
   - **Simulation Files:**
     - `Booth_Multiplication_tb.v`: Testbench for Booth's multiplication.
     - `FIFO_tb.v`: Testbench for FIFO modules.
     - `GCD_tb.v`: Testbench for GCD algorithm.
     - `PIPO_concate_tb.v`: Testbench for PIPO concatenation.
     - `Rep_MUL_tb.v`: Testbench for repeated multiplication.
     - `add_right_shift_multiplier_tb.v`: Testbench for right-shift add multiplier.
     - `cyclic_lamp_tb.v`: Testbench for cyclic lamp controller.
     - `freq_divider_4_tb.v`: Testbench for 4-bit frequency divider.
     - `freq_divider_tb.v`: Testbench for frequency divider.
     - `fsm_examples_tb.v`: Testbench for FSM examples.
     - `serial_adder_tb.v`: Testbench for serial adder.
     - `serial_parity_detector_tb.v`: Testbench for serial parity detector.
   - **References:**
     - `Booths Algorithm.pdf`: Overview of Booth's Algorithm, used in `Booth_Multiplication.v`.
     - `Greatest common Divisor.pdf`: Explanation of the GCD algorithm, used in `GCD_algo_datapath.v` and `GCD_controller.v`.
     - `Multiplication By Repeated Addition.pdf`: Description of multiplication by repeated addition, used in `Rep_MUL_Datapath.v` and `Rep_Mul_controller.v`.

### 5. **seq_components3**
   - **Common Location:** `Digital_Systems_Design-RTL/seq_components3/seq_components3.srcs/`
   - **Design Files:**
     - `Dual_port_synch_v1.v`: Dual-port synchronous RAM.
     - `FIFO.v`: FIFO memory design.
     - `clock_divide_3.v`: Clock divider by 3.
     - `fsm_examples.v`: FSM design examples.
     - `single_port_synchronous_ram.v`: Single-port synchronous RAM (multiple versions).
     - `single_port_asynchronous_ram.v`: Single-port asynchronous RAM.
     - `true_dual_port.v`: True dual-port RAM.
   - **Simulation Files:**
     - `FIFO_tb.v`: Testbench for FIFO modules.
     - `fsm_examples_tb.v`: Testbench for FSM examples.

## Usage

To use or simulate any of the components:
1. Open the corresponding `.xpr` project file in Xilinx Vivado.
2. Navigate to the `sources_1` directory for design files and the `sim_1` directory for simulation files.
3. Run simulations using the provided testbenches to verify the functionality of each module.




### Usage
* **Design:** To use the design components, include the necessary Verilog files in your project and instantiate them according to their interfaces.
* **Simulation:** To test the components, you can create your own testbenches or use the provided testbenches in the `sim` subdirectories of each folder.
