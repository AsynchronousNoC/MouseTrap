set_property BEL SLICEL.BFF [get_cells IPM_EAST/input_pipe/req_latch] 
set_property LOC SLICE_X32Y74 [get_cells IPM_EAST/input_pipe/req_latch] 
set_property LOCK_PINS {O:SLICE_X31Y74/C5LUT/O5 I0:SLICE_X31Y74/C5LUT/A4 I1:SLICE_X31Y74/C5LUT/A3} [get_cells IPM_EAST/input_pipe/req_latch] 
set_property BEL SLICEL.A5LUT [get_cells IPM_EAST/input_pipe/ReqXor/LUT5] 
set_property LOC SLICE_X32Y74 [get_cells IPM_EAST/input_pipe/ReqXor/LUT5] 
set_property LOCK_PINS {O:SLICE_X31Y74/C5LUT/O5 I0:SLICE_X31Y74/C5LUT/A4 I1:SLICE_X31Y74/C5LUT/A3} [get_cells IPM_EAST/input_pipe/ReqXor/LUT5] 


set_property LOCK_PINS { { CLBLL_LL_AMUX CLBLL_LOGIC_OUTS20  { NW2BEG2 EL1BEG1 FAN_ALT6 FAN6 CLBLL_L_CE }   { FAN_ALT7  { FAN_BOUNCE7 FAN_ALT6 FAN6 CLBLL_L_CE }  FAN7 CLBLL_LL_CE }   { EL1BEG1 FAN_ALT6 FAN_L6 CLBLM_L_CE }   { SE2BEG2 NR1BEG2 FAN_ALT7 FAN_L7 CLBLM_M_CE }   { NR1BEG2  { FAN_ALT7 FAN7 CLBLL_LL_CE }  EL1BEG1 FAN_ALT6 FAN_L6 CLBLM_L_CE }   { NN2BEG2  { FAN_ALT7 FAN7 CLBLL_LL_CE }  EL1BEG1 FAN_ALT6 FAN_L6 CLBLM_L_CE }  NE2BEG2  { NR1BEG2 FAN_ALT7 FAN_L7 CLBLM_M_CE }  FAN_ALT7 FAN_L7 CLBLM_M_CE }  } [get_nets IPM_EAST/input_pipe/en] 
set_property BEL SLICEL.BFF [get_cells IPM_EAST/input_pipe/req_latch] 
set_property LOC SLICE_X32Y74 [get_cells IPM_EAST/input_pipe/req_latch] 
set_property LOCK_PINS {O:SLICE_X31Y74/C5LUT/O5 I0:SLICE_X31Y74/C5LUT/A4 I1:SLICE_X31Y74/C5LUT/A3} [get_cells IPM_EAST/input_pipe/req_latch] 
set_property BEL SLICEL.D6LUT [get_cells IPM_EAST/PRC/genblk1[3].RouteAnd_i_1] 
set_property LOC SLICE_X32Y74 [get_cells IPM_EAST/PRC/genblk1[3].RouteAnd_i_1] 
set_property LOCK_PINS {O:SLICE_X31Y74/C5LUT/O5 I0:SLICE_X31Y74/C5LUT/A4 I1:SLICE_X31Y74/C5LUT/A3} [get_cells IPM_EAST/PRC/genblk1[3].RouteAnd_i_1] 
set_property BEL SLICEL.D6LUT [get_cells IPM_EAST/PRC/genblk1[2].RouteAnd] 
set_property LOC SLICE_X31Y74 [get_cells IPM_EAST/PRC/genblk1[2].RouteAnd] 
set_property LOCK_PINS {O:SLICE_X31Y74/C5LUT/O5 I0:SLICE_X31Y74/C5LUT/A4 I1:SLICE_X31Y74/C5LUT/A3} [get_cells IPM_EAST/PRC/genblk1[2].RouteAnd] 
set_property BEL SLICEL.C5LUT [get_cells IPM_EAST/PRC/genblk1[0].RouteAnd] 
set_property LOC SLICE_X31Y74 [get_cells IPM_EAST/PRC/genblk1[0].RouteAnd] 
set_property LOCK_PINS {O:SLICE_X31Y74/C5LUT/O5 I0:SLICE_X31Y74/C5LUT/A4 I1:SLICE_X31Y74/C5LUT/A3} [get_cells IPM_EAST/PRC/genblk1[0].RouteAnd] 
set_property BEL SLICEL.C6LUT [get_cells IPM_EAST/PRC/genblk1[1].RouteAnd] 
set_property LOC SLICE_X31Y74 [get_cells IPM_EAST/PRC/genblk1[1].RouteAnd] 
set_property LOCK_PINS {O:SLICE_X31Y74/C5LUT/O5 I0:SLICE_X31Y74/C5LUT/A4 I1:SLICE_X31Y74/C5LUT/A3} [get_cells IPM_EAST/PRC/genblk1[1].RouteAnd] 
set_property BEL SLICEL.A6LUT [get_cells IPM_EAST/PRC/genblk1[3].RouteAnd] 
set_property LOC SLICE_X33Y74 [get_cells IPM_EAST/PRC/genblk1[3].RouteAnd] 
set_property LOCK_PINS {O:SLICE_X31Y74/C5LUT/O5 I0:SLICE_X31Y74/C5LUT/A4 I1:SLICE_X31Y74/C5LUT/A3} [get_cells IPM_EAST/PRC/genblk1[3].RouteAnd] 


set_property LOCK_PINS { { CLBLL_LL_D CLBLL_LOGIC_OUTS15  { SR1BEG_S0 IMUX9 CLBLL_L_A5 }  WL1BEG2  { IMUX_L21 CLBLM_L_C4 }  IMUX_L37 CLBLM_L_D4 }  } [get_nets IPM_EAST/PRC/enable] 


set_min_delay -from [get_pins IPM_EAST/input_pipe/req_latch/Q] -to [get_pins IPM_EAST/PRC/*.RouteAnd/I0] 0.6094
set_max_delay -from [get_pins IPM_EAST/input_pipe/req_latch/Q] -to [get_pins IPM_EAST/PRC/*.RouteAnd/I0] 3.457500000000001
