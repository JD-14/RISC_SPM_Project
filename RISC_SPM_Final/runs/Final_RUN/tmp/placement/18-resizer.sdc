###############################################################################
# Created by write_sdc
# Wed Dec  8 16:44:28 2021
###############################################################################
current_design RISC_SPM
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name clk -period 300.0000 [get_ports {clk}]
set_clock_transition 0.1500 [get_clocks {clk}]
set_clock_uncertainty 0.2500 clk
set_input_delay 60.0000 -clock [get_clocks {clk}] -add_delay [get_ports {rst}]
set_output_delay 60.0000 -clock [get_clocks {clk}] -add_delay [get_ports {address_bus[0]}]
set_output_delay 60.0000 -clock [get_clocks {clk}] -add_delay [get_ports {address_bus[1]}]
set_output_delay 60.0000 -clock [get_clocks {clk}] -add_delay [get_ports {address_bus[2]}]
set_output_delay 60.0000 -clock [get_clocks {clk}] -add_delay [get_ports {address_bus[3]}]
set_output_delay 60.0000 -clock [get_clocks {clk}] -add_delay [get_ports {address_bus[4]}]
set_output_delay 60.0000 -clock [get_clocks {clk}] -add_delay [get_ports {address_bus[5]}]
set_output_delay 60.0000 -clock [get_clocks {clk}] -add_delay [get_ports {address_bus[6]}]
set_output_delay 60.0000 -clock [get_clocks {clk}] -add_delay [get_ports {address_bus[7]}]
set_output_delay 60.0000 -clock [get_clocks {clk}] -add_delay [get_ports {data_bus[0]}]
set_output_delay 60.0000 -clock [get_clocks {clk}] -add_delay [get_ports {data_bus[1]}]
set_output_delay 60.0000 -clock [get_clocks {clk}] -add_delay [get_ports {data_bus[2]}]
set_output_delay 60.0000 -clock [get_clocks {clk}] -add_delay [get_ports {data_bus[3]}]
set_output_delay 60.0000 -clock [get_clocks {clk}] -add_delay [get_ports {data_bus[4]}]
set_output_delay 60.0000 -clock [get_clocks {clk}] -add_delay [get_ports {data_bus[5]}]
set_output_delay 60.0000 -clock [get_clocks {clk}] -add_delay [get_ports {data_bus[6]}]
set_output_delay 60.0000 -clock [get_clocks {clk}] -add_delay [get_ports {data_bus[7]}]
set_output_delay 60.0000 -clock [get_clocks {clk}] -add_delay [get_ports {instruction_bus[0]}]
set_output_delay 60.0000 -clock [get_clocks {clk}] -add_delay [get_ports {instruction_bus[1]}]
set_output_delay 60.0000 -clock [get_clocks {clk}] -add_delay [get_ports {instruction_bus[2]}]
set_output_delay 60.0000 -clock [get_clocks {clk}] -add_delay [get_ports {instruction_bus[3]}]
set_output_delay 60.0000 -clock [get_clocks {clk}] -add_delay [get_ports {instruction_bus[4]}]
set_output_delay 60.0000 -clock [get_clocks {clk}] -add_delay [get_ports {instruction_bus[5]}]
set_output_delay 60.0000 -clock [get_clocks {clk}] -add_delay [get_ports {instruction_bus[6]}]
set_output_delay 60.0000 -clock [get_clocks {clk}] -add_delay [get_ports {instruction_bus[7]}]
set_output_delay 60.0000 -clock [get_clocks {clk}] -add_delay [get_ports {memory_bus[0]}]
set_output_delay 60.0000 -clock [get_clocks {clk}] -add_delay [get_ports {memory_bus[1]}]
set_output_delay 60.0000 -clock [get_clocks {clk}] -add_delay [get_ports {memory_bus[2]}]
set_output_delay 60.0000 -clock [get_clocks {clk}] -add_delay [get_ports {memory_bus[3]}]
set_output_delay 60.0000 -clock [get_clocks {clk}] -add_delay [get_ports {memory_bus[4]}]
set_output_delay 60.0000 -clock [get_clocks {clk}] -add_delay [get_ports {memory_bus[5]}]
set_output_delay 60.0000 -clock [get_clocks {clk}] -add_delay [get_ports {memory_bus[6]}]
set_output_delay 60.0000 -clock [get_clocks {clk}] -add_delay [get_ports {memory_bus[7]}]
###############################################################################
# Environment
###############################################################################
set_load -pin_load 0.0334 [get_ports {address_bus[7]}]
set_load -pin_load 0.0334 [get_ports {address_bus[6]}]
set_load -pin_load 0.0334 [get_ports {address_bus[5]}]
set_load -pin_load 0.0334 [get_ports {address_bus[4]}]
set_load -pin_load 0.0334 [get_ports {address_bus[3]}]
set_load -pin_load 0.0334 [get_ports {address_bus[2]}]
set_load -pin_load 0.0334 [get_ports {address_bus[1]}]
set_load -pin_load 0.0334 [get_ports {address_bus[0]}]
set_load -pin_load 0.0334 [get_ports {data_bus[7]}]
set_load -pin_load 0.0334 [get_ports {data_bus[6]}]
set_load -pin_load 0.0334 [get_ports {data_bus[5]}]
set_load -pin_load 0.0334 [get_ports {data_bus[4]}]
set_load -pin_load 0.0334 [get_ports {data_bus[3]}]
set_load -pin_load 0.0334 [get_ports {data_bus[2]}]
set_load -pin_load 0.0334 [get_ports {data_bus[1]}]
set_load -pin_load 0.0334 [get_ports {data_bus[0]}]
set_load -pin_load 0.0334 [get_ports {instruction_bus[7]}]
set_load -pin_load 0.0334 [get_ports {instruction_bus[6]}]
set_load -pin_load 0.0334 [get_ports {instruction_bus[5]}]
set_load -pin_load 0.0334 [get_ports {instruction_bus[4]}]
set_load -pin_load 0.0334 [get_ports {instruction_bus[3]}]
set_load -pin_load 0.0334 [get_ports {instruction_bus[2]}]
set_load -pin_load 0.0334 [get_ports {instruction_bus[1]}]
set_load -pin_load 0.0334 [get_ports {instruction_bus[0]}]
set_load -pin_load 0.0334 [get_ports {memory_bus[7]}]
set_load -pin_load 0.0334 [get_ports {memory_bus[6]}]
set_load -pin_load 0.0334 [get_ports {memory_bus[5]}]
set_load -pin_load 0.0334 [get_ports {memory_bus[4]}]
set_load -pin_load 0.0334 [get_ports {memory_bus[3]}]
set_load -pin_load 0.0334 [get_ports {memory_bus[2]}]
set_load -pin_load 0.0334 [get_ports {memory_bus[1]}]
set_load -pin_load 0.0334 [get_ports {memory_bus[0]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_1 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {clk}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_1 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {rst}]
set_timing_derate -early 0.9000
set_timing_derate -late 1.1000
###############################################################################
# Design Rules
###############################################################################
set_max_fanout 5.0000 [current_design]
