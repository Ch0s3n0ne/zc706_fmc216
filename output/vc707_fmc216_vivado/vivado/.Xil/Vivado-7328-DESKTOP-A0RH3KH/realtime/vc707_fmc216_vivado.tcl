# 
# Synthesis run script generated by Vivado
# 

namespace eval rt {
    variable rc
}
set rt::rc [catch {
  uplevel #0 {
    set ::env(BUILTIN_SYNTH) true
    source $::env(HRT_TCL_PATH)/rtSynthPrep.tcl
    rt::HARTNDb_resetJobStats
    rt::HARTNDb_resetSystemStats
    rt::HARTNDb_startSystemStats
    rt::HARTNDb_startJobStats
    set rt::cmdEcho 0
    rt::set_parameter writeXmsg true
    rt::set_parameter enableParallelHelperSpawn true
    set ::env(RT_TMP) "C:/4dsp_test/527_vc707_fmc216/output/vc707_fmc216_vivado/vivado/.Xil/Vivado-7328-DESKTOP-A0RH3KH/realtime/tmp"
    if { [ info exists ::env(RT_TMP) ] } {
      file delete -force $::env(RT_TMP)
      file mkdir $::env(RT_TMP)
    }

    rt::delete_design

    rt::set_parameter datapathDensePacking false
    set rt::partid xc7vx485tffg1761-2
     file delete -force synth_hints.os

    set rt::multiChipSynthesisFlow false
    source $::env(SYNTH_COMMON)/common.tcl
    set rt::defaultWorkLibName xil_defaultlib

    set rt::useElabCache false
    if {$rt::useElabCache == false} {
      rt::read_verilog -sv -include {
    C:/4dsp_test/527_vc707_fmc216/output/vc707_fmc216_vivado/Src/sip_fmc216_8lane/dac3283_wfm_dpram
    C:/4dsp_test/527_vc707_fmc216/output/vc707_fmc216_vivado/Src/sip_fmc216_8lane/dac3283_wfm_output_fifo
    C:/4dsp_test/527_vc707_fmc216/output/vc707_fmc216_vivado/Src/sip_fmc216_8lane/wfm_output_fifo
    C:/4dsp_test/527_vc707_fmc216/output/vc707_fmc216_vivado/vivado/vc707_fmc216_vivado.srcs/sources_1/ip/gig_ethernet_pcs_pma_1
    C:/4dsp_test/527_vc707_fmc216/output/vc707_fmc216_vivado/vivado/vc707_fmc216_vivado.srcs/sources_1/ip/fifo_64_to_8
    C:/4dsp_test/527_vc707_fmc216/output/vc707_fmc216_vivado/vivado/vc707_fmc216_vivado.srcs/sources_1/ip/afifo
    C:/4dsp_test/527_vc707_fmc216/output/vc707_fmc216_vivado/vivado/vc707_fmc216_vivado.srcs/sources_1/ip/pll0
    C:/4dsp_test/527_vc707_fmc216/output/vc707_fmc216_vivado/Src/sip_fmc216_8lane/xcvr_fmc216
  } {
      C:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv
      C:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv
      C:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv
    }
      rt::read_verilog -include {
    C:/4dsp_test/527_vc707_fmc216/output/vc707_fmc216_vivado/Src/sip_fmc216_8lane/dac3283_wfm_dpram
    C:/4dsp_test/527_vc707_fmc216/output/vc707_fmc216_vivado/Src/sip_fmc216_8lane/dac3283_wfm_output_fifo
    C:/4dsp_test/527_vc707_fmc216/output/vc707_fmc216_vivado/Src/sip_fmc216_8lane/wfm_output_fifo
    C:/4dsp_test/527_vc707_fmc216/output/vc707_fmc216_vivado/vivado/vc707_fmc216_vivado.srcs/sources_1/ip/gig_ethernet_pcs_pma_1
    C:/4dsp_test/527_vc707_fmc216/output/vc707_fmc216_vivado/vivado/vc707_fmc216_vivado.srcs/sources_1/ip/fifo_64_to_8
    C:/4dsp_test/527_vc707_fmc216/output/vc707_fmc216_vivado/vivado/vc707_fmc216_vivado.srcs/sources_1/ip/afifo
    C:/4dsp_test/527_vc707_fmc216/output/vc707_fmc216_vivado/vivado/vc707_fmc216_vivado.srcs/sources_1/ip/pll0
    C:/4dsp_test/527_vc707_fmc216/output/vc707_fmc216_vivado/Src/sip_fmc216_8lane/xcvr_fmc216
  } {
      C:/4dsp_test/527_vc707_fmc216/output/vc707_fmc216_vivado/Src/sip_vc707_mac_engine_sgmii/crc32.v
      C:/4dsp_test/527_vc707_fmc216/output/vc707_fmc216_vivado/Src/sip_vc707_mac_engine_sgmii/eth_rx_crc.v
      C:/4dsp_test/527_vc707_fmc216/output/vc707_fmc216_vivado/Src/sip_vc707_mac_engine_sgmii/eth_tx_crc.v
    }
      rt::read_vhdl -lib xil_defaultlib {
      C:/4dsp_test/527_vc707_fmc216/output/vc707_fmc216_vivado/vivado/.Xil/Vivado-7328-DESKTOP-A0RH3KH/realtime/dac3283_wfm_dpram_stub.vhdl
      C:/4dsp_test/527_vc707_fmc216/output/vc707_fmc216_vivado/vivado/.Xil/Vivado-7328-DESKTOP-A0RH3KH/realtime/dac3283_wfm_output_fifo_stub.vhdl
      C:/4dsp_test/527_vc707_fmc216/output/vc707_fmc216_vivado/vivado/.Xil/Vivado-7328-DESKTOP-A0RH3KH/realtime/wfm_output_fifo_stub.vhdl
      C:/4dsp_test/527_vc707_fmc216/output/vc707_fmc216_vivado/vivado/.Xil/Vivado-7328-DESKTOP-A0RH3KH/realtime/gig_ethernet_pcs_pma_1_stub.vhdl
      C:/4dsp_test/527_vc707_fmc216/output/vc707_fmc216_vivado/vivado/.Xil/Vivado-7328-DESKTOP-A0RH3KH/realtime/fifo_64_to_8_stub.vhdl
      C:/4dsp_test/527_vc707_fmc216/output/vc707_fmc216_vivado/vivado/.Xil/Vivado-7328-DESKTOP-A0RH3KH/realtime/afifo_stub.vhdl
      C:/4dsp_test/527_vc707_fmc216/output/vc707_fmc216_vivado/vivado/.Xil/Vivado-7328-DESKTOP-A0RH3KH/realtime/pll0_stub.vhdl
      C:/4dsp_test/527_vc707_fmc216/output/vc707_fmc216_vivado/vivado/.Xil/Vivado-7328-DESKTOP-A0RH3KH/realtime/xcvr_fmc216_stub.vhdl
      C:/4dsp_test/527_vc707_fmc216/output/vc707_fmc216_vivado/Src/sip_vc707_mac_engine_sgmii/brd_clocks.vhd
      C:/4dsp_test/527_vc707_fmc216/output/vc707_fmc216_vivado/Src/sip_vc707_mac_engine_sgmii/brd_packet_engine.vhd
      C:/4dsp_test/527_vc707_fmc216/output/vc707_fmc216_vivado/Src/sip_cid_ex/cid.vhd
      C:/4dsp_test/527_vc707_fmc216/output/vc707_fmc216_vivado/Src/sip_cid_ex/cid_package.vhd
      C:/4dsp_test/527_vc707_fmc216/output/vc707_fmc216_vivado/Src/sip_cid_ex/cid_regs.vhd
      C:/4dsp_test/527_vc707_fmc216/output/vc707_fmc216_vivado/Src/sip_cid_ex/cid_stellar_cmd.vhd
      C:/4dsp_test/527_vc707_fmc216/output/vc707_fmc216_vivado/Src/sip_fmc216_8lane/types.vhd
      C:/4dsp_test/527_vc707_fmc216/output/vc707_fmc216_vivado/Src/sip_fmc216_8lane/dac38j84_jesd.vhd
      C:/4dsp_test/527_vc707_fmc216/output/vc707_fmc216_vivado/Src/sip_fmc216_8lane/dac_wrapper.vhd
      C:/4dsp_test/527_vc707_fmc216/output/vc707_fmc216_vivado/Src/sip_vc707_mac_engine_sgmii/eth_filter.vhd
      C:/4dsp_test/527_vc707_fmc216/output/vc707_fmc216_vivado/Src/sip_vc707_mac_engine_sgmii/eth_mdio.vhd
      C:/4dsp_test/527_vc707_fmc216/output/vc707_fmc216_vivado/Src/sip_vc707_mac_engine_sgmii/eth_rx_stream_buf.vhd
      C:/4dsp_test/527_vc707_fmc216/output/vc707_fmc216_vivado/Src/sip_fmc216_8lane/fmc216_stellar_cmd.vhd
      C:/4dsp_test/527_vc707_fmc216/output/vc707_fmc216_vivado/Src/sip_fmc216_8lane/fmc216_ctrl.vhd
      C:/4dsp_test/527_vc707_fmc216/output/vc707_fmc216_vivado/Src/sip_fmc216_8lane/jesd204b_vc707_8lane_dac.vhd
      C:/4dsp_test/527_vc707_fmc216/output/vc707_fmc216_vivado/Src/sip_cid_ex/pulse2pulse.vhd
      C:/4dsp_test/527_vc707_fmc216/output/vc707_fmc216_vivado/Src/sip_fmc216_8lane/wfm_ctrl.vhd
      C:/4dsp_test/527_vc707_fmc216/output/vc707_fmc216_vivado/Src/sip_fmc216_8lane/wfm.vhd
      C:/4dsp_test/527_vc707_fmc216/output/vc707_fmc216_vivado/Src/sip_fmc216_8lane/xcvr_wrapper.vhd
      C:/4dsp_test/527_vc707_fmc216/output/vc707_fmc216_vivado/Src/sip_fmc216_8lane/sip_freq_cnt16.vhd
      C:/4dsp_test/527_vc707_fmc216/output/vc707_fmc216_vivado/Src/sip_fmc216_8lane/fmc216.vhd
      C:/4dsp_test/527_vc707_fmc216/output/vc707_fmc216_vivado/Src/sip_vc707_mac_engine_sgmii/ge_mac_stream.vhd
      C:/4dsp_test/527_vc707_fmc216/output/vc707_fmc216_vivado/Src/sip_vc707_mac_engine_sgmii/gig_eth_gt_common.vhd
      C:/4dsp_test/527_vc707_fmc216/output/vc707_fmc216_vivado/Src/sip_vc707_mac_engine_sgmii/gmii_eth_rx_stream.vhd
      C:/4dsp_test/527_vc707_fmc216/output/vc707_fmc216_vivado/Src/sip_vc707_mac_engine_sgmii/gmii_eth_tx_stream.vhd
      C:/4dsp_test/527_vc707_fmc216/output/vc707_fmc216_vivado/Src/sip_i2c_master/i2c_master.vhd
      C:/4dsp_test/527_vc707_fmc216/output/vc707_fmc216_vivado/Src/sip_i2c_master/i2c_master_bit_ctrl.vhd
      C:/4dsp_test/527_vc707_fmc216/output/vc707_fmc216_vivado/Src/sip_i2c_master/i2c_master_byte_ctrl.vhd
      C:/4dsp_test/527_vc707_fmc216/output/vc707_fmc216_vivado/Src/sip_i2c_master/i2c_master_stellar_cmd.vhd
      C:/4dsp_test/527_vc707_fmc216/output/vc707_fmc216_vivado/Src/sip_i2c_master/i2c_master_top.vhd
      C:/4dsp_test/527_vc707_fmc216/output/vc707_fmc216_vivado/Src/sip_vc707_mac_engine_sgmii/mac_engine.vhd
      C:/4dsp_test/527_vc707_fmc216/output/vc707_fmc216_vivado/Src/sip_router_s1d16/router_s1d16.vhd
      C:/4dsp_test/527_vc707_fmc216/output/vc707_fmc216_vivado/Src/sip_router_s1d16/router_s1d16_regs.vhd
      C:/4dsp_test/527_vc707_fmc216/output/vc707_fmc216_vivado/Src/sip_router_s1d16/router_s1d16_stellar_cmd.vhd
      C:/4dsp_test/527_vc707_fmc216/output/vc707_fmc216_vivado/Src/sip_vc707_mac_engine_sgmii/rst_gen.vhd
      C:/4dsp_test/527_vc707_fmc216/output/vc707_fmc216_vivado/Src/sip_cid_ex/sip_cid_ex.vhd
      C:/4dsp_test/527_vc707_fmc216/output/vc707_fmc216_vivado/Src/sip_cmd12_mux/sip_cmd12_mux.vhd
      C:/4dsp_test/527_vc707_fmc216/output/vc707_fmc216_vivado/Src/sip_fmc216_8lane/sip_fmc216_8lane.vhd
      C:/4dsp_test/527_vc707_fmc216/output/vc707_fmc216_vivado/Src/sip_i2c_master/sip_i2c_master.vhd
      C:/4dsp_test/527_vc707_fmc216/output/vc707_fmc216_vivado/Src/sip_router_s1d16/sip_router_s1d16.vhd
      C:/4dsp_test/527_vc707_fmc216/output/vc707_fmc216_vivado/Src/sip_vc707_mac_engine_sgmii/sip_vc707_mac_engine_sgmii.vhd
      C:/4dsp_test/527_vc707_fmc216/output/vc707_fmc216_vivado/Src/vc707_fmc216_vivado.vhd
    }
      rt::read_vhdl -lib xpm C:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_VCOMP.vhd
      rt::filesetChecksum
    }
    rt::set_parameter usePostFindUniquification false
    set rt::top vc707_fmc216_vivado
    rt::set_parameter enableIncremental true
    rt::set_parameter markDebugPreservationLevel "enable"
    set rt::reportTiming false
    rt::set_parameter elaborateOnly true
    rt::set_parameter elaborateRtl true
    rt::set_parameter eliminateRedundantBitOperator false
    rt::set_parameter elaborateRtlOnlyFlow true
    rt::set_parameter writeBlackboxInterface true
    rt::set_parameter merge_flipflops true
    rt::set_parameter srlDepthThreshold 3
    rt::set_parameter rstSrlDepthThreshold 4
# MODE: 
    rt::set_parameter webTalkPath {}
    rt::set_parameter synthDebugLog false
    rt::set_parameter printModuleName false
    rt::set_parameter enableSplitFlowPath "C:/4dsp_test/527_vc707_fmc216/output/vc707_fmc216_vivado/vivado/.Xil/Vivado-7328-DESKTOP-A0RH3KH/"
    set ok_to_delete_rt_tmp true 
    if { [rt::get_parameter parallelDebug] } { 
       set ok_to_delete_rt_tmp false 
    } 
    if {$rt::useElabCache == false} {
        set oldMIITMVal [rt::get_parameter maxInputIncreaseToMerge]; rt::set_parameter maxInputIncreaseToMerge 1000
        set oldCDPCRL [rt::get_parameter createDfgPartConstrRecurLimit]; rt::set_parameter createDfgPartConstrRecurLimit 1
        $rt::db readXRFFile
      rt::run_rtlelab -module $rt::top
        rt::set_parameter maxInputIncreaseToMerge $oldMIITMVal
        rt::set_parameter createDfgPartConstrRecurLimit $oldCDPCRL
    }

    set rt::flowresult [ source $::env(SYNTH_COMMON)/flow.tcl ]
    rt::HARTNDb_stopJobStats
    if { $rt::flowresult == 1 } { return -code error }


  set hsKey [rt::get_parameter helper_shm_key] 
  if { $hsKey != "" && [info exists ::env(BUILTIN_SYNTH)] && [rt::get_parameter enableParallelHelperSpawn] } { 
     $rt::db killSynthHelper $hsKey
  } 
  rt::set_parameter helper_shm_key "" 
    if { [ info exists ::env(RT_TMP) ] } {
      if { [info exists ok_to_delete_rt_tmp] && $ok_to_delete_rt_tmp } { 
        file delete -force $::env(RT_TMP)
      }
    }

    source $::env(HRT_TCL_PATH)/rtSynthCleanup.tcl
  } ; #end uplevel
} rt::result]

if { $rt::rc } {
  $rt::db resetHdlParse
  set hsKey [rt::get_parameter helper_shm_key] 
  if { $hsKey != "" && [info exists ::env(BUILTIN_SYNTH)] && [rt::get_parameter enableParallelHelperSpawn] } { 
     $rt::db killSynthHelper $hsKey
  } 
  source $::env(HRT_TCL_PATH)/rtSynthCleanup.tcl
  return -code "error" $rt::result
}