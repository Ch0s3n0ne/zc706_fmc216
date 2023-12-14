vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vcom -work xil_defaultlib  -93 \
"../../../../xcvr_fmc216_ex.gen/sources_1/ip/xcvr_fmc216/xcvr_fmc216_common_reset.vhd" \
"../../../../xcvr_fmc216_ex.gen/sources_1/ip/xcvr_fmc216/xcvr_fmc216_common.vhd" \
"../../../../xcvr_fmc216_ex.gen/sources_1/ip/xcvr_fmc216/xcvr_fmc216_gt_usrclk_source.vhd" \
"../../../../xcvr_fmc216_ex.gen/sources_1/ip/xcvr_fmc216/xcvr_fmc216_support.vhd" \
"../../../../xcvr_fmc216_ex.gen/sources_1/ip/xcvr_fmc216/xcvr_fmc216/example_design/xcvr_fmc216_tx_startup_fsm.vhd" \
"../../../../xcvr_fmc216_ex.gen/sources_1/ip/xcvr_fmc216/xcvr_fmc216/example_design/xcvr_fmc216_rx_startup_fsm.vhd" \
"../../../../xcvr_fmc216_ex.gen/sources_1/ip/xcvr_fmc216/xcvr_fmc216_init.vhd" \
"../../../../xcvr_fmc216_ex.gen/sources_1/ip/xcvr_fmc216/xcvr_fmc216_gt.vhd" \
"../../../../xcvr_fmc216_ex.gen/sources_1/ip/xcvr_fmc216/xcvr_fmc216_multi_gt.vhd" \
"../../../../xcvr_fmc216_ex.gen/sources_1/ip/xcvr_fmc216/xcvr_fmc216/example_design/xcvr_fmc216_sync_block.vhd" \
"../../../../xcvr_fmc216_ex.gen/sources_1/ip/xcvr_fmc216/xcvr_fmc216.vhd" \


