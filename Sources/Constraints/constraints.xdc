#set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets Latch_2/Q_old]
#set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets Latch_2/Qbar]

#set_max_delay -from [get_pins myC2_elem/C/O] -to [get_pins myC2_elem/C/I1] 0.500
#set_min_delay -from [get_pins myC2_elem/C/O] -to [get_pins myC2_elem/C/I1] 0.100

create_clock -period 10.000 -name VirtualClk_1 -waveform {0.000 5.000}
