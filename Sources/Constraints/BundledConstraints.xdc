set_property BEL SLICEL.BFF [get_cells IPM_EAST/input_pipe/req_latch] 
set_property LOC SLICE_X32Y74 [get_cells IPM_EAST/input_pipe/req_latch] 
set_property BEL SLICEL.A5LUT [get_cells IPM_EAST/input_pipe/ReqXor/LUT5] 
set_property LOC SLICE_X32Y74 [get_cells IPM_EAST/input_pipe/ReqXor/LUT5] 
set_property LOCK_PINS {I0:A5 I1:A4 I2:A3 I3:A2 I4:A1} [get_cells IPM_EAST/input_pipe/ReqXor/LUT5] 


set_property FIXED_ROUTE { { CLBLL_LL_AMUX CLBLL_LOGIC_OUTS20  { FAN_ALT7  { FAN_BOUNCE7 FAN_ALT6 FAN6 CLBLL_L_CE }  FAN7 CLBLL_LL_CE }   { NR1BEG2  { FAN_ALT7  { FAN_BOUNCE7 FAN_ALT6 FAN6 CLBLL_L_CE }  FAN7 CLBLL_LL_CE }  EL1BEG1 FAN_ALT6 FAN_L6 CLBLM_L_CE }   { NN2BEG2  { FAN_ALT7 FAN7 CLBLL_LL_CE }  EL1BEG1 FAN_ALT6 FAN_L6 CLBLM_L_CE }   { NE2BEG2  { NR1BEG2 FAN_ALT7 FAN_L7 CLBLM_M_CE }  FAN_ALT7 FAN_L7 CLBLM_M_CE }  EL1BEG1  { FAN_ALT6 FAN_L6 CLBLM_L_CE }  BYP_ALT4 BYP_BOUNCE4 FAN_ALT7 FAN_L7 CLBLM_M_CE }  } [get_nets IPM_EAST/input_pipe/en] 
set_property BEL SLICEL.BFF [get_cells IPM_EAST/input_pipe/req_latch] 
set_property LOC SLICE_X32Y74 [get_cells IPM_EAST/input_pipe/req_latch] 
set_property BEL SLICEL.B6LUT [get_cells IPM_EAST/PRC/genblk1[3].RouteAnd_i_1] 
set_property LOC SLICE_X35Y75 [get_cells IPM_EAST/PRC/genblk1[3].RouteAnd_i_1] 
set_property LOCK_PINS {I0:A5 I1:A3} [get_cells IPM_EAST/PRC/genblk1[3].RouteAnd_i_1] 
set_property BEL SLICEM.B6LUT [get_cells IPM_EAST/PRC/genblk1[2].RouteAnd] 
set_property LOC SLICE_X34Y74 [get_cells IPM_EAST/PRC/genblk1[2].RouteAnd] 
set_property LOCK_PINS {I0:A4 I1:A5} [get_cells IPM_EAST/PRC/genblk1[2].RouteAnd] 
set_property BEL SLICEM.B5LUT [get_cells IPM_EAST/PRC/genblk1[3].RouteAnd] 
set_property LOC SLICE_X34Y74 [get_cells IPM_EAST/PRC/genblk1[3].RouteAnd] 
set_property LOCK_PINS {I0:A4 I1:A3} [get_cells IPM_EAST/PRC/genblk1[3].RouteAnd] 
set_property BEL SLICEL.A5LUT [get_cells IPM_EAST/PRC/genblk1[0].RouteAnd] 
set_property LOC SLICE_X33Y76 [get_cells IPM_EAST/PRC/genblk1[0].RouteAnd] 
set_property LOCK_PINS {I0:A4 I1:A3} [get_cells IPM_EAST/PRC/genblk1[0].RouteAnd] 
set_property BEL SLICEL.A6LUT [get_cells IPM_EAST/PRC/genblk1[1].RouteAnd] 
set_property LOC SLICE_X33Y76 [get_cells IPM_EAST/PRC/genblk1[1].RouteAnd] 
set_property LOCK_PINS {I0:A4 I1:A5} [get_cells IPM_EAST/PRC/genblk1[1].RouteAnd] 


set_property FIXED_ROUTE { { CLBLM_L_B CLBLM_LOGIC_OUTS9  { NW2BEG1 IMUX10 CLBLL_L_A4 }  SL1BEG1 IMUX_L27 CLBLM_M_B4 }  } [get_nets IPM_EAST/PRC/enable] 


set_min_delay -from [get_pins IPM_EAST/input_pipe/req_latch/Q] -to [get_pins IPM_EAST/PRC/*.RouteAnd/I0] 0.6479
set_max_delay -from [get_pins IPM_EAST/input_pipe/req_latch/Q] -to [get_pins IPM_EAST/PRC/*.RouteAnd/I0] 3.1875
