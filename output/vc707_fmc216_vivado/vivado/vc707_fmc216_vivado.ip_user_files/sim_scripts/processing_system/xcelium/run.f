-makelib xcelium_lib/xilinx_vip -sv \
  "C:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "C:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "C:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "C:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "C:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "C:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib xcelium_lib/xpm -sv \
  "C:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "C:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "C:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/axi_infrastructure_v1_1_0 \
  "../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_vip_v1_1_11 -sv \
  "../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/63b7/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/processing_system7_vip_v1_0_13 -sv \
  "../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/3007/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/processing_system/ip/processing_system_processing_system7_0_0/sim/processing_system_processing_system7_0_0.v" \
-endlib
-makelib xcelium_lib/axi_lite_ipif_v3_0_4 \
  "../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/lib_cdc_v1_0_2 \
  "../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/interrupt_control_v3_1_4 \
  "../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_gpio_v2_0_27 \
  "../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/a5bb/hdl/axi_gpio_v2_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/processing_system/ip/processing_system_axi_gpio_0_0/sim/processing_system_axi_gpio_0_0.vhd" \
-endlib
-makelib xcelium_lib/generic_baseblocks_v2_1_0 \
  "../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_register_slice_v2_1_25 \
  "../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/e1e6/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_6 \
  "../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/8ae1/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_6 \
  "../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/8ae1/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_6 \
  "../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/8ae1/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib xcelium_lib/axi_data_fifo_v2_1_24 \
  "../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/fa53/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_crossbar_v2_1_26 \
  "../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/ac57/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/processing_system/ip/processing_system_xbar_0/sim/processing_system_xbar_0.v" \
-endlib
-makelib xcelium_lib/proc_sys_reset_v5_0_13 \
  "../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/processing_system/ip/processing_system_rst_ps7_0_50M_0/sim/processing_system_rst_ps7_0_50M_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/processing_system/ip/processing_system_clk_wiz_0_0/processing_system_clk_wiz_0_0_clk_wiz.v" \
  "../../../bd/processing_system/ip/processing_system_clk_wiz_0_0/processing_system_clk_wiz_0_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/processing_system/ip/processing_system_axi_gpio_1_0/sim/processing_system_axi_gpio_1_0.vhd" \
  "../../../bd/processing_system/sim/processing_system.vhd" \
  "../../../bd/processing_system/ipshared/c31e/hdl/AXI_ZC706_FMC216_v1_0_S00_AXI.vhd" \
  "../../../bd/processing_system/ipshared/c31e/hdl/AXI_ZC706_FMC216_v1_0.vhd" \
  "../../../bd/processing_system/ip/processing_system_AXI_ZC706_FMC216_0_2/sim/processing_system_AXI_ZC706_FMC216_0_2.vhd" \
-endlib
-makelib xcelium_lib/axi_protocol_converter_v2_1_25 \
  "../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/8fe4/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/processing_system/ip/processing_system_auto_pc_0/sim/processing_system_auto_pc_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

