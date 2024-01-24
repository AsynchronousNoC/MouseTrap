#---------------Set min delay for data latch from FirstStage to Interface_dw
set_min_delay -from [get_pins FirstStage/req_latch/Q] -to [get_pins Interface_dw/req_latch/D] 0.5961999999999998


#Fix Data_latch nets from FirstStage to Interface_dw
set_property BEL SLICEL.DFF [get_cells FirstStage/genblk1[23].Data_latch] 
set_property LOC SLICE_X37Y77 [get_cells FirstStage/genblk1[23].Data_latch] 
set_property BEL SLICEL.DFF [get_cells Interface_dw/genblk1[23].Data_latch] 
set_property LOC SLICE_X41Y76 [get_cells Interface_dw/genblk1[23].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_L_DQ CLBLL_LOGIC_OUTS3 EE2BEG3 SL1BEG3 BYP_ALT7 BYP_L7 CLBLL_L_DX }  } [get_nets Interface_dw/Data_up_i[23]] 


set_property BEL SLICEL.BFF [get_cells FirstStage/genblk1[29].Data_latch] 
set_property LOC SLICE_X36Y76 [get_cells FirstStage/genblk1[29].Data_latch] 
set_property BEL SLICEL.BFF [get_cells Interface_dw/genblk1[29].Data_latch] 
set_property LOC SLICE_X40Y75 [get_cells Interface_dw/genblk1[29].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_LL_BQ CLBLL_LOGIC_OUTS5 EE2BEG1 SL1BEG1 BYP_ALT4 BYP_L4 CLBLL_LL_BX }  } [get_nets Interface_dw/Data_up_i[29]] 


set_property BEL SLICEL.BFF [get_cells FirstStage/genblk1[7].Data_latch] 
set_property LOC SLICE_X36Y77 [get_cells FirstStage/genblk1[7].Data_latch] 
set_property BEL SLICEL.BFF [get_cells Interface_dw/genblk1[7].Data_latch] 
set_property LOC SLICE_X40Y76 [get_cells Interface_dw/genblk1[7].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_LL_BQ CLBLL_LOGIC_OUTS5 EE2BEG1 SL1BEG1 BYP_ALT4 BYP_L4 CLBLL_LL_BX }  } [get_nets Interface_dw/Data_up_i[7]] 


set_property BEL SLICEL.CFF [get_cells FirstStage/genblk1[30].Data_latch] 
set_property LOC SLICE_X36Y76 [get_cells FirstStage/genblk1[30].Data_latch] 
set_property BEL SLICEL.CFF [get_cells Interface_dw/genblk1[30].Data_latch] 
set_property LOC SLICE_X40Y75 [get_cells Interface_dw/genblk1[30].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_LL_CQ CLBLL_LOGIC_OUTS6 EE2BEG2 SL1BEG2 BYP_ALT3 BYP_L3 CLBLL_LL_CX }  } [get_nets Interface_dw/Data_up_i[30]] 


set_property BEL SLICEL.CFF [get_cells FirstStage/genblk1[8].Data_latch] 
set_property LOC SLICE_X36Y77 [get_cells FirstStage/genblk1[8].Data_latch] 
set_property BEL SLICEL.CFF [get_cells Interface_dw/genblk1[8].Data_latch] 
set_property LOC SLICE_X40Y76 [get_cells Interface_dw/genblk1[8].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_LL_CQ CLBLL_LOGIC_OUTS6 EE2BEG2 SL1BEG2 BYP_ALT3 BYP_L3 CLBLL_LL_CX }  } [get_nets Interface_dw/Data_up_i[8]] 


set_property BEL SLICEL.DFF [get_cells FirstStage/genblk1[31].Data_latch] 
set_property LOC SLICE_X36Y76 [get_cells FirstStage/genblk1[31].Data_latch] 
set_property BEL SLICEL.DFF [get_cells Interface_dw/genblk1[31].Data_latch] 
set_property LOC SLICE_X40Y75 [get_cells Interface_dw/genblk1[31].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_LL_DQ CLBLL_LOGIC_OUTS7 EE2BEG3 SL1BEG3 BYP_ALT6 BYP_L6 CLBLL_LL_DX }  } [get_nets Interface_dw/Data_up_i[31]] 


set_property BEL SLICEL.AFF [get_cells FirstStage/genblk1[0].Data_latch] 
set_property LOC SLICE_X36Y77 [get_cells FirstStage/genblk1[0].Data_latch] 
set_property BEL SLICEL.AFF [get_cells Interface_dw/genblk1[0].Data_latch] 
set_property LOC SLICE_X40Y76 [get_cells Interface_dw/genblk1[0].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_LL_AQ CLBLL_LOGIC_OUTS4 EE2BEG0 SL1BEG0 BYP_ALT1 BYP_L1 CLBLL_LL_AX }  } [get_nets Interface_dw/Data_up_i[0]] 


set_property BEL SLICEM.AFF [get_cells FirstStage/genblk1[10].Data_latch] 
set_property LOC SLICE_X38Y76 [get_cells FirstStage/genblk1[10].Data_latch] 
set_property BEL SLICEM.AFF [get_cells Interface_dw/genblk1[10].Data_latch] 
set_property LOC SLICE_X42Y75 [get_cells Interface_dw/genblk1[10].Data_latch] 
set_property FIXED_ROUTE { { CLBLM_M_AQ CLBLM_LOGIC_OUTS4 EE2BEG0 SL1BEG0 BYP_ALT1 BYP1 CLBLM_M_AX }  } [get_nets Interface_dw/Data_up_i[10]] 


set_property BEL SLICEM.BFF [get_cells FirstStage/genblk1[11].Data_latch] 
set_property LOC SLICE_X38Y76 [get_cells FirstStage/genblk1[11].Data_latch] 
set_property BEL SLICEM.BFF [get_cells Interface_dw/genblk1[11].Data_latch] 
set_property LOC SLICE_X42Y75 [get_cells Interface_dw/genblk1[11].Data_latch] 
set_property FIXED_ROUTE { { CLBLM_M_BQ CLBLM_LOGIC_OUTS5 EE2BEG1 SL1BEG1 BYP_ALT4 BYP4 CLBLM_M_BX }  } [get_nets Interface_dw/Data_up_i[11]] 


set_property BEL SLICEM.CFF [get_cells FirstStage/genblk1[12].Data_latch] 
set_property LOC SLICE_X38Y76 [get_cells FirstStage/genblk1[12].Data_latch] 
set_property BEL SLICEM.CFF [get_cells Interface_dw/genblk1[12].Data_latch] 
set_property LOC SLICE_X42Y75 [get_cells Interface_dw/genblk1[12].Data_latch] 
set_property FIXED_ROUTE { { CLBLM_M_CQ CLBLM_LOGIC_OUTS6 EE2BEG2 SL1BEG2 BYP_ALT3 BYP3 CLBLM_M_CX }  } [get_nets Interface_dw/Data_up_i[12]] 


set_property BEL SLICEM.DFF [get_cells FirstStage/genblk1[9].Data_latch] 
set_property LOC SLICE_X38Y76 [get_cells FirstStage/genblk1[9].Data_latch] 
set_property BEL SLICEM.DFF [get_cells Interface_dw/genblk1[9].Data_latch] 
set_property LOC SLICE_X42Y75 [get_cells Interface_dw/genblk1[9].Data_latch] 
set_property FIXED_ROUTE { { CLBLM_M_DQ CLBLM_LOGIC_OUTS7 EE2BEG3 SL1BEG3 BYP_ALT6 BYP6 CLBLM_M_DX }  } [get_nets Interface_dw/Data_up_i[9]] 


set_property BEL SLICEL.BFF [get_cells FirstStage/genblk1[17].Data_latch] 
set_property LOC SLICE_X37Y75 [get_cells FirstStage/genblk1[17].Data_latch] 
set_property BEL SLICEL.BFF [get_cells Interface_dw/genblk1[17].Data_latch] 
set_property LOC SLICE_X41Y74 [get_cells Interface_dw/genblk1[17].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_L_BQ CLBLL_LOGIC_OUTS1 EE2BEG1 SL1BEG1 BYP_ALT5 BYP_L5 CLBLL_L_BX }  } [get_nets Interface_dw/Data_up_i[17]] 


set_property BEL SLICEL.CFF [get_cells FirstStage/genblk1[18].Data_latch] 
set_property LOC SLICE_X37Y75 [get_cells FirstStage/genblk1[18].Data_latch] 
set_property BEL SLICEL.CFF [get_cells Interface_dw/genblk1[18].Data_latch] 
set_property LOC SLICE_X41Y74 [get_cells Interface_dw/genblk1[18].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_L_CQ CLBLL_LOGIC_OUTS2 EE2BEG2 SL1BEG2 BYP_ALT2 BYP_L2 CLBLL_L_CX }  } [get_nets Interface_dw/Data_up_i[18]] 


set_property BEL SLICEL.DFF [get_cells FirstStage/genblk1[6].Data_latch] 
set_property LOC SLICE_X37Y75 [get_cells FirstStage/genblk1[6].Data_latch] 
set_property BEL SLICEL.DFF [get_cells Interface_dw/genblk1[6].Data_latch] 
set_property LOC SLICE_X41Y74 [get_cells Interface_dw/genblk1[6].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_L_DQ CLBLL_LOGIC_OUTS3 EE2BEG3 SL1BEG3 BYP_ALT7 BYP_L7 CLBLL_L_DX }  } [get_nets Interface_dw/Data_up_i[6]] 


set_property BEL SLICEL.AFF [get_cells FirstStage/genblk1[22].Data_latch] 
set_property LOC SLICE_X36Y75 [get_cells FirstStage/genblk1[22].Data_latch] 
set_property BEL SLICEL.AFF [get_cells Interface_dw/genblk1[22].Data_latch] 
set_property LOC SLICE_X40Y74 [get_cells Interface_dw/genblk1[22].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_LL_AQ CLBLL_LOGIC_OUTS4 EE2BEG0 SL1BEG0 BYP_ALT1 BYP_L1 CLBLL_LL_AX }  } [get_nets Interface_dw/Data_up_i[22]] 


set_property BEL SLICEL.AFF [get_cells FirstStage/genblk1[13].Data_latch] 
set_property LOC SLICE_X37Y77 [get_cells FirstStage/genblk1[13].Data_latch] 
set_property BEL SLICEL.AFF [get_cells Interface_dw/genblk1[13].Data_latch] 
set_property LOC SLICE_X41Y76 [get_cells Interface_dw/genblk1[13].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_L_AQ CLBLL_LOGIC_OUTS0 SL1BEG0 ER1BEG1 EL1BEG0 BYP_ALT0 BYP_L0 CLBLL_L_AX }  } [get_nets Interface_dw/Data_up_i[13]] 


set_property BEL SLICEL.CFF [get_cells FirstStage/genblk1[15].Data_latch] 
set_property LOC SLICE_X37Y77 [get_cells FirstStage/genblk1[15].Data_latch] 
set_property BEL SLICEL.CFF [get_cells Interface_dw/genblk1[15].Data_latch] 
set_property LOC SLICE_X41Y76 [get_cells Interface_dw/genblk1[15].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_L_CQ CLBLL_LOGIC_OUTS2 EL1BEG1 SL1BEG1 ER1BEG2 BYP_ALT2 BYP_L2 CLBLL_L_CX }  } [get_nets Interface_dw/Data_up_i[15]] 


set_property BEL SLICEL.BFF [get_cells FirstStage/genblk1[14].Data_latch] 
set_property LOC SLICE_X37Y77 [get_cells FirstStage/genblk1[14].Data_latch] 
set_property BEL SLICEL.BFF [get_cells Interface_dw/genblk1[14].Data_latch] 
set_property LOC SLICE_X41Y76 [get_cells Interface_dw/genblk1[14].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_L_BQ CLBLL_LOGIC_OUTS1 SR1BEG2 ER1BEG3 EL1BEG2 BYP_ALT5 BYP_L5 CLBLL_L_BX }  } [get_nets Interface_dw/Data_up_i[14]] 


set_property BEL SLICEL.BFF [get_cells FirstStage/genblk1[25].Data_latch] 
set_property LOC SLICE_X37Y76 [get_cells FirstStage/genblk1[25].Data_latch] 
set_property BEL SLICEL.BFF [get_cells Interface_dw/genblk1[25].Data_latch] 
set_property LOC SLICE_X41Y75 [get_cells Interface_dw/genblk1[25].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_L_BQ CLBLL_LOGIC_OUTS1 SR1BEG2 ER1BEG3 EL1BEG2 BYP_ALT5 BYP_L5 CLBLL_L_BX }  } [get_nets Interface_dw/Data_up_i[25]] 


set_property BEL SLICEM.AFF [get_cells FirstStage/genblk1[2].Data_latch] 
set_property LOC SLICE_X38Y75 [get_cells FirstStage/genblk1[2].Data_latch] 
set_property BEL SLICEM.AFF [get_cells Interface_dw/genblk1[2].Data_latch] 
set_property LOC SLICE_X42Y74 [get_cells Interface_dw/genblk1[2].Data_latch] 
set_property FIXED_ROUTE { { CLBLM_M_AQ CLBLM_LOGIC_OUTS4 EE2BEG0 SL1BEG0 BYP_ALT1 BYP1 CLBLM_M_AX }  } [get_nets Interface_dw/Data_up_i[2]] 


set_property BEL SLICEM.BFF [get_cells FirstStage/genblk1[3].Data_latch] 
set_property LOC SLICE_X38Y75 [get_cells FirstStage/genblk1[3].Data_latch] 
set_property BEL SLICEM.BFF [get_cells Interface_dw/genblk1[3].Data_latch] 
set_property LOC SLICE_X42Y74 [get_cells Interface_dw/genblk1[3].Data_latch] 
set_property FIXED_ROUTE { { CLBLM_M_BQ CLBLM_LOGIC_OUTS5 EE2BEG1 SL1BEG1 BYP_ALT4 BYP4 CLBLM_M_BX }  } [get_nets Interface_dw/Data_up_i[3]] 


set_property BEL SLICEM.CFF [get_cells FirstStage/genblk1[4].Data_latch] 
set_property LOC SLICE_X38Y75 [get_cells FirstStage/genblk1[4].Data_latch] 
set_property BEL SLICEM.CFF [get_cells Interface_dw/genblk1[4].Data_latch] 
set_property LOC SLICE_X42Y74 [get_cells Interface_dw/genblk1[4].Data_latch] 
set_property FIXED_ROUTE { { CLBLM_M_CQ CLBLM_LOGIC_OUTS6 EE2BEG2 SL1BEG2 BYP_ALT3 BYP3 CLBLM_M_CX }  } [get_nets Interface_dw/Data_up_i[4]] 


set_property BEL SLICEM.DFF [get_cells FirstStage/genblk1[5].Data_latch] 
set_property LOC SLICE_X38Y75 [get_cells FirstStage/genblk1[5].Data_latch] 
set_property BEL SLICEM.DFF [get_cells Interface_dw/genblk1[5].Data_latch] 
set_property LOC SLICE_X42Y74 [get_cells Interface_dw/genblk1[5].Data_latch] 
set_property FIXED_ROUTE { { CLBLM_M_DQ CLBLM_LOGIC_OUTS7 EE2BEG3 SL1BEG3 BYP_ALT6 BYP6 CLBLM_M_DX }  } [get_nets Interface_dw/Data_up_i[5]] 


set_property BEL SLICEL.AFF [get_cells FirstStage/genblk1[28].Data_latch] 
set_property LOC SLICE_X36Y76 [get_cells FirstStage/genblk1[28].Data_latch] 
set_property BEL SLICEL.AFF [get_cells Interface_dw/genblk1[28].Data_latch] 
set_property LOC SLICE_X40Y75 [get_cells Interface_dw/genblk1[28].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_LL_AQ CLBLL_LOGIC_OUTS4 SR1BEG1 ER1BEG2 EL1BEG1 BYP_ALT1 BYP_L1 CLBLL_LL_AX }  } [get_nets Interface_dw/Data_up_i[28]] 


set_property BEL SLICEL.AFF [get_cells FirstStage/genblk1[24].Data_latch] 
set_property LOC SLICE_X37Y76 [get_cells FirstStage/genblk1[24].Data_latch] 
set_property BEL SLICEL.AFF [get_cells Interface_dw/genblk1[24].Data_latch] 
set_property LOC SLICE_X41Y75 [get_cells Interface_dw/genblk1[24].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_L_AQ CLBLL_LOGIC_OUTS0 SL1BEG0 ER1BEG1 EL1BEG0 BYP_ALT0 BYP_L0 CLBLL_L_AX }  } [get_nets Interface_dw/Data_up_i[24]] 


set_property BEL SLICEL.CFF [get_cells FirstStage/genblk1[20].Data_latch] 
set_property LOC SLICE_X39Y75 [get_cells FirstStage/genblk1[20].Data_latch] 
set_property BEL SLICEL.CFF [get_cells Interface_dw/genblk1[20].Data_latch] 
set_property LOC SLICE_X43Y74 [get_cells Interface_dw/genblk1[20].Data_latch] 
set_property FIXED_ROUTE { { CLBLM_L_CQ CLBLM_LOGIC_OUTS2 SL1BEG2 SE2BEG2 NE2BEG2 BYP_ALT2 BYP2 CLBLM_L_CX }  } [get_nets Interface_dw/Data_up_i[20]] 


set_property BEL SLICEL.AFF [get_cells FirstStage/genblk1[16].Data_latch] 
set_property LOC SLICE_X37Y75 [get_cells FirstStage/genblk1[16].Data_latch] 
set_property BEL SLICEL.AFF [get_cells Interface_dw/genblk1[16].Data_latch] 
set_property LOC SLICE_X41Y74 [get_cells Interface_dw/genblk1[16].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_L_AQ CLBLL_LOGIC_OUTS0 SL1BEG0 ER1BEG1 EL1BEG0 BYP_ALT0 BYP_L0 CLBLL_L_AX }  } [get_nets Interface_dw/Data_up_i[16]] 


set_property BEL SLICEL.AFF [get_cells FirstStage/genblk1[19].Data_latch] 
set_property LOC SLICE_X39Y75 [get_cells FirstStage/genblk1[19].Data_latch] 
set_property BEL SLICEL.AFF [get_cells Interface_dw/genblk1[19].Data_latch] 
set_property LOC SLICE_X43Y74 [get_cells Interface_dw/genblk1[19].Data_latch] 
set_property FIXED_ROUTE { { CLBLM_L_AQ CLBLM_LOGIC_OUTS0 EL1BEG_N3 SL1BEG3 ER1BEG_S0 BYP_ALT0 BYP0 CLBLM_L_AX }  } [get_nets Interface_dw/Data_up_i[19]] 


set_property BEL SLICEL.DFF [get_cells FirstStage/genblk1[21].Data_latch] 
set_property LOC SLICE_X39Y75 [get_cells FirstStage/genblk1[21].Data_latch] 
set_property BEL SLICEL.DFF [get_cells Interface_dw/genblk1[21].Data_latch] 
set_property LOC SLICE_X43Y74 [get_cells Interface_dw/genblk1[21].Data_latch] 
set_property FIXED_ROUTE { { CLBLM_L_DQ CLBLM_LOGIC_OUTS3 SS2BEG3 EE2BEG3 NR1BEG3 BYP_ALT7 BYP7 CLBLM_L_DX }  } [get_nets Interface_dw/Data_up_i[21]] 


set_property BEL SLICEL.DFF [get_cells FirstStage/genblk1[27].Data_latch] 
set_property LOC SLICE_X37Y76 [get_cells FirstStage/genblk1[27].Data_latch] 
set_property BEL SLICEL.DFF [get_cells Interface_dw/genblk1[27].Data_latch] 
set_property LOC SLICE_X41Y75 [get_cells Interface_dw/genblk1[27].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_L_DQ CLBLL_LOGIC_OUTS3 SE2BEG3 SE2BEG3 NR1BEG3 BYP_ALT7 BYP_L7 CLBLL_L_DX }  } [get_nets Interface_dw/Data_up_i[27]] 


set_property BEL SLICEL.BFF [get_cells FirstStage/genblk1[1].Data_latch] 
set_property LOC SLICE_X39Y75 [get_cells FirstStage/genblk1[1].Data_latch] 
set_property BEL SLICEL.BFF [get_cells Interface_dw/genblk1[1].Data_latch] 
set_property LOC SLICE_X43Y74 [get_cells Interface_dw/genblk1[1].Data_latch] 
set_property FIXED_ROUTE { { CLBLM_L_BQ CLBLM_LOGIC_OUTS1 SR1BEG2 ER1BEG3 EL1BEG2 BYP_ALT5 BYP5 CLBLM_L_BX }  } [get_nets Interface_dw/Data_up_i[1]] 


set_property BEL SLICEL.CFF [get_cells FirstStage/genblk1[26].Data_latch] 
set_property LOC SLICE_X37Y76 [get_cells FirstStage/genblk1[26].Data_latch] 
set_property BEL SLICEL.CFF [get_cells Interface_dw/genblk1[26].Data_latch] 
set_property LOC SLICE_X41Y75 [get_cells Interface_dw/genblk1[26].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_L_CQ CLBLL_LOGIC_OUTS2 SL1BEG2 SE2BEG2 NE2BEG2 BYP_ALT2 BYP_L2 CLBLL_L_CX }  } [get_nets Interface_dw/Data_up_i[26]] 


set_max_delay -from [get_pins Interface_dw/req_latch/Q] -to [get_pins FirstStage/req_latch/GE] 1.381
set_max_delay -from [get_pins FirstStage/req_latch/Q] -to [get_pins FirstStage/req_latch/GE] 1.209
set_max_delay -from [get_pins FirstStage/req_latch/Q] -to [get_pins FirstStage/*.Data_latch/GE] 1.485
#---------------Set min delay for data latch from Interface_up to FirstStage
set_min_delay -from [get_pins Interface_up/req_latch/Q] -to [get_pins FirstStage/req_latch/D] 0.5873999999999999


#Fix Data_latch nets from Interface_up to FirstStage
set_property BEL SLICEL.BFF [get_cells Interface_up/genblk1[17].Data_latch] 
set_property LOC SLICE_X37Y72 [get_cells Interface_up/genblk1[17].Data_latch] 
set_property BEL SLICEL.BFF [get_cells FirstStage/genblk1[17].Data_latch] 
set_property LOC SLICE_X37Y75 [get_cells FirstStage/genblk1[17].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_L_BQ CLBLL_LOGIC_OUTS1 NN2BEG1 NR1BEG1 BYP_ALT5 BYP_L5 CLBLL_L_BX }  } [get_nets FirstStage/Data_up_i[17]] 


set_property BEL SLICEL.CFF [get_cells Interface_up/genblk1[18].Data_latch] 
set_property LOC SLICE_X37Y72 [get_cells Interface_up/genblk1[18].Data_latch] 
set_property BEL SLICEL.CFF [get_cells FirstStage/genblk1[18].Data_latch] 
set_property LOC SLICE_X37Y75 [get_cells FirstStage/genblk1[18].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_L_CQ CLBLL_LOGIC_OUTS2 NN2BEG2 NR1BEG2 BYP_ALT2 BYP_L2 CLBLL_L_CX }  } [get_nets FirstStage/Data_up_i[18]] 


set_property BEL SLICEL.DFF [get_cells Interface_up/genblk1[6].Data_latch] 
set_property LOC SLICE_X37Y72 [get_cells Interface_up/genblk1[6].Data_latch] 
set_property BEL SLICEL.DFF [get_cells FirstStage/genblk1[6].Data_latch] 
set_property LOC SLICE_X37Y75 [get_cells FirstStage/genblk1[6].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_L_DQ CLBLL_LOGIC_OUTS3 NN2BEG3 NR1BEG3 BYP_ALT7 BYP_L7 CLBLL_L_DX }  } [get_nets FirstStage/Data_up_i[6]] 


set_property BEL SLICEL.BFF [get_cells Interface_up/genblk1[29].Data_latch] 
set_property LOC SLICE_X36Y73 [get_cells Interface_up/genblk1[29].Data_latch] 
set_property BEL SLICEL.BFF [get_cells FirstStage/genblk1[29].Data_latch] 
set_property LOC SLICE_X36Y76 [get_cells FirstStage/genblk1[29].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_LL_BQ CLBLL_LOGIC_OUTS5 NN2BEG1 NR1BEG1 BYP_ALT4 BYP_L4 CLBLL_LL_BX }  } [get_nets FirstStage/Data_up_i[29]] 


set_property BEL SLICEL.BFF [get_cells Interface_up/genblk1[7].Data_latch] 
set_property LOC SLICE_X36Y74 [get_cells Interface_up/genblk1[7].Data_latch] 
set_property BEL SLICEL.BFF [get_cells FirstStage/genblk1[7].Data_latch] 
set_property LOC SLICE_X36Y77 [get_cells FirstStage/genblk1[7].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_LL_BQ CLBLL_LOGIC_OUTS5 NN2BEG1 NR1BEG1 BYP_ALT4 BYP_L4 CLBLL_LL_BX }  } [get_nets FirstStage/Data_up_i[7]] 


set_property BEL SLICEL.CFF [get_cells Interface_up/genblk1[30].Data_latch] 
set_property LOC SLICE_X36Y73 [get_cells Interface_up/genblk1[30].Data_latch] 
set_property BEL SLICEL.CFF [get_cells FirstStage/genblk1[30].Data_latch] 
set_property LOC SLICE_X36Y76 [get_cells FirstStage/genblk1[30].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_LL_CQ CLBLL_LOGIC_OUTS6 NN2BEG2 NR1BEG2 BYP_ALT3 BYP_L3 CLBLL_LL_CX }  } [get_nets FirstStage/Data_up_i[30]] 


set_property BEL SLICEL.CFF [get_cells Interface_up/genblk1[8].Data_latch] 
set_property LOC SLICE_X36Y74 [get_cells Interface_up/genblk1[8].Data_latch] 
set_property BEL SLICEL.CFF [get_cells FirstStage/genblk1[8].Data_latch] 
set_property LOC SLICE_X36Y77 [get_cells FirstStage/genblk1[8].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_LL_CQ CLBLL_LOGIC_OUTS6 NN2BEG2 NR1BEG2 BYP_ALT3 BYP_L3 CLBLL_LL_CX }  } [get_nets FirstStage/Data_up_i[8]] 


set_property BEL SLICEL.DFF [get_cells Interface_up/genblk1[31].Data_latch] 
set_property LOC SLICE_X36Y73 [get_cells Interface_up/genblk1[31].Data_latch] 
set_property BEL SLICEL.DFF [get_cells FirstStage/genblk1[31].Data_latch] 
set_property LOC SLICE_X36Y76 [get_cells FirstStage/genblk1[31].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_LL_DQ CLBLL_LOGIC_OUTS7 NN2BEG3 NR1BEG3 BYP_ALT6 BYP_L6 CLBLL_LL_DX }  } [get_nets FirstStage/Data_up_i[31]] 


set_property BEL SLICEL.AFF [get_cells Interface_up/genblk1[0].Data_latch] 
set_property LOC SLICE_X36Y74 [get_cells Interface_up/genblk1[0].Data_latch] 
set_property BEL SLICEL.AFF [get_cells FirstStage/genblk1[0].Data_latch] 
set_property LOC SLICE_X36Y77 [get_cells FirstStage/genblk1[0].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_LL_AQ CLBLL_LOGIC_OUTS4 NN2BEG0 NR1BEG0 BYP_ALT1 BYP_L1 CLBLL_LL_AX }  } [get_nets FirstStage/Data_up_i[0]] 


set_property BEL SLICEM.AFF [get_cells Interface_up/genblk1[2].Data_latch] 
set_property LOC SLICE_X38Y72 [get_cells Interface_up/genblk1[2].Data_latch] 
set_property BEL SLICEM.AFF [get_cells FirstStage/genblk1[2].Data_latch] 
set_property LOC SLICE_X38Y75 [get_cells FirstStage/genblk1[2].Data_latch] 
set_property FIXED_ROUTE { { CLBLM_M_AQ CLBLM_LOGIC_OUTS4 NN2BEG0 NR1BEG0 BYP_ALT1 BYP1 CLBLM_M_AX }  } [get_nets FirstStage/Data_up_i[2]] 


set_property BEL SLICEM.BFF [get_cells Interface_up/genblk1[3].Data_latch] 
set_property LOC SLICE_X38Y72 [get_cells Interface_up/genblk1[3].Data_latch] 
set_property BEL SLICEM.BFF [get_cells FirstStage/genblk1[3].Data_latch] 
set_property LOC SLICE_X38Y75 [get_cells FirstStage/genblk1[3].Data_latch] 
set_property FIXED_ROUTE { { CLBLM_M_BQ CLBLM_LOGIC_OUTS5 NN2BEG1 NR1BEG1 BYP_ALT4 BYP4 CLBLM_M_BX }  } [get_nets FirstStage/Data_up_i[3]] 


set_property BEL SLICEM.CFF [get_cells Interface_up/genblk1[4].Data_latch] 
set_property LOC SLICE_X38Y72 [get_cells Interface_up/genblk1[4].Data_latch] 
set_property BEL SLICEM.CFF [get_cells FirstStage/genblk1[4].Data_latch] 
set_property LOC SLICE_X38Y75 [get_cells FirstStage/genblk1[4].Data_latch] 
set_property FIXED_ROUTE { { CLBLM_M_CQ CLBLM_LOGIC_OUTS6 NN2BEG2 NR1BEG2 BYP_ALT3 BYP3 CLBLM_M_CX }  } [get_nets FirstStage/Data_up_i[4]] 


set_property BEL SLICEM.DFF [get_cells Interface_up/genblk1[5].Data_latch] 
set_property LOC SLICE_X38Y72 [get_cells Interface_up/genblk1[5].Data_latch] 
set_property BEL SLICEM.DFF [get_cells FirstStage/genblk1[5].Data_latch] 
set_property LOC SLICE_X38Y75 [get_cells FirstStage/genblk1[5].Data_latch] 
set_property FIXED_ROUTE { { CLBLM_M_DQ CLBLM_LOGIC_OUTS7 NN2BEG3 NR1BEG3 BYP_ALT6 BYP6 CLBLM_M_DX }  } [get_nets FirstStage/Data_up_i[5]] 


set_property BEL SLICEM.BFF [get_cells Interface_up/genblk1[11].Data_latch] 
set_property LOC SLICE_X38Y73 [get_cells Interface_up/genblk1[11].Data_latch] 
set_property BEL SLICEM.BFF [get_cells FirstStage/genblk1[11].Data_latch] 
set_property LOC SLICE_X38Y76 [get_cells FirstStage/genblk1[11].Data_latch] 
set_property FIXED_ROUTE { { CLBLM_M_BQ CLBLM_LOGIC_OUTS5 NN2BEG1 NR1BEG1 BYP_ALT4 BYP4 CLBLM_M_BX }  } [get_nets FirstStage/Data_up_i[11]] 


set_property BEL SLICEM.CFF [get_cells Interface_up/genblk1[12].Data_latch] 
set_property LOC SLICE_X38Y73 [get_cells Interface_up/genblk1[12].Data_latch] 
set_property BEL SLICEM.CFF [get_cells FirstStage/genblk1[12].Data_latch] 
set_property LOC SLICE_X38Y76 [get_cells FirstStage/genblk1[12].Data_latch] 
set_property FIXED_ROUTE { { CLBLM_M_CQ CLBLM_LOGIC_OUTS6 NN2BEG2 NR1BEG2 BYP_ALT3 BYP3 CLBLM_M_CX }  } [get_nets FirstStage/Data_up_i[12]] 


set_property BEL SLICEM.DFF [get_cells Interface_up/genblk1[9].Data_latch] 
set_property LOC SLICE_X38Y73 [get_cells Interface_up/genblk1[9].Data_latch] 
set_property BEL SLICEM.DFF [get_cells FirstStage/genblk1[9].Data_latch] 
set_property LOC SLICE_X38Y76 [get_cells FirstStage/genblk1[9].Data_latch] 
set_property FIXED_ROUTE { { CLBLM_M_DQ CLBLM_LOGIC_OUTS7 NN2BEG3 NR1BEG3 BYP_ALT6 BYP6 CLBLM_M_DX }  } [get_nets FirstStage/Data_up_i[9]] 


set_property BEL SLICEL.CFF [get_cells Interface_up/genblk1[26].Data_latch] 
set_property LOC SLICE_X37Y73 [get_cells Interface_up/genblk1[26].Data_latch] 
set_property BEL SLICEL.CFF [get_cells FirstStage/genblk1[26].Data_latch] 
set_property LOC SLICE_X37Y76 [get_cells FirstStage/genblk1[26].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_L_CQ CLBLL_LOGIC_OUTS2 NR1BEG2 NE2BEG2 NW2BEG2 BYP_ALT2 BYP_L2 CLBLL_L_CX }  } [get_nets FirstStage/Data_up_i[26]] 


set_property BEL SLICEL.AFF [get_cells Interface_up/genblk1[19].Data_latch] 
set_property LOC SLICE_X39Y72 [get_cells Interface_up/genblk1[19].Data_latch] 
set_property BEL SLICEL.AFF [get_cells FirstStage/genblk1[19].Data_latch] 
set_property LOC SLICE_X39Y75 [get_cells FirstStage/genblk1[19].Data_latch] 
set_property FIXED_ROUTE { { CLBLM_L_AQ CLBLM_LOGIC_OUTS0 NR1BEG0 NN2BEG0 BYP_ALT0 BYP0 CLBLM_L_AX }  } [get_nets FirstStage/Data_up_i[19]] 


set_property BEL SLICEL.BFF [get_cells Interface_up/genblk1[25].Data_latch] 
set_property LOC SLICE_X37Y73 [get_cells Interface_up/genblk1[25].Data_latch] 
set_property BEL SLICEL.BFF [get_cells FirstStage/genblk1[25].Data_latch] 
set_property LOC SLICE_X37Y76 [get_cells FirstStage/genblk1[25].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_L_BQ CLBLL_LOGIC_OUTS1 NE2BEG1 NN2BEG1 WR1BEG2 BYP_ALT5 BYP_L5 CLBLL_L_BX }  } [get_nets FirstStage/Data_up_i[25]] 


set_property BEL SLICEL.BFF [get_cells Interface_up/genblk1[14].Data_latch] 
set_property LOC SLICE_X37Y74 [get_cells Interface_up/genblk1[14].Data_latch] 
set_property BEL SLICEL.BFF [get_cells FirstStage/genblk1[14].Data_latch] 
set_property LOC SLICE_X37Y77 [get_cells FirstStage/genblk1[14].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_L_BQ CLBLL_LOGIC_OUTS1 NE2BEG1 NN2BEG1 WR1BEG2 BYP_ALT5 BYP_L5 CLBLL_L_BX }  } [get_nets FirstStage/Data_up_i[14]] 


set_property BEL SLICEL.AFF [get_cells Interface_up/genblk1[28].Data_latch] 
set_property LOC SLICE_X36Y73 [get_cells Interface_up/genblk1[28].Data_latch] 
set_property BEL SLICEL.AFF [get_cells FirstStage/genblk1[28].Data_latch] 
set_property LOC SLICE_X36Y76 [get_cells FirstStage/genblk1[28].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_LL_AQ CLBLL_LOGIC_OUTS4 NN2BEG0 NR1BEG0 BYP_ALT1 BYP_L1 CLBLL_LL_AX }  } [get_nets FirstStage/Data_up_i[28]] 


set_property BEL SLICEL.CFF [get_cells Interface_up/genblk1[15].Data_latch] 
set_property LOC SLICE_X37Y74 [get_cells Interface_up/genblk1[15].Data_latch] 
set_property BEL SLICEL.CFF [get_cells FirstStage/genblk1[15].Data_latch] 
set_property LOC SLICE_X37Y77 [get_cells FirstStage/genblk1[15].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_L_CQ CLBLL_LOGIC_OUTS2 WL1BEG1 NN2BEG2 NE2BEG2 BYP_ALT2 BYP_L2 CLBLL_L_CX }  } [get_nets FirstStage/Data_up_i[15]] 


set_property BEL SLICEL.AFF [get_cells Interface_up/genblk1[22].Data_latch] 
set_property LOC SLICE_X36Y72 [get_cells Interface_up/genblk1[22].Data_latch] 
set_property BEL SLICEL.AFF [get_cells FirstStage/genblk1[22].Data_latch] 
set_property LOC SLICE_X36Y75 [get_cells FirstStage/genblk1[22].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_LL_AQ CLBLL_LOGIC_OUTS4 NW2BEG0 NE2BEG0 NR1BEG0 BYP_ALT1 BYP_L1 CLBLL_LL_AX }  } [get_nets FirstStage/Data_up_i[22]] 


set_property BEL SLICEL.CFF [get_cells Interface_up/genblk1[20].Data_latch] 
set_property LOC SLICE_X39Y72 [get_cells Interface_up/genblk1[20].Data_latch] 
set_property BEL SLICEL.CFF [get_cells FirstStage/genblk1[20].Data_latch] 
set_property LOC SLICE_X39Y75 [get_cells FirstStage/genblk1[20].Data_latch] 
set_property FIXED_ROUTE { { CLBLM_L_CQ CLBLM_LOGIC_OUTS2 NR1BEG2 NE2BEG2 NW2BEG2 BYP_ALT2 BYP2 CLBLM_L_CX }  } [get_nets FirstStage/Data_up_i[20]] 


set_property BEL SLICEL.BFF [get_cells Interface_up/genblk1[1].Data_latch] 
set_property LOC SLICE_X39Y72 [get_cells Interface_up/genblk1[1].Data_latch] 
set_property BEL SLICEL.BFF [get_cells FirstStage/genblk1[1].Data_latch] 
set_property LOC SLICE_X39Y75 [get_cells FirstStage/genblk1[1].Data_latch] 
set_property FIXED_ROUTE { { CLBLM_L_BQ CLBLM_LOGIC_OUTS1 NE2BEG1 NN2BEG1 WR1BEG2 BYP_ALT5 BYP5 CLBLM_L_BX }  } [get_nets FirstStage/Data_up_i[1]] 


set_property BEL SLICEL.AFF [get_cells Interface_up/genblk1[24].Data_latch] 
set_property LOC SLICE_X37Y73 [get_cells Interface_up/genblk1[24].Data_latch] 
set_property BEL SLICEL.AFF [get_cells FirstStage/genblk1[24].Data_latch] 
set_property LOC SLICE_X37Y76 [get_cells FirstStage/genblk1[24].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_L_AQ CLBLL_LOGIC_OUTS0 NR1BEG0 NW2BEG0 NE2BEG0 BYP_ALT0 BYP_L0 CLBLL_L_AX }  } [get_nets FirstStage/Data_up_i[24]] 


set_property BEL SLICEL.AFF [get_cells Interface_up/genblk1[16].Data_latch] 
set_property LOC SLICE_X37Y72 [get_cells Interface_up/genblk1[16].Data_latch] 
set_property BEL SLICEL.AFF [get_cells FirstStage/genblk1[16].Data_latch] 
set_property LOC SLICE_X37Y75 [get_cells FirstStage/genblk1[16].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_L_AQ CLBLL_LOGIC_OUTS0 NR1BEG0 NW2BEG0 NE2BEG0 BYP_ALT0 BYP_L0 CLBLL_L_AX }  } [get_nets FirstStage/Data_up_i[16]] 


set_property BEL SLICEL.AFF [get_cells Interface_up/genblk1[13].Data_latch] 
set_property LOC SLICE_X37Y74 [get_cells Interface_up/genblk1[13].Data_latch] 
set_property BEL SLICEL.AFF [get_cells FirstStage/genblk1[13].Data_latch] 
set_property LOC SLICE_X37Y77 [get_cells FirstStage/genblk1[13].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_L_AQ CLBLL_LOGIC_OUTS0 NN6BEG0 SR1BEG_S0 SS2BEG0 BYP_ALT0 BYP_L0 CLBLL_L_AX }  } [get_nets FirstStage/Data_up_i[13]] 


set_property BEL SLICEL.DFF [get_cells Interface_up/genblk1[21].Data_latch] 
set_property LOC SLICE_X39Y72 [get_cells Interface_up/genblk1[21].Data_latch] 
set_property BEL SLICEL.DFF [get_cells FirstStage/genblk1[21].Data_latch] 
set_property LOC SLICE_X39Y75 [get_cells FirstStage/genblk1[21].Data_latch] 
set_property FIXED_ROUTE { { CLBLM_L_DQ CLBLM_LOGIC_OUTS3 NN6BEG3 SR1BEG3 SS2BEG3 BYP_ALT7 BYP7 CLBLM_L_DX }  } [get_nets FirstStage/Data_up_i[21]] 


set_property BEL SLICEL.DFF [get_cells Interface_up/genblk1[23].Data_latch] 
set_property LOC SLICE_X37Y74 [get_cells Interface_up/genblk1[23].Data_latch] 
set_property BEL SLICEL.DFF [get_cells FirstStage/genblk1[23].Data_latch] 
set_property LOC SLICE_X37Y77 [get_cells FirstStage/genblk1[23].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_L_DQ CLBLL_LOGIC_OUTS3 NN6BEG3 SR1BEG3 SS2BEG3 BYP_ALT7 BYP_L7 CLBLL_L_DX }  } [get_nets FirstStage/Data_up_i[23]] 


set_property BEL SLICEL.DFF [get_cells Interface_up/genblk1[27].Data_latch] 
set_property LOC SLICE_X37Y73 [get_cells Interface_up/genblk1[27].Data_latch] 
set_property BEL SLICEL.DFF [get_cells FirstStage/genblk1[27].Data_latch] 
set_property LOC SLICE_X37Y76 [get_cells FirstStage/genblk1[27].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_L_DQ CLBLL_LOGIC_OUTS3 NN6BEG3 SR1BEG3 SS2BEG3 BYP_ALT7 BYP_L7 CLBLL_L_DX }  } [get_nets FirstStage/Data_up_i[27]] 


set_property BEL SLICEM.AFF [get_cells Interface_up/genblk1[10].Data_latch] 
set_property LOC SLICE_X38Y73 [get_cells Interface_up/genblk1[10].Data_latch] 
set_property BEL SLICEM.AFF [get_cells FirstStage/genblk1[10].Data_latch] 
set_property LOC SLICE_X38Y76 [get_cells FirstStage/genblk1[10].Data_latch] 
set_property FIXED_ROUTE { { CLBLM_M_AQ CLBLM_LOGIC_OUTS4 NN6BEG0 SR1BEG_S0 SS2BEG0 BYP_ALT1 BYP1 CLBLM_M_AX }  } [get_nets FirstStage/Data_up_i[10]] 


set_max_delay -from [get_pins FirstStage/req_latch/Q] -to [get_pins Interface_up/req_latch/GE] 1.717
set_max_delay -from [get_pins Interface_up/req_latch/Q] -to [get_pins Interface_up/req_latch/GE] 1.290
set_max_delay -from [get_pins Interface_up/req_latch/Q] -to [get_pins Interface_up/*.Data_latch/GE] 1.447
