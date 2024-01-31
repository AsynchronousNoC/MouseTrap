#---------------Set min delay for data latch from Stadio_1 to Stadio_2
set_min_delay -from [get_pins Stadio_1/req_latch/G] -to [get_pins Stadio_2/req_latch/D] 0.7106000000000001


#Fix Data_latch nets from Stadio_1 to Stadio_2
set_property BEL SLICEL.BFF [get_cells Stadio_1/genblk1[14].Data_latch] 
set_property LOC SLICE_X37Y71 [get_cells Stadio_1/genblk1[14].Data_latch] 
set_property BEL SLICEL.BFF [get_cells Stadio_2/genblk1[14].Data_latch] 
set_property LOC SLICE_X41Y79 [get_cells Stadio_2/genblk1[14].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_L_BQ CLBLL_LOGIC_OUTS1 NN2BEG1 NN6BEG1 EE2BEG1 BYP_ALT5 BYP_L5 CLBLL_L_BX }  } [get_nets Stadio_2/Data_up_i[14]] 


set_property BEL SLICEL.BFF [get_cells Stadio_1/genblk1[17].Data_latch] 
set_property LOC SLICE_X37Y69 [get_cells Stadio_1/genblk1[17].Data_latch] 
set_property BEL SLICEL.BFF [get_cells Stadio_2/genblk1[17].Data_latch] 
set_property LOC SLICE_X41Y77 [get_cells Stadio_2/genblk1[17].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_L_BQ CLBLL_LOGIC_OUTS1 NN2BEG1 NN6BEG1 EE2BEG1 BYP_ALT5 BYP_L5 CLBLL_L_BX }  } [get_nets Stadio_2/Data_up_i[17]] 


set_property BEL SLICEL.BFF [get_cells Stadio_1/genblk1[1].Data_latch] 
set_property LOC SLICE_X39Y69 [get_cells Stadio_1/genblk1[1].Data_latch] 
set_property BEL SLICEL.BFF [get_cells Stadio_2/genblk1[1].Data_latch] 
set_property LOC SLICE_X43Y77 [get_cells Stadio_2/genblk1[1].Data_latch] 
set_property FIXED_ROUTE { { CLBLM_L_BQ CLBLM_LOGIC_OUTS1 NN2BEG1 NN6BEG1 EE2BEG1 BYP_ALT5 BYP5 CLBLM_L_BX }  } [get_nets Stadio_2/Data_up_i[1]] 


set_property BEL SLICEL.BFF [get_cells Stadio_1/genblk1[25].Data_latch] 
set_property LOC SLICE_X37Y70 [get_cells Stadio_1/genblk1[25].Data_latch] 
set_property BEL SLICEL.BFF [get_cells Stadio_2/genblk1[25].Data_latch] 
set_property LOC SLICE_X41Y78 [get_cells Stadio_2/genblk1[25].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_L_BQ CLBLL_LOGIC_OUTS1 NN2BEG1 NN6BEG1 EE2BEG1 BYP_ALT5 BYP_L5 CLBLL_L_BX }  } [get_nets Stadio_2/Data_up_i[25]] 


set_property BEL SLICEL.AFF [get_cells Stadio_1/genblk1[13].Data_latch] 
set_property LOC SLICE_X37Y71 [get_cells Stadio_1/genblk1[13].Data_latch] 
set_property BEL SLICEL.AFF [get_cells Stadio_2/genblk1[13].Data_latch] 
set_property LOC SLICE_X41Y79 [get_cells Stadio_2/genblk1[13].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_L_AQ CLBLL_LOGIC_OUTS0 EE2BEG0 NN6BEG0 NN2BEG0 BYP_ALT0 BYP_L0 CLBLL_L_AX }  } [get_nets Stadio_2/Data_up_i[13]] 


set_property BEL SLICEL.AFF [get_cells Stadio_1/genblk1[24].Data_latch] 
set_property LOC SLICE_X37Y70 [get_cells Stadio_1/genblk1[24].Data_latch] 
set_property BEL SLICEL.AFF [get_cells Stadio_2/genblk1[24].Data_latch] 
set_property LOC SLICE_X41Y78 [get_cells Stadio_2/genblk1[24].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_L_AQ CLBLL_LOGIC_OUTS0 EE2BEG0 NN6BEG0 NN2BEG0 BYP_ALT0 BYP_L0 CLBLL_L_AX }  } [get_nets Stadio_2/Data_up_i[24]] 


set_property BEL SLICEL.BFF [get_cells Stadio_1/genblk1[29].Data_latch] 
set_property LOC SLICE_X36Y70 [get_cells Stadio_1/genblk1[29].Data_latch] 
set_property BEL SLICEL.BFF [get_cells Stadio_2/genblk1[29].Data_latch] 
set_property LOC SLICE_X40Y78 [get_cells Stadio_2/genblk1[29].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_LL_BQ CLBLL_LOGIC_OUTS5 EE2BEG1 NN6BEG1 NN2BEG1 BYP_ALT4 BYP_L4 CLBLL_LL_BX }  } [get_nets Stadio_2/Data_up_i[29]] 


set_property BEL SLICEL.BFF [get_cells Stadio_1/genblk1[7].Data_latch] 
set_property LOC SLICE_X36Y71 [get_cells Stadio_1/genblk1[7].Data_latch] 
set_property BEL SLICEL.BFF [get_cells Stadio_2/genblk1[7].Data_latch] 
set_property LOC SLICE_X40Y79 [get_cells Stadio_2/genblk1[7].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_LL_BQ CLBLL_LOGIC_OUTS5 EE2BEG1 NN6BEG1 NN2BEG1 BYP_ALT4 BYP_L4 CLBLL_LL_BX }  } [get_nets Stadio_2/Data_up_i[7]] 


set_property BEL SLICEL.DFF [get_cells Stadio_1/genblk1[21].Data_latch] 
set_property LOC SLICE_X39Y69 [get_cells Stadio_1/genblk1[21].Data_latch] 
set_property BEL SLICEL.DFF [get_cells Stadio_2/genblk1[21].Data_latch] 
set_property LOC SLICE_X43Y77 [get_cells Stadio_2/genblk1[21].Data_latch] 
set_property FIXED_ROUTE { { CLBLM_L_DQ CLBLM_LOGIC_OUTS3 NN2BEG3 NN6BEG3 EE2BEG3 BYP_ALT7 BYP7 CLBLM_L_DX }  } [get_nets Stadio_2/Data_up_i[21]] 


set_property BEL SLICEL.DFF [get_cells Stadio_1/genblk1[27].Data_latch] 
set_property LOC SLICE_X37Y70 [get_cells Stadio_1/genblk1[27].Data_latch] 
set_property BEL SLICEL.DFF [get_cells Stadio_2/genblk1[27].Data_latch] 
set_property LOC SLICE_X41Y78 [get_cells Stadio_2/genblk1[27].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_L_DQ CLBLL_LOGIC_OUTS3 NN2BEG3 NN6BEG3 EE2BEG3 BYP_ALT7 BYP_L7 CLBLL_L_DX }  } [get_nets Stadio_2/Data_up_i[27]] 


set_property BEL SLICEL.DFF [get_cells Stadio_1/genblk1[6].Data_latch] 
set_property LOC SLICE_X37Y69 [get_cells Stadio_1/genblk1[6].Data_latch] 
set_property BEL SLICEL.DFF [get_cells Stadio_2/genblk1[6].Data_latch] 
set_property LOC SLICE_X41Y77 [get_cells Stadio_2/genblk1[6].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_L_DQ CLBLL_LOGIC_OUTS3 NN2BEG3 NN6BEG3 EE2BEG3 BYP_ALT7 BYP_L7 CLBLL_L_DX }  } [get_nets Stadio_2/Data_up_i[6]] 


set_property BEL SLICEL.CFF [get_cells Stadio_1/genblk1[15].Data_latch] 
set_property LOC SLICE_X37Y71 [get_cells Stadio_1/genblk1[15].Data_latch] 
set_property BEL SLICEL.CFF [get_cells Stadio_2/genblk1[15].Data_latch] 
set_property LOC SLICE_X41Y79 [get_cells Stadio_2/genblk1[15].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_L_CQ CLBLL_LOGIC_OUTS2 EE2BEG2 NN6BEG2 NN2BEG2 BYP_ALT2 BYP_L2 CLBLL_L_CX }  } [get_nets Stadio_2/Data_up_i[15]] 


set_property BEL SLICEL.CFF [get_cells Stadio_1/genblk1[18].Data_latch] 
set_property LOC SLICE_X37Y69 [get_cells Stadio_1/genblk1[18].Data_latch] 
set_property BEL SLICEL.CFF [get_cells Stadio_2/genblk1[18].Data_latch] 
set_property LOC SLICE_X41Y77 [get_cells Stadio_2/genblk1[18].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_L_CQ CLBLL_LOGIC_OUTS2 EE2BEG2 NN6BEG2 NN2BEG2 BYP_ALT2 BYP_L2 CLBLL_L_CX }  } [get_nets Stadio_2/Data_up_i[18]] 


set_property BEL SLICEL.CFF [get_cells Stadio_1/genblk1[20].Data_latch] 
set_property LOC SLICE_X39Y69 [get_cells Stadio_1/genblk1[20].Data_latch] 
set_property BEL SLICEL.CFF [get_cells Stadio_2/genblk1[20].Data_latch] 
set_property LOC SLICE_X43Y77 [get_cells Stadio_2/genblk1[20].Data_latch] 
set_property FIXED_ROUTE { { CLBLM_L_CQ CLBLM_LOGIC_OUTS2 EE2BEG2 NN6BEG2 NN2BEG2 BYP_ALT2 BYP2 CLBLM_L_CX }  } [get_nets Stadio_2/Data_up_i[20]] 


set_property BEL SLICEL.CFF [get_cells Stadio_1/genblk1[26].Data_latch] 
set_property LOC SLICE_X37Y70 [get_cells Stadio_1/genblk1[26].Data_latch] 
set_property BEL SLICEL.CFF [get_cells Stadio_2/genblk1[26].Data_latch] 
set_property LOC SLICE_X41Y78 [get_cells Stadio_2/genblk1[26].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_L_CQ CLBLL_LOGIC_OUTS2 EE2BEG2 NN6BEG2 NN2BEG2 BYP_ALT2 BYP_L2 CLBLL_L_CX }  } [get_nets Stadio_2/Data_up_i[26]] 


set_property BEL SLICEL.CFF [get_cells Stadio_1/genblk1[30].Data_latch] 
set_property LOC SLICE_X36Y70 [get_cells Stadio_1/genblk1[30].Data_latch] 
set_property BEL SLICEL.CFF [get_cells Stadio_2/genblk1[30].Data_latch] 
set_property LOC SLICE_X40Y78 [get_cells Stadio_2/genblk1[30].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_LL_CQ CLBLL_LOGIC_OUTS6 NN2BEG2 NN6BEG2 EE2BEG2 BYP_ALT3 BYP_L3 CLBLL_LL_CX }  } [get_nets Stadio_2/Data_up_i[30]] 


set_property BEL SLICEL.CFF [get_cells Stadio_1/genblk1[8].Data_latch] 
set_property LOC SLICE_X36Y71 [get_cells Stadio_1/genblk1[8].Data_latch] 
set_property BEL SLICEL.CFF [get_cells Stadio_2/genblk1[8].Data_latch] 
set_property LOC SLICE_X40Y79 [get_cells Stadio_2/genblk1[8].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_LL_CQ CLBLL_LOGIC_OUTS6 NN2BEG2 NN6BEG2 EE2BEG2 BYP_ALT3 BYP_L3 CLBLL_LL_CX }  } [get_nets Stadio_2/Data_up_i[8]] 


set_property BEL SLICEL.DFF [get_cells Stadio_1/genblk1[31].Data_latch] 
set_property LOC SLICE_X36Y70 [get_cells Stadio_1/genblk1[31].Data_latch] 
set_property BEL SLICEL.DFF [get_cells Stadio_2/genblk1[31].Data_latch] 
set_property LOC SLICE_X40Y78 [get_cells Stadio_2/genblk1[31].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_LL_DQ CLBLL_LOGIC_OUTS7 EE2BEG3 NN6BEG3 NN2BEG3 BYP_ALT6 BYP_L6 CLBLL_LL_DX }  } [get_nets Stadio_2/Data_up_i[31]] 


set_property BEL SLICEL.AFF [get_cells Stadio_1/genblk1[0].Data_latch] 
set_property LOC SLICE_X36Y71 [get_cells Stadio_1/genblk1[0].Data_latch] 
set_property BEL SLICEL.AFF [get_cells Stadio_2/genblk1[0].Data_latch] 
set_property LOC SLICE_X40Y79 [get_cells Stadio_2/genblk1[0].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_LL_AQ CLBLL_LOGIC_OUTS4 NN2BEG0 NN6BEG0 EE2BEG0 BYP_ALT1 BYP_L1 CLBLL_LL_AX }  } [get_nets Stadio_2/Data_up_i[0]] 


set_property BEL SLICEL.AFF [get_cells Stadio_1/genblk1[22].Data_latch] 
set_property LOC SLICE_X36Y69 [get_cells Stadio_1/genblk1[22].Data_latch] 
set_property BEL SLICEL.AFF [get_cells Stadio_2/genblk1[22].Data_latch] 
set_property LOC SLICE_X40Y77 [get_cells Stadio_2/genblk1[22].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_LL_AQ CLBLL_LOGIC_OUTS4 NN2BEG0 NN6BEG0 EE2BEG0 BYP_ALT1 BYP_L1 CLBLL_LL_AX }  } [get_nets Stadio_2/Data_up_i[22]] 


set_property BEL SLICEL.AFF [get_cells Stadio_1/genblk1[28].Data_latch] 
set_property LOC SLICE_X36Y70 [get_cells Stadio_1/genblk1[28].Data_latch] 
set_property BEL SLICEL.AFF [get_cells Stadio_2/genblk1[28].Data_latch] 
set_property LOC SLICE_X40Y78 [get_cells Stadio_2/genblk1[28].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_LL_AQ CLBLL_LOGIC_OUTS4 NN2BEG0 NN6BEG0 EE2BEG0 BYP_ALT1 BYP_L1 CLBLL_LL_AX }  } [get_nets Stadio_2/Data_up_i[28]] 


set_property BEL SLICEM.AFF [get_cells Stadio_1/genblk1[10].Data_latch] 
set_property LOC SLICE_X38Y70 [get_cells Stadio_1/genblk1[10].Data_latch] 
set_property BEL SLICEM.AFF [get_cells Stadio_2/genblk1[10].Data_latch] 
set_property LOC SLICE_X42Y78 [get_cells Stadio_2/genblk1[10].Data_latch] 
set_property FIXED_ROUTE { { CLBLM_M_AQ CLBLM_LOGIC_OUTS4 NN2BEG0 NN6BEG0 EE2BEG0 BYP_ALT1 BYP1 CLBLM_M_AX }  } [get_nets Stadio_2/Data_up_i[10]] 


set_property BEL SLICEM.AFF [get_cells Stadio_1/genblk1[2].Data_latch] 
set_property LOC SLICE_X38Y69 [get_cells Stadio_1/genblk1[2].Data_latch] 
set_property BEL SLICEM.AFF [get_cells Stadio_2/genblk1[2].Data_latch] 
set_property LOC SLICE_X42Y77 [get_cells Stadio_2/genblk1[2].Data_latch] 
set_property FIXED_ROUTE { { CLBLM_M_AQ CLBLM_LOGIC_OUTS4 NN2BEG0 NN6BEG0 EE2BEG0 BYP_ALT1 BYP1 CLBLM_M_AX }  } [get_nets Stadio_2/Data_up_i[2]] 


set_property BEL SLICEM.BFF [get_cells Stadio_1/genblk1[11].Data_latch] 
set_property LOC SLICE_X38Y70 [get_cells Stadio_1/genblk1[11].Data_latch] 
set_property BEL SLICEM.BFF [get_cells Stadio_2/genblk1[11].Data_latch] 
set_property LOC SLICE_X42Y78 [get_cells Stadio_2/genblk1[11].Data_latch] 
set_property FIXED_ROUTE { { CLBLM_M_BQ CLBLM_LOGIC_OUTS5 EE2BEG1 NN6BEG1 NN2BEG1 BYP_ALT4 BYP4 CLBLM_M_BX }  } [get_nets Stadio_2/Data_up_i[11]] 


set_property BEL SLICEM.BFF [get_cells Stadio_1/genblk1[3].Data_latch] 
set_property LOC SLICE_X38Y69 [get_cells Stadio_1/genblk1[3].Data_latch] 
set_property BEL SLICEM.BFF [get_cells Stadio_2/genblk1[3].Data_latch] 
set_property LOC SLICE_X42Y77 [get_cells Stadio_2/genblk1[3].Data_latch] 
set_property FIXED_ROUTE { { CLBLM_M_BQ CLBLM_LOGIC_OUTS5 EE2BEG1 NN6BEG1 NN2BEG1 BYP_ALT4 BYP4 CLBLM_M_BX }  } [get_nets Stadio_2/Data_up_i[3]] 


set_property BEL SLICEM.CFF [get_cells Stadio_1/genblk1[12].Data_latch] 
set_property LOC SLICE_X38Y70 [get_cells Stadio_1/genblk1[12].Data_latch] 
set_property BEL SLICEM.CFF [get_cells Stadio_2/genblk1[12].Data_latch] 
set_property LOC SLICE_X42Y78 [get_cells Stadio_2/genblk1[12].Data_latch] 
set_property FIXED_ROUTE { { CLBLM_M_CQ CLBLM_LOGIC_OUTS6 NN2BEG2 NN6BEG2 EE2BEG2 BYP_ALT3 BYP3 CLBLM_M_CX }  } [get_nets Stadio_2/Data_up_i[12]] 


set_property BEL SLICEM.CFF [get_cells Stadio_1/genblk1[4].Data_latch] 
set_property LOC SLICE_X38Y69 [get_cells Stadio_1/genblk1[4].Data_latch] 
set_property BEL SLICEM.CFF [get_cells Stadio_2/genblk1[4].Data_latch] 
set_property LOC SLICE_X42Y77 [get_cells Stadio_2/genblk1[4].Data_latch] 
set_property FIXED_ROUTE { { CLBLM_M_CQ CLBLM_LOGIC_OUTS6 NN2BEG2 NN6BEG2 EE2BEG2 BYP_ALT3 BYP3 CLBLM_M_CX }  } [get_nets Stadio_2/Data_up_i[4]] 


set_property BEL SLICEM.DFF [get_cells Stadio_1/genblk1[5].Data_latch] 
set_property LOC SLICE_X38Y69 [get_cells Stadio_1/genblk1[5].Data_latch] 
set_property BEL SLICEM.DFF [get_cells Stadio_2/genblk1[5].Data_latch] 
set_property LOC SLICE_X42Y77 [get_cells Stadio_2/genblk1[5].Data_latch] 
set_property FIXED_ROUTE { { CLBLM_M_DQ CLBLM_LOGIC_OUTS7 EE2BEG3 NN6BEG3 NN2BEG3 BYP_ALT6 BYP6 CLBLM_M_DX }  } [get_nets Stadio_2/Data_up_i[5]] 


set_property BEL SLICEM.DFF [get_cells Stadio_1/genblk1[9].Data_latch] 
set_property LOC SLICE_X38Y70 [get_cells Stadio_1/genblk1[9].Data_latch] 
set_property BEL SLICEM.DFF [get_cells Stadio_2/genblk1[9].Data_latch] 
set_property LOC SLICE_X42Y78 [get_cells Stadio_2/genblk1[9].Data_latch] 
set_property FIXED_ROUTE { { CLBLM_M_DQ CLBLM_LOGIC_OUTS7 EE2BEG3 NN6BEG3 NN2BEG3 BYP_ALT6 BYP6 CLBLM_M_DX }  } [get_nets Stadio_2/Data_up_i[9]] 


set_property BEL SLICEL.DFF [get_cells Stadio_1/genblk1[23].Data_latch] 
set_property LOC SLICE_X37Y71 [get_cells Stadio_1/genblk1[23].Data_latch] 
set_property BEL SLICEL.DFF [get_cells Stadio_2/genblk1[23].Data_latch] 
set_property LOC SLICE_X41Y79 [get_cells Stadio_2/genblk1[23].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_L_DQ CLBLL_LOGIC_OUTS3 NW6BEG3 NE6BEG3 EE2BEG3 BYP_ALT7 BYP_L7 CLBLL_L_DX }  } [get_nets Stadio_2/Data_up_i[23]] 


set_property BEL SLICEL.AFF [get_cells Stadio_1/genblk1[16].Data_latch] 
set_property LOC SLICE_X37Y69 [get_cells Stadio_1/genblk1[16].Data_latch] 
set_property BEL SLICEL.AFF [get_cells Stadio_2/genblk1[16].Data_latch] 
set_property LOC SLICE_X41Y77 [get_cells Stadio_2/genblk1[16].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_L_AQ CLBLL_LOGIC_OUTS0 EE2BEG0 NN6BEG0 NN2BEG0 BYP_ALT0 BYP_L0 CLBLL_L_AX }  } [get_nets Stadio_2/Data_up_i[16]] 


set_property BEL SLICEL.AFF [get_cells Stadio_1/genblk1[19].Data_latch] 
set_property LOC SLICE_X39Y69 [get_cells Stadio_1/genblk1[19].Data_latch] 
set_property BEL SLICEL.AFF [get_cells Stadio_2/genblk1[19].Data_latch] 
set_property LOC SLICE_X43Y77 [get_cells Stadio_2/genblk1[19].Data_latch] 
set_property FIXED_ROUTE { { CLBLM_L_AQ CLBLM_LOGIC_OUTS0 EE2BEG0 NN6BEG0 NN2BEG0 BYP_ALT0 BYP0 CLBLM_L_AX }  } [get_nets Stadio_2/Data_up_i[19]] 


set_max_delay -from [get_pins Stadio_2/req_latch/G] -to [get_pins Stadio_1/req_latch/GE] 2.359
set_max_delay -from [get_pins Stadio_1/req_latch/G] -to [get_pins Stadio_1/req_latch/GE] 1.775
set_max_delay -from [get_pins Stadio_1/req_latch/G] -to [get_pins Stadio_1/*.Data_latch/GE] 2.205
#---------------Set min delay for data latch from Stadio_2 to Stadio_3
set_min_delay -from [get_pins Stadio_2/req_latch/G] -to [get_pins Stadio_3/req_latch/D] 0.6611


#Fix Data_latch nets from Stadio_2 to Stadio_3
set_property BEL SLICEL.AFF [get_cells Stadio_2/genblk1[13].Data_latch] 
set_property LOC SLICE_X41Y79 [get_cells Stadio_2/genblk1[13].Data_latch] 
set_property BEL SLICEL.AFF [get_cells Stadio_3/genblk1[13].Data_latch] 
set_property LOC SLICE_X45Y87 [get_cells Stadio_3/genblk1[13].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_L_AQ CLBLL_LOGIC_OUTS0 EE2BEG0 NN6BEG0 NN2BEG0 BYP_ALT0 BYP_L0 CLBLL_L_AX }  } [get_nets Stadio_3/Data_up_i[13]] 


set_property BEL SLICEL.BFF [get_cells Stadio_2/genblk1[14].Data_latch] 
set_property LOC SLICE_X41Y79 [get_cells Stadio_2/genblk1[14].Data_latch] 
set_property BEL SLICEL.BFF [get_cells Stadio_3/genblk1[14].Data_latch] 
set_property LOC SLICE_X45Y87 [get_cells Stadio_3/genblk1[14].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_L_BQ CLBLL_LOGIC_OUTS1 NN2BEG1 NN6BEG1 EE2BEG1 BYP_ALT5 BYP_L5 CLBLL_L_BX }  } [get_nets Stadio_3/Data_up_i[14]] 


set_property BEL SLICEL.AFF [get_cells Stadio_2/genblk1[16].Data_latch] 
set_property LOC SLICE_X41Y77 [get_cells Stadio_2/genblk1[16].Data_latch] 
set_property BEL SLICEL.AFF [get_cells Stadio_3/genblk1[16].Data_latch] 
set_property LOC SLICE_X45Y85 [get_cells Stadio_3/genblk1[16].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_L_AQ CLBLL_LOGIC_OUTS0 EE2BEG0 NN6BEG0 NN2BEG0 BYP_ALT0 BYP_L0 CLBLL_L_AX }  } [get_nets Stadio_3/Data_up_i[16]] 


set_property BEL SLICEL.AFF [get_cells Stadio_2/genblk1[19].Data_latch] 
set_property LOC SLICE_X43Y77 [get_cells Stadio_2/genblk1[19].Data_latch] 
set_property BEL SLICEL.AFF [get_cells Stadio_3/genblk1[19].Data_latch] 
set_property LOC SLICE_X47Y85 [get_cells Stadio_3/genblk1[19].Data_latch] 
set_property FIXED_ROUTE { { CLBLM_L_AQ CLBLM_LOGIC_OUTS0 EE2BEG0 NN6BEG0 NN2BEG0 BYP_ALT0 BYP0 CLBLM_L_AX }  } [get_nets Stadio_3/Data_up_i[19]] 


set_property BEL SLICEL.BFF [get_cells Stadio_2/genblk1[1].Data_latch] 
set_property LOC SLICE_X43Y77 [get_cells Stadio_2/genblk1[1].Data_latch] 
set_property BEL SLICEL.BFF [get_cells Stadio_3/genblk1[1].Data_latch] 
set_property LOC SLICE_X47Y85 [get_cells Stadio_3/genblk1[1].Data_latch] 
set_property FIXED_ROUTE { { CLBLM_L_BQ CLBLM_LOGIC_OUTS1 NN2BEG1 NN6BEG1 EE2BEG1 BYP_ALT5 BYP5 CLBLM_L_BX }  } [get_nets Stadio_3/Data_up_i[1]] 


set_property BEL SLICEL.AFF [get_cells Stadio_2/genblk1[24].Data_latch] 
set_property LOC SLICE_X41Y78 [get_cells Stadio_2/genblk1[24].Data_latch] 
set_property BEL SLICEL.AFF [get_cells Stadio_3/genblk1[24].Data_latch] 
set_property LOC SLICE_X45Y86 [get_cells Stadio_3/genblk1[24].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_L_AQ CLBLL_LOGIC_OUTS0 EE2BEG0 NN6BEG0 NN2BEG0 BYP_ALT0 BYP_L0 CLBLL_L_AX }  } [get_nets Stadio_3/Data_up_i[24]] 


set_property BEL SLICEL.BFF [get_cells Stadio_2/genblk1[25].Data_latch] 
set_property LOC SLICE_X41Y78 [get_cells Stadio_2/genblk1[25].Data_latch] 
set_property BEL SLICEL.BFF [get_cells Stadio_3/genblk1[25].Data_latch] 
set_property LOC SLICE_X45Y86 [get_cells Stadio_3/genblk1[25].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_L_BQ CLBLL_LOGIC_OUTS1 NN2BEG1 NN6BEG1 EE2BEG1 BYP_ALT5 BYP_L5 CLBLL_L_BX }  } [get_nets Stadio_3/Data_up_i[25]] 


set_property BEL SLICEL.BFF [get_cells Stadio_2/genblk1[17].Data_latch] 
set_property LOC SLICE_X41Y77 [get_cells Stadio_2/genblk1[17].Data_latch] 
set_property BEL SLICEL.BFF [get_cells Stadio_3/genblk1[17].Data_latch] 
set_property LOC SLICE_X45Y85 [get_cells Stadio_3/genblk1[17].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_L_BQ CLBLL_LOGIC_OUTS1 NN6BEG1 NN2BEG1 EE2BEG1 BYP_ALT5 BYP_L5 CLBLL_L_BX }  } [get_nets Stadio_3/Data_up_i[17]] 


set_property BEL SLICEL.BFF [get_cells Stadio_2/genblk1[29].Data_latch] 
set_property LOC SLICE_X40Y78 [get_cells Stadio_2/genblk1[29].Data_latch] 
set_property BEL SLICEL.BFF [get_cells Stadio_3/genblk1[29].Data_latch] 
set_property LOC SLICE_X44Y86 [get_cells Stadio_3/genblk1[29].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_LL_BQ CLBLL_LOGIC_OUTS5 EE2BEG1 NN6BEG1 NN2BEG1 BYP_ALT4 BYP_L4 CLBLL_LL_BX }  } [get_nets Stadio_3/Data_up_i[29]] 


set_property BEL SLICEL.BFF [get_cells Stadio_2/genblk1[7].Data_latch] 
set_property LOC SLICE_X40Y79 [get_cells Stadio_2/genblk1[7].Data_latch] 
set_property BEL SLICEL.BFF [get_cells Stadio_3/genblk1[7].Data_latch] 
set_property LOC SLICE_X44Y87 [get_cells Stadio_3/genblk1[7].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_LL_BQ CLBLL_LOGIC_OUTS5 EE2BEG1 NN6BEG1 NN2BEG1 BYP_ALT4 BYP_L4 CLBLL_LL_BX }  } [get_nets Stadio_3/Data_up_i[7]] 


set_property BEL SLICEL.CFF [get_cells Stadio_2/genblk1[15].Data_latch] 
set_property LOC SLICE_X41Y79 [get_cells Stadio_2/genblk1[15].Data_latch] 
set_property BEL SLICEL.CFF [get_cells Stadio_3/genblk1[15].Data_latch] 
set_property LOC SLICE_X45Y87 [get_cells Stadio_3/genblk1[15].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_L_CQ CLBLL_LOGIC_OUTS2 EE2BEG2 NN6BEG2 NN2BEG2 BYP_ALT2 BYP_L2 CLBLL_L_CX }  } [get_nets Stadio_3/Data_up_i[15]] 


set_property BEL SLICEL.CFF [get_cells Stadio_2/genblk1[18].Data_latch] 
set_property LOC SLICE_X41Y77 [get_cells Stadio_2/genblk1[18].Data_latch] 
set_property BEL SLICEL.CFF [get_cells Stadio_3/genblk1[18].Data_latch] 
set_property LOC SLICE_X45Y85 [get_cells Stadio_3/genblk1[18].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_L_CQ CLBLL_LOGIC_OUTS2 EE2BEG2 NN6BEG2 NN2BEG2 BYP_ALT2 BYP_L2 CLBLL_L_CX }  } [get_nets Stadio_3/Data_up_i[18]] 


set_property BEL SLICEL.CFF [get_cells Stadio_2/genblk1[20].Data_latch] 
set_property LOC SLICE_X43Y77 [get_cells Stadio_2/genblk1[20].Data_latch] 
set_property BEL SLICEL.CFF [get_cells Stadio_3/genblk1[20].Data_latch] 
set_property LOC SLICE_X47Y85 [get_cells Stadio_3/genblk1[20].Data_latch] 
set_property FIXED_ROUTE { { CLBLM_L_CQ CLBLM_LOGIC_OUTS2 EE2BEG2 NN6BEG2 NN2BEG2 BYP_ALT2 BYP2 CLBLM_L_CX }  } [get_nets Stadio_3/Data_up_i[20]] 


set_property BEL SLICEL.DFF [get_cells Stadio_2/genblk1[21].Data_latch] 
set_property LOC SLICE_X43Y77 [get_cells Stadio_2/genblk1[21].Data_latch] 
set_property BEL SLICEL.DFF [get_cells Stadio_3/genblk1[21].Data_latch] 
set_property LOC SLICE_X47Y85 [get_cells Stadio_3/genblk1[21].Data_latch] 
set_property FIXED_ROUTE { { CLBLM_L_DQ CLBLM_LOGIC_OUTS3 NN2BEG3 NN6BEG3 EE2BEG3 BYP_ALT7 BYP7 CLBLM_L_DX }  } [get_nets Stadio_3/Data_up_i[21]] 


set_property BEL SLICEL.CFF [get_cells Stadio_2/genblk1[26].Data_latch] 
set_property LOC SLICE_X41Y78 [get_cells Stadio_2/genblk1[26].Data_latch] 
set_property BEL SLICEL.CFF [get_cells Stadio_3/genblk1[26].Data_latch] 
set_property LOC SLICE_X45Y86 [get_cells Stadio_3/genblk1[26].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_L_CQ CLBLL_LOGIC_OUTS2 EE2BEG2 NN6BEG2 NN2BEG2 BYP_ALT2 BYP_L2 CLBLL_L_CX }  } [get_nets Stadio_3/Data_up_i[26]] 


set_property BEL SLICEL.DFF [get_cells Stadio_2/genblk1[27].Data_latch] 
set_property LOC SLICE_X41Y78 [get_cells Stadio_2/genblk1[27].Data_latch] 
set_property BEL SLICEL.DFF [get_cells Stadio_3/genblk1[27].Data_latch] 
set_property LOC SLICE_X45Y86 [get_cells Stadio_3/genblk1[27].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_L_DQ CLBLL_LOGIC_OUTS3 NN2BEG3 NN6BEG3 EE2BEG3 BYP_ALT7 BYP_L7 CLBLL_L_DX }  } [get_nets Stadio_3/Data_up_i[27]] 


set_property BEL SLICEL.DFF [get_cells Stadio_2/genblk1[6].Data_latch] 
set_property LOC SLICE_X41Y77 [get_cells Stadio_2/genblk1[6].Data_latch] 
set_property BEL SLICEL.DFF [get_cells Stadio_3/genblk1[6].Data_latch] 
set_property LOC SLICE_X45Y85 [get_cells Stadio_3/genblk1[6].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_L_DQ CLBLL_LOGIC_OUTS3 NN6BEG3 NN2BEG3 EE2BEG3 BYP_ALT7 BYP_L7 CLBLL_L_DX }  } [get_nets Stadio_3/Data_up_i[6]] 


set_property BEL SLICEL.CFF [get_cells Stadio_2/genblk1[30].Data_latch] 
set_property LOC SLICE_X40Y78 [get_cells Stadio_2/genblk1[30].Data_latch] 
set_property BEL SLICEL.CFF [get_cells Stadio_3/genblk1[30].Data_latch] 
set_property LOC SLICE_X44Y86 [get_cells Stadio_3/genblk1[30].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_LL_CQ CLBLL_LOGIC_OUTS6 NN2BEG2 NN6BEG2 EE2BEG2 BYP_ALT3 BYP_L3 CLBLL_LL_CX }  } [get_nets Stadio_3/Data_up_i[30]] 


set_property BEL SLICEL.CFF [get_cells Stadio_2/genblk1[8].Data_latch] 
set_property LOC SLICE_X40Y79 [get_cells Stadio_2/genblk1[8].Data_latch] 
set_property BEL SLICEL.CFF [get_cells Stadio_3/genblk1[8].Data_latch] 
set_property LOC SLICE_X44Y87 [get_cells Stadio_3/genblk1[8].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_LL_CQ CLBLL_LOGIC_OUTS6 NN2BEG2 NN6BEG2 EE2BEG2 BYP_ALT3 BYP_L3 CLBLL_LL_CX }  } [get_nets Stadio_3/Data_up_i[8]] 


set_property BEL SLICEL.DFF [get_cells Stadio_2/genblk1[31].Data_latch] 
set_property LOC SLICE_X40Y78 [get_cells Stadio_2/genblk1[31].Data_latch] 
set_property BEL SLICEL.DFF [get_cells Stadio_3/genblk1[31].Data_latch] 
set_property LOC SLICE_X44Y86 [get_cells Stadio_3/genblk1[31].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_LL_DQ CLBLL_LOGIC_OUTS7 EE2BEG3 NN6BEG3 NN2BEG3 BYP_ALT6 BYP_L6 CLBLL_LL_DX }  } [get_nets Stadio_3/Data_up_i[31]] 


set_property BEL SLICEL.AFF [get_cells Stadio_2/genblk1[0].Data_latch] 
set_property LOC SLICE_X40Y79 [get_cells Stadio_2/genblk1[0].Data_latch] 
set_property BEL SLICEL.AFF [get_cells Stadio_3/genblk1[0].Data_latch] 
set_property LOC SLICE_X44Y87 [get_cells Stadio_3/genblk1[0].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_LL_AQ CLBLL_LOGIC_OUTS4 NN2BEG0 NN6BEG0 EE2BEG0 BYP_ALT1 BYP_L1 CLBLL_LL_AX }  } [get_nets Stadio_3/Data_up_i[0]] 


set_property BEL SLICEL.AFF [get_cells Stadio_2/genblk1[28].Data_latch] 
set_property LOC SLICE_X40Y78 [get_cells Stadio_2/genblk1[28].Data_latch] 
set_property BEL SLICEL.AFF [get_cells Stadio_3/genblk1[28].Data_latch] 
set_property LOC SLICE_X44Y86 [get_cells Stadio_3/genblk1[28].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_LL_AQ CLBLL_LOGIC_OUTS4 NN2BEG0 NN6BEG0 EE2BEG0 BYP_ALT1 BYP_L1 CLBLL_LL_AX }  } [get_nets Stadio_3/Data_up_i[28]] 


set_property BEL SLICEL.AFF [get_cells Stadio_2/genblk1[22].Data_latch] 
set_property LOC SLICE_X40Y77 [get_cells Stadio_2/genblk1[22].Data_latch] 
set_property BEL SLICEL.AFF [get_cells Stadio_3/genblk1[22].Data_latch] 
set_property LOC SLICE_X44Y85 [get_cells Stadio_3/genblk1[22].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_LL_AQ CLBLL_LOGIC_OUTS4 NN6BEG0 NN2BEG0 EE2BEG0 BYP_ALT1 BYP_L1 CLBLL_LL_AX }  } [get_nets Stadio_3/Data_up_i[22]] 


set_property BEL SLICEM.AFF [get_cells Stadio_2/genblk1[10].Data_latch] 
set_property LOC SLICE_X42Y78 [get_cells Stadio_2/genblk1[10].Data_latch] 
set_property BEL SLICEM.AFF [get_cells Stadio_3/genblk1[10].Data_latch] 
set_property LOC SLICE_X46Y86 [get_cells Stadio_3/genblk1[10].Data_latch] 
set_property FIXED_ROUTE { { CLBLM_M_AQ CLBLM_LOGIC_OUTS4 NN2BEG0 NN6BEG0 EE2BEG0 BYP_ALT1 BYP1 CLBLM_M_AX }  } [get_nets Stadio_3/Data_up_i[10]] 


set_property BEL SLICEM.BFF [get_cells Stadio_2/genblk1[11].Data_latch] 
set_property LOC SLICE_X42Y78 [get_cells Stadio_2/genblk1[11].Data_latch] 
set_property BEL SLICEM.BFF [get_cells Stadio_3/genblk1[11].Data_latch] 
set_property LOC SLICE_X46Y86 [get_cells Stadio_3/genblk1[11].Data_latch] 
set_property FIXED_ROUTE { { CLBLM_M_BQ CLBLM_LOGIC_OUTS5 EE2BEG1 NN6BEG1 NN2BEG1 BYP_ALT4 BYP4 CLBLM_M_BX }  } [get_nets Stadio_3/Data_up_i[11]] 


set_property BEL SLICEM.AFF [get_cells Stadio_2/genblk1[2].Data_latch] 
set_property LOC SLICE_X42Y77 [get_cells Stadio_2/genblk1[2].Data_latch] 
set_property BEL SLICEM.AFF [get_cells Stadio_3/genblk1[2].Data_latch] 
set_property LOC SLICE_X46Y85 [get_cells Stadio_3/genblk1[2].Data_latch] 
set_property FIXED_ROUTE { { CLBLM_M_AQ CLBLM_LOGIC_OUTS4 NN2BEG0 NN6BEG0 EE2BEG0 BYP_ALT1 BYP1 CLBLM_M_AX }  } [get_nets Stadio_3/Data_up_i[2]] 


set_property BEL SLICEM.BFF [get_cells Stadio_2/genblk1[3].Data_latch] 
set_property LOC SLICE_X42Y77 [get_cells Stadio_2/genblk1[3].Data_latch] 
set_property BEL SLICEM.BFF [get_cells Stadio_3/genblk1[3].Data_latch] 
set_property LOC SLICE_X46Y85 [get_cells Stadio_3/genblk1[3].Data_latch] 
set_property FIXED_ROUTE { { CLBLM_M_BQ CLBLM_LOGIC_OUTS5 EE2BEG1 NN6BEG1 NN2BEG1 BYP_ALT4 BYP4 CLBLM_M_BX }  } [get_nets Stadio_3/Data_up_i[3]] 


set_property BEL SLICEM.CFF [get_cells Stadio_2/genblk1[12].Data_latch] 
set_property LOC SLICE_X42Y78 [get_cells Stadio_2/genblk1[12].Data_latch] 
set_property BEL SLICEM.CFF [get_cells Stadio_3/genblk1[12].Data_latch] 
set_property LOC SLICE_X46Y86 [get_cells Stadio_3/genblk1[12].Data_latch] 
set_property FIXED_ROUTE { { CLBLM_M_CQ CLBLM_LOGIC_OUTS6 NN2BEG2 NN6BEG2 EE2BEG2 BYP_ALT3 BYP3 CLBLM_M_CX }  } [get_nets Stadio_3/Data_up_i[12]] 


set_property BEL SLICEM.CFF [get_cells Stadio_2/genblk1[4].Data_latch] 
set_property LOC SLICE_X42Y77 [get_cells Stadio_2/genblk1[4].Data_latch] 
set_property BEL SLICEM.CFF [get_cells Stadio_3/genblk1[4].Data_latch] 
set_property LOC SLICE_X46Y85 [get_cells Stadio_3/genblk1[4].Data_latch] 
set_property FIXED_ROUTE { { CLBLM_M_CQ CLBLM_LOGIC_OUTS6 NN2BEG2 NN6BEG2 EE2BEG2 BYP_ALT3 BYP3 CLBLM_M_CX }  } [get_nets Stadio_3/Data_up_i[4]] 


set_property BEL SLICEM.DFF [get_cells Stadio_2/genblk1[5].Data_latch] 
set_property LOC SLICE_X42Y77 [get_cells Stadio_2/genblk1[5].Data_latch] 
set_property BEL SLICEM.DFF [get_cells Stadio_3/genblk1[5].Data_latch] 
set_property LOC SLICE_X46Y85 [get_cells Stadio_3/genblk1[5].Data_latch] 
set_property FIXED_ROUTE { { CLBLM_M_DQ CLBLM_LOGIC_OUTS7 EE2BEG3 NN6BEG3 NN2BEG3 BYP_ALT6 BYP6 CLBLM_M_DX }  } [get_nets Stadio_3/Data_up_i[5]] 


set_property BEL SLICEM.DFF [get_cells Stadio_2/genblk1[9].Data_latch] 
set_property LOC SLICE_X42Y78 [get_cells Stadio_2/genblk1[9].Data_latch] 
set_property BEL SLICEM.DFF [get_cells Stadio_3/genblk1[9].Data_latch] 
set_property LOC SLICE_X46Y86 [get_cells Stadio_3/genblk1[9].Data_latch] 
set_property FIXED_ROUTE { { CLBLM_M_DQ CLBLM_LOGIC_OUTS7 EE2BEG3 NN6BEG3 NN2BEG3 BYP_ALT6 BYP6 CLBLM_M_DX }  } [get_nets Stadio_3/Data_up_i[9]] 


set_property BEL SLICEL.DFF [get_cells Stadio_2/genblk1[23].Data_latch] 
set_property LOC SLICE_X41Y79 [get_cells Stadio_2/genblk1[23].Data_latch] 
set_property BEL SLICEL.DFF [get_cells Stadio_3/genblk1[23].Data_latch] 
set_property LOC SLICE_X45Y87 [get_cells Stadio_3/genblk1[23].Data_latch] 
set_property FIXED_ROUTE { { CLBLL_L_DQ CLBLL_LOGIC_OUTS3 NW6BEG3 NE6BEG3 EE2BEG3 BYP_ALT7 BYP_L7 CLBLL_L_DX }  } [get_nets Stadio_3/Data_up_i[23]] 


set_max_delay -from [get_pins Stadio_3/req_latch/G] -to [get_pins Stadio_2/req_latch/GE] 2.325
set_max_delay -from [get_pins Stadio_2/req_latch/G] -to [get_pins Stadio_2/req_latch/GE] 1.798
set_max_delay -from [get_pins Stadio_2/req_latch/G] -to [get_pins Stadio_2/*.Data_latch/GE] 2.220
