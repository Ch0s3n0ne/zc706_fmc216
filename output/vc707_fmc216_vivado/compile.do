echo "4DSP compile.do file ( auto generated )"
if {[info exists PATH]} {
  # okay, path is set, so do nothing
  echo "Source path is : $PATH"
} else {
  # oeps, path isn't set, use a default
  set PATH {C:/4dsp_test/527_vc707_fmc216/output/vc707_fmc216_vivado}
  echo "Source path forced to: $PATH"
}
vcom -work work ${PATH}/Src/vc707_fmc216_vivado.vhd
vcom -work work ${PATH}/Src/sip_cid_ex/sip_cid_ex.vhd
vcom -work work ${PATH}/Src/sip_cid_ex/cid.vhd
vcom -work work ${PATH}/Src/sip_cid_ex/cid_package.vhd
vcom -work work ${PATH}/Src/sip_cid_ex/cid_stellar_cmd.vhd
vcom -work work ${PATH}/Src/sip_cid_ex/cid_regs.vhd
vcom -work work ${PATH}/Src/sip_cid_ex/pulse2pulse.vhd
vcom -work work ${PATH}/Src/sip_i2c_master/sip_i2c_master.vhd
vcom -work work ${PATH}/Src/sip_i2c_master/i2c_master.vhd
vcom -work work ${PATH}/Src/sip_i2c_master/i2c_master_top.vhd
vcom -work work ${PATH}/Src/sip_i2c_master/i2c_master_byte_ctrl.vhd
vcom -work work ${PATH}/Src/sip_i2c_master/i2c_master_bit_ctrl.vhd
vcom -work work ${PATH}/Src/sip_i2c_master/i2c_master_stellar_cmd.vhd
vcom -work work ${PATH}/Src/sip_cmd12_mux/sip_cmd12_mux.vhd
vcom -work work ${PATH}/Src/sip_vc707_mac_engine_sgmii/sip_vc707_mac_engine_sgmii.vhd
vcom -work work ${PATH}/Src/sip_vc707_mac_engine_sgmii/brd_packet_engine.vhd
vcom -work work ${PATH}/Src/sip_vc707_mac_engine_sgmii/brd_clocks.vhd
vcom -work work ${PATH}/Src/sip_vc707_mac_engine_sgmii/eth_mdio.vhd
vcom -work work ${PATH}/Src/sip_vc707_mac_engine_sgmii/ge_mac_stream.vhd
vcom -work work ${PATH}/Src/sip_vc707_mac_engine_sgmii/gmii_eth_rx_stream.vhd
vlog -work work ${PATH}/Src/sip_vc707_mac_engine_sgmii/crc32.v
vcom -work work ${PATH}/Src/sip_vc707_mac_engine_sgmii/eth_filter.vhd
vlog -work work ${PATH}/Src/sip_vc707_mac_engine_sgmii/eth_rx_crc.v
vcom -work work ${PATH}/Src/sip_vc707_mac_engine_sgmii/eth_rx_stream_buf.vhd
vlog -work work ${PATH}/Src/sip_vc707_mac_engine_sgmii/eth_tx_crc.v
vcom -work work ${PATH}/Src/sip_vc707_mac_engine_sgmii/mac_engine.vhd
vcom -work work ${PATH}/Src/sip_vc707_mac_engine_sgmii/gig_eth_gt_common.vhd
vcom -work work ${PATH}/Src/sip_vc707_mac_engine_sgmii/gmii_eth_tx_stream.vhd
vcom -work work ${PATH}/Src/sip_vc707_mac_engine_sgmii/rst_gen.vhd
vcom -work work ${PATH}/Src/sip_fmc216_8lane/sip_fmc216_8lane.vhd
vcom -work work ${PATH}/Src/sip_fmc216_8lane/xcvr_wrapper.vhd
vcom -work work ${PATH}/Src/sip_fmc216_8lane/types.vhd
vcom -work work ${PATH}/Src/sip_fmc216_8lane/sip_freq_cnt16.vhd
vcom -work work ${PATH}/Src/sip_fmc216_8lane/fmc216_stellar_cmd.vhd
vcom -work work ${PATH}/Src/sip_fmc216_8lane/fmc216_ctrl.vhd
vcom -work work ${PATH}/Src/sip_fmc216_8lane/fmc216.vhd
vcom -work work ${PATH}/Src/sip_fmc216_8lane/wfm.vhd
vcom -work work ${PATH}/Src/sip_fmc216_8lane/wfm_ctrl.vhd
vcom -work work ${PATH}/Src/sip_fmc216_8lane/jesd204b_vc707_8lane_dac.vhd
vcom -work work ${PATH}/Src/sip_fmc216_8lane/dac38j84_jesd.vhd
vcom -work work ${PATH}/Src/sip_fmc216_8lane/dac_wrapper.vhd
vcom -work work ${PATH}/Src/sip_router_s1d16/sip_router_s1d16.vhd
vcom -work work ${PATH}/Src/sip_router_s1d16/router_s1d16_stellar_cmd.vhd
vcom -work work ${PATH}/Src/sip_router_s1d16/router_s1d16_regs.vhd
vcom -work work ${PATH}/Src/sip_router_s1d16/router_s1d16.vhd

