// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Tue Jul 18 17:23:39 2023
// Host        : DESKTOP-A0RH3KH running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/4dsp_test/527_vc707_fmc216/output/vc707_fmc216_vivado/vivado/vc707_fmc216_vivado.gen/sources_1/ip/afifo/afifo_sim_netlist.v
// Design      : afifo
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx485tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "afifo,fifo_generator_v13_2_6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_6,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module afifo
   (wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input wr_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input rd_clk;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [8:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [8:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;

  wire [8:0]din;
  wire [8:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire rd_en;
  wire wr_clk;
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
  wire NLW_U0_valid_UNCONNECTED;
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
  wire [3:0]NLW_U0_data_count_UNCONNECTED;
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
  wire [3:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [3:0]NLW_U0_wr_data_count_UNCONNECTED;

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
  (* C_DATA_COUNT_WIDTH = "4" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "9" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "9" *) 
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
  (* C_FULL_FLAGS_RST_VAL = "0" *) 
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
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "0" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
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
  (* C_MEMORY_TYPE = "2" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "0" *) 
  (* C_PRELOAD_REGS = "1" *) 
  (* C_PRIM_FIFO_TYPE = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "4" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "5" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "15" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "14" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "4" *) 
  (* C_RD_DEPTH = "16" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "4" *) 
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
  (* C_USE_DOUT_RST = "0" *) 
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
  (* C_WR_DATA_COUNT_WIDTH = "4" *) 
  (* C_WR_DEPTH = "16" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "4" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  afifo_fifo_generator_v13_2_6 U0
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
        .data_count(NLW_U0_data_count_UNCONNECTED[3:0]),
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
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[3:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_U0_rd_rst_busy_UNCONNECTED),
        .rst(1'b0),
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
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[3:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "4" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module afifo_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [3:0]src_in_bin;
  input dest_clk;
  output [3:0]dest_out_bin;

  wire [3:0]async_path;
  wire [2:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[1] ;
  wire [3:0]dest_out_bin;
  wire [2:0]gray_enc;
  wire src_clk;
  wire [3:0]src_in_bin;

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
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [3]),
        .I3(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
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
        .D(\dest_graysync_ff[1] [3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
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
        .D(src_in_bin[3]),
        .Q(async_path[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "4" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module afifo_xpm_cdc_gray__2
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [3:0]src_in_bin;
  input dest_clk;
  output [3:0]dest_out_bin;

  wire [3:0]async_path;
  wire [2:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[1] ;
  wire [3:0]dest_out_bin;
  wire [2:0]gray_enc;
  wire src_clk;
  wire [3:0]src_in_bin;

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
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [3]),
        .I3(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
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
        .D(\dest_graysync_ff[1] [3]),
        .Q(dest_out_bin[3]),
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
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
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
        .D(src_in_bin[3]),
        .Q(async_path[3]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 68096)
`pragma protect data_block
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
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
