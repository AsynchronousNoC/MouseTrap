#set_max_delay -from [get_cells FirstStage/*.Data_latch] -to [get_cells Interface_dw/*.Data_latch] 0.000
#set_max_delay -from [get_cells FirstStage/req_latch] -to [get_cells Interface_dw/req_latch] 0.000


set_property FIXED_ROUTE { { CLBLL_L_DQ CLBLL_LOGIC_OUTS3 EE2BEG3 NE2BEG3 SL1BEG3 BYP_ALT7 BYP7 CLBLM_L_DX }  } [get_nets {FirstStage/Data_dw_o[3]}]
set_property FIXED_ROUTE { { CLBLL_L_AQ CLBLL_LOGIC_OUTS0 EE2BEG0 NE2BEG0 SL1BEG0 BYP_ALT0 BYP0 CLBLM_L_AX }  } [get_nets {FirstStage/Data_dw_o[0]}]
set_property FIXED_ROUTE { { CLBLL_LL_AQ CLBLL_LOGIC_OUTS4 EE4BEG0 WR1BEG1 BYP_ALT1 BYP1 CLBLM_M_AX }  } [get_nets {FirstStage/Data_dw_o[10]}]
set_property FIXED_ROUTE { { CLBLL_LL_AQ CLBLL_LOGIC_OUTS4 EE4BEG0 WR1BEG1 BYP_ALT1 BYP1 CLBLM_M_AX }  } [get_nets {FirstStage/Data_dw_o[11]}]
set_property FIXED_ROUTE { { CLBLL_LL_AQ CLBLL_LOGIC_OUTS4 EE4BEG0 WR1BEG1 BYP_ALT1 BYP1 CLBLM_M_AX }  } [get_nets {FirstStage/Data_dw_o[12]}]
set_property FIXED_ROUTE { { CLBLL_LL_BQ CLBLL_LOGIC_OUTS5 EE2BEG1 NE2BEG1 SL1BEG1 BYP_ALT4 BYP4 CLBLM_M_BX }  } [get_nets {FirstStage/Data_dw_o[13]}]
set_property FIXED_ROUTE { { CLBLL_LL_CQ CLBLL_LOGIC_OUTS6 EE4BEG2 WR1BEG3 BYP_ALT3 BYP3 CLBLM_M_CX }  } [get_nets {FirstStage/Data_dw_o[14]}]
set_property FIXED_ROUTE { { CLBLL_LL_DQ CLBLL_LOGIC_OUTS7 EE2BEG3 NE2BEG3 SL1BEG3 BYP_ALT6 BYP6 CLBLM_M_DX }  } [get_nets {FirstStage/Data_dw_o[15]}]
set_property FIXED_ROUTE { { CLBLL_L_BQ CLBLL_LOGIC_OUTS1 EE4BEG1 WR1BEG2 BYP_ALT5 BYP5 CLBLM_L_BX }  } [get_nets {FirstStage/Data_dw_o[1]}]
set_property FIXED_ROUTE { { CLBLL_L_CQ CLBLL_LOGIC_OUTS2 EE2BEG2 NE2BEG2 SL1BEG2 BYP_ALT2 BYP2 CLBLM_L_CX }  } [get_nets {FirstStage/Data_dw_o[2]}]
set_property FIXED_ROUTE { { CLBLL_L_AQ CLBLL_LOGIC_OUTS0 EE2BEG0 NE2BEG0 SL1BEG0 BYP_ALT0 BYP0 CLBLM_L_AX }  } [get_nets {FirstStage/Data_dw_o[4]}]
set_property FIXED_ROUTE { { CLBLL_L_BQ CLBLL_LOGIC_OUTS1 EE4BEG1 WR1BEG2 BYP_ALT5 BYP5 CLBLM_L_BX }  } [get_nets {FirstStage/Data_dw_o[5]}]
set_property FIXED_ROUTE { { CLBLL_L_CQ CLBLL_LOGIC_OUTS2 EE2BEG2 NE2BEG2 SL1BEG2 BYP_ALT2 BYP2 CLBLM_L_CX }  } [get_nets {FirstStage/Data_dw_o[6]}]
set_property FIXED_ROUTE { { CLBLL_L_DQ CLBLL_LOGIC_OUTS3 EE4BEG3 WR1BEG_S0 BYP_ALT7 BYP7 CLBLM_L_DX }  } [get_nets {FirstStage/Data_dw_o[7]}]
set_property FIXED_ROUTE { { CLBLL_LL_BQ CLBLL_LOGIC_OUTS5 EE2BEG1 NE2BEG1 SL1BEG1 BYP_ALT4 BYP4 CLBLM_M_BX }  } [get_nets {FirstStage/Data_dw_o[8]}]
set_property FIXED_ROUTE { { CLBLL_LL_CQ CLBLL_LOGIC_OUTS6 EE4BEG2 WR1BEG3 BYP_ALT3 BYP3 CLBLM_M_CX }  } [get_nets {FirstStage/Data_dw_o[9]}]
