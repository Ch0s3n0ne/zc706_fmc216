vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/gig_ethernet_pcs_pma_v16_2_6
vlib modelsim_lib/msim/xil_defaultlib

vmap xpm modelsim_lib/msim/xpm
vmap gig_ethernet_pcs_pma_v16_2_6 modelsim_lib/msim/gig_ethernet_pcs_pma_v16_2_6
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xpm  -incr -mfcu -sv \
"C:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93 \
"C:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work gig_ethernet_pcs_pma_v16_2_6  -93 \
"../../../ipstatic/hdl/gig_ethernet_pcs_pma_v16_2_rfs.vhd" \

vlog -work gig_ethernet_pcs_pma_v16_2_6  -incr -mfcu \
"../../../ipstatic/hdl/gig_ethernet_pcs_pma_v16_2_rfs.v" \

vcom -work xil_defaultlib  -93 \
"../../../../vc707_fmc216_vivado.gen/sources_1/ip/gig_ethernet_pcs_pma_1_1/synth/sgmii_adapt/gig_ethernet_pcs_pma_1_clk_gen.vhd" \
"../../../../vc707_fmc216_vivado.gen/sources_1/ip/gig_ethernet_pcs_pma_1_1/synth/transceiver/gig_ethernet_pcs_pma_1_cpll_railing.vhd" \
"../../../../vc707_fmc216_vivado.gen/sources_1/ip/gig_ethernet_pcs_pma_1_1/synth/transceiver/gig_ethernet_pcs_pma_1_gtwizard_gt.vhd" \
"../../../../vc707_fmc216_vivado.gen/sources_1/ip/gig_ethernet_pcs_pma_1_1/synth/transceiver/gig_ethernet_pcs_pma_1_gtwizard.vhd" \
"../../../../vc707_fmc216_vivado.gen/sources_1/ip/gig_ethernet_pcs_pma_1_1/synth/transceiver/gig_ethernet_pcs_pma_1_gtwizard_multi_gt.vhd" \
"../../../../vc707_fmc216_vivado.gen/sources_1/ip/gig_ethernet_pcs_pma_1_1/synth/transceiver/gig_ethernet_pcs_pma_1_gtwizard_init.vhd" \
"../../../../vc707_fmc216_vivado.gen/sources_1/ip/gig_ethernet_pcs_pma_1_1/synth/transceiver/gig_ethernet_pcs_pma_1_tx_startup_fsm.vhd" \
"../../../../vc707_fmc216_vivado.gen/sources_1/ip/gig_ethernet_pcs_pma_1_1/synth/transceiver/gig_ethernet_pcs_pma_1_rx_startup_fsm.vhd" \
"../../../../vc707_fmc216_vivado.gen/sources_1/ip/gig_ethernet_pcs_pma_1_1/synth/sgmii_adapt/gig_ethernet_pcs_pma_1_johnson_cntr.vhd" \
"../../../../vc707_fmc216_vivado.gen/sources_1/ip/gig_ethernet_pcs_pma_1_1/synth/gig_ethernet_pcs_pma_1_reset_sync.vhd" \
"../../../../vc707_fmc216_vivado.gen/sources_1/ip/gig_ethernet_pcs_pma_1_1/synth/transceiver/gig_ethernet_pcs_pma_1_rx_elastic_buffer.vhd" \
"../../../../vc707_fmc216_vivado.gen/sources_1/ip/gig_ethernet_pcs_pma_1_1/synth/sgmii_adapt/gig_ethernet_pcs_pma_1_rx_rate_adapt.vhd" \
"../../../../vc707_fmc216_vivado.gen/sources_1/ip/gig_ethernet_pcs_pma_1_1/synth/sgmii_adapt/gig_ethernet_pcs_pma_1_sgmii_adapt.vhd" \
"../../../../vc707_fmc216_vivado.gen/sources_1/ip/gig_ethernet_pcs_pma_1_1/synth/gig_ethernet_pcs_pma_1_sync_block.vhd" \
"../../../../vc707_fmc216_vivado.gen/sources_1/ip/gig_ethernet_pcs_pma_1_1/synth/transceiver/gig_ethernet_pcs_pma_1_reset_wtd_timer.vhd" \
"../../../../vc707_fmc216_vivado.gen/sources_1/ip/gig_ethernet_pcs_pma_1_1/synth/transceiver/gig_ethernet_pcs_pma_1_transceiver.vhd" \
"../../../../vc707_fmc216_vivado.gen/sources_1/ip/gig_ethernet_pcs_pma_1_1/synth/sgmii_adapt/gig_ethernet_pcs_pma_1_tx_rate_adapt.vhd" \
"../../../../vc707_fmc216_vivado.gen/sources_1/ip/gig_ethernet_pcs_pma_1_1/synth/gig_ethernet_pcs_pma_1_block.vhd" \
"../../../../vc707_fmc216_vivado.gen/sources_1/ip/gig_ethernet_pcs_pma_1_1/synth/gig_ethernet_pcs_pma_1.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

