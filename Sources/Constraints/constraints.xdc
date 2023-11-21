#set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets Latch_2/Q_old]
#set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets Latch_2/Qbar]

#set_max_delay -from [get_pins myC2elem/C/O] -to [get_pins myC2elem/C/I0] 0.700
#set_min_delay -from [get_pins myC2_elem/C/O] -to [get_pins myC2_elem/C/I1] 0.100

#create_clock -period 10.000 -name VirtualClk_1 -waveform {0.000 5.000}

#create_macro prova
#set rlocs [list FirstStage/DataOut_reg[0] X0Y0 FirstStage/DataOut_reg[1] X0Y0 FirstStage/DataOut_reg[2] X0Y0 FirstStage/DataOut_reg[3] X0Y0 FirstStage/re_reg X0Y1 FirstStage/re_reg_i_1 X0Y0 FirstStage/re_reg_i_2 X0Y0]
#set rlocs [list FirstStage/DataOut_reg[0]   X17Y14  \
#FirstStage/DataOut_reg[1]   X17Y14  \
#FirstStage/DataOut_reg[2]   X17Y14  \
#FirstStage/DataOut_reg[3]   X17Y14 \
#FirstStage/re_reg   X19Y14  \
#FirstStage/re_reg_i_1   X17Y14  \
#FirstStage/re_reg_i_2   X17Y14  ]

#update_macro -absolute_grid prova $rlocs



#create_pblock pblock_1
#add_cells_to_pblock [get_pblocks pblock_1] [get_cells -quiet [list FirstStage]]
#resize_pblock [get_pblocks pblock_1] -add {SLICE_X0Y7:SLICE_X3Y9}
#set_property EXCLUDE_PLACEMENT 1 [get_pblocks pblock_1]
