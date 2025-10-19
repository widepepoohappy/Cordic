source $curr_dir/utils/sv_source.tcl



analyze -format sv $sv_path
elaborate -hdl_library WORK $TOP_MODULE
puts "CC-INFO: Setting top module $TOP_MODULE"
set_top_module -verbose $TOP_MODULE
save_block -as ${TOP_MODULE}/${TOP_MODULE}_elaborated
reset_upf
load_upf $upf_dir/default.upf
commit_upf
save_upf cordic.upf
set_technology -node 32
