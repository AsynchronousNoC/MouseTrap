

#Puts closure time max_delay
set_max_delay -from [get_pins FirstStage/req_latch/G] -to [get_pins FirstStage/*.Data_latch/GE] 0.000
set_max_delay -from [get_pins FirstStage/req_latch/G] -to [get_pins FirstStage/req_latch/GE] 0.000





#Puts closure time max_delay
set_max_delay -from [get_pins Interface_dw/req_latch/G] -to [get_pins Interface_dw/*.Data_latch/GE] 0.000
set_max_delay -from [get_pins Interface_dw/req_latch/G] -to [get_pins Interface_dw/req_latch/GE] 0.000





#Puts closure time max_delay
set_max_delay -from [get_pins Interface_up/req_latch/G] -to [get_pins Interface_up/*.Data_latch/GE] 0.000
set_max_delay -from [get_pins Interface_up/req_latch/G] -to [get_pins Interface_up/req_latch/GE] 0.000



