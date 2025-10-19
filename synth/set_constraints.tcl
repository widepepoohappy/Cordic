set_clock_gate_style -target pos_edge_flip_flop -objects [get_cells -design [current_block] {{z_reg/Qn_reg[15]} {z_reg/Qn_reg[14]} {z_reg/Qn_reg[13]} {z_reg/Qn_reg[12]} {z_reg/Qn_reg[11]} {z_reg/Qn_reg[10]} {z_reg/Qn_reg[9]} {z_reg/Qn_reg[8]} {z_reg/Qn_reg[7]} {z_reg/Qn_reg[6]} {z_reg/Qn_reg[5]} {z_reg/Qn_reg[4]}  \
{z_reg/Qn_reg[3]} {z_reg/Qn_reg[2]} {z_reg/Qn_reg[1]} {z_reg/Qn_reg[0]} {z_reg/Q_reg[15]} {z_reg/Q_reg[14]} {z_reg/Q_reg[13]} {z_reg/Q_reg[12]} {z_reg/Q_reg[11]} {z_reg/Q_reg[10]} {z_reg/Q_reg[9]} {z_reg/Q_reg[8]} {z_reg/Q_reg[7]} {z_reg/Q_reg[6]} {z_reg/Q_reg[5]} {z_reg/Q_reg[4]} {z_reg/Q_reg[3]} {z_reg/Q_reg[2]}  \
{z_reg/Q_reg[1]} {z_reg/Q_reg[0]} z_reg/I_15 z_reg/I_14 z_reg/I_13 z_reg/I_12 z_reg/I_11 z_reg/I_10 z_reg/I_9 z_reg/I_8 z_reg/I_7 z_reg/I_6 z_reg/I_5 z_reg/I_4 z_reg/I_3 z_reg/I_2 z_reg/I_1 z_reg/I_0 z_reg {y_reg/Qn_reg[15]} {y_reg/Qn_reg[14]} {y_reg/Qn_reg[13]} {y_reg/Qn_reg[12]} {y_reg/Qn_reg[11]} {y_reg/Qn_reg[10]}  \
{y_reg/Qn_reg[9]} {y_reg/Qn_reg[8]} {y_reg/Qn_reg[7]} {y_reg/Qn_reg[6]} {y_reg/Qn_reg[5]} {y_reg/Qn_reg[4]} {y_reg/Qn_reg[3]} {y_reg/Qn_reg[2]} {y_reg/Qn_reg[1]} {y_reg/Qn_reg[0]} {y_reg/Q_reg[15]} {y_reg/Q_reg[14]} {y_reg/Q_reg[13]} {y_reg/Q_reg[12]} {y_reg/Q_reg[11]} {y_reg/Q_reg[10]} {y_reg/Q_reg[9]}  \
{y_reg/Q_reg[8]} {y_reg/Q_reg[7]} {y_reg/Q_reg[6]} {y_reg/Q_reg[5]} {y_reg/Q_reg[4]} {y_reg/Q_reg[3]} {y_reg/Q_reg[2]} {y_reg/Q_reg[1]} {y_reg/Q_reg[0]} y_reg/I_15 y_reg/I_14 y_reg/I_13 y_reg/I_12 y_reg/I_11 y_reg/I_10 y_reg/I_9 y_reg/I_8 y_reg/I_7 y_reg/I_6 y_reg/I_5 y_reg/I_4 y_reg/I_3 y_reg/I_2 y_reg/I_1 y_reg/I_0  \
y_reg {x_reg/Qn_reg[15]} {x_reg/Qn_reg[14]} {x_reg/Qn_reg[13]} {x_reg/Qn_reg[12]} {x_reg/Qn_reg[11]} {x_reg/Qn_reg[10]} {x_reg/Qn_reg[9]} {x_reg/Qn_reg[8]} {x_reg/Qn_reg[7]} {x_reg/Qn_reg[6]} {x_reg/Qn_reg[5]} {x_reg/Qn_reg[4]} {x_reg/Qn_reg[3]} {x_reg/Qn_reg[2]} {x_reg/Qn_reg[1]} {x_reg/Qn_reg[0]} {x_reg/Q_reg[15]}  \
{x_reg/Q_reg[14]} {x_reg/Q_reg[13]} {x_reg/Q_reg[12]} {x_reg/Q_reg[11]} {x_reg/Q_reg[10]} {x_reg/Q_reg[9]} {x_reg/Q_reg[8]} {x_reg/Q_reg[7]} {x_reg/Q_reg[6]} {x_reg/Q_reg[5]} {x_reg/Q_reg[4]} {x_reg/Q_reg[3]} {x_reg/Q_reg[2]} {x_reg/Q_reg[1]} {x_reg/Q_reg[0]} x_reg/I_15 x_reg/I_14 x_reg/I_13 x_reg/I_12 x_reg/I_11  \
x_reg/I_10 x_reg/I_9 x_reg/I_8 x_reg/I_7 x_reg/I_6 x_reg/I_5 x_reg/I_4 x_reg/I_3 x_reg/I_2 x_reg/I_1 x_reg/I_0 x_reg init_reg {delay_count_reg/Qn_reg[3]} {delay_count_reg/Qn_reg[2]} {delay_count_reg/Qn_reg[1]} {delay_count_reg/Qn_reg[0]} {delay_count_reg/Q_reg[3]} {delay_count_reg/Q_reg[2]} {delay_count_reg/Q_reg[1]}  \
{delay_count_reg/Q_reg[0]} delay_count_reg/I_3 delay_count_reg/I_2 delay_count_reg/I_1 delay_count_reg/I_0 delay_count_reg {cnt_u/cnt_reg[3]} {cnt_u/cnt_reg[2]} {cnt_u/cnt_reg[1]} {cnt_u/cnt_reg[0]} {atan_rom/data_reg[15]} {atan_rom/data_reg[14]} {atan_rom/data_reg[13]} {atan_rom/data_reg[12]} {atan_rom/data_reg[11]}  \
{atan_rom/data_reg[10]} {atan_rom/data_reg[9]} {atan_rom/data_reg[8]} {atan_rom/data_reg[7]} {atan_rom/data_reg[6]} {atan_rom/data_reg[5]} {atan_rom/data_reg[4]} {atan_rom/data_reg[3]} {atan_rom/data_reg[2]} {atan_rom/data_reg[1]} {atan_rom/data_reg[0]}}]

set_clock_gating_objects -include [get_cells -design [current_block] {{z_reg/Qn_reg[15]} {z_reg/Qn_reg[14]} {z_reg/Qn_reg[13]} {z_reg/Qn_reg[12]} {z_reg/Qn_reg[11]} {z_reg/Qn_reg[10]} {z_reg/Qn_reg[9]} {z_reg/Qn_reg[8]} {z_reg/Qn_reg[7]} {z_reg/Qn_reg[6]} {z_reg/Qn_reg[5]} {z_reg/Qn_reg[4]} {z_reg/Qn_reg[3]}  \
{z_reg/Qn_reg[2]} {z_reg/Qn_reg[1]} {z_reg/Qn_reg[0]} {z_reg/Q_reg[15]} {z_reg/Q_reg[14]} {z_reg/Q_reg[13]} {z_reg/Q_reg[12]} {z_reg/Q_reg[11]} {z_reg/Q_reg[10]} {z_reg/Q_reg[9]} {z_reg/Q_reg[8]} {z_reg/Q_reg[7]} {z_reg/Q_reg[6]} {z_reg/Q_reg[5]} {z_reg/Q_reg[4]} {z_reg/Q_reg[3]} {z_reg/Q_reg[2]} {z_reg/Q_reg[1]}  \
{z_reg/Q_reg[0]} z_reg/I_15 z_reg/I_14 z_reg/I_13 z_reg/I_12 z_reg/I_11 z_reg/I_10 z_reg/I_9 z_reg/I_8 z_reg/I_7 z_reg/I_6 z_reg/I_5 z_reg/I_4 z_reg/I_3 z_reg/I_2 z_reg/I_1 z_reg/I_0 z_reg {y_reg/Qn_reg[15]} {y_reg/Qn_reg[14]} {y_reg/Qn_reg[13]} {y_reg/Qn_reg[12]} {y_reg/Qn_reg[11]} {y_reg/Qn_reg[10]}  \
{y_reg/Qn_reg[9]} {y_reg/Qn_reg[8]} {y_reg/Qn_reg[7]} {y_reg/Qn_reg[6]} {y_reg/Qn_reg[5]} {y_reg/Qn_reg[4]} {y_reg/Qn_reg[3]} {y_reg/Qn_reg[2]} {y_reg/Qn_reg[1]} {y_reg/Qn_reg[0]} {y_reg/Q_reg[15]} {y_reg/Q_reg[14]} {y_reg/Q_reg[13]} {y_reg/Q_reg[12]} {y_reg/Q_reg[11]} {y_reg/Q_reg[10]} {y_reg/Q_reg[9]}  \
{y_reg/Q_reg[8]} {y_reg/Q_reg[7]} {y_reg/Q_reg[6]} {y_reg/Q_reg[5]} {y_reg/Q_reg[4]} {y_reg/Q_reg[3]} {y_reg/Q_reg[2]} {y_reg/Q_reg[1]} {y_reg/Q_reg[0]} y_reg/I_15 y_reg/I_14 y_reg/I_13 x_reg/I_4 x_reg/I_3 x_reg/I_2 x_reg/I_1 x_reg/I_0 {delay_count_reg/Qn_reg[3]} {delay_count_reg/Qn_reg[2]} {delay_count_reg/Qn_reg[1]}  \
{delay_count_reg/Qn_reg[0]} {delay_count_reg/Q_reg[3]} {delay_count_reg/Q_reg[2]} {delay_count_reg/Q_reg[1]} {delay_count_reg/Q_reg[0]} delay_count_reg/I_3 delay_count_reg/I_2 x_reg/I_10 {atan_rom/data_reg[10]} y_reg/I_5 x_reg/I_11 {atan_rom/data_reg[9]} y_reg/I_6 {atan_rom/data_reg[8]} y_reg/I_7 init_reg  \
{atan_rom/data_reg[1]} {atan_rom/data_reg[7]} y_reg/I_8 x_reg {atan_rom/data_reg[0]} {atan_rom/data_reg[6]} y_reg/I_9 delay_count_reg/I_0 {atan_rom/data_reg[5]} y_reg/I_10 delay_count_reg/I_1 {cnt_u/cnt_reg[3]} {cnt_u/cnt_reg[2]} {atan_rom/data_reg[2]} {atan_rom/data_reg[3]} y_reg/I_12 {atan_rom/data_reg[4]}  \
y_reg/I_11 x_reg/I_9 {atan_rom/data_reg[11]} y_reg/I_4 x_reg/I_8 {atan_rom/data_reg[12]} y_reg/I_3 x_reg/I_7 {atan_rom/data_reg[13]} y_reg/I_2 x_reg/I_6 {atan_rom/data_reg[14]} y_reg/I_1 x_reg/I_5 {atan_rom/data_reg[15]} y_reg/I_0 delay_count_reg {cnt_u/cnt_reg[0]} {cnt_u/cnt_reg[1]} x_reg/I_12 x_reg/I_13 x_reg/I_14  \
x_reg/I_15 {x_reg/Q_reg[0]} {x_reg/Q_reg[1]} {x_reg/Q_reg[2]} {x_reg/Q_reg[3]} {x_reg/Q_reg[4]} {x_reg/Q_reg[5]} {x_reg/Q_reg[6]} {x_reg/Q_reg[7]} {x_reg/Q_reg[8]} {x_reg/Q_reg[9]} {x_reg/Q_reg[10]} {x_reg/Q_reg[11]} {x_reg/Q_reg[12]} {x_reg/Q_reg[13]} {x_reg/Q_reg[14]} {x_reg/Q_reg[15]} {x_reg/Qn_reg[0]}  \
{x_reg/Qn_reg[1]} {x_reg/Qn_reg[2]} {x_reg/Qn_reg[3]} {x_reg/Qn_reg[4]} {x_reg/Qn_reg[5]} {x_reg/Qn_reg[6]} {x_reg/Qn_reg[7]} {x_reg/Qn_reg[8]} {x_reg/Qn_reg[9]} {x_reg/Qn_reg[10]} {x_reg/Qn_reg[11]} {x_reg/Qn_reg[12]} {x_reg/Qn_reg[13]} {x_reg/Qn_reg[14]} {x_reg/Qn_reg[15]} y_reg}] -enable_source prefer_enable_pin


set_app_options -name compile.auto_floorplan.initialize -value true
set_auto_floorplan_constraints -control_type core -core_utilization 0.5 -core_offset 1 -coincident_boundary false -honor_pad_limit -use_site_row -site_def unit

remove_scenarios -all
remove_modes -all
remove_corners -all

#reading parasitic tech files
source /usr2/cclement/rtl/cordic/synth/utils/design_setup.tcl
puts "CC-INFO: Sourcing  /usr2/cclement/rtl/multipliers/synth/trial/scripts/parasitic_setup.tcl"
source /usr2/cclement/rtl/multipliers/synth/trial/scripts/parasitic_setup.tcl

puts "CC-INFO: Advancing with mcmm parameters"
set dir "/usr2/cclement/rtl/multipliers/synth/trial/scripts/mcmm/"

set mode "func"

set corner_constraints(ss0p95v125c) "${dir}c_ss0p95v125c.tcl"
set corner_constraints(ss0p95vn40c) "${dir}c_ss0p95vn40c.tcl"
set corner_constraints(ff1p16v125c) "${dir}c_ff1p16v125c.tcl"
set corner_constraints(ff1p16vn40c) "${dir}c_ff1p16vn40c.tcl"

set scenario_constraints(func.ss0p95v125c) "${dir}s_func.ss0p95v125c.tcl"
set scenario_constraints(func.ss0p95vn40c) "${dir}s_func.ss0p95vn40c.tcl"
set scenario_constraints(func.ff1p16v125c) "${dir}s_func.ff1p16v125c.tcl"
set scenario_constraints(func.ff1p16vn40c) "${dir}s_func.ff1p16vn40c.tcl"

foreach mode [array names mode_constraints] { 
    create_mode ${mode}
}

foreach corner [array names corner_constraints] {
    create_corner ${corner}
}

foreach scenario [array names scenario_constraints] {
    lassign [split ${scenario} "."] mode corner
    create_scenario -name ${scenario} -mode ${mode} -corner ${corner}
}

#Mode constraints
create_clock -name clk -period 1 -waveform {0.0 0.5} -comment suca [get_ports clk]
# LA UNCERTAINTY VIENE MESSA A 0 QUANDO IL CLOCK SI PROPAGA IN FACE DI CTS
set_clock_uncertainty 0.01 clk
# LA TARNSITION RIMANE PERCHE E UNA DESCRIZIONE DEL CLOCK STESSO
set_clock_transition -rise -fall 0.01 clk
set_clock_groups -physically_exclusive -group "clk"
set_input_delay 0.001 [all_inputs]
set_output_delay 0.001 [all_outputs]

set input_ports [get_ports clk]

set ${DRIVING_CELL_PORTS} "clk"

foreach corner [array names corner_constraints] {
    current_corner ${corner}
    source -echo $corner_constraints(${corner})
}

foreach scenario [array names scenario_constraints] {
    current_scenario ${scenario}
    source -echo $scenario_constraints(${scenario})
}

set_scenario_status {func.ss0p95v125c func.ss0p95vn40c} \
    -setup true -hold false \
    -leakage_power true -dynamic_power false \
    -max_transition true -max_capacitance true -min_capacitance false

set_scenario_status {func.ff1p16v125c func.ff1p16vn40c} \
    -setup false -hold true \
    -leakage_power true -dynamic_power false \
    -max_transition false -max_capacitance false -min_capacitance true

#Setting characteristics for worst corner
current_scenario func.ss0p95v125c
set_max_transition 0.1 -clock_path [get_clocks]
set_max_capacitance 0.3 -clock_path [get_clocks]
set_clock_tree_options -target_skew 0.1 -target_latency 0.30

#Setting characteristics for best corner
current_scenario func.ff1p16v125c
set_max_capacitance 0.400 -clock_path [get_clocks]
set_max_transition 0.200 -clock_path [get_clocks ]
set_clock_tree_options -target_skew 0.1 \
-target_latency 0.150 \

#Setting generic characteristics
set_app_options -name cts.common.max_fanout -value 2000
set_app_options -name cts.common.max_net_length -value 200






