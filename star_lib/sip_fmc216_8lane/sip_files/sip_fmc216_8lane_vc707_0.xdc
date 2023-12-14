
################################################################################
# FMC signals (FMC216  VC707)
################################################################################
set_property -dict {PACKAGE_PIN K40 IOSTANDARD LVDS DIFF_TERM 1} [get_ports ext_trigger_n_0]
set_property -dict {PACKAGE_PIN K39 IOSTANDARD LVDS DIFF_TERM 1} [get_ports ext_trigger_p_0]

set_property -dict {PACKAGE_PIN M37 IOSTANDARD LVCMOS18} [get_ports trigger_out_0]

## DAC SYNC
set_property -dict {PACKAGE_PIN N41 IOSTANDARD LVDS} [get_ports {dac_syncb_n_0[0]}]
set_property -dict {PACKAGE_PIN P41 IOSTANDARD LVDS} [get_ports {dac_syncb_p_0[0]}]
set_property -dict {PACKAGE_PIN L42 IOSTANDARD LVDS} [get_ports {dac_syncb_n_0[1]}]
set_property -dict {PACKAGE_PIN M42 IOSTANDARD LVDS} [get_ports {dac_syncb_p_0[1]}]
set_property -dict {PACKAGE_PIN L41 IOSTANDARD LVDS} [get_ports {dac_syncb_n_0[2]}]
set_property -dict {PACKAGE_PIN M41 IOSTANDARD LVDS} [get_ports {dac_syncb_p_0[2]}]
set_property -dict {PACKAGE_PIN H41 IOSTANDARD LVDS} [get_ports {dac_syncb_n_0[3]}]
set_property -dict {PACKAGE_PIN H40 IOSTANDARD LVDS} [get_ports {dac_syncb_p_0[3]}]

# Q6_CLK0 A9/A10
set_property -dict {PACKAGE_PIN A9} [get_ports {refclk_n_0[1]}]
set_property -dict {PACKAGE_PIN A10} [get_ports {refclk_p_0[1]}]
## Q5_CLK0 E9/E10
set_property -dict {PACKAGE_PIN E9} [get_ports {refclk_n_0[0]}]
set_property -dict {PACKAGE_PIN E10} [get_ports {refclk_p_0[0]}]

create_clock -period 2.713 -name refclk_0 [get_ports {refclk_p_0[0]}]
create_clock -period 2.713 -name refclk_1 [get_ports {refclk_p_0[1]}]

# LLMK SCLKOUT3  SYSREF
set_property -dict {PACKAGE_PIN M31 IOSTANDARD LVDS DIFF_TERM 1} [get_ports lmk_sysref_n_0]
set_property -dict {PACKAGE_PIN N30 IOSTANDARD LVDS DIFF_TERM 1} [get_ports lmk_sysref_p_0]

#LMK DCLKOUT2 CLK
set_property -dict {PACKAGE_PIN L40 IOSTANDARD LVDS DIFF_TERM 1} [get_ports lmkclk_n_0]
set_property -dict {PACKAGE_PIN L39 IOSTANDARD LVDS DIFF_TERM 1} [get_ports lmkclk_p_0]

# SYNC OUT to LMK
set_property -dict {PACKAGE_PIN M38 IOSTANDARD LVCMOS18} [get_ports lmk_sync_0]

set_property LOC GTXE2_CHANNEL_X1Y20 [get_cells sip_fmc216_8lane_0/fmc216_0/xcvr_wrapper_inst0/xcvr_fmc216_init_i/U0/xcvr_fmc216_init_i/xcvr_fmc216_i/gt0_xcvr_fmc216_i/gtxe2_i]
set_property LOC GTXE2_CHANNEL_X1Y21 [get_cells sip_fmc216_8lane_0/fmc216_0/xcvr_wrapper_inst0/xcvr_fmc216_init_i/U0/xcvr_fmc216_init_i/xcvr_fmc216_i/gt1_xcvr_fmc216_i/gtxe2_i]
set_property LOC GTXE2_CHANNEL_X1Y22 [get_cells sip_fmc216_8lane_0/fmc216_0/xcvr_wrapper_inst0/xcvr_fmc216_init_i/U0/xcvr_fmc216_init_i/xcvr_fmc216_i/gt2_xcvr_fmc216_i/gtxe2_i]
set_property LOC GTXE2_CHANNEL_X1Y23 [get_cells sip_fmc216_8lane_0/fmc216_0/xcvr_wrapper_inst0/xcvr_fmc216_init_i/U0/xcvr_fmc216_init_i/xcvr_fmc216_i/gt3_xcvr_fmc216_i/gtxe2_i]
set_property LOC GTXE2_CHANNEL_X1Y24 [get_cells sip_fmc216_8lane_0/fmc216_0/xcvr_wrapper_inst0/xcvr_fmc216_init_i/U0/xcvr_fmc216_init_i/xcvr_fmc216_i/gt4_xcvr_fmc216_i/gtxe2_i]
set_property LOC GTXE2_CHANNEL_X1Y25 [get_cells sip_fmc216_8lane_0/fmc216_0/xcvr_wrapper_inst0/xcvr_fmc216_init_i/U0/xcvr_fmc216_init_i/xcvr_fmc216_i/gt5_xcvr_fmc216_i/gtxe2_i]
set_property LOC GTXE2_CHANNEL_X1Y26 [get_cells sip_fmc216_8lane_0/fmc216_0/xcvr_wrapper_inst0/xcvr_fmc216_init_i/U0/xcvr_fmc216_init_i/xcvr_fmc216_i/gt6_xcvr_fmc216_i/gtxe2_i]
set_property LOC GTXE2_CHANNEL_X1Y27 [get_cells sip_fmc216_8lane_0/fmc216_0/xcvr_wrapper_inst0/xcvr_fmc216_init_i/U0/xcvr_fmc216_init_i/xcvr_fmc216_i/gt7_xcvr_fmc216_i/gtxe2_i]

set_property -dict {PACKAGE_PIN AN34 IOSTANDARD LVCMOS18} [get_ports pg_m2c_0]
set_property -dict {PACKAGE_PIN AM31 IOSTANDARD LVCMOS18} [get_ports prsnt_m2c_l_0]

