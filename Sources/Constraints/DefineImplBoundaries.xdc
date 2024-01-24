create_pblock pblock_2
add_cells_to_pblock [get_pblocks pblock_2] [get_cells -quiet [list Interface_up]]
resize_pblock [get_pblocks pblock_2] -add {SLICE_X30Y7:SLICE_X33Y9}
set_property EXCLUDE_PLACEMENT 1 [get_pblocks pblock_2]

create_pblock pblock_1
add_cells_to_pblock [get_pblocks pblock_1] [get_cells -quiet [list FirstStage]]
resize_pblock [get_pblocks pblock_1] -add {SLICE_X36Y7:SLICE_X39Y9}
set_property EXCLUDE_PLACEMENT 1 [get_pblocks pblock_1]

create_pblock pblock_3
add_cells_to_pblock [get_pblocks pblock_3] [get_cells -quiet [list Interface_dw]]
resize_pblock [get_pblocks pblock_3] -add {SLICE_X42Y7:SLICE_X45Y9}
set_property EXCLUDE_PLACEMENT 1 [get_pblocks pblock_3]

