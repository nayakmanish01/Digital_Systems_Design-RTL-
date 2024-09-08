Sequential Components in Verilog
This repository contains a collection of Verilog modules designed to implement various sequential logic components. These components are fundamental building blocks often used in digital systems design.

Table of Contents
Introduction
Modules
Flip-Flops
Shift Registers
Counters
Latches
Frequency Divider
Miscellaneous
Getting Started
Contributing
License
Introduction
This project aims to provide a comprehensive set of Verilog modules for various sequential components. Each module is designed with readability and reusability in mind, making it easier to integrate these components into larger designs.

Modules
Flip-Flops
JK_FF_bh.v: A behavioral model of a JK flip-flop.
dff_pe_alr.v: D Flip-Flop with positive-edge clock, asynchronous reset.
dff_pe_alr_als.v: D Flip-Flop with positive-edge clock, asynchronous reset, and asynchronous set.
dff_pe_asy.v: D Flip-Flop with positive-edge clock, and asynchronous set/reset.
Shift Registers
PISO_shift_reg.v: Parallel-In Serial-Out shift register.
left_shift_register.v: A simple left shift register.
right_shift_register.v: A simple right shift register.
universal_shift_register.v: A universal shift register capable of both left and right shifts.
Counters
basic_counter.v: A basic up-counter.
mod_counter.v: A modulo-N counter.
mod_range_counter.v: A counter with a programmable range.
Latches
dlatch_bh.v: Behavioral model of a D latch.
dlatch_bh_rst.v: D latch with a reset functionality.
dlatch_df.v: Dataflow model of a D latch.
Frequency Divider
freq_divider.v: A module for frequency division.
Miscellaneous
concurrent_assignment.v: A module demonstrating concurrent assignments in Verilog.
Getting Started
To use these modules in your own projects, simply clone the repository and include the relevant .v files in your project directory. Each module is self-contained and can be instantiated in your Verilog designs.

git clone <repository-url>
