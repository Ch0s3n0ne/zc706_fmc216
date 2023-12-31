vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_vip_v1_1_11
vlib modelsim_lib/msim/processing_system7_vip_v1_0_13
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/axi_lite_ipif_v3_0_4
vlib modelsim_lib/msim/lib_cdc_v1_0_2
vlib modelsim_lib/msim/interrupt_control_v3_1_4
vlib modelsim_lib/msim/axi_gpio_v2_0_27
vlib modelsim_lib/msim/generic_baseblocks_v2_1_0
vlib modelsim_lib/msim/axi_register_slice_v2_1_25
vlib modelsim_lib/msim/fifo_generator_v13_2_6
vlib modelsim_lib/msim/axi_data_fifo_v2_1_24
vlib modelsim_lib/msim/axi_crossbar_v2_1_26
vlib modelsim_lib/msim/proc_sys_reset_v5_0_13
vlib modelsim_lib/msim/axi_protocol_converter_v2_1_25

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xpm modelsim_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_11 modelsim_lib/msim/axi_vip_v1_1_11
vmap processing_system7_vip_v1_0_13 modelsim_lib/msim/processing_system7_vip_v1_0_13
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap axi_lite_ipif_v3_0_4 modelsim_lib/msim/axi_lite_ipif_v3_0_4
vmap lib_cdc_v1_0_2 modelsim_lib/msim/lib_cdc_v1_0_2
vmap interrupt_control_v3_1_4 modelsim_lib/msim/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_27 modelsim_lib/msim/axi_gpio_v2_0_27
vmap generic_baseblocks_v2_1_0 modelsim_lib/msim/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_25 modelsim_lib/msim/axi_register_slice_v2_1_25
vmap fifo_generator_v13_2_6 modelsim_lib/msim/fifo_generator_v13_2_6
vmap axi_data_fifo_v2_1_24 modelsim_lib/msim/axi_data_fifo_v2_1_24
vmap axi_crossbar_v2_1_26 modelsim_lib/msim/axi_crossbar_v2_1_26
vmap proc_sys_reset_v5_0_13 modelsim_lib/msim/proc_sys_reset_v5_0_13
vmap axi_protocol_converter_v2_1_25 modelsim_lib/msim/axi_protocol_converter_v2_1_25

vlog -work xilinx_vip  -incr -mfcu -sv -L axi_vip_v1_1_11 -L processing_system7_vip_v1_0_13 -L xilinx_vip "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr -mfcu -sv -L axi_vip_v1_1_11 -L processing_system7_vip_v1_0_13 -L xilinx_vip "+incdir+../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/ec67/hdl" "+incdir+../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/3007/hdl" "+incdir+../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/62b6" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93 \
"C:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -incr -mfcu "+incdir+../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/ec67/hdl" "+incdir+../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/3007/hdl" "+incdir+../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/62b6" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_11  -incr -mfcu -sv -L axi_vip_v1_1_11 -L processing_system7_vip_v1_0_13 -L xilinx_vip "+incdir+../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/ec67/hdl" "+incdir+../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/3007/hdl" "+incdir+../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/62b6" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/63b7/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_13  -incr -mfcu -sv -L axi_vip_v1_1_11 -L processing_system7_vip_v1_0_13 -L xilinx_vip "+incdir+../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/ec67/hdl" "+incdir+../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/3007/hdl" "+incdir+../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/62b6" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/3007/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/ec67/hdl" "+incdir+../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/3007/hdl" "+incdir+../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/62b6" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/processing_system/ip/processing_system_processing_system7_0_0/sim/processing_system_processing_system7_0_0.v" \

vcom -work axi_lite_ipif_v3_0_4  -93 \
"../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work lib_cdc_v1_0_2  -93 \
"../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work interrupt_control_v3_1_4  -93 \
"../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_27  -93 \
"../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/a5bb/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../bd/processing_system/ip/processing_system_axi_gpio_0_0/sim/processing_system_axi_gpio_0_0.vhd" \

vlog -work generic_baseblocks_v2_1_0  -incr -mfcu "+incdir+../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/ec67/hdl" "+incdir+../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/3007/hdl" "+incdir+../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/62b6" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_25  -incr -mfcu "+incdir+../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/ec67/hdl" "+incdir+../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/3007/hdl" "+incdir+../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/62b6" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/e1e6/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_6  -incr -mfcu "+incdir+../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/ec67/hdl" "+incdir+../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/3007/hdl" "+incdir+../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/62b6" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/8ae1/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_6  -93 \
"../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/8ae1/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_6  -incr -mfcu "+incdir+../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/ec67/hdl" "+incdir+../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/3007/hdl" "+incdir+../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/62b6" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/8ae1/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_24  -incr -mfcu "+incdir+../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/ec67/hdl" "+incdir+../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/3007/hdl" "+incdir+../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/62b6" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/fa53/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_26  -incr -mfcu "+incdir+../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/ec67/hdl" "+incdir+../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/3007/hdl" "+incdir+../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/62b6" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/ac57/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/ec67/hdl" "+incdir+../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/3007/hdl" "+incdir+../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/62b6" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/processing_system/ip/processing_system_xbar_0/sim/processing_system_xbar_0.v" \

vcom -work proc_sys_reset_v5_0_13  -93 \
"../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../bd/processing_system/ip/processing_system_rst_ps7_0_50M_0/sim/processing_system_rst_ps7_0_50M_0.vhd" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/ec67/hdl" "+incdir+../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/3007/hdl" "+incdir+../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/62b6" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/processing_system/ip/processing_system_clk_wiz_0_0/processing_system_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/processing_system/ip/processing_system_clk_wiz_0_0/processing_system_clk_wiz_0_0.v" \

vcom -work xil_defaultlib  -93 \
"../../../bd/processing_system/ip/processing_system_axi_gpio_1_0/sim/processing_system_axi_gpio_1_0.vhd" \
"../../../bd/processing_system/sim/processing_system.vhd" \
"../../../bd/processing_system/ipshared/c31e/hdl/AXI_ZC706_FMC216_v1_0_S00_AXI.vhd" \
"../../../bd/processing_system/ipshared/c31e/hdl/AXI_ZC706_FMC216_v1_0.vhd" \
"../../../bd/processing_system/ip/processing_system_AXI_ZC706_FMC216_0_2/sim/processing_system_AXI_ZC706_FMC216_0_2.vhd" \

vlog -work axi_protocol_converter_v2_1_25  -incr -mfcu "+incdir+../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/ec67/hdl" "+incdir+../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/3007/hdl" "+incdir+../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/62b6" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/8fe4/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/ec67/hdl" "+incdir+../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/3007/hdl" "+incdir+../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/62b6" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/processing_system/ip/processing_system_auto_pc_0/sim/processing_system_auto_pc_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

