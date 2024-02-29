set_property BEL SLICEL.BFF [get_cells IPM_EAST/input_pipe/req_latch] 
set_property LOC SLICE_X32Y74 [get_cells IPM_EAST/input_pipe/req_latch] 
set_property BEL SLICEL.A5LUT [get_cells IPM_EAST/input_pipe/ReqXor/LUT5] 
set_property LOC SLICE_X32Y74 [get_cells IPM_EAST/input_pipe/ReqXor/LUT5] 
set_property LOCK_PINS {I0:A5 I1:A4 I2:A3 I3:A2 I4:A1} [get_cells IPM_EAST/input_pipe/ReqXor/LUT5] 


set_property FIXED_ROUTE { { CLBLL_LL_AMUX CLBLL_LOGIC_OUTS20  { NW2BEG2 EL1BEG1 FAN_ALT6 FAN6 CLBLL_L_CE }   { FAN_ALT7  { FAN_BOUNCE7 FAN_ALT6 FAN6 CLBLL_L_CE }  FAN7 CLBLL_LL_CE }   { NE2BEG2 FAN_ALT7 FAN_L7 CLBLM_M_CE }   { SE2BEG2 NR1BEG2 FAN_ALT7 FAN_L7 CLBLM_M_CE }   { NR1BEG2  { FAN_ALT7 FAN7 CLBLL_LL_CE }  NE2BEG2 FAN_ALT7 FAN_L7 CLBLM_M_CE }   { NN2BEG2  { FAN_ALT7 FAN7 CLBLL_LL_CE }  EL1BEG1 FAN_ALT6 FAN_L6 CLBLM_L_CE }  EL1BEG1  { NR1BEG1 FAN_ALT6 FAN_L6 CLBLM_L_CE }  FAN_ALT6 FAN_L6 CLBLM_L_CE }  } [get_nets IPM_EAST/input_pipe/en] 
set_property BEL SLICEL.BFF [get_cells IPM_EAST/input_pipe/req_latch] 
set_property LOC SLICE_X32Y74 [get_cells IPM_EAST/input_pipe/req_latch] 
set_property BEL SLICEL.C6LUT [get_cells IPM_EAST/PRC/genblk1[3].RouteAnd_i_1] 
set_property LOC SLICE_X32Y74 [get_cells IPM_EAST/PRC/genblk1[3].RouteAnd_i_1] 
set_property LOCK_PINS {I0:A5 I1:A3} [get_cells IPM_EAST/PRC/genblk1[3].RouteAnd_i_1] 
set_property BEL SLICEL.B6LUT [get_cells IPM_EAST/PRC/genblk1[3].RouteAnd] 
set_property LOC SLICE_X33Y74 [get_cells IPM_EAST/PRC/genblk1[3].RouteAnd] 
set_property LOCK_PINS {I0:A6 I1:A5} [get_cells IPM_EAST/PRC/genblk1[3].RouteAnd] 
set_property BEL SLICEL.B5LUT [get_cells IPM_EAST/PRC/genblk1[0].RouteAnd] 
set_property LOC SLICE_X31Y74 [get_cells IPM_EAST/PRC/genblk1[0].RouteAnd] 
set_property LOCK_PINS {I0:A4 I1:A3} [get_cells IPM_EAST/PRC/genblk1[0].RouteAnd] 
set_property BEL SLICEL.B6LUT [get_cells IPM_EAST/PRC/genblk1[1].RouteAnd] 
set_property LOC SLICE_X31Y74 [get_cells IPM_EAST/PRC/genblk1[1].RouteAnd] 
set_property LOCK_PINS {I0:A4 I1:A5} [get_cells IPM_EAST/PRC/genblk1[1].RouteAnd] 
set_property BEL SLICEL.C6LUT [get_cells IPM_EAST/PRC/genblk1[2].RouteAnd] 
set_property LOC SLICE_X31Y74 [get_cells IPM_EAST/PRC/genblk1[2].RouteAnd] 
set_property LOCK_PINS {I0:A6 I1:A5} [get_cells IPM_EAST/PRC/genblk1[2].RouteAnd] 


set_property FIXED_ROUTE { { CLBLL_LL_C CLBLL_LOGIC_OUTS14  { SS2BEG2 NR1BEG2 NR1BEG2 IMUX13 CLBLL_L_B6 }  WL1BEG1  { IMUX_L26 CLBLM_L_B4 }  IMUX_L34 CLBLM_L_C6 }  } [get_nets IPM_EAST/PRC/enable] 


set_min_delay -from [get_pins IPM_EAST/input_pipe/req_latch/Q] -to [get_pins IPM_EAST/PRC/*.RouteAnd/I0] 0.6787000000000001
set_max_delay -from [get_pins IPM_EAST/input_pipe/req_latch/Q] -to [get_pins IPM_EAST/PRC/*.RouteAnd/I0] 3.012
