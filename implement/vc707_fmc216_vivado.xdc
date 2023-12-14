

set_false_path -from [get_clocks mmcm_adv_inst_n_6] -to [get_clocks sip_fmc216_8lane_0/fmc216_0/xcvr_wrapper_inst0/xcvr_fmc216_init_i/U0/xcvr_fmc216_init_i/xcvr_fmc216_i/gt0_xcvr_fmc216_i/gtxe2_i/TXOUTCLK]

set_false_path -from [get_clocks sip_fmc216_8lane_0/fmc216_0/xcvr_wrapper_inst0/xcvr_fmc216_init_i/U0/xcvr_fmc216_init_i/xcvr_fmc216_i/gt0_xcvr_fmc216_i/gtxe2_i/TXOUTCLK] -to [get_clocks mmcm_adv_inst_n_6]

set_false_path -from [get_clocks clk_out2_pll0] -to [get_clocks clk_out3_pll0]

