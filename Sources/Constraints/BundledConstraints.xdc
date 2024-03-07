set_property BEL SLICEM.BFF [get_cells MySwitch/IPM_EAST/input_pipe/req_latch] 
set_property LOC SLICE_X30Y73 [get_cells MySwitch/IPM_EAST/input_pipe/req_latch] 
set_property BEL SLICEM.A5LUT [get_cells MySwitch/IPM_EAST/input_pipe/ReqXor/LUT5] 
set_property LOC SLICE_X30Y73 [get_cells MySwitch/IPM_EAST/input_pipe/ReqXor/LUT5] 
set_property LOCK_PINS {I0:A5 I1:A4 I2:A3 I3:A2 I4:A1} [get_cells MySwitch/IPM_EAST/input_pipe/ReqXor/LUT5] 


set_property FIXED_ROUTE { { CLBLM_M_AMUX CLBLM_LOGIC_OUTS20  { ER1BEG3 BYP_ALT7 BYP_BOUNCE7 FAN_ALT6 FAN6 CLBLL_L_CE }   { SE2BEG2 NR1BEG2 FAN_ALT7 FAN7 CLBLL_LL_CE }   { FAN_ALT7  { FAN_BOUNCE7 FAN_ALT6 FAN_L6 CLBLM_L_CE }  FAN_L7 CLBLM_M_CE }   { NR1BEG2  { EL1BEG1 SL1BEG1 FAN_ALT6 FAN6 CLBLL_L_CE }   { NR1BEG2 FAN_ALT7 FAN_L7 CLBLM_M_CE }  FAN_ALT7 FAN_L7 CLBLM_M_CE }   { NE2BEG2  { NR1BEG2 FAN_ALT7 FAN7 CLBLL_LL_CE }  FAN_ALT7 FAN7 CLBLL_LL_CE }  NL1BEG1  { NE2BEG1 FAN_ALT6 FAN6 CLBLL_L_CE }  BYP_ALT1 BYP_BOUNCE1 FAN_ALT6 FAN_L6 CLBLM_L_CE }  } [get_nets MySwitch/IPM_EAST/input_pipe/en] 


set_property BEL SLICEM.BFF [get_cells MySwitch/IPM_EAST/input_pipe/req_latch] 
set_property LOC SLICE_X30Y73 [get_cells MySwitch/IPM_EAST/input_pipe/req_latch] 
set_property BEL SLICEL.C6LUT [get_cells MySwitch/IPM_EAST/PRC/genblk1[3].RouteAnd_i_1] 
set_property LOC SLICE_X31Y72 [get_cells MySwitch/IPM_EAST/PRC/genblk1[3].RouteAnd_i_1] 
set_property LOCK_PINS {I0:A5 I1:A3} [get_cells MySwitch/IPM_EAST/PRC/genblk1[3].RouteAnd_i_1] 
set_property BEL SLICEM.B6LUT [get_cells MySwitch/IPM_EAST/PRC/genblk1[2].RouteAnd] 
set_property LOC SLICE_X30Y74 [get_cells MySwitch/IPM_EAST/PRC/genblk1[2].RouteAnd] 
set_property LOCK_PINS {I0:A4 I1:A5} [get_cells MySwitch/IPM_EAST/PRC/genblk1[2].RouteAnd] 
set_property BEL SLICEM.B5LUT [get_cells MySwitch/IPM_EAST/PRC/genblk1[3].RouteAnd] 
set_property LOC SLICE_X30Y74 [get_cells MySwitch/IPM_EAST/PRC/genblk1[3].RouteAnd] 
set_property LOCK_PINS {I0:A4 I1:A3} [get_cells MySwitch/IPM_EAST/PRC/genblk1[3].RouteAnd] 
set_property BEL SLICEL.A5LUT [get_cells MySwitch/IPM_EAST/PRC/genblk1[0].RouteAnd] 
set_property LOC SLICE_X33Y72 [get_cells MySwitch/IPM_EAST/PRC/genblk1[0].RouteAnd] 
set_property LOCK_PINS {I0:A4 I1:A3} [get_cells MySwitch/IPM_EAST/PRC/genblk1[0].RouteAnd] 
set_property BEL SLICEL.A6LUT [get_cells MySwitch/IPM_EAST/PRC/genblk1[1].RouteAnd] 
set_property LOC SLICE_X33Y72 [get_cells MySwitch/IPM_EAST/PRC/genblk1[1].RouteAnd] 
set_property LOCK_PINS {I0:A4 I1:A5} [get_cells MySwitch/IPM_EAST/PRC/genblk1[1].RouteAnd] 


set_property FIXED_ROUTE { { CLBLM_L_C CLBLM_LOGIC_OUTS10  { EL1BEG1 IMUX10 CLBLL_L_A4 }  NN2BEG2 IMUX_L27 CLBLM_M_B4 }  } [get_nets MySwitch/IPM_EAST/PRC/enable] 
set_min_delay -from [get_pins MySwitch/IPM_EAST/input_pipe/req_latch/Q] -to [get_pins MySwitch/IPM_EAST/PRC/*.RouteAnd/I0] 0.7117000000000001
set_max_delay -from [get_pins MySwitch/IPM_EAST/input_pipe/req_latch/Q] -to [get_pins MySwitch/IPM_EAST/PRC/*.RouteAnd/I0] 3.4965


set_min_delay -from [get_pins MySwitch/IPM_EAST/input_pipe/req_latch/Q] -to [get_pins MySwitch/*.OPMS/req_input/D] 0.5016
set_max_delay -from [get_pins MySwitch/IPM_EAST/input_pipe/req_latch/Q] -to [get_pins MySwitch/*.OPMS/req_input/D] 1.8579999999999999
