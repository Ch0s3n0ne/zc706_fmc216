// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Tue Jul 18 17:25:48 2023
// Host        : DESKTOP-A0RH3KH running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/4dsp_test/527_vc707_fmc216/output/vc707_fmc216_vivado/vivado/vc707_fmc216_vivado.gen/sources_1/ip/fifo_64_to_8/fifo_64_to_8_sim_netlist.v
// Design      : fifo_64_to_8
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx485tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_64_to_8,fifo_generator_v13_2_6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_6,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module fifo_64_to_8
   (rst,
    wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty,
    valid,
    rd_data_count,
    wr_data_count);
  input rst;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input wr_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input rd_clk;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [63:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [7:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output valid;
  output [10:0]rd_data_count;
  output [7:0]wr_data_count;

  wire [63:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire [10:0]rd_data_count;
  wire rd_en;
  wire rst;
  wire valid;
  wire wr_clk;
  wire [7:0]wr_data_count;
  wire wr_en;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_rd_rst_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire NLW_U0_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [7:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "0" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "8" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "64" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "8" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "virtex7" *) 
  (* C_FULL_FLAGS_RST_VAL = "1" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "1" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "1" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "1" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "2" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "1" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "1" *) 
  (* C_PRELOAD_REGS = "0" *) 
  (* C_PRIM_FIFO_TYPE = "512x72" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "253" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "252" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "11" *) 
  (* C_RD_DEPTH = "2048" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "11" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "8" *) 
  (* C_WR_DEPTH = "256" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "8" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  fifo_64_to_8_fifo_generator_v13_2_6 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(1'b0),
        .data_count(NLW_U0_data_count_UNCONNECTED[7:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(rd_data_count),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_U0_rd_rst_busy_UNCONNECTED),
        .rst(rst),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(valid),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count(wr_data_count),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_cdc_async_rst" *) (* RST_ACTIVE_HIGH = "1" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "ASYNC_RST" *) 
module fifo_64_to_8_xpm_cdc_async_rst
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [1:0]arststages_ff;
  wire dest_clk;
  wire src_arst;

  assign dest_arst = arststages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(src_arst),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[0]),
        .PRE(src_arst),
        .Q(arststages_ff[1]));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_cdc_async_rst" *) (* RST_ACTIVE_HIGH = "1" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "ASYNC_RST" *) 
module fifo_64_to_8_xpm_cdc_async_rst__1
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [1:0]arststages_ff;
  wire dest_clk;
  wire src_arst;

  assign dest_arst = arststages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(src_arst),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[0]),
        .PRE(src_arst),
        .Q(arststages_ff[1]));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "8" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module fifo_64_to_8_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [7:0]src_in_bin;
  input dest_clk;
  output [7:0]dest_out_bin;

  wire [7:0]async_path;
  wire [6:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [7:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [7:0]\dest_graysync_ff[1] ;
  wire [7:0]dest_out_bin;
  wire [6:0]gray_enc;
  wire src_clk;
  wire [7:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(binval[2]),
        .I2(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(binval[2]),
        .O(binval[1]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(\dest_graysync_ff[1] [6]),
        .I3(\dest_graysync_ff[1] [7]),
        .I4(\dest_graysync_ff[1] [5]),
        .I5(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [5]),
        .I2(\dest_graysync_ff[1] [7]),
        .I3(\dest_graysync_ff[1] [6]),
        .I4(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [6]),
        .I2(\dest_graysync_ff[1] [7]),
        .I3(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(\dest_graysync_ff[1] [7]),
        .I2(\dest_graysync_ff[1] [6]),
        .O(binval[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[6]_i_1 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(\dest_graysync_ff[1] [7]),
        .O(binval[6]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[6]),
        .Q(dest_out_bin[6]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [7]),
        .Q(dest_out_bin[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[7]),
        .Q(async_path[7]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "11" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module fifo_64_to_8_xpm_cdc_gray__parameterized1
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [10:0]src_in_bin;
  input dest_clk;
  output [10:0]dest_out_bin;

  wire [10:0]async_path;
  wire [9:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [10:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [10:0]\dest_graysync_ff[1] ;
  wire [10:0]dest_out_bin;
  wire [9:0]gray_enc;
  wire src_clk;
  wire [10:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[10]),
        .Q(\dest_graysync_ff[0] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[8]),
        .Q(\dest_graysync_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[9]),
        .Q(\dest_graysync_ff[0] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [10]),
        .Q(\dest_graysync_ff[1] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [8]),
        .Q(\dest_graysync_ff[1] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [9]),
        .Q(\dest_graysync_ff[1] [9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [4]),
        .I3(binval[5]),
        .I4(\dest_graysync_ff[1] [3]),
        .I5(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(binval[5]),
        .I3(\dest_graysync_ff[1] [4]),
        .I4(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(binval[5]),
        .I3(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(binval[5]),
        .I2(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(binval[5]),
        .O(binval[4]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(\dest_graysync_ff[1] [7]),
        .I2(\dest_graysync_ff[1] [9]),
        .I3(\dest_graysync_ff[1] [10]),
        .I4(\dest_graysync_ff[1] [8]),
        .I5(\dest_graysync_ff[1] [6]),
        .O(binval[5]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[6]_i_1 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(\dest_graysync_ff[1] [8]),
        .I2(\dest_graysync_ff[1] [10]),
        .I3(\dest_graysync_ff[1] [9]),
        .I4(\dest_graysync_ff[1] [7]),
        .O(binval[6]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[7]_i_1 
       (.I0(\dest_graysync_ff[1] [7]),
        .I1(\dest_graysync_ff[1] [9]),
        .I2(\dest_graysync_ff[1] [10]),
        .I3(\dest_graysync_ff[1] [8]),
        .O(binval[7]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[8]_i_1 
       (.I0(\dest_graysync_ff[1] [8]),
        .I1(\dest_graysync_ff[1] [10]),
        .I2(\dest_graysync_ff[1] [9]),
        .O(binval[8]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[9]_i_1 
       (.I0(\dest_graysync_ff[1] [9]),
        .I1(\dest_graysync_ff[1] [10]),
        .O(binval[9]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [10]),
        .Q(dest_out_bin[10]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[6]),
        .Q(dest_out_bin[6]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[7]),
        .Q(dest_out_bin[7]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[8]),
        .Q(dest_out_bin[8]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[9]),
        .Q(dest_out_bin[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[8]_i_1 
       (.I0(src_in_bin[9]),
        .I1(src_in_bin[8]),
        .O(gray_enc[8]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[9]_i_1 
       (.I0(src_in_bin[10]),
        .I1(src_in_bin[9]),
        .O(gray_enc[9]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[10] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[10]),
        .Q(async_path[10]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[7]),
        .Q(async_path[7]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[8] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[8]),
        .Q(async_path[8]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[9] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[9]),
        .Q(async_path[9]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
module fifo_64_to_8_xpm_cdc_single
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [3:0]syncstages_ff;

  assign dest_out = syncstages_ff[3];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
module fifo_64_to_8_xpm_cdc_single__2
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [3:0]syncstages_ff;

  assign dest_out = syncstages_ff[3];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2021.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
lYvhEjj3nb5oH8uSNLeXMIy7nJYVR9CgwYrS2YsK1wH0yG7GgJF3h7LWVAsRpUASOB7rHmuPVhb5
Ot5CFu1eFeE97Zpvi2xwlrFd2yOm/xOs4mKX3gkTIBIJmAKj42AUYk/LR9j6mOwXFIQmoZqYXHak
Pq2yC2ljr0hY1gwTFtI=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Z+2GQWpqmewONlHVkL658DHQ1gOkrvPjxsrm0NDcBmt2DgE1WctRC0/WtmZNRR2P9xNPEc1AnD3g
x2bmQ9ClncBm4tJJUerktYV7SZWaAFXLpL0mImalEctnoiL1emAUpqT2xWqYmc7/Up4fedi3U63/
6fZpFkfLPe1f/3mRlu+DKs00gVRP+t6V+01C1oWFsyvdyS5tDx/D7YWjpI8AZn7PAxGanwdNWWSB
/kAFPcC2bUzb0T91+nSe2x7K7ugumFrWpHW6iiuiY86OlLeqrAD5SZsqHhPT9GqJmSzj5PdAcMm2
1N7wj661ojPTxlfvw7ydkwisxeQEZRQ1H8LwwA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
NWkv++1uc4OUvmLLmKamw2rSfdpVbwBET7oFkV2XGR6y3sZCnAwLR/UY8EXqGYSYtRzQMSec4n13
l7DB/8txjOrwXvZKfRBpPdz4pIT7HDh50CC1gJaraDaEr18dxcLyq6t0fo14o+JyrAxZm7/nDg78
7/uEhQnwCkDeOEnusng=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
RPz1UvQF5/1bAGbmkE93ADh5aKEj2NdkJKJJhSjosDEbYcFH8ZSL5Ew53E1CBLn7KjAnpfOLAKVf
fX9beeVP5C5vU0n7ZMu9ISDuX947ttq4eCcbaV78UxB5l1Lj8hlouzML1BQecqW1z0mUCgW7CBoO
kvS93cLpph/VpfSwuTwO3q41V7Gxeshrw2U3zfZGHMUL2TI8fX+U+qCt5oG7UGDkIiE+SZRN8eQK
SY18ZEkuzeSrAbp1xn25WHjeUYF1dwHmcNf4wRKiww67b89Lqk9DBKAL9rsw0KWuua8qjESM8t3w
D+f6RYj2AciBO842MNa2LlXNkWM+oLq1CtukmQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QcQzkZp4Sch9TwvI82NYHoYu7Fu4A68g8HQ0GQQvhgP0VPOA5fVtIXlGeuCjshtvB9SbR/JdhJVW
H0AcjAKKgHxZK+en5z2azbfr9d1BbF03MjLpFIxdwUacvQfXpyvYKYFtjplThociLLWtOUmXj84s
4nP0l8PXdvTblIHap6SfZL6Dhv1jlcCTvUTUGoULVvQRU16E+vFCep9sJnLwhCCldBnB5vBZ5TCu
AXnNJpF2Gx4Y+BC9c7XyNRkVfKm11TUyI3pc5OcNWX+42CRvLbMSKG711f5VO+yZsWi9YEWqMTjN
RN18y3FwbJ9g/6K9ZswbGNgjRnn7l2PRbFrMKg==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_01", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ic0gE1G8ZymuhdpWjbURYCva14oPCOYHWxeY1WbqEo4fRdhM6YimsmNp3RyJRpeG6TFY0iDQtGg1
f5g5G1LTD2KIG+dBZyfKNnTE/ZOWrLJOblPxV8gmBtOye+53NJXzi8+oEuZceCLJxPBg1t44/kD6
M9x687RC58J0HT1/+RsMdCvAGIhlkdNOkb4+dhOoGEPVtNJhV6u4ccNdcnLz1ZaIW6yGByR8UXna
8XH9yb/yWXZzxveULhlxfYe5edpqYlF99QdUnueTFFmCXxIYP4G0xwFM1S929iLWZUS13jbam+X4
5SLDsqw5epDM/DVK5Cv0VD4JajhRoM+fGT/I4Q==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
W34Gq4IReWdH4guFD03wBoHFTA+s1wgkA3uEFz/xWEihtgcet7BzSoGE0K8FQKLVs+D+mR8yPD8Z
vuUkN7L+imyxs7FeoUUpCBNbo0z5XahETBApULQzISBGdsC2f/p8wwDdoHY5E0UjcHOTr+Pah6x+
Kb/OiJAA3/B3geutymFuXHhdGJVoLS30F7CpbZpHTVoZZBU1TgUTFXAySsVWu7k+NMAoSxDKr4k3
10DyqW8wuvTaTG+NdumVzlwtmHHXVSiGk0//Q/9EJmzEzH0Pi9m/wmiONCYRmb0c/K5YHCIs7xNF
nWpl/fzOUJQequCzR636PCmQz3/wSjGRil3HDQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
iEsUxC8JQZnRxQOm+O4jwBmkm5PoeeMBxaBqVOvKpTXSyjvbLGMDYSb0fxpNvdSJbtZpFIPnAww+
aq3rl7doHEf1kjM2dC4rjvZWa0jWRoJIANcbomcPl6IeiRfAUGCGIDrNDxK+Y3GNvZf2de79ApcB
dTaCVwgrbloNzIJwiJkRY1og57CtPhYfZGFMkwwQ1yHtCyOiuh1DFTM1HOr7jtC54Rj43wY2EpJp
V8vuUqRPQXW8kinGG+26i34AsoOI/xAYSbvXdBHrgwQSzEVIApd8q+QxH+P/twlQ/rFGh9QkEtsf
01rrVJSI2TzVwOQBjP9yRmeHw8y91krSW2dGHHjOd+HVO8Mpbdh4nOvQiYQjNK1lqwInPGOH2bM6
kuUfNcfP9+0NlRUDVuuhbzPVr++hGny3Hvo5Aq7bQqtKrYhqiaLWIWoY6mFPGyfIoZrbVClEO/oY
G2CKj5JTQTRFxNUtusbqdXg+69YwdnuXoF9oFfaVJwpFYlKtWBm5LeRv

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YKagekiHOyMnMVPg7PmagWsOMo70GABOzboT0+MRxNHoWf+7KtPwFZmbZAZPMjbv2wgx5vSsG1VZ
GZlduGJPTey/Q2+Yx2fvgCJb2dlR/HDmPB+1X4vVosJEw5nD6m8yWJd0L+NZCG6gtRelGjAxjm68
yPC9qOiRc6jrOM91cmFC6Xi2jeY4t5FHi4zmBceasIzRWIBnat7p0fZ3CZaaY76+K02CE2jND22R
W0XlRGoYVtWNukn5s4Z4AkME8oKdQugjp9rNooVbn7sWp5td9RHT1ZxOWgINwiHb6D9MOnsOSGwz
2K1jXhGDdXe4TOnFPIn6VglS5Y05u1snfUxFlA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 105680)
`pragma protect data_block
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
P0A=
`pragma protect end_protected
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2021.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
oESHD2Q5NORrmTVTCApB+YFZJwjA1ezq7U6VZh96by+ofPCvSFp06AIoCLvB4BhPvxfob6kIkBpR
xVCOLM7HsDk7nO1JVWiYIJ6okoWTA8hAlPj3sdGuMwRlZNSBKn/c6F+CW5Jl37TEGotkhycSB3Bg
B/uu1THUZwIG87RPahE=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
RovEhaqHrFqzjckk+DIWG8LQeqg2Y/nACQDyXKKtSav7YHlgpKmgHZnsxwwNpqrqVRGyjTecSQ+e
6Mr/Pi9au3AgJVPL6VOgwNVE0yj2LpA4LPyWzxLN3+DiSDmsaCBNCBlVQi2MRKUabou8nLaXldbL
+7pv4pYhQdcyjDzuC2dx3HmzADqstdEiyXeU3ktJ29CDLDmGwDWdmsrl90s4YQSfBV2nj4/Vut3L
p/8dzphf1htPaNMujMxxgp3z4JzUEDJJokDL+gNutEEHiaWpI3URIA5v22vJu+NPD+eEraSioHfL
DPKAajZTwK5FHnonu4O2D0co8GWqWW5cUqZz9A==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
jBQ6Th9yy7jtKQD1h235YLT6qO6XiBaBKGJrV1Z8H9M9ePJ9R/fA8E1okt4LyBvoWjR7tmCbIg7A
0/vuKOogkLtDE/BtTlp4z1iurO8rQrAcdZy/e+7GATawyJxFY7kZhnXASu9zB8TiOBELSlapkpxe
WuAzXLde9FBMBkq4RSc=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
eucSNV2Zbm4zYc2tIGRlGmlVM8+WHY1NHe9drZdgDhGPOHz8PTqHapfnZ1kWuTLtPBLSMvcXNScn
UTvpULofBV6qD7WHLPg7UJcjpZVDL69lk88chgqrlc/RqaJXKNVv+Ubku53ZLU20uZK71bNymjSM
855RVWw5lvTHTCNC2MYIS94Fmrzuq8i0+tFh5qBKkHK2BC+fD7xVyyfuh4mZR2yr/hRs/emoI79E
IKoJnLiglVp6RXTsXFzZW4pIthbjWSuZlOQvoYkS2RMj8a0r9lyariphRQunoudc0bLO4Phk578c
40gusaaS/MI7idMT7k1Di96kvu5mHi23loRcZQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
E/syLaRG2Ss/xTTkuAkOKXzm53+rCptYO2DkVukWhvlLmEB2daHCPrXt4gKeuG+0hIGWedSwCiLJ
7KNtEAiTumJ/j+3p7s3oXN9ftCSRolXoACsCclEAmwYjVM0ubCXUx6JNFOGt0yDl2Jsd5+W10mSJ
bYEKvRKi7koXM/eYJqbhTrtsrHDwRJEY0JVUPh8EOkLLqaIKbnjb6ENEY6qZOamp5PaWsSS30gJM
N6fB8D1AmGKnFbfY+d5TexS55Z92aYcAHNX2XwHsKnm45az1vHeZ0rTEU/oONIaSZfikRni1iDBg
x2GOue6sLiwxTEHaVkTJsOVR4mx0VsfFxavwRg==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_01", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
dSHHpkQiOEzzKs4D71WVyDXLpkKuR9h9h3pBLtnCq2bXiwE/eQHmk5HeQb+qREg0Yv193OukqaQz
RZyuF5GQcqOpqFHMxO62HQ2pdjdpMT5CC7gHvmgiw9qBkJJrXpihIHER4X7OF2iNUfeqxJ8eiSz3
C0V20NlIwKG7Mxg8MVj++xmb32KMUqL7ptikkym20vVdhecVMNvpPoXp8uvaGT7991enWP9HGKUC
9kLY2DEYwRGE71UJJLGWo4n49R50ExFRj91xWnYfvp7uJsMNwnBp5l3GTZiMELX2RkRVSPOHr7l1
n2p5Vq7Uee2drny1IxZ/4c0hYY6y3QWSEqpESw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
HUtfqZ9dh5oZTOAt9a0ebo+wQbzg3izFQ0kVqZN81S4cBjQEF53WUiVlTKBDVjvLNUby4Se9WZjj
j86TQzuGJxLPDTohmbytErsg5JrlXHbHGwR4zGNGTbBs12X7PkxtS8wVCp+7b1rX6pOGOPqm6FoG
g6rZY/bTzVfGYF2CAOhjJUqUOXEAKnZRehspRyiBI28/ZZPSAUD/abKprW8PWCxMx2zPWztZz4No
R96jgvHezNzB1Ta8W7uRBFTMp+XVSToxTp2jzSXJZ0V5xJl+gdVjAMmf6+te2vqrK2wDWdMxk3Sf
iyLI4d0s25vCybcY2fZWacq5iO9pSlSaOQWgCA==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
vYYu2Kvhv3RZi0pFbjRTQ/BBwfilCrGpkMls+Dz6HBGTZvSaC/anWgymoDS0XnoSENGG3Pz3EBF0
19OqLbyna95IHFe2bA7f8RgU9SEUffZ8eXGigfOjAWpZCN07Q77RkhGUKal7okWe3Q6xHtZy83l2
kW8ma3kOYL7GzQjtpbP3lINHLMqpGEo0dzbOHiJ5r6W5U6DsILGsoLQOXcw+MwrevvNRB0KkSklj
QnL8K2AK8PIsJGM6F8dj5KwRYhSBYNb1opuVpiJWlbHgADoeM+dhiRxBLmnaDE8PWs1ReY6uMzzH
SvvO6UEyxQtvS/Smm/uogr1eUFedUaBHPMEXnYlTAv/SKrh942GeknsqfrjGkZxWTN2NEnvpRUwT
fS0pyd/Err0s94b0srmcTYyxZfJGRUct2T8MCphZFaScAlhn655pxW9RaHMfcvDJUHpW8Qa+KhRt
9CWYScPIH6YNDByLQbhKL5BTpAYMNYPF2W7vM2ZzDob2NB7m6GGeKRr3

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QSNmIeTT4pBji+CTjknWXN6sH9Wff8+t8KF+AC3fIoIw08jtLtShcB9ZGeEKG02RGCO4lNIUf5YB
2TVYk6EJ5XyCav12qDhc60n56UVrnpfo7drorY0NmOypuxECgO43h6SDWp9W7px3r4CJnQ4+X2Mj
943GdP30WfL5kbWHZJC1Dz9cBIqRa1EbNXvvAqBvRPS2+aXBXAPOC4rNVZGeIUspn/33IW3yJLSp
Jm5GIct87ZuSoz8+DXhUvsTj4hq8lgirVhfz1qhHm8SfODcE91FGUPw3vbpGWXsBX73t2zxFC1Hz
/6m4YqQJVxd+H5iGE4kbHxHyHnH7FIerqc8Phw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UhfxKxECbuHK/o9ZExa2zP/MIPmFXuDNZwgpiawuBmPeRI1nJsYB7vzbBGMPKny4yIHLT8mHrQRc
fs05atkjIAbLea4+WNoCdCeg7/0PzuodM1ol3it6BHQ6Yzq4mnZbzlk8Xtwmk8ACAbzOr2SYxYWX
ueuUlimUSRusIe4+NiPvzbfHMAOVPjdmSY7zaSyeJuhdAR+fUGeHy5B23Xe2X6cDPeJ75IqcBeul
ox3dTXi3L8r/s1bTKX3FhxRyPZuh/xCWuEajsF2fEYdwWHKtLX6IQniLBJ5ZnVSS8D7IYPsvV4t0
9rWJqto5O1n3rAM44OvKvc9pOYXJupuv7g3gWg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fmo66vhS7nigYtLDMjdj7hgUnDG/fnO+cIaY/3qHrcwT7u/paj5enLuWHovegu9O9WRq3pPNnjuN
6vZRpuCgz5p4VAV7dVg9fuzg99BAjThp1Q/+HIPfdQ2LM14ZpTh4FXxthHGkTyS5PJArvZ3/UMpW
zwfdYd5+k2/emJ4/nuqoJHQG8k+O5EjSprLTvNZ/wrE1cT/fW/Lu2pxI4msHqVVYAXz7sJ13cQ+C
7tKxCV8vTyf0rpStdE+kZXg+jrc7vFKuPJO0U9axMsC0nXyeYx2jzfAHptGWKvfQaPg/Eo9mgLyN
qSJfFS6aIycuxNmg7L82WK401aWhnUn7GNrudg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 28928)
`pragma protect data_block
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
S47Uh5282bgbFwNnMtcKtkHk3j7/w1fIxDLc1SM=
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
