#---------------Set min delay for data latch from Stadio_1 to Stadio_2
set_min_delay -from [get_pins Stadio_1/req_latch/G] -to [get_pins Stadio_2/req_latch/D] 0.7546


#Fix Data_latch nets from Stadio_1 to Stadio_2
set_property BEL SLICEL.CFF [get_cells Stadio_1/genblk1[18].Data_latch] 
set_property LOC SLICE_X33Y74 [get_cells Stadio_1/genblk1[18].Data_latch] 
set_property BEL SLICEL.CFF [get_cells Stadio_2/genblk1[18].Data_latch] 
set_property LOC SLICE_X33Y71 [get_cells Stadio_2/genblk1[18].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_L_CQ CLBLL_LOGIC_OUTS2 SL1BEG2 SS2BEG2 BYP_ALT2 BYP2 CLBLL_L_CX }  } [get_nets Stadio_2/Data_up_i[18]] 


set_property BEL SLICEL.BFF [get_cells Stadio_1/genblk1[17].Data_latch] 
set_property LOC SLICE_X33Y74 [get_cells Stadio_1/genblk1[17].Data_latch] 
set_property BEL SLICEL.BFF [get_cells Stadio_2/genblk1[17].Data_latch] 
set_property LOC SLICE_X33Y71 [get_cells Stadio_2/genblk1[17].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_L_BQ CLBLL_LOGIC_OUTS1 SL1BEG1 SS2BEG1 BYP_ALT5 BYP5 CLBLL_L_BX }  } [get_nets Stadio_2/Data_up_i[17]] 


set_property BEL SLICEL.AFF [get_cells Stadio_1/genblk1[19].Data_latch] 
set_property LOC SLICE_X35Y74 [get_cells Stadio_1/genblk1[19].Data_latch] 
set_property BEL SLICEL.AFF [get_cells Stadio_2/genblk1[19].Data_latch] 
set_property LOC SLICE_X35Y71 [get_cells Stadio_2/genblk1[19].Data_latch] 
set_property FIXED_ROUTE { { CLBLM_L_AQ CLBLM_LOGIC_OUTS0 SL1BEG0 SS2BEG0 BYP_ALT0 BYP_L0 CLBLM_L_AX }  } [get_nets Stadio_2/Data_up_i[19]] 


set_property BEL SLICEL.AFF [get_cells Stadio_1/genblk1[22].Data_latch] 
set_property LOC SLICE_X32Y74 [get_cells Stadio_1/genblk1[22].Data_latch] 
set_property BEL SLICEL.AFF [get_cells Stadio_2/genblk1[22].Data_latch] 
set_property LOC SLICE_X32Y71 [get_cells Stadio_2/genblk1[22].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_LL_AQ CLBLL_LOGIC_OUTS4 SL1BEG0 SS2BEG0 BYP_ALT1 BYP1 CLBLL_LL_AX }  } [get_nets Stadio_2/Data_up_i[22]] 


set_property BEL SLICEM.CFF [get_cells Stadio_1/genblk1[4].Data_latch] 
set_property LOC SLICE_X34Y74 [get_cells Stadio_1/genblk1[4].Data_latch] 
set_property BEL SLICEM.CFF [get_cells Stadio_2/genblk1[4].Data_latch] 
set_property LOC SLICE_X34Y71 [get_cells Stadio_2/genblk1[4].Data_latch] 
set_property FIXED_ROUTE { { CLBLM_M_CQ CLBLM_LOGIC_OUTS6 SL1BEG2 SS2BEG2 BYP_ALT3 BYP_L3 CLBLM_M_CX }  } [get_nets Stadio_2/Data_up_i[4]] 


set_property BEL SLICEM.DFF [get_cells Stadio_1/genblk1[5].Data_latch] 
set_property LOC SLICE_X34Y74 [get_cells Stadio_1/genblk1[5].Data_latch] 
set_property BEL SLICEM.DFF [get_cells Stadio_2/genblk1[5].Data_latch] 
set_property LOC SLICE_X34Y71 [get_cells Stadio_2/genblk1[5].Data_latch] 
set_property FIXED_ROUTE { { CLBLM_M_DQ CLBLM_LOGIC_OUTS7 SL1BEG3 SS2BEG3 BYP_ALT6 BYP_L6 CLBLM_M_DX }  } [get_nets Stadio_2/Data_up_i[5]] 


set_property BEL SLICEM.BFF [get_cells Stadio_1/genblk1[3].Data_latch] 
set_property LOC SLICE_X34Y74 [get_cells Stadio_1/genblk1[3].Data_latch] 
set_property BEL SLICEM.BFF [get_cells Stadio_2/genblk1[3].Data_latch] 
set_property LOC SLICE_X34Y71 [get_cells Stadio_2/genblk1[3].Data_latch] 
set_property FIXED_ROUTE { { CLBLM_M_BQ CLBLM_LOGIC_OUTS5 SL1BEG1 SS2BEG1 BYP_ALT4 BYP_L4 CLBLM_M_BX }  } [get_nets Stadio_2/Data_up_i[3]] 


set_property BEL SLICEL.BFF [get_cells Stadio_1/genblk1[1].Data_latch] 
set_property LOC SLICE_X35Y74 [get_cells Stadio_1/genblk1[1].Data_latch] 
set_property BEL SLICEL.BFF [get_cells Stadio_2/genblk1[1].Data_latch] 
set_property LOC SLICE_X35Y71 [get_cells Stadio_2/genblk1[1].Data_latch] 
set_property FIXED_ROUTE { { CLBLM_L_BQ CLBLM_LOGIC_OUTS1 SE2BEG1 SL1BEG1 SW2BEG1 BYP_ALT5 BYP_L5 CLBLM_L_BX }  } [get_nets Stadio_2/Data_up_i[1]] 


set_property BEL SLICEL.CFF [get_cells Stadio_1/genblk1[20].Data_latch] 
set_property LOC SLICE_X35Y74 [get_cells Stadio_1/genblk1[20].Data_latch] 
set_property BEL SLICEL.CFF [get_cells Stadio_2/genblk1[20].Data_latch] 
set_property LOC SLICE_X35Y71 [get_cells Stadio_2/genblk1[20].Data_latch] 
set_property FIXED_ROUTE { { CLBLM_L_CQ CLBLM_LOGIC_OUTS2 SE2BEG2 SL1BEG2 SW2BEG2 BYP_ALT2 BYP_L2 CLBLM_L_CX }  } [get_nets Stadio_2/Data_up_i[20]] 


set_property BEL SLICEL.DFF [get_cells Stadio_1/genblk1[21].Data_latch] 
set_property LOC SLICE_X35Y74 [get_cells Stadio_1/genblk1[21].Data_latch] 
set_property BEL SLICEL.DFF [get_cells Stadio_2/genblk1[21].Data_latch] 
set_property LOC SLICE_X35Y71 [get_cells Stadio_2/genblk1[21].Data_latch] 
set_property FIXED_ROUTE { { CLBLM_L_DQ CLBLM_LOGIC_OUTS3 SE2BEG3 SL1BEG3 SW2BEG3 BYP_ALT7 BYP_L7 CLBLM_L_DX }  } [get_nets Stadio_2/Data_up_i[21]] 


set_property BEL SLICEL.BFF [get_cells Stadio_1/genblk1[29].Data_latch] 
set_property LOC SLICE_X32Y75 [get_cells Stadio_1/genblk1[29].Data_latch] 
set_property BEL SLICEL.BFF [get_cells Stadio_2/genblk1[29].Data_latch] 
set_property LOC SLICE_X32Y72 [get_cells Stadio_2/genblk1[29].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_LL_BQ CLBLL_LOGIC_OUTS5 SL1BEG1 SS2BEG1 BYP_ALT4 BYP4 CLBLL_LL_BX }  } [get_nets Stadio_2/Data_up_i[29]] 


set_property BEL SLICEL.CFF [get_cells Stadio_1/genblk1[30].Data_latch] 
set_property LOC SLICE_X32Y75 [get_cells Stadio_1/genblk1[30].Data_latch] 
set_property BEL SLICEL.CFF [get_cells Stadio_2/genblk1[30].Data_latch] 
set_property LOC SLICE_X32Y72 [get_cells Stadio_2/genblk1[30].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_LL_CQ CLBLL_LOGIC_OUTS6 SL1BEG2 SS2BEG2 BYP_ALT3 BYP3 CLBLL_LL_CX }  } [get_nets Stadio_2/Data_up_i[30]] 


set_property BEL SLICEL.BFF [get_cells Stadio_1/genblk1[7].Data_latch] 
set_property LOC SLICE_X32Y76 [get_cells Stadio_1/genblk1[7].Data_latch] 
set_property BEL SLICEL.BFF [get_cells Stadio_2/genblk1[7].Data_latch] 
set_property LOC SLICE_X32Y73 [get_cells Stadio_2/genblk1[7].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_LL_BQ CLBLL_LOGIC_OUTS5 SL1BEG1 SS2BEG1 BYP_ALT4 BYP4 CLBLL_LL_BX }  } [get_nets Stadio_2/Data_up_i[7]] 


set_property BEL SLICEL.CFF [get_cells Stadio_1/genblk1[8].Data_latch] 
set_property LOC SLICE_X32Y76 [get_cells Stadio_1/genblk1[8].Data_latch] 
set_property BEL SLICEL.CFF [get_cells Stadio_2/genblk1[8].Data_latch] 
set_property LOC SLICE_X32Y73 [get_cells Stadio_2/genblk1[8].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_LL_CQ CLBLL_LOGIC_OUTS6 SL1BEG2 SS2BEG2 BYP_ALT3 BYP3 CLBLL_LL_CX }  } [get_nets Stadio_2/Data_up_i[8]] 


set_property BEL SLICEL.DFF [get_cells Stadio_1/genblk1[31].Data_latch] 
set_property LOC SLICE_X32Y75 [get_cells Stadio_1/genblk1[31].Data_latch] 
set_property BEL SLICEL.DFF [get_cells Stadio_2/genblk1[31].Data_latch] 
set_property LOC SLICE_X32Y72 [get_cells Stadio_2/genblk1[31].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_LL_DQ CLBLL_LOGIC_OUTS7 SL1BEG3 SS2BEG3 BYP_ALT6 BYP6 CLBLL_LL_DX }  } [get_nets Stadio_2/Data_up_i[31]] 


set_property BEL SLICEL.AFF [get_cells Stadio_1/genblk1[28].Data_latch] 
set_property LOC SLICE_X32Y75 [get_cells Stadio_1/genblk1[28].Data_latch] 
set_property BEL SLICEL.AFF [get_cells Stadio_2/genblk1[28].Data_latch] 
set_property LOC SLICE_X32Y72 [get_cells Stadio_2/genblk1[28].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_LL_AQ CLBLL_LOGIC_OUTS4 SL1BEG0 SS2BEG0 BYP_ALT1 BYP1 CLBLL_LL_AX }  } [get_nets Stadio_2/Data_up_i[28]] 


set_property BEL SLICEL.AFF [get_cells Stadio_1/genblk1[0].Data_latch] 
set_property LOC SLICE_X32Y76 [get_cells Stadio_1/genblk1[0].Data_latch] 
set_property BEL SLICEL.AFF [get_cells Stadio_2/genblk1[0].Data_latch] 
set_property LOC SLICE_X32Y73 [get_cells Stadio_2/genblk1[0].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_LL_AQ CLBLL_LOGIC_OUTS4 SL1BEG0 SS2BEG0 BYP_ALT1 BYP1 CLBLL_LL_AX }  } [get_nets Stadio_2/Data_up_i[0]] 


set_property BEL SLICEM.AFF [get_cells Stadio_1/genblk1[2].Data_latch] 
set_property LOC SLICE_X34Y74 [get_cells Stadio_1/genblk1[2].Data_latch] 
set_property BEL SLICEM.AFF [get_cells Stadio_2/genblk1[2].Data_latch] 
set_property LOC SLICE_X34Y71 [get_cells Stadio_2/genblk1[2].Data_latch] 
set_property FIXED_ROUTE { { CLBLM_M_AQ CLBLM_LOGIC_OUTS4 SE2BEG0 SL1BEG0 SW2BEG0 BYP_ALT1 BYP_L1 CLBLM_M_AX }  } [get_nets Stadio_2/Data_up_i[2]] 


set_property BEL SLICEM.CFF [get_cells Stadio_1/genblk1[12].Data_latch] 
set_property LOC SLICE_X34Y75 [get_cells Stadio_1/genblk1[12].Data_latch] 
set_property BEL SLICEM.CFF [get_cells Stadio_2/genblk1[12].Data_latch] 
set_property LOC SLICE_X34Y72 [get_cells Stadio_2/genblk1[12].Data_latch] 
set_property FIXED_ROUTE { { CLBLM_M_CQ CLBLM_LOGIC_OUTS6 SL1BEG2 SS2BEG2 BYP_ALT3 BYP_L3 CLBLM_M_CX }  } [get_nets Stadio_2/Data_up_i[12]] 


set_property BEL SLICEM.DFF [get_cells Stadio_1/genblk1[9].Data_latch] 
set_property LOC SLICE_X34Y75 [get_cells Stadio_1/genblk1[9].Data_latch] 
set_property BEL SLICEM.DFF [get_cells Stadio_2/genblk1[9].Data_latch] 
set_property LOC SLICE_X34Y72 [get_cells Stadio_2/genblk1[9].Data_latch] 
set_property FIXED_ROUTE { { CLBLM_M_DQ CLBLM_LOGIC_OUTS7 SL1BEG3 SS2BEG3 BYP_ALT6 BYP_L6 CLBLM_M_DX }  } [get_nets Stadio_2/Data_up_i[9]] 


set_property BEL SLICEM.AFF [get_cells Stadio_1/genblk1[10].Data_latch] 
set_property LOC SLICE_X34Y75 [get_cells Stadio_1/genblk1[10].Data_latch] 
set_property BEL SLICEM.AFF [get_cells Stadio_2/genblk1[10].Data_latch] 
set_property LOC SLICE_X34Y72 [get_cells Stadio_2/genblk1[10].Data_latch] 
set_property FIXED_ROUTE { { CLBLM_M_AQ CLBLM_LOGIC_OUTS4 SL1BEG0 SS2BEG0 BYP_ALT1 BYP_L1 CLBLM_M_AX }  } [get_nets Stadio_2/Data_up_i[10]] 


set_property BEL SLICEM.BFF [get_cells Stadio_1/genblk1[11].Data_latch] 
set_property LOC SLICE_X34Y75 [get_cells Stadio_1/genblk1[11].Data_latch] 
set_property BEL SLICEM.BFF [get_cells Stadio_2/genblk1[11].Data_latch] 
set_property LOC SLICE_X34Y72 [get_cells Stadio_2/genblk1[11].Data_latch] 
set_property FIXED_ROUTE { { CLBLM_M_BQ CLBLM_LOGIC_OUTS5 SL1BEG1 SS2BEG1 BYP_ALT4 BYP_L4 CLBLM_M_BX }  } [get_nets Stadio_2/Data_up_i[11]] 


set_property BEL SLICEL.AFF [get_cells Stadio_1/genblk1[13].Data_latch] 
set_property LOC SLICE_X33Y76 [get_cells Stadio_1/genblk1[13].Data_latch] 
set_property BEL SLICEL.AFF [get_cells Stadio_2/genblk1[13].Data_latch] 
set_property LOC SLICE_X33Y73 [get_cells Stadio_2/genblk1[13].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_L_AQ CLBLL_LOGIC_OUTS0 SW2BEG0 SL1BEG0 SE2BEG0 BYP_ALT0 BYP0 CLBLL_L_AX }  } [get_nets Stadio_2/Data_up_i[13]] 


set_property BEL SLICEL.BFF [get_cells Stadio_1/genblk1[14].Data_latch] 
set_property LOC SLICE_X33Y76 [get_cells Stadio_1/genblk1[14].Data_latch] 
set_property BEL SLICEL.BFF [get_cells Stadio_2/genblk1[14].Data_latch] 
set_property LOC SLICE_X33Y73 [get_cells Stadio_2/genblk1[14].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_L_BQ CLBLL_LOGIC_OUTS1 SW2BEG1 SL1BEG1 SE2BEG1 BYP_ALT5 BYP5 CLBLL_L_BX }  } [get_nets Stadio_2/Data_up_i[14]] 


set_property BEL SLICEL.CFF [get_cells Stadio_1/genblk1[15].Data_latch] 
set_property LOC SLICE_X33Y76 [get_cells Stadio_1/genblk1[15].Data_latch] 
set_property BEL SLICEL.CFF [get_cells Stadio_2/genblk1[15].Data_latch] 
set_property LOC SLICE_X33Y73 [get_cells Stadio_2/genblk1[15].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_L_CQ CLBLL_LOGIC_OUTS2 SW2BEG2 SL1BEG2 SE2BEG2 BYP_ALT2 BYP2 CLBLL_L_CX }  } [get_nets Stadio_2/Data_up_i[15]] 


set_property BEL SLICEL.AFF [get_cells Stadio_1/genblk1[16].Data_latch] 
set_property LOC SLICE_X33Y74 [get_cells Stadio_1/genblk1[16].Data_latch] 
set_property BEL SLICEL.AFF [get_cells Stadio_2/genblk1[16].Data_latch] 
set_property LOC SLICE_X33Y71 [get_cells Stadio_2/genblk1[16].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_L_AQ CLBLL_LOGIC_OUTS0 SE2BEG0 SL1BEG0 SW2BEG0 BYP_ALT0 BYP0 CLBLL_L_AX }  } [get_nets Stadio_2/Data_up_i[16]] 


set_property BEL SLICEL.DFF [get_cells Stadio_1/genblk1[6].Data_latch] 
set_property LOC SLICE_X33Y74 [get_cells Stadio_1/genblk1[6].Data_latch] 
set_property BEL SLICEL.DFF [get_cells Stadio_2/genblk1[6].Data_latch] 
set_property LOC SLICE_X33Y71 [get_cells Stadio_2/genblk1[6].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_L_DQ CLBLL_LOGIC_OUTS3 SE2BEG3 SL1BEG3 SW2BEG3 BYP_ALT7 BYP7 CLBLL_L_DX }  } [get_nets Stadio_2/Data_up_i[6]] 


set_property BEL SLICEL.DFF [get_cells Stadio_1/genblk1[23].Data_latch] 
set_property LOC SLICE_X33Y76 [get_cells Stadio_1/genblk1[23].Data_latch] 
set_property BEL SLICEL.DFF [get_cells Stadio_2/genblk1[23].Data_latch] 
set_property LOC SLICE_X33Y73 [get_cells Stadio_2/genblk1[23].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_L_DQ CLBLL_LOGIC_OUTS3 SS2BEG3 SL1BEG3 BYP_ALT7 BYP7 CLBLL_L_DX }  } [get_nets Stadio_2/Data_up_i[23]] 


set_property BEL SLICEL.AFF [get_cells Stadio_1/genblk1[24].Data_latch] 
set_property LOC SLICE_X33Y75 [get_cells Stadio_1/genblk1[24].Data_latch] 
set_property BEL SLICEL.AFF [get_cells Stadio_2/genblk1[24].Data_latch] 
set_property LOC SLICE_X33Y72 [get_cells Stadio_2/genblk1[24].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_L_AQ CLBLL_LOGIC_OUTS0 SE2BEG0 SW2BEG0 SL1BEG0 BYP_ALT0 BYP0 CLBLL_L_AX }  } [get_nets Stadio_2/Data_up_i[24]] 


set_property BEL SLICEL.BFF [get_cells Stadio_1/genblk1[25].Data_latch] 
set_property LOC SLICE_X33Y75 [get_cells Stadio_1/genblk1[25].Data_latch] 
set_property BEL SLICEL.BFF [get_cells Stadio_2/genblk1[25].Data_latch] 
set_property LOC SLICE_X33Y72 [get_cells Stadio_2/genblk1[25].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_L_BQ CLBLL_LOGIC_OUTS1 SE2BEG1 SW2BEG1 SL1BEG1 BYP_ALT5 BYP5 CLBLL_L_BX }  } [get_nets Stadio_2/Data_up_i[25]] 


set_property BEL SLICEL.CFF [get_cells Stadio_1/genblk1[26].Data_latch] 
set_property LOC SLICE_X33Y75 [get_cells Stadio_1/genblk1[26].Data_latch] 
set_property BEL SLICEL.CFF [get_cells Stadio_2/genblk1[26].Data_latch] 
set_property LOC SLICE_X33Y72 [get_cells Stadio_2/genblk1[26].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_L_CQ CLBLL_LOGIC_OUTS2 SE2BEG2 SW2BEG2 SL1BEG2 BYP_ALT2 BYP2 CLBLL_L_CX }  } [get_nets Stadio_2/Data_up_i[26]] 


set_property BEL SLICEL.DFF [get_cells Stadio_1/genblk1[27].Data_latch] 
set_property LOC SLICE_X33Y75 [get_cells Stadio_1/genblk1[27].Data_latch] 
set_property BEL SLICEL.DFF [get_cells Stadio_2/genblk1[27].Data_latch] 
set_property LOC SLICE_X33Y72 [get_cells Stadio_2/genblk1[27].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_L_DQ CLBLL_LOGIC_OUTS3 SE2BEG3 SW2BEG3 SL1BEG3 BYP_ALT7 BYP7 CLBLL_L_DX }  } [get_nets Stadio_2/Data_up_i[27]] 


set_max_delay -from [get_pins Stadio_2/req_latch/G] -to [get_pins Stadio_1/req_latch/GE] 2.5271000000000003
set_max_delay -from [get_pins Stadio_1/req_latch/G] -to [get_pins Stadio_1/*.Data_latch/GE] 2.8043000000000005
set_max_delay -from [get_pins Stadio_1/req_latch/G] -to [get_pins Stadio_1/req_latch/GE] 2.1454
#---------------Set min delay for data latch from Stadio_2 to Stadio_3
set_min_delay -from [get_pins Stadio_2/req_latch/G] -to [get_pins Stadio_3/req_latch/D] 0.7458


#Fix Data_latch nets from Stadio_2 to Stadio_3
set_property BEL SLICEL.AFF [get_cells Stadio_2/genblk1[19].Data_latch] 
set_property LOC SLICE_X35Y71 [get_cells Stadio_2/genblk1[19].Data_latch] 
set_property BEL SLICEL.AFF [get_cells Stadio_3/genblk1[19].Data_latch] 
set_property LOC SLICE_X39Y73 [get_cells Stadio_3/genblk1[19].Data_latch] 
set_property FIXED_ROUTE { { CLBLM_L_AQ CLBLM_LOGIC_OUTS0 NE2BEG0 NR1BEG0 EE2BEG0 BYP_ALT0 BYP0 CLBLM_L_AX }  } [get_nets Stadio_3/Data_up_i[19]] 


set_property BEL SLICEL.BFF [get_cells Stadio_2/genblk1[1].Data_latch] 
set_property LOC SLICE_X35Y71 [get_cells Stadio_2/genblk1[1].Data_latch] 
set_property BEL SLICEL.BFF [get_cells Stadio_3/genblk1[1].Data_latch] 
set_property LOC SLICE_X39Y73 [get_cells Stadio_3/genblk1[1].Data_latch] 
set_property FIXED_ROUTE { { CLBLM_L_BQ CLBLM_LOGIC_OUTS1 NE2BEG1 NR1BEG1 EE2BEG1 BYP_ALT5 BYP5 CLBLM_L_BX }  } [get_nets Stadio_3/Data_up_i[1]] 


set_property BEL SLICEL.CFF [get_cells Stadio_2/genblk1[20].Data_latch] 
set_property LOC SLICE_X35Y71 [get_cells Stadio_2/genblk1[20].Data_latch] 
set_property BEL SLICEL.CFF [get_cells Stadio_3/genblk1[20].Data_latch] 
set_property LOC SLICE_X39Y73 [get_cells Stadio_3/genblk1[20].Data_latch] 
set_property FIXED_ROUTE { { CLBLM_L_CQ CLBLM_LOGIC_OUTS2 NE2BEG2 NR1BEG2 EE2BEG2 BYP_ALT2 BYP2 CLBLM_L_CX }  } [get_nets Stadio_3/Data_up_i[20]] 


set_property BEL SLICEL.DFF [get_cells Stadio_2/genblk1[21].Data_latch] 
set_property LOC SLICE_X35Y71 [get_cells Stadio_2/genblk1[21].Data_latch] 
set_property BEL SLICEL.DFF [get_cells Stadio_3/genblk1[21].Data_latch] 
set_property LOC SLICE_X39Y73 [get_cells Stadio_3/genblk1[21].Data_latch] 
set_property FIXED_ROUTE { { CLBLM_L_DQ CLBLM_LOGIC_OUTS3 NE2BEG3 NR1BEG3 EE2BEG3 BYP_ALT7 BYP7 CLBLM_L_DX }  } [get_nets Stadio_3/Data_up_i[21]] 


set_property BEL SLICEL.BFF [get_cells Stadio_2/genblk1[17].Data_latch] 
set_property LOC SLICE_X33Y71 [get_cells Stadio_2/genblk1[17].Data_latch] 
set_property BEL SLICEL.BFF [get_cells Stadio_3/genblk1[17].Data_latch] 
set_property LOC SLICE_X37Y73 [get_cells Stadio_3/genblk1[17].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_L_BQ CLBLL_LOGIC_OUTS1 EE2BEG1 NE2BEG1 NR1BEG1 BYP_ALT5 BYP_L5 CLBLL_L_BX }  } [get_nets Stadio_3/Data_up_i[17]] 


set_property BEL SLICEL.CFF [get_cells Stadio_2/genblk1[18].Data_latch] 
set_property LOC SLICE_X33Y71 [get_cells Stadio_2/genblk1[18].Data_latch] 
set_property BEL SLICEL.CFF [get_cells Stadio_3/genblk1[18].Data_latch] 
set_property LOC SLICE_X37Y73 [get_cells Stadio_3/genblk1[18].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_L_CQ CLBLL_LOGIC_OUTS2 EE2BEG2 NE2BEG2 NR1BEG2 BYP_ALT2 BYP_L2 CLBLL_L_CX }  } [get_nets Stadio_3/Data_up_i[18]] 


set_property BEL SLICEL.DFF [get_cells Stadio_2/genblk1[6].Data_latch] 
set_property LOC SLICE_X33Y71 [get_cells Stadio_2/genblk1[6].Data_latch] 
set_property BEL SLICEL.DFF [get_cells Stadio_3/genblk1[6].Data_latch] 
set_property LOC SLICE_X37Y73 [get_cells Stadio_3/genblk1[6].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_L_DQ CLBLL_LOGIC_OUTS3 EE2BEG3 NE2BEG3 NR1BEG3 BYP_ALT7 BYP_L7 CLBLL_L_DX }  } [get_nets Stadio_3/Data_up_i[6]] 


set_property BEL SLICEL.BFF [get_cells Stadio_2/genblk1[29].Data_latch] 
set_property LOC SLICE_X32Y72 [get_cells Stadio_2/genblk1[29].Data_latch] 
set_property BEL SLICEL.BFF [get_cells Stadio_3/genblk1[29].Data_latch] 
set_property LOC SLICE_X36Y74 [get_cells Stadio_3/genblk1[29].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_LL_BQ CLBLL_LOGIC_OUTS5 EE2BEG1 NE2BEG1 NR1BEG1 BYP_ALT4 BYP_L4 CLBLL_LL_BX }  } [get_nets Stadio_3/Data_up_i[29]] 


set_property BEL SLICEL.CFF [get_cells Stadio_2/genblk1[30].Data_latch] 
set_property LOC SLICE_X32Y72 [get_cells Stadio_2/genblk1[30].Data_latch] 
set_property BEL SLICEL.CFF [get_cells Stadio_3/genblk1[30].Data_latch] 
set_property LOC SLICE_X36Y74 [get_cells Stadio_3/genblk1[30].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_LL_CQ CLBLL_LOGIC_OUTS6 EE2BEG2 NE2BEG2 NR1BEG2 BYP_ALT3 BYP_L3 CLBLL_LL_CX }  } [get_nets Stadio_3/Data_up_i[30]] 


set_property BEL SLICEL.DFF [get_cells Stadio_2/genblk1[31].Data_latch] 
set_property LOC SLICE_X32Y72 [get_cells Stadio_2/genblk1[31].Data_latch] 
set_property BEL SLICEL.DFF [get_cells Stadio_3/genblk1[31].Data_latch] 
set_property LOC SLICE_X36Y74 [get_cells Stadio_3/genblk1[31].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_LL_DQ CLBLL_LOGIC_OUTS7 EE2BEG3 NE2BEG3 NR1BEG3 BYP_ALT6 BYP_L6 CLBLL_LL_DX }  } [get_nets Stadio_3/Data_up_i[31]] 


set_property BEL SLICEL.AFF [get_cells Stadio_2/genblk1[16].Data_latch] 
set_property LOC SLICE_X33Y71 [get_cells Stadio_2/genblk1[16].Data_latch] 
set_property BEL SLICEL.AFF [get_cells Stadio_3/genblk1[16].Data_latch] 
set_property LOC SLICE_X37Y73 [get_cells Stadio_3/genblk1[16].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_L_AQ CLBLL_LOGIC_OUTS0 NE2BEG0 NR1BEG0 EE2BEG0 BYP_ALT0 BYP_L0 CLBLL_L_AX }  } [get_nets Stadio_3/Data_up_i[16]] 


set_property BEL SLICEL.AFF [get_cells Stadio_2/genblk1[24].Data_latch] 
set_property LOC SLICE_X33Y72 [get_cells Stadio_2/genblk1[24].Data_latch] 
set_property BEL SLICEL.AFF [get_cells Stadio_3/genblk1[24].Data_latch] 
set_property LOC SLICE_X37Y74 [get_cells Stadio_3/genblk1[24].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_L_AQ CLBLL_LOGIC_OUTS0 NE2BEG0 NR1BEG0 EE2BEG0 BYP_ALT0 BYP_L0 CLBLL_L_AX }  } [get_nets Stadio_3/Data_up_i[24]] 


set_property BEL SLICEL.BFF [get_cells Stadio_2/genblk1[25].Data_latch] 
set_property LOC SLICE_X33Y72 [get_cells Stadio_2/genblk1[25].Data_latch] 
set_property BEL SLICEL.BFF [get_cells Stadio_3/genblk1[25].Data_latch] 
set_property LOC SLICE_X37Y74 [get_cells Stadio_3/genblk1[25].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_L_BQ CLBLL_LOGIC_OUTS1 NE2BEG1 NR1BEG1 EE2BEG1 BYP_ALT5 BYP_L5 CLBLL_L_BX }  } [get_nets Stadio_3/Data_up_i[25]] 


set_property BEL SLICEL.CFF [get_cells Stadio_2/genblk1[26].Data_latch] 
set_property LOC SLICE_X33Y72 [get_cells Stadio_2/genblk1[26].Data_latch] 
set_property BEL SLICEL.CFF [get_cells Stadio_3/genblk1[26].Data_latch] 
set_property LOC SLICE_X37Y74 [get_cells Stadio_3/genblk1[26].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_L_CQ CLBLL_LOGIC_OUTS2 NE2BEG2 NR1BEG2 EE2BEG2 BYP_ALT2 BYP_L2 CLBLL_L_CX }  } [get_nets Stadio_3/Data_up_i[26]] 


set_property BEL SLICEL.DFF [get_cells Stadio_2/genblk1[27].Data_latch] 
set_property LOC SLICE_X33Y72 [get_cells Stadio_2/genblk1[27].Data_latch] 
set_property BEL SLICEL.DFF [get_cells Stadio_3/genblk1[27].Data_latch] 
set_property LOC SLICE_X37Y74 [get_cells Stadio_3/genblk1[27].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_L_DQ CLBLL_LOGIC_OUTS3 NE2BEG3 NR1BEG3 EE2BEG3 BYP_ALT7 BYP_L7 CLBLL_L_DX }  } [get_nets Stadio_3/Data_up_i[27]] 


set_property BEL SLICEL.AFF [get_cells Stadio_2/genblk1[22].Data_latch] 
set_property LOC SLICE_X32Y71 [get_cells Stadio_2/genblk1[22].Data_latch] 
set_property BEL SLICEL.AFF [get_cells Stadio_3/genblk1[22].Data_latch] 
set_property LOC SLICE_X36Y73 [get_cells Stadio_3/genblk1[22].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_LL_AQ CLBLL_LOGIC_OUTS4 EE2BEG0 NE2BEG0 NR1BEG0 BYP_ALT1 BYP_L1 CLBLL_LL_AX }  } [get_nets Stadio_3/Data_up_i[22]] 


set_property BEL SLICEL.AFF [get_cells Stadio_2/genblk1[28].Data_latch] 
set_property LOC SLICE_X32Y72 [get_cells Stadio_2/genblk1[28].Data_latch] 
set_property BEL SLICEL.AFF [get_cells Stadio_3/genblk1[28].Data_latch] 
set_property LOC SLICE_X36Y74 [get_cells Stadio_3/genblk1[28].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_LL_AQ CLBLL_LOGIC_OUTS4 EE2BEG0 NE2BEG0 NR1BEG0 BYP_ALT1 BYP_L1 CLBLL_LL_AX }  } [get_nets Stadio_3/Data_up_i[28]] 


set_property BEL SLICEM.AFF [get_cells Stadio_2/genblk1[10].Data_latch] 
set_property LOC SLICE_X34Y72 [get_cells Stadio_2/genblk1[10].Data_latch] 
set_property BEL SLICEM.AFF [get_cells Stadio_3/genblk1[10].Data_latch] 
set_property LOC SLICE_X38Y74 [get_cells Stadio_3/genblk1[10].Data_latch] 
set_property FIXED_ROUTE { { CLBLM_M_AQ CLBLM_LOGIC_OUTS4 EE2BEG0 NE2BEG0 NR1BEG0 BYP_ALT1 BYP1 CLBLM_M_AX }  } [get_nets Stadio_3/Data_up_i[10]] 


set_property BEL SLICEM.BFF [get_cells Stadio_2/genblk1[11].Data_latch] 
set_property LOC SLICE_X34Y72 [get_cells Stadio_2/genblk1[11].Data_latch] 
set_property BEL SLICEM.BFF [get_cells Stadio_3/genblk1[11].Data_latch] 
set_property LOC SLICE_X38Y74 [get_cells Stadio_3/genblk1[11].Data_latch] 
set_property FIXED_ROUTE { { CLBLM_M_BQ CLBLM_LOGIC_OUTS5 EE2BEG1 NE2BEG1 NR1BEG1 BYP_ALT4 BYP4 CLBLM_M_BX }  } [get_nets Stadio_3/Data_up_i[11]] 


set_property BEL SLICEM.AFF [get_cells Stadio_2/genblk1[2].Data_latch] 
set_property LOC SLICE_X34Y71 [get_cells Stadio_2/genblk1[2].Data_latch] 
set_property BEL SLICEM.AFF [get_cells Stadio_3/genblk1[2].Data_latch] 
set_property LOC SLICE_X38Y73 [get_cells Stadio_3/genblk1[2].Data_latch] 
set_property FIXED_ROUTE { { CLBLM_M_AQ CLBLM_LOGIC_OUTS4 EE2BEG0 NE2BEG0 NR1BEG0 BYP_ALT1 BYP1 CLBLM_M_AX }  } [get_nets Stadio_3/Data_up_i[2]] 


set_property BEL SLICEM.BFF [get_cells Stadio_2/genblk1[3].Data_latch] 
set_property LOC SLICE_X34Y71 [get_cells Stadio_2/genblk1[3].Data_latch] 
set_property BEL SLICEM.BFF [get_cells Stadio_3/genblk1[3].Data_latch] 
set_property LOC SLICE_X38Y73 [get_cells Stadio_3/genblk1[3].Data_latch] 
set_property FIXED_ROUTE { { CLBLM_M_BQ CLBLM_LOGIC_OUTS5 EE2BEG1 NE2BEG1 NR1BEG1 BYP_ALT4 BYP4 CLBLM_M_BX }  } [get_nets Stadio_3/Data_up_i[3]] 


set_property BEL SLICEM.CFF [get_cells Stadio_2/genblk1[12].Data_latch] 
set_property LOC SLICE_X34Y72 [get_cells Stadio_2/genblk1[12].Data_latch] 
set_property BEL SLICEM.CFF [get_cells Stadio_3/genblk1[12].Data_latch] 
set_property LOC SLICE_X38Y74 [get_cells Stadio_3/genblk1[12].Data_latch] 
set_property FIXED_ROUTE { { CLBLM_M_CQ CLBLM_LOGIC_OUTS6 EE2BEG2 NE2BEG2 NR1BEG2 BYP_ALT3 BYP3 CLBLM_M_CX }  } [get_nets Stadio_3/Data_up_i[12]] 


set_property BEL SLICEM.CFF [get_cells Stadio_2/genblk1[4].Data_latch] 
set_property LOC SLICE_X34Y71 [get_cells Stadio_2/genblk1[4].Data_latch] 
set_property BEL SLICEM.CFF [get_cells Stadio_3/genblk1[4].Data_latch] 
set_property LOC SLICE_X38Y73 [get_cells Stadio_3/genblk1[4].Data_latch] 
set_property FIXED_ROUTE { { CLBLM_M_CQ CLBLM_LOGIC_OUTS6 EE2BEG2 NE2BEG2 NR1BEG2 BYP_ALT3 BYP3 CLBLM_M_CX }  } [get_nets Stadio_3/Data_up_i[4]] 


set_property BEL SLICEM.DFF [get_cells Stadio_2/genblk1[5].Data_latch] 
set_property LOC SLICE_X34Y71 [get_cells Stadio_2/genblk1[5].Data_latch] 
set_property BEL SLICEM.DFF [get_cells Stadio_3/genblk1[5].Data_latch] 
set_property LOC SLICE_X38Y73 [get_cells Stadio_3/genblk1[5].Data_latch] 
set_property FIXED_ROUTE { { CLBLM_M_DQ CLBLM_LOGIC_OUTS7 EE2BEG3 NE2BEG3 NR1BEG3 BYP_ALT6 BYP6 CLBLM_M_DX }  } [get_nets Stadio_3/Data_up_i[5]] 


set_property BEL SLICEM.DFF [get_cells Stadio_2/genblk1[9].Data_latch] 
set_property LOC SLICE_X34Y72 [get_cells Stadio_2/genblk1[9].Data_latch] 
set_property BEL SLICEM.DFF [get_cells Stadio_3/genblk1[9].Data_latch] 
set_property LOC SLICE_X38Y74 [get_cells Stadio_3/genblk1[9].Data_latch] 
set_property FIXED_ROUTE { { CLBLM_M_DQ CLBLM_LOGIC_OUTS7 EE2BEG3 NE2BEG3 NR1BEG3 BYP_ALT6 BYP6 CLBLM_M_DX }  } [get_nets Stadio_3/Data_up_i[9]] 


set_property BEL SLICEL.BFF [get_cells Stadio_2/genblk1[7].Data_latch] 
set_property LOC SLICE_X32Y73 [get_cells Stadio_2/genblk1[7].Data_latch] 
set_property BEL SLICEL.BFF [get_cells Stadio_3/genblk1[7].Data_latch] 
set_property LOC SLICE_X36Y75 [get_cells Stadio_3/genblk1[7].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_LL_BQ CLBLL_LOGIC_OUTS5 EE2BEG1 NE2BEG1 NR1BEG1 BYP_ALT4 BYP_L4 CLBLL_LL_BX }  } [get_nets Stadio_3/Data_up_i[7]] 


set_property BEL SLICEL.CFF [get_cells Stadio_2/genblk1[8].Data_latch] 
set_property LOC SLICE_X32Y73 [get_cells Stadio_2/genblk1[8].Data_latch] 
set_property BEL SLICEL.CFF [get_cells Stadio_3/genblk1[8].Data_latch] 
set_property LOC SLICE_X36Y75 [get_cells Stadio_3/genblk1[8].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_LL_CQ CLBLL_LOGIC_OUTS6 EE2BEG2 NE2BEG2 NR1BEG2 BYP_ALT3 BYP_L3 CLBLL_LL_CX }  } [get_nets Stadio_3/Data_up_i[8]] 


set_property BEL SLICEL.AFF [get_cells Stadio_2/genblk1[13].Data_latch] 
set_property LOC SLICE_X33Y73 [get_cells Stadio_2/genblk1[13].Data_latch] 
set_property BEL SLICEL.AFF [get_cells Stadio_3/genblk1[13].Data_latch] 
set_property LOC SLICE_X37Y75 [get_cells Stadio_3/genblk1[13].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_L_AQ CLBLL_LOGIC_OUTS0 NE2BEG0 NR1BEG0 EE2BEG0 BYP_ALT0 BYP_L0 CLBLL_L_AX }  } [get_nets Stadio_3/Data_up_i[13]] 


set_property BEL SLICEL.BFF [get_cells Stadio_2/genblk1[14].Data_latch] 
set_property LOC SLICE_X33Y73 [get_cells Stadio_2/genblk1[14].Data_latch] 
set_property BEL SLICEL.BFF [get_cells Stadio_3/genblk1[14].Data_latch] 
set_property LOC SLICE_X37Y75 [get_cells Stadio_3/genblk1[14].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_L_BQ CLBLL_LOGIC_OUTS1 NE2BEG1 NR1BEG1 EE2BEG1 BYP_ALT5 BYP_L5 CLBLL_L_BX }  } [get_nets Stadio_3/Data_up_i[14]] 


set_property BEL SLICEL.CFF [get_cells Stadio_2/genblk1[15].Data_latch] 
set_property LOC SLICE_X33Y73 [get_cells Stadio_2/genblk1[15].Data_latch] 
set_property BEL SLICEL.CFF [get_cells Stadio_3/genblk1[15].Data_latch] 
set_property LOC SLICE_X37Y75 [get_cells Stadio_3/genblk1[15].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_L_CQ CLBLL_LOGIC_OUTS2 NE2BEG2 NR1BEG2 EE2BEG2 BYP_ALT2 BYP_L2 CLBLL_L_CX }  } [get_nets Stadio_3/Data_up_i[15]] 


set_property BEL SLICEL.DFF [get_cells Stadio_2/genblk1[23].Data_latch] 
set_property LOC SLICE_X33Y73 [get_cells Stadio_2/genblk1[23].Data_latch] 
set_property BEL SLICEL.DFF [get_cells Stadio_3/genblk1[23].Data_latch] 
set_property LOC SLICE_X37Y75 [get_cells Stadio_3/genblk1[23].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_L_DQ CLBLL_LOGIC_OUTS3 NE2BEG3 NR1BEG3 EE2BEG3 BYP_ALT7 BYP_L7 CLBLL_L_DX }  } [get_nets Stadio_3/Data_up_i[23]] 


set_property BEL SLICEL.AFF [get_cells Stadio_2/genblk1[0].Data_latch] 
set_property LOC SLICE_X32Y73 [get_cells Stadio_2/genblk1[0].Data_latch] 
set_property BEL SLICEL.AFF [get_cells Stadio_3/genblk1[0].Data_latch] 
set_property LOC SLICE_X36Y75 [get_cells Stadio_3/genblk1[0].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_LL_AQ CLBLL_LOGIC_OUTS4 EE2BEG0 NE2BEG0 NR1BEG0 BYP_ALT1 BYP_L1 CLBLL_LL_AX }  } [get_nets Stadio_3/Data_up_i[0]] 


set_max_delay -from [get_pins Stadio_3/req_latch/G] -to [get_pins Stadio_2/req_latch/GE] 2.5249
set_max_delay -from [get_pins Stadio_2/req_latch/G] -to [get_pins Stadio_2/*.Data_latch/GE] 2.8978
set_max_delay -from [get_pins Stadio_2/req_latch/G] -to [get_pins Stadio_2/req_latch/GE] 2.2026000000000003
