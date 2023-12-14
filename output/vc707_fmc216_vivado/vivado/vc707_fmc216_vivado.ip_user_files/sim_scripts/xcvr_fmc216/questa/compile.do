vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xpm
vlib questa_lib/msim/xil_defaultlib

vmap xpm questa_lib/msim/xpm
vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xpm  -incr -mfcu -sv \
"C:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93 \
"C:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib  -93 \
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

vlog -work xil_defaultlib \
"glbl.v"

