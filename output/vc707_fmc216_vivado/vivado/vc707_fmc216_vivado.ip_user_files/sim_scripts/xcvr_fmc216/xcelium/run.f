-makelib xcelium_lib/xpm -sv \
  "C:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "C:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "C:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../vc707_fmc216_vivado.gen/sources_1/ip/xcvr_fmc216/xcvr_fmc216_common_reset.vhd" \
  "../../../../vc707_fmc216_vivado.gen/sources_1/ip/xcvr_fmc216/xcvr_fmc216_common.vhd" \
  "../../../../vc707_fmc216_vivado.gen/sources_1/ip/xcvr_fmc216/xcvr_fmc216_gt_usrclk_source.vhd" \
  "../../../../vc707_fmc216_vivado.gen/sources_1/ip/xcvr_fmc216/xcvr_fmc216_support.vhd" \
  "../../../../vc707_fmc216_vivado.gen/sources_1/ip/xcvr_fmc216/xcvr_fmc216/example_design/xcvr_fmc216_tx_startup_fsm.vhd" \
  "../../../../vc707_fmc216_vivado.gen/sources_1/ip/xcvr_fmc216/xcvr_fmc216/example_design/xcvr_fmc216_rx_startup_fsm.vhd" \
  "../../../../vc707_fmc216_vivado.gen/sources_1/ip/xcvr_fmc216/xcvr_fmc216_init.vhd" \
  "../../../../vc707_fmc216_vivado.gen/sources_1/ip/xcvr_fmc216/xcvr_fmc216_gt.vhd" \
  "../../../../vc707_fmc216_vivado.gen/sources_1/ip/xcvr_fmc216/xcvr_fmc216_multi_gt.vhd" \
  "../../../../vc707_fmc216_vivado.gen/sources_1/ip/xcvr_fmc216/xcvr_fmc216/example_design/xcvr_fmc216_sync_block.vhd" \
  "../../../../vc707_fmc216_vivado.gen/sources_1/ip/xcvr_fmc216/xcvr_fmc216.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

