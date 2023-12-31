vlib work
vlib activehdl

vlib activehdl/xilinx_vip
vlib activehdl/xpm
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_vip_v1_1_11
vlib activehdl/processing_system7_vip_v1_0_13
vlib activehdl/xil_defaultlib
vlib activehdl/axi_lite_ipif_v3_0_4
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/interrupt_control_v3_1_4
vlib activehdl/axi_gpio_v2_0_27
vlib activehdl/generic_baseblocks_v2_1_0
vlib activehdl/axi_register_slice_v2_1_25
vlib activehdl/fifo_generator_v13_2_6
vlib activehdl/axi_data_fifo_v2_1_24
vlib activehdl/axi_crossbar_v2_1_26
vlib activehdl/proc_sys_reset_v5_0_13
vlib activehdl/axi_protocol_converter_v2_1_25

vmap xilinx_vip activehdl/xilinx_vip
vmap xpm activehdl/xpm
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_11 activehdl/axi_vip_v1_1_11
vmap processing_system7_vip_v1_0_13 activehdl/processing_system7_vip_v1_0_13
vmap xil_defaultlib activehdl/xil_defaultlib
vmap axi_lite_ipif_v3_0_4 activehdl/axi_lite_ipif_v3_0_4
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap interrupt_control_v3_1_4 activehdl/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_27 activehdl/axi_gpio_v2_0_27
vmap generic_baseblocks_v2_1_0 activehdl/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_25 activehdl/axi_register_slice_v2_1_25
vmap fifo_generator_v13_2_6 activehdl/fifo_generator_v13_2_6
vmap axi_data_fifo_v2_1_24 activehdl/axi_data_fifo_v2_1_24
vmap axi_crossbar_v2_1_26 activehdl/axi_crossbar_v2_1_26
vmap proc_sys_reset_v5_0_13 activehdl/proc_sys_reset_v5_0_13
vmap axi_protocol_converter_v2_1_25 activehdl/axi_protocol_converter_v2_1_25

vlog -work xilinx_vip  -sv2k12 "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/ec67/hdl" "+incdir+../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/3007/hdl" "+incdir+../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/62b6" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/ec67/hdl" "+incdir+../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/3007/hdl" "+incdir+../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/62b6" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_11  -sv2k12 "+incdir+../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/ec67/hdl" "+incdir+../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/3007/hdl" "+incdir+../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/62b6" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/63b7/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_13  -sv2k12 "+incdir+../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/ec67/hdl" "+incdir+../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/3007/hdl" "+incdir+../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/62b6" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/3007/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/ec67/hdl" "+incdir+../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/3007/hdl" "+incdir+../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/62b6" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/processing_system/ip/processing_system_processing_system7_0_0/sim/processing_system_processing_system7_0_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -93 \
"../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work interrupt_control_v3_1_4 -93 \
"../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_27 -93 \
"../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/a5bb/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/processing_system/ip/processing_system_axi_gpio_0_0/sim/processing_system_axi_gpio_0_0.vhd" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/ec67/hdl" "+incdir+../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/3007/hdl" "+incdir+../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/62b6" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_25  -v2k5 "+incdir+../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/ec67/hdl" "+incdir+../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/3007/hdl" "+incdir+../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/62b6" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/e1e6/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_6  -v2k5 "+incdir+../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/ec67/hdl" "+incdir+../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/3007/hdl" "+incdir+../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/62b6" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/8ae1/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_6 -93 \
"../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/8ae1/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_6  -v2k5 "+incdir+../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/ec67/hdl" "+incdir+../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/3007/hdl" "+incdir+../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/62b6" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/8ae1/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_24  -v2k5 "+incdir+../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/ec67/hdl" "+incdir+../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/3007/hdl" "+incdir+../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/62b6" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/fa53/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_26  -v2k5 "+incdir+../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/ec67/hdl" "+incdir+../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/3007/hdl" "+incdir+../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/62b6" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/ac57/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/ec67/hdl" "+incdir+../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/3007/hdl" "+incdir+../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/62b6" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/processing_system/ip/processing_system_xbar_0/sim/processing_system_xbar_0.v" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/processing_system/ip/processing_system_rst_ps7_0_50M_0/sim/processing_system_rst_ps7_0_50M_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/ec67/hdl" "+incdir+../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/3007/hdl" "+incdir+../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/62b6" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/processing_system/ip/processing_system_clk_wiz_0_0/processing_system_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/processing_system/ip/processing_system_clk_wiz_0_0/processing_system_clk_wiz_0_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/processing_system/ip/processing_system_axi_gpio_1_0/sim/processing_system_axi_gpio_1_0.vhd" \
"../../../bd/processing_system/sim/processing_system.vhd" \
"../../../bd/processing_system/ipshared/c31e/hdl/AXI_ZC706_FMC216_v1_0_S00_AXI.vhd" \
"../../../bd/processing_system/ipshared/c31e/hdl/AXI_ZC706_FMC216_v1_0.vhd" \
"../../../bd/processing_system/ip/processing_system_AXI_ZC706_FMC216_0_2/sim/processing_system_AXI_ZC706_FMC216_0_2.vhd" \

vlog -work axi_protocol_converter_v2_1_25  -v2k5 "+incdir+../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/ec67/hdl" "+incdir+../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/3007/hdl" "+incdir+../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/62b6" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/8fe4/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/ec67/hdl" "+incdir+../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/3007/hdl" "+incdir+../../../../vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ipshared/62b6" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/processing_system/ip/processing_system_auto_pc_0/sim/processing_system_auto_pc_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

