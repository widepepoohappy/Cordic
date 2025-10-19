set curr_dir ""

source $curr_dir/utils/loadndm.tcl

create_lib -technology /usr2/cclement/rtl/multipliers/synth/ref/tech/saed32nm_1p9m_mw.tf -ref_libs $REFERENCE_LIB $TOP_MODULE.ndm
report_lib $TOP_MODULE.ndm
save_lib $TOP_MODULE.ndm
