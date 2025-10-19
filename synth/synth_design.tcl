set curr_dir ""
set upf_dir ""
exec make clean
ls
source $curr_dir/create_libs.tcl

set TOP_MODULE "cordic"
source $curr_dir/import_rtl.tcl
source $curr_dir/set_constraints.tcl
#compile_fusion has newer algorithms
compile_fusion 
save_block -as ${TOP_MODULE}/${TOP_MODULE}_synthesized
set_app_options -name place.coarse.fix_hard_macros -value false
set_app_options -name plan.place.auto_create_blockages -value auto
create_placement -timing_driven -buffering_aware_timing_driven -congestion -incremental -effort high
legalize_placement
legalize_placement -cells [get_cells -design [current_block] *] -incremental

check_clock_trees -clocks clk > fc_output/timing/clk_check.rpt
# ADDING ALL INV TO CTS 

#Setting cells for cts 
set_lib_cell_purpose -include cts [get_lib_cells INV*]
create_clock_skew_group -objects [get_ports -design [current_block] {clk}] -name clock_skew_group -mode func -clock clk

clock_opt

set_app_options -name place.coarse.force_rerun_after_global_route_opt -value true
remove_routes -global_route
refine_placement -effort medium -perturbation_level low
legalize_placement

