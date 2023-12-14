// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Tue Jul 18 17:23:38 2023
// Host        : DESKTOP-A0RH3KH running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ afifo_sim_netlist.v
// Design      : afifo
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx485tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "afifo,fifo_generator_v13_2_6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_6,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_6 U0
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

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* REG_OUTPUT = "1" *) 
(* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) (* VERSION = "0" *) 
(* WIDTH = "4" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__2
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 68576)
`pragma protect data_block
+PDKlU/ga0I/ntsrFc+JaP6d7xaVu7Pw2mk5C37ctAk4nZLPq5uGkikQKw9mcIxz+qnbqRAydqpf
spAc30s60V6eWwbgKJvv/o0KqiQRZPQ8r2yoUmteZ/2D9uHsrQICDpo9xL/t9g5I9eW+nmisIFZf
02grxwwPVwLwUtga21lXxGdBtZWx45wC8XnbhknMXUdffQiHBxN8t1RFN+rxLV0IMsmrV5ckSxE7
ys6lTRkXeX4sXv1By0GSf0ques4CVx8CxL5SJXwY9txYhJrWKzmCHrPAjvTU3dx41E0GZ3Dodsz2
Afz0bMekyGmXLAb20Hi+t4ZCRIyh100uzFiKA+wbTKNx8qfOtmm9oXu4ynxBFeA5lA0i/cjkpO/M
OHdSvtTShnM+BG+CIoHxpck8e8YOhRTZxlD8nO1smSDDMBeIE4w0QzHV19d/zLGZwkVrdEgSqHhL
JTpuTM7MmjCKdaS0h6t1Yh0zLclEzxVhrXtuZYytW0yPrHqE2gELnmkdgYU8Um+SDrWj5ZEXBTBX
4+nJDCxhIhW4xh2hL+4mATxxgHKINk/FG5z5M68ry5H0lEBIWjbPP+bIR1Rel6O6EArPFSiCNpdr
o0PiIl+K5LVq9RBlRRPPhMppbIJsKKsZncL/fRBQ7orC0UFnzVleL7I/38ys4jHo1BeS7E2atQqB
8i2d1KjrOySdnh4bnSw3IN3Ly7J5m3C44urCYzFLeHspYo2yuuUL7hSQjNLrdKyoAVfG1gvCmpJ6
i/BAD+ZtLjMGIlMe4u+S+LuvHAxFZ7qRtZV+B+ALVTKF6gf9Ihsj3USLqvPlJ+wOuCUeVd0QRN2e
cvOVOn/Cy4TLlM7CTfIpoGbQaZFe6qTTaGkeq5iMk9XMVudh5xGnvCMNChX30LiXFvXKp3CMf0rX
xwdz25rZk4HOxCo1ZA2XN0YuHjcorPDNSbSQlzcuWqEm9i2KOQwsPuBuDF9ROd4bFyTYnqxz/x44
UacY0B4+n3IGY6QJYZEhHPc3YI81rn4KinWf9RzkbCpnfdhPqqDd/fVoYHEi4erdeJkJYgjsRXBQ
wL5AIySfPCF22mDkdFfWazoNROFO2+kdlYLTC6yw7t+vQJDQLGKcBkf/L63A7e8OwIxqiVGw3uBS
4GiUqnaEaqTI444pVwLUHcK/qZtt4R/noHNbdQNYxcaeHeYPRgzUtrphYD/bEwjVsMz9b3r+wB3h
JJr6Orv1Jz35/mKG/Mwe8gZUs7iv3DCXXghA1Iq318uI1CJZcAjU0gJ5WQbPG0EqO1AgxqNuTzMa
B8E3WJJF1fQpTAeciGUSm3NknDyblurXQeqJg/Q4kTGR1wr6VU/dASv90UHkcpmqQLOV4A6BitEm
vvSey+O1HDMb0/UWM65sIPmOWvYJnukWFzM9/YxJR0S4aPRfufGqtc4KZf4nT+FG9mvZVe8uv52l
UienOPGd5iZC9pIRwVrpZRuTjK8VPyNLfpXRUXro2zF8rzUC9jfNNzSWbM0rem3Q/IFqkSKOFieK
i1XiKnLaaMzbrpjBN0yW/EFABna6wi4zuiwSToF6spyjMLqUTlZrwAcdSaph/pvsR4lEzShi+9rj
rTX6uSco4KZnGsu7zHbjIOcf4HXZYBCOCWpXbgeFulMSD06czXi2LeKLYcXnuzJQ3cZ3t9qvQSBa
bLvpAx0HADJT9twrWscWLn2UMadDUJy4q3RL3NW7I+JUosU95legmUEy1AgGoOjUS0CuLam2HKYN
jtAKpIkcqbw3O4BKBF/fz3+PQboQGONdjgHM8eXjLv7xY1TzInJgePll9waylXHKmUK2AaFnJ6yD
smtkYGlMvk/B9rxxON7/9HZqI/XHqRRAkBGOk3JxJtthQHq7iS28XNEp/nPpRZvyrS1Psx06IPuP
DMqDB3fKHe5L7Z0QRDDeibrC3TwJOMtn1iOhfypXFJOz+yOpIdv+7pNnkbGksIHHt/jxAsjkQr3Y
IbF0J/+5WZ5EoIdonZJZ3IlMaYHvvQnnTfkj5pOjajv5tCSlhZSb0J1kTVr2cOJISHRxE+ZRVTT0
8oloiXL5pUT9zoYUrhbQwcrkmqpZkw2EJkamARmAP7rgl9BBDu1Lvaht3GTnuMU28+TUz65dbiCe
kNVZ61oE7jKdTJyadwglppB9RKi6FJHeewzV+bGqhVc/I3C3awZEUCuWCexAeY3+9OP75tO6Xnnd
/Dos5Cg2otjPm8Vg40sn79vOLp8Ubti7RblaaZ03ZKP6Yat5GEdX3YEI43d/fC8BQLQ/cVdkoGly
cR7F+BXgiDvRf2ZyH5spS6NX2596vCdvKsDeFv7Wat1CcYx6yKL9GIBcguN2mD0jzu/VbYjkT0QD
svRGT7N31Hni9cl0bDmn6USHSrKp60DdZrDKaDM3lHMsXu6BtXVg7g1LA6IMRSS4McfOsJrrrOeh
A6I3W+zlVqL9Xf0r4LLIS4/p2LgXnC8mzziQi93M+dhidrBz5ESc7nz0aBhHXNSL+blmXvzs2VwD
X6pUqlguPQpWnVi0JcZrUnH4NO3/xqD2gnFjuSqnuG8uMfisnZG9LTaXDqg8f4Q/vKUd/GY2zqEJ
zfyNYuX6LhYWa4OS9cwtJ1b5FlecRYWxO293wRbIuOcraImDpqfG86FsMtWRtELIxb/GVquaeJpY
Grnb2xV2+eKbMHJWkVfut8YqlMLCZXcReMLQQXuUOBHNTW0hQRKxooXjPVLOJaPwxvQuyZnbKFiO
PWzPDMKsAltKyf3soZeCvjvcbYqyNyLA4EzoOekAOaU20r/vvwtiwtaweHywLGZexcGhh9chiDJ6
eWW+FpinjsrDP+3JaxbiJ/WEyGgR5e9YxYp5vSRhtYpAJR0s4jmpHhU7rD0tl4/795kQyaU/y9GT
2NxQAG1HbHryLeFLraQ2VCzbGH8dDpU5aWaXe+53f2NnZB5vacc2Cv1zq8/dYjfo2+jOJBm3NAgW
h7xe5QDAEhfbxBLsXffq7HXZ/b6xb0nvXC3JB/uOOpMK9dczGxsd0hkc6ihdDWhE7RDzoNKpRtSC
k2cV42U/TVHH8C+RZ0TocJoX38NnGd1LZn5cgwSYs1dLQyzZyukrNpcPINJKp+BDHr+z8TX4+dPd
idp4qjFiD8xUVcl4vTDW/bQOgwVATfUVfdkiQBGM4TQuZrwmsKE9YUbXg+uxQDH8Ljlh/s+h68fS
jv7Qt+1HcuzLROTW9MadLvUEyYhLwZ41USqm3tMgdi63Nof3kTydpot+jjpY3qLOvsFnyJsMuj2W
O03bMnvqlxPnREt7bN75gsx68cHxL/l8Yy78J28/bV8clzxsJAiGL4xkOtfFaY0xZmxP51SNIxYI
iSafF94EP5PUtXUPmcZiusAWgnKJa6BxeXk5R/DqOjctN0JDw/dsbX9TRXjB/nJFdtpdz9pqEP1o
Lr7bqnhB//TDDIqVGlAf4owPtn4WvqiRXOUXO+o79r8JhphDDzkjhRuuoGTcaDHC5Mh+XQoKxbRN
fq2ebXB2iSU9EQO4lBR/l79AVNPuVqsAxNpEYsqKJfrykSBaf7fn3PJ/Q2ngXdV/DVoOVioVlfMV
0+KBVuXJ8SVbDi6jvEszZys22JLayAcxekNDTR9tqnjyUTeDiCoP4yYk0QmrwfBqGOYcylnsG5n9
T7ZYepyMkaIu5+wQS5EBI+kn4wCw1t1OLgI7+W6P/nvIilZZwBIMLVLExHBjn2whB2MfYwMV5l7M
Cx0y9EbnoSBm1Na3eZpI5IoLz+P4mJr/quX1mYO8ckZBnqZPTf4tP3QEf+9zLEJSpwZt5uROJE7f
hSWncoZMrjyNkuJ89HRpHzPP4Ov9k4xc/uQHqUypUdJoCDx4x6NzM3k690Eu1Luy8XT9zSwGfAYt
E6k4mFpxCh0wylYZxUxB20hISZBZolajcyDx8HesZZ0Pd2NQu0u7PB8bIpXggzjCqOtSMYckWJDM
q1DgmmBei51mZYAoGsjLngqTkoK0lCgRiHrsHncYMkXbL4vbvBcaThbTwL960kaWRQaxn+KOeyae
7/j+qlszItRut5PLBKCHTkazzUHQKd9CtZMPj/bFh28HWfuM0Uvgq2YNJ7HjgpE/bxobDzPvoGha
lYcLmXS3pAU97kSpvHRwpzL614N5ytffEAC3W4spZ7XpVezeP7a4tNLMQHgKcwAUk5+J5Yf2zIw3
W9rg4I+tpAu44F78/NQ20K/A9WoBkJSoyCA9aO79Hb53KzibNzta5QsmslWoyohuPH5fHzOpggfJ
huVxaK6iELQadfAbR0Blndcy2voJ/czgNEhFEqth5tr4AWloxuS6PeYVWQC3ClLLdN9uBY+NU8KI
MU9zsmguh71u4tdpbbsftz6ksPHR2mZa4AWNu5mRy6c3sChSFmkNoV9MTrwbNZqu6lv3vCjb75XV
r1GHJthSTKSlZcM5YSc8yf3xYRb1kUignUTq/dafj8GERO7xR2GEdMqD39EoF7shAuZ0IB4u4Yp8
fowLIu6C4WHLCapewymVovJsgImZnJTLmN/WqJZ+3ExGICupnTs+ZB3rJLgw1cnYJvYmPV7ciFAk
HKwXrtLfD645JD13CXmigk0GjC57dURY+08x6sGqecyu7uALevekCzaq9i8mHz7DWhf4gi01wW2/
mq/xXVK4uKMYfpy9BUzqHby+jKzFlMxNo0FmG3sxGQOf3xS5R1k/pC9KXHhThCymNebjNBXScI7U
vatTc7xBHuUS4Al7Wa699zHOZEvHV17vZPL3cPk6ex9AfM47aETV2p35YSzNSA18aCf49jQfvY9o
uFvQ5xVXmEOTQQB347ltO1391mhpt4io0fyTzmX3P9vd8f8hCM1FNRD4COesK1UJjFZlD4WJoAOs
ge2mghzdqgVjbovtopdavgoKozae0+80qqTKK6aQ6+DcTMDcGKkoPPm6c0mBO81jBITYgn0POrTV
s5iVpBWpn4w6BmjDhcuOU25O6IkaM5w8nZfYsbXuAj9GsKljabQjphjBtIcUtGgEEE9rk6iKnJBb
GRKY/Qf6GILCPrE2Mi0a17LY/mVygqizoraPIcVPugTfSqGBM6MDBdBWpsTe8UEonj6iUEOnxXGl
ynzj6OKD0NTP4R7plsYu3NXezE0wGFakz7OjzF86HWmkKBu2Ibgpqbw1tzXNV3uUWItyQrgrUQnA
rGlzopgCCXn67eNgaT91zB4r+2/FR3r4EZLlmwcoVYADeOJmffrSwIMYZ0eREkcedqn0MbLP+ULD
ZoMHsEPQQEcVeFf02ToHMlJa5C8JpwZ6VivnjtNNvplBIvRDTWNMKW58g6PvKhwdtMmfQcBuleb/
+mA3vpphJPGtEsQThaQq5L7/KfmJZdgLPTKmvV0rvAtIiQDp7Xsov8e29TClJJePNbYZUsav5RMu
8umxp6NC0PL01XmuknorzZjwsUxzHDDcJOFzcQVfVe3NnaSAyb9YS1SxZjJuvkaHZomKqKr5WiHx
AtiEf9IVb3TWfNU57na/tIPxltuzgpWrG7pNMYTpZKqMvrKF0A36n3x8c9uUsuNCgh7AsBoXlCNA
RfI2JcA9Qhr5w4GtiplCBWbVgnNd1Be46v5YUFnnYK4/PI1h0fa8nhCTmoAxBbIcLUDejpvhGF/E
yHQ+wysfFYGTsy+27g3gofRn11apnixOO1wr5snfU7Jnq+ktBl00aNkup8F48LNxBlohfhDOKwoS
MFCWJhnwVb3D/h8ND+FEDTOZNVGw7GAu0WAx42chw6BdLk6Zp0ry2gGwLxfWe826aZCdAIzL7s/x
vEwcChd5R7Re6yoqD8+gC+A9AqnGquGb48IGT2aavo/OVyBq1y91po8UKLimNkROCqJU1SAv+13F
jhuathXgyL0nXcSo/VTVXihhVqNKFKk+k9fI3V2dq9ycDGaS1EZqdcsl47y/seQNNToJqGeQE+V9
CVuFM7/6gShD6j0pnUBVFh0iZv2UMymyCCXJ3fhaUeS6BxsPH0sh6ioDpVxlVIva4V7qnJYYj05g
GWK80Q5anlFqI9Z0pxGZvHVnknlRATm7jhB/JUrt6+TzDld36/ni0CTA5i9Ekw9KUsQ9GTLKOQIJ
H3xQ+qTtuI04zBrYOIgqGVUNoRd1nRjZfBb/4p5yj6llPdbmkXS5DYrBdeT+Av/SUYoJDi9uJgCG
LbLU+dfZ0QcZ/yCgWfaRo8Jsg+7+ZS73s3DmUTEzcUm4q9THG0YcabzcF/4LUQARPu8tFm+DkP8u
K96JjOMvNgFHxN5popOoPzZUUydXa4QTBjvuCMX4TCTaUyOzGQ8gSfPD+J/twPS1nuGhAXQvoK5W
Sk40DZ0TEKpI5pBCjtcD0Sac66NcxU+4Fal3lMZdpTt99IjpizK1WRQMgAyBu6OgQQozk+/5rLz0
RSabQbZYMtVhxIR34mz2bLX4s2h2un43KFJKXnQCgnUYFITMQ4AevNUxf80e7Oiag7K0nx60eA2p
BQLV056gIuti6Oc2xnPzqjf0bAlBA4nuoyU37s7e86eYVP0brmobzUb5jw3oC7+rsr8BlBtAtP4X
IrOdVVeHcfjnS2rp+FwAtb9Lr861Eixt7Xsv18xNbC9CMQWNDDGDi7uRPgLFJu3MuSiyQqaYN9fc
nHed9ZXDucIk/fMWuQhlqYdMrS0JFdE3Od/2bEQp4T6yDYcGVbmrq5h1cetfphRcjHImO6EVufpQ
ftKos7qc6cMUpZCK0nHmvz0oo44oQfYTKLGS787qXCrmtFG9N4Jdlu/mCYXS6uFgGLcMS6QneTQS
FgxwW4g5mQD0wD6jLlcHlm+zz0uf5SKyDzkUQQ9Xf2PmuQfGnWfyJqQlDRpKy8rbhKu1ca+VGYsS
hSBRUxhUYKMMyOnE52zSbofYlT3ChWrY5XcUsOjrivRzAOgdXUokgVBuIIkGr/uk9yOrF20JlH/j
afPYhiuMDENS+uoUJsBG/GS1es6J49DlxIyBzTrcwLb+GO6nGdQ8Oob4uZuyi3yRDaz4YkOrUpHh
/E873xcpr89n+nhm2NOSoXSLo+idQLriQ5shgycD37zW1/Ye+UkHhG2MJ2Bq/zN4RxrSrJQMgNyc
7vTQlOAeuLU1Oj5nVbK3tXT8sjLLcCeJj6p/14Ugh+PApW7ji+XboWxw4YxBBJXhnhkzOkU50igM
nUvQcwzVOi79MmWE2dAQsd4M6MDt7PJjPhrMdOFGcXvILT+Zp+tnByvgkgd8s+jJCNnuqkHU4aKK
8O6qqM0lgUBvNQ97I54MXjhbbsAlQn5ioMGN6v8TyZz+19meb8G0FB52EdlS7YfmW1y5uqjyPb2M
/cjkALTuLdOAEj1M7EjY+RKgfbnE7O1zOtqMxEiQZ+u9sN2GobFXdM/sR6A4i5dogayBOnJHN72E
r0qcL2yww2/wmaZbcz6zHJaRMkpM12xmouMrF8C8UKO6y3oqsf5YjaYZYH3ighlfh55b/AS1vK8u
fe1VixhIvAwpSlwm4qxurSgNBRM5qP7dHdZGk3BYC/asjXWOXcZfQrRFabAeK0SaxgWn2AEKaX/7
kjRNyDPk2P6LOogbsiZ5hG+AHXFxPq2LttVou+9EApPcvetbOOBZcjFEaiFiJSYFbkouIa+jPRQ/
9He8SqRdeo9Q69/4YdMdPdY+Yn2tk4+IwIyg6GMeAEfSUYvXxa0TM7GdBgeia61q7p67oBj6mJl5
OmlYLV4OZoe8WAhlhdT0WlaNLwdIKgcOpFuG0maZDwim+2opxSn1c8obE2Hkr+sTaC/3qPy9xcCj
xZ+z4FJl64SmsaEZRz5Z/wHgVON4LyCLiESz345zYNj3uhk7Hat5Kf5MTb5wSOsjCr8w7R+NoHS1
/4cwlqUVXX9e7UBdOR3NdkcfLR+A7lLnww/Da8m7QU3wlfGB7w5ionab5vlNTDvJ598e5hwUdlEd
n62+N1EBQun6+vHeLdYI1pD9HrUOEdnvaLk0i6R5WiEdLYwC6GpLk9r9CqN+wkXb+rs6ZF0YdiCt
Nsgk0zC1bmFvPmp/BcRreZDdThCULTTymy3vm1gPqzllNU2zw/wMYA4N2B5zdvToSv5Q2eUFCO9j
ox4o9tZ6TGRsFd2hU5rnLqNPOFVj86j5V1LS4E2JHpUjH0fcI4fOS3ht3NdALzDRMo6qadXG5S0V
sucJ0SGsGfjpznp4kL69lYQQTg1r0GwzeU2AkgQOe8RkEWPZyh8FYHnkLOiU18OEH4R8JSFLwpsV
7xMCxaJDVtdTf/ZSnoTrCDDkWAzYNzzUgnn7M23Roks4CBeryFfGsVO07aPe0KyWoKpcSYBrigFa
+NAXJpAXF8EWgKnbLvYUODAyWqTMc2PpmFuNdIEIsRTU0NwVFOnhZmisnvPRGInJv1LvXxyw+5gA
ao+BMWjssOaDb30tjANyyiCHg8w+OGZsPi5GuTeyMXf5d8vJNLiUPhnPmREuHX6JOU5czHxwlfh4
CYayi2virLROcDPJHcqm1s2ugve79Iy8nJPJJxOOjR+k7kabU8VkwiBzt8q782tWJKkSYWFRJb7l
KY1YRTfj3p400bYg+gJg08MAWY/+pWPjODgYFbErSCm97IVCAWcfaBylyYCmxqhmY1Fe+5h3zu9Q
6TAZ2+U3335+jlxZbJeD1eTIQ4Tz2cOyRKZT39TdjVdWJYpsjQj70A30vlXMMRRxl9LLbcgnxD0j
bw3uMX4WYrYlhO6eatBdf0WXWQq1oFvxw2SzlLIBY/Q7m5N4hwEab195rAM1Dso9YvYiqyhOFvnh
yHPp5MCu/2B+pBCH18zxcB3jHbxKp+ngSzRKOV9W7Is5W7dBuexIInxoGL5/5sKSFslt1dd9UIS/
EfBQztieHzyavcjeSiQWPNX2XEG7B7W0sz7MMatg4zSMWaqLL8cmQT7jkZOoGpe/ck4ddPOneo6v
BHSDEmVy8Nauy0Ciz6wg6caDlj9Wl9e60xeggkl98a3VdmN19xYItC0Kj+/q2qkW4mdh2lqCK6VA
aUfABUzRLTOJEiMNDRaSfG7Ial8RuXprhXy+nmxXmPlNXF3vJR4JI6tS/gngNc1leQ9hHkMJTIPx
wDo0siNscDBYKW3ugHlYdKH+Hk+GkATPDo2M53QT470Uqfv2pNDimLyBwbYKqJQqd+Rg6aj7/spc
3X5KqueAe4swt/TGdXDGf7ZlSFhyXhioXT6BBzYzTioK3xhXrlycf3HQeMXmPmwsLmdirwQGydbI
5v8ixieVZo15ufNeTCG1K0P5gGpKvrCLVTqysoqZoPP3FTbGp3+zik4UM6ZjGJA/e3+UD8pQX4qq
svPIBSv9zd9lHxh45tCBFc3qD4z6aG45d2vE4fN+t2xCjuZ+R3lrl/dShEVsGiZcq5wrLxOeQQI6
vjAHcUo//fZ2XYh7eamcM2SzmLAl25p2Q5baSAbx4CKnIo7oIF7/cSgUVt6KYpSuo1pTuIEgR0im
qCTCcFJKcNWrLTpw/qcs3aIwUDsgJ4IEOhKDSAMSYmhv5rw/Ue3WLKhz+RfPmD2klnSIxQLz/FHV
KsqHl8AQxOXaEvQ9Bkd5bcKdUIsdSlmWXYi51JpllgwMXarSK6NMK4207iScREnsEbDP4Hf0IEgR
yglVraYE4jATpkSQ9ugg+SjJHLyFedQqXEEOMH+AybEuTfiP5V1uJreO+rC+KIBGAZs7n6qjlfan
vDA1G9Kzs3mjut1osfsAUXvE9b9dhzIAz6zQdbf27WuhKuy4QMOl0SmQirQqkjO0b+QfOEDb8LJs
j+xpiMWLqP16PYTCCmhMTuLcH6ECj1p06M8w5Wst2i9Y2fG8gWAcfv5IOPW5EEAJD/Sk4XrLuvt8
IzoJg5KnpxLi9d5BD69ev0ME+ksVc+Zi8fKBq+VRJHepFPfHgwqcWnvqyxN4s+tnKXq4+wZA/aea
ku89QTdh4YBKmuulyKvnWPR+VAZNLQezv+eNIsIeavMK6/0xPvhyBVteWHh99buZo9MPHN/EBmUq
RiviFyCVZH7y4LWv4yeKarphitOIs3YJ7o6yv+AY0f2JPMTMAbiMNWLciSkZsB4J33eK2x+c5kRs
tLKZjTIZUqmL8/NsfFmoMABmrTncKcNxQYIeFjQbW84NiSN0c6wvba2GzfY52I1RCPWpWF6iJSwg
BHs7tA1OUnV3s+vBCVYE43iybXILpI5FfawevaYDGqYy3IKpYJ+Fozx+0nXQqa2gyHXm4c2l232p
T9gX875QrC3aMzQy9mRmJIlqmGwSg7ClHUAb/lbkfnN/CxLMwEuwEQzETiqZdGbk0gc8pn2C2PTL
mddl+HNQ9r/dwAnjKv5DVu/86rXb0URLy9wWGsEIUYacAVUOvhrAyC3WQWqmFa0VnBeGkRmz1IMJ
7ndtd2F/hT4RTzvJ80WVm8LGJW0tTX3gPvmgDpSS4xapczCPrXRbzreC6dmzsawIQZtArUJPV9jz
Y5qJArbmBeOZZ2D+1e94SILBo8lAnbayqdDitgykDqfNpSp5krxscMQR/PDq9FUas4+Qsq/UkexI
LiqphsEQtymIN39CApe48d6QZaRuDueeJ0/OFCEECQrUTq+S4CRTp7uPMZ+93exCwWjK/tT66kGf
/WUPPm1yYLKk/nP90z8BaMY9xspybFCerRoGgASn0fOa4dC5U55Gr9yDR1Welu+zF+iRz+5NiFAV
Dvza5Vv11Xu4en8xvUy1zeVbIjkEllz2/AF5POdPxjewySM298N+XhpF5cSenx1WgiGhMJTy/KbQ
je2wutMVuxucOMTiDAO6Y4gdpRx0x9wyi3N9/fHKiaV+LjDjrdQFptxWaHhSlc/WqkgAA6vsK7KU
vMX+3aj5mLzXt6+OPXGAgLTDRWTqp/bpQkLv6Fc8sF/VeuvKoPDxhOnCFErsUTStB7JTmtevYkPz
rmd3H7+Y2VIfIV56WOv4DXB0vpmxpJQAOQ7h9+1qH7Prtdl/+GsKuQ1lmZZdUZWLsTsmPL3QRo/+
cH0gmo6moajlvISHiB5d8R42Szdp0+FJZbR5TeMeCPMM/frEfzyIzc38rzRKyv+e2WRphXcecOEG
+D42H15p+WeSjUNr73pCUVwD/D+xZT5aYakEeY2VMinTbSaub1IbFtNxDy5lJ3j8Bc8yKTqOUhOP
4r8p4bCVd3bn+HQ6AhlVVtdAWMDCofUEeXCRLLEpOW6LfUzWcx9gjOW1I7g2Ezsa4dszG0f1HQZq
nGUkuXLtr+CGsat9C0GqR1YreQfcyXMrJREMo+W8z+FKBKdtxNIJxlcroS0lJqRlv8ygNN66GlP2
aTC/p/01piE7KA6+w3EZ76MLHzX40JDgFQ4h7ndZmVYw3B2jD7WFBpLgNz4nWtY+94T3F9F2DeFW
ya96NvLddyhAh1O+K1MTAwExw4wlv0K6JqyuRGR3n82HeugMADVLdFlrDUh6ymeexOUuYT7mmRJ/
C6Ht9RqjWYDXy58xk2P2ecLA3clEu3h8BzQ7Q0oXgujwYdTH4Q//HpaIzkAp3TEFoaQB86BnZL49
UQq4Q0/2RO4YZAYt8UL2hybyxE2QHE2ITMKAUljQryx7s3CeGebORdqIjY/hyE1m1D0iVZ37B5UW
WiKvLkUpl4qX6y4lkA73Zx6ajjbTq9u+UhokKTkj8MWMk87fq8wlgKpAce26oEw/+TUhjq7JvV6l
O4D6n3ixGVfnjssNgWjw2V1OnoSw5h1AEjwjbO/7DUQxbWyCWQ/RNHlzolx0tq5ODRTCIbctVFx6
4AyK/qNTNwEkrkb1fRa7W+zUrzKoXts06g+t6do+W64H8Rh3xPGVa0cyT+Ov6q2aTs8KLG7V5iNo
mV9uYHVzrzn+lJsfUHdYH+SNOX2TTNGfYSpQ6okJm7mK/BrmaxVygdHctdvSJrkbp2Idp2hQmQuF
fKEg1SAkpFiPLhMrz6dSsIAHB07MumeiYgLlmH32zDeLfuwL+c6NT2y4lGoiTuXbn1+vYi5H8TFs
Toi28R64aq8icoFvcBiVOelEMmfmsFNxYFh7bdziybmmpzwiggNd48Su1hDmqUigRTYsrIh1qhY6
gerbLDrraXYLNsGTnmU1x6Dpk9hVyVJEjHcCwy7RzXgMMyrwvPpAD7MYJ1o385QqunJO5RQz4bg+
phmFG5IIoORPBtQWt1c/PVqC0jxrJrlXyaDCDSDwHDNpcxn3C1rSyDZ9t6Qt/abuYZZMwESogl+H
mbhDCVRwJzYUGwlxwIVakxCqi8IFcoOqnsuNBUp5fZWLODpvMevVlapWQ1/nZj1DN0Ww3KuhY+5g
3+HF9a9kWMe+RVcXn+MjqH7g7edONp/wLrwDV3t7qT+2k4cbr7vll5cr8o65QewfLwWqa8+9nlrU
mL6pKVm8tIy5IpEiQWib7aGYd1o1LDPwdLvceACPOA+3A5mtLsXjL02dMkA1uPDPxfqkLs2dhe1a
sLsYPJENZ09/1c1uvDlRc3QHCX/QdWSTtJJeW/C53JU+L2ts+/jDvEygTMJRGyzbNX3BDwlccMi1
PeYtSvc6NtVlnPvjSysmHzPsIiwy0cV0vvHcwgwWd7HFpYeQzAdKoogWd25q4W0Zfo5vwiR3X71E
99o4OeYtCr+EiTvoFuANx9xQoQHpaVgzP4Eg6MEhEZoMuvX4nszhJTB8gyPSOeyAzL1J1T5TWrdu
SfXpx9T/KFxhwzML8qR5/ygSUQTsjn67qAxC9HAxpC6p38caUDzGDpxxPNZbcMiLmyLULAButoAB
LpKz/mk+0gLPmvplhJAz0o56Q+hjdqpmGdJZV73yzIYr86H64hJWhCF+J8kfzKSLBhTjDQ2EAiyg
s0/J4P/DUkVm+OzXWJ8OObuf7BIwmGBDvHOhUBsEf9nsoIgFGSUr1Oat1KNsGwo5rGBRcRWbOnXg
h0AIQZVj7A3oAr7Ld7nmyuVJOLmvqOFHIAzQqqlcUjTeiN2q4dQaPS7425Yj2EteRvwjj5G+E7pj
8czKeLzx9DbjtVLQBNNt4ad5ejMn1rYMz+zU7VU5mJZm4xGa5z5gnT8feHxIl2KEGFZZY1UmXSSC
6E1H0e4/XBcJm6tzj10U9lKu3qXHWNPIB7xVHL8LPCzodohzHKj6LVDcI27XsmdZJL9mRNYw7DrX
C07jm+3Mtw4hopKvwMftkyTDUZaGJKl/r0GuPpXnJcpgQ5wUdvkKWE1+Ps+zQSghCZwP4nHQtYpq
+1klk2/jNMEv2V7f6/ItURWPAGqobxGUXj4Y1tUeeSk/hMT36da4BcQ5Zl0MCuwDyZK9GB0DLcOE
u49WJ7rfqSDSFDxAZ6f011FTMyAIEUPHTgvISyrUPeqSKG8LRjdk8lpNy9660Vplh5t02v0jBK9w
QR4CbqvXKGwav9EE9KAyuzsWcIRQcYjmj5tQ4ALOnoLHygaZT8yRzjAoNLxHQnEkNlNTSw/Gvj5l
Ptt+QS67CSdKybxET03TqsWDRWiLy6FDRhjUP6S77rYdW2TtfAR4hq6Dfi81zwNhLHq+/Obcg2HP
FB1lGmVZ6SX3lvNqmvf4Vuic+GkFcNzv4temSdLN7k023oJvtkT3DL0CU47/8Mc8EMJKwI/yx141
IvzMK9XvwCuJiXtVqj6vXztuJ9ZyBXbJT6i1OUtInV4sRvnVlxtgw4UltCcY7Gpkj50IIjnPRFkw
gr1WNkJooVzChIe91Lv6ipNqbn5sf3WkuzO4tcd90JiIP6ytbNnYtgfpzgS8i4LIsE2ewEdNaE1M
s8aLea2gFs/zaevr27VQXchoQEm/1zL8cnsfsVUeXN3Rjglkocp02+qsHDaduPIpphx1iKo/C7HD
FKDJ5VkInxbPHz5wpi+uvxW5Z4jDDs31dMHZCNSpKHTf/Fw8CxzmVRyt0nCNl4AwGKbaveh60f3K
H89Wz6YH3255nngqLiE0L+k9yNUbf34jNwyR6KMO6XtGYq3x6fj5GdpcBMRENE52JS/6dpXelkVa
gp79yd8GUB1ESEvE16oLznMFool/L3z6KqMPq9WuaD82+YRKkAb+5SwXA5do58BXYWrs2lJe6Shu
VNC3XS9P0mgSCPvvtW4msblgdgGoG2wi323r3VqV8h5gBY52Ue9tfI9rrCyO2glc+KaJrbYieKry
8ZkN4WsLSKJE73mNMUu5CKncgng/l+By+K9LnxC2mMl//PW182MfH/Dx1F0mUsqsPCqGLKN5ManB
Ha4VEw56DPJUXgOtDh34c/cHiAydca2C8396k6NAEnlpU8Q+/20I8Jti6r2Wlcajiphg3a0tBzqm
ChiqmPzOqQuSnuSuwK8i2CPxXZ/pwWXYP76r5YdjiyX8ZK3elm99L/j2Edvccfd4b2ZwfQNTN3CF
VvM+05dkGgIVlDihLDHV61HOpkghZN7N0Ta8twzR7R30OFNS/QOAZnmT1PrRAHylfGinVGrUdGF/
GuepGyNlq2kzel399m8gzklFSxVylNC4SgZcKl8gt6rHscKgmkerf+IGZUYWBcl6McHTnJmwNPnO
EWIdL/uTEpQBf74szjDxLswP4HpqjK7612ljmZJzMoh/Z6tVuRgDN6EQCU5vQhJyEVAntP8/y/xl
aTZChG3Y5/U+Gyut1qx8qaCryoBY0JiHt/4Jgs2s1pDYf0fOz5THlcL7HBlM8BLBX8ArJGGG2B6D
vBz6J69/Y7YrjFdhSyrmnq30w3AXQ2DqYsR19Eptt/1woqzEw2SwIPfwn/58a5w2/rHGd7m2UPC+
QmsQk+/f8YYfmoCD/VPmy1gXqp0AMh9jzrFjZXw0agIafITHrf1JmKNVmdIpCUHVZ8M8WIpqLEi+
GAn5qJ/6Vhtr5i4Kww+lauFY4tiWU69ob8na8fRXnIjmt+kY73s7vO/Y/hz2MOVCucqwZCGkQ+l7
wlU3B/GDyxX78Mcv/PpEpbud0QScM2MK9pqumg7/IypFAZ4477FXj6nIVyapmWBOVsCrM3TFTuNa
dcJ3rpmrZkW0qpgXv+ktobTKdXG5Ihyc3WwrcwOnnoiPDUhXo6Vx87gtUmRKYCdFLfKtyz3HqTcW
+bTxjXG2bFXd5H9Hh2dLmBXSxwTKoXOuJyGSpKEfkCnZj6wH/dst8jC6fThoz3kSLPLVBPxKoNfE
CtTof2GOYDTS1yu5xi2YX9jhDcr3NPsDB1bu/hSJv5TzjwSe+dKU0eBL8BZ3u3MY5b5WhwQFgRvU
5HyEg62p9ZQBIu8Y46N7efUIDPdcXQmF5/4CfmeTpPvCZZa/WPYBDsQrgTaRrD6SYIaEG7/jNTNB
CAmcWNdQVk2rRW/HCYQuO8hTDO8tE0j9Axz5Nlo69RGrCHI/bt9/ZsonGzf32nsxKVqoipr997F4
1E4Vir9Kf1DU2g9Ks78r37/G3ssZFxVpPFLBR7ynXX03pjhqfZxzPsVAF2MdRiggtiQkvs53os2T
NuxfKtFYRNNyO/cdrjBGvwRGEPOyuCE6b6i31vWPmAOrGYjCpvk/rDk2baYKq2elLSnot8WVSFMR
AX4DlDN+BXQ4ttoYiqY2050c0nNUaIZosP4us5MizIQ49HqEDyFgMfPO4xO+O2yZcN1Tp7ldM2eb
5ZIc/ZC+vJdj0GT2lOub4OfhpK/Rg1UG6K7VfxoQVqAWlYE44yagLcs9MLqHfVeE7sRoTereIsxe
twkapOjHQoNEcoxHjTlEhd4p7dE0WCXRy1G/BX8pmAJrrHMLGF2ahShKkRfEBnf7SrdQP+WRyuhh
GUcEznuSe8TVD6nDI2sST4Ck63EEZIkZlvXahd/jwAReJMwLBd2+vz9hs7z8CI8sA9+rc1wfd2fk
oVPgJerT/390ysT6iozH5BzfqNRcTxXzQdDlAbOPGcrqloijC82kX1F+hGxhmnbkthieaPEaEnzi
STCvAj/MhkP6YCJ/RFJAOIc7INTHtqzIuldj1tcd2C9rAGXmA24+SqZ9K1aSJXh50RxHITs+ruPc
1U0rO8Hx322oPzkIAnVeoh1h/YXdKgSGd38zldjrqgC8ZOwLBoNngE+Kt7BWN7AXqxVFSMo89kz0
qf9LE9Odx2FseAJ85fOh74uAmYcsP7D0UtGk3yFTmptsBI7Ml7wOqnlb4BHojDfY+cLuNAxpEJ6q
ODMX2VbJOSxkpgJJ9ZKrTdbfpkSc3V2nx/RycqWsKaQ/sqQ5RaFg6eTx/UsP66LycQLrByvAd1Pu
WCHt2l/vT7ZYyuwrF55EkIV7eZ8rgQsIgbPfSgGO2ACHyWPxyIkF+1YNNN1XlnM0cN8YZZDXH3Is
b2S8pMGwSiE8jMfTiilfQ6zPtZ15XWjPJ7E6J0tUFN4kd9Jv3tgpkNSHxOp0gXOYf92CW0ItllAk
AMhvZ1Vrr/p+OPQW1lbJCmKmIMov+7pMRv0zKErrIX//Sz39dopV5FvSR1chBtnLAwMM5mvtQwCO
WYkEreDRkFkwfT3ODjlRt1+5HZ8zMxfHBDvl3noHRPEq/nvYuhQ88ZT88M013aHi0w39V25ofX3A
JxmhiyXHvvmgMxCaAdx9n9kDNgvY9yUsMj2W5ocbFg7RChPczzizILbZjZYhDWUtj6DJZ4YS44XD
8Tvr9mpbc2FQAk7quPhAuEPjL5bmp24yHhT4mepQni1QMlcIE91rM9amEHbrgO0pDJ+wrMLm5syc
+ec//GQVsONePNlxoKVQvHCmuLMUCHmojM6e8hyUeOIQvdXrK7U4hcd5JWjPwe6Z605M92Sr0+bp
QUwbumybQTi7MOPTbtbMcBWF8Q+nMDrYSaQ4JDFWiFiVj1pPG4b/+M9ipKZ4TXF7y245Jbyd0803
28K6ak/is0G0DJ+D7GXun3bUT7fBfD4ot5fiZsoY/C4Qq1NHODo2UiuqXpl9fszldo6CmgL2SIT6
xN7+oM6n6gV/6oXphYYGib7V7Hk4uogLYDTO6XUW4++Wqut3bFsHQuzMS02BaGSbsgWqmJqdUfzv
Ylyw8fXTgUZbv6qPr9pL3niVHcPgJjdwfMF3KXqK+7VyZkFy4as0P8TCfp5Ztmx4Q73h0w5Tw8VB
0sSe2WoZfzVipH3oZGAfwz8aF4zI6zSwW9YachEIEj/+i1ccmFrrYWKbL3krkG42b6Kr8n4TTohv
kqvmoGYn0h4+CJuhJ7/h+rRrY6ktD4zhFY5okB4D5qW+DP6XqN6Mef31ViB1KDrNywFnM8LWn538
xk0zi6wTDXC/NWbdqmC9ZewxqOgcRf9hrutYFcDDxpeYU1I10/BrS3XRzCtRZXdZWouXT9Zqz40L
RTdV2JYP0hL0RSIAAWHFEQF5b0am10F5b70I7sQ9gZCRIBufNh6hbI3e0f9AWMDTA7VyFusUmwDX
+G6OU7vj3VJ6VJfxf9lFbbp5sMRYhBq5BTgZBg1WmmFD1doshKnJrqZRUcahpMumTolx6STXpB6I
e6L+S5INnWriByz0TMBvVGeZ919dKs/NgR/+K4/yVd5vfv7kpHWzZ/6NUxelL6oqX0P/UtxSdkfL
h4rzso0jIi9wwueZhEJqZAb3Jn+Io9lPv/9oid6byawu/DQw39M0G/M629ZfuICtKIsvhVQDSLFe
arQUlrJHmnPq7LinS12byBQlRVvBdhlrFa5poxHuvfSBXZ+J/F6Q3YtciFhUpG7Z0eCO6f0DnU1S
6wAPbHHJK9h2aU6ru7q5CiaVkfdxPFN3DcE6UwfKiHsbH9AZ+JSlXIH8QOSvtFBHOBP1Gatkc83y
Znxmr/Ur10HtWbBUxGEBZGgwB9Q2haYOW3nW7XgBtAdiZBQ04s1d6wcez+htzL5th+IvdpTCCFyY
4TCuimpRXmYnfHInq7JtV2A+pYPqeKMNMsuKwWL9d3O/wDh4S5p+U3EYf11p2cnrVV1wowIPSRUG
CyGiuyOlD4KJEpD9VTc8DwS0vB4BQhrrCMbjAfEE+4Nl4CAlEsIwFDeP4hlntv5UWbP1wKgIpOel
aqKlF1y67eiJJQ7fcnaK8yB1joKH+6zOlDcr1icAf2v76UPACWeyaXJ7NIHQcx/9v2HIjKKT3GYU
zF5ObxYBaWlHZyyR3MOANYBjccZYuS7yroxxH1KeVEhnUq+lis7S6YzM5KInLw7rQWJcJ3lGe7jc
sz9nPXWdOf4FOKTQkbZ2esWTvhjb8iAd7A7F2DH42+bZ7LfRd3bm20jq85d3Ms2EHTx9V6EfWbYv
JAWSoFXqvgokonVjLeAu/sdylDw4yr8mv+2aKGW6XXvV2dzcPuX3NXKaEOZSx/ABLArUPr/Ldr7A
jJHpqdzTZdj7bqRdYcWlKnJN3qPqfukdXjlSLNnMrjVitYo2joUSEVTuctZGSWVyCTQNhEmohxZy
8fn955YYqdIOnbdEly525qE9fRVHjrVU4il7N/LL/FXXsibVpFokTPGGTKjjt1lDi7M8jkccb0P/
e1vN7fQnDHxcBh4Fgp1cNDjkl/TOmZZxIoXh6R/N3QQhpPVZyFmWJDXbGAtiwWdfLeFRKobwrxAT
SldmW56eGSoeVfdai52em37QJk1TD8gLz8jqcghZqHjVp1M6/Vf+DSKgkHBYbOKXc0K44HmzpCDJ
jEZZZJbGX6zRYzmW6DLalHv4UzAUwoyX877T7vnBDwXDRc/19TTe2SetJCdP2bV+gC5P5KudntGm
KADYD00ff1R1MNLKlMJdBBNDYl5EScWgFabnZ/n3fY0uV2STRuweB8BOhbilhvlP165ACC9tj+HE
gRWaRvIafjcoGuZhwxsDPJCLXVNnX5zcah4s8DmEtX9eoa7mrrA7aLoka1Wm1jjmBQdHGN7dWh3F
tScaMNecN7pa3hOQBm/Z1YJZuG8vGhVfJjkYbp2JZEzi1ZmLf5u10O8x5Ltij3kDr3qdr/rL9r3u
kgzfo9ZsWYg6FD8/E/AQQFAd0cPKbfrNQQgbZar73Aj4yoQaEuYRrT6MZs48Mvnh63pjHZ0AfCHc
N73N2kcdcGpB90ZDe9puedOmxPE9UjRqtf0Dl+l6hmKrHz/sUHL1j+fmr8zpPgQlN0Go5Mkmocv4
Ue/Kx8eWZP8FgWXLev/FLyPDBSa/AnunAK5LjUbePcQjz1fWVANXiQN90Hio+9ZZqjlaWu4s1j7T
KG6S2vWt/8+eupMbbf2J3NGFxgydRWmfuowbctm2AeVUWcBhKdYhdZ6/EXVMLS9Zechme98ckaGi
fis3ofchZGvGZszAguRdEI/58gTzJb4oveFl0LKbbWzjSh89qYerYYjGqy6T+xhGn+3IjJy5gUSF
IxnaEOeYCDd83l3VDYQ+31X+QN5H5IDdVSH/q5f1nCyKc2tXjhhOCEFD8iNB+OQDbIpi5VVBB95p
J+maI/FR+5zl+lOlOp3CFXkNCMOhiUV+5YxnD7I838+Z8yy7653pAWQ7HvmCbL2g+y05MI2esqN2
QqR5CZ4dZnWS2dNofq6JHORsRA1TmDKdlRWFq6Eg073c4QoJ170nvRov94db3n2B8T8TjRm8N7hM
5pUrCu7/1Ehab7Kr+Lm03bqy02wNitjeL4eKMCmTbrYXz10CCL3ii7acPI56egnX+lrG1YIJT0pd
b0TvHB+YTQHp7zJeP/ELbf9eW27n7Y3m2CCCwHPkF2ZGAGeGshtPHEZGpegPfj4UTIGJnsAS9fLd
bcso6OdMNYRtVOspDlEZzGuIb6pLvdD2pad1UXlzi2hYCVpuc262ihPvuA2nxQJONFBs2mbi4GwE
0L3ogsrQ3YDLxwpyYKkRzSB9s2YuJYhh/t4X641Kis5vECq79Ecii/N6o9NujSuWCSWcNLb2QcT8
L1ZgKulIJSyXXFsyMV+WYgJDJXqsxo3qM2avbqSfNZg9uQWdioBBZpLP06le62mr7xxl0CPpmZzR
fF+22c08D2TIZjILiW0mE07d70eyNQNuSkCw/OxpT3FIuOIDLTd8VhOLnooSYaaIctklG1se9kOF
akmpx5WHaY4zqobJSfPGddpxfVnH94ETFyUE0NwbRfSOzmxYDW/bg6F7tZ/zmcpwE/5uZI+dR1+7
SQc37VPgxcXTrPdcMfo3t5DR1DzQP4QvKICuhK/7/WkYiZ+MUB0BJqWIE012Vd0cOEFWLH/vhlj0
DBZErMtQ5OGXchRRAumwUgJ7fJkQBra4UAdo6Ub5LQqvUpe+d2Rzga4FDYglrTEeAqy6YjdjDEbu
qkKlGRVDrSLSvsLASoADebCz9tv+/J7rP/4SWo8gy1257FByNe2HGlZT1MKCtKop6BHJK+Au5Qu/
oXliGurJiYbVyauwpe6zcK22AbJXGTkr7RmINN5n58XJJH219z/8uwp9fIAq+bC0iTSon1FPP2cJ
75pgd6jVG+RTxOcdiIyhIi0hc59m8UyI5ZpUUZ2GapobDqQTUBj8SMmMDkSnw6/PyJyTw31dMl6k
3JuhcGdtDcCFxvCxAa4W0XAMCd44kvY/wKb/azKVnLYnogEyYM1/WqxfnlsqsRPeHA7KeBDsHM/j
pxMrTxTz/5hbxRgXzICZzhdYAypVu5Yn9ZcRh5vSPobRPvBEM/iHt6tFVpUo0wUo8AAKwrcF0ynf
jzLKmitGQD6nSa/G2HiqrhkSgbwUlFI4tJ2qH67umeL76ekvDXxct+Vcf2uckKfcLA5AfYqe8ZuK
2wzYsHk/JCxxfEStGKXfbkiEItcNn2zSvlW7FkLoIfLk9xsQFuFA81m2lgMZ2Tl38NPsNzfQ4aTH
wIMHgZz/kGCOESiMKbgYhaviZa/UY+Vtc4d6eI5PEPVhvGZise7LBoGVa0gqnum2dTVhiVbwp1dU
QtQWHwSEa+6UxDYZfX8PxM0QRvEw7ZrMhkF8nM7UAlZSCs8bi41Itn9IJw5SMmelybyesK0zzhrX
cD/owZg5W2aYbinHyRmdEfr29wiUgH/LNFv7gGZHfEU4kWPCFYZByNxpfaqAOMw3N7iVEhwePHED
JR1TMDePDOB5uuLvNNhQGOsSstnXf3YU9MEsJqQ2nvV0wvvh1YdD3g5NbRKCgaW6IQ6Jb3IAdnRX
CzIoQJ9bicieyrvJ9Ss25BSnzqzPthGlYee2QyYDFySuzixu4ydF4xpawglyIbLmt1d5P5NraOne
MB5EOGqBKhWiK3zXhVV7OPZlLMk5TN3vs7d6ps6fc47JSoyRQoJ/neJTFxnoScp1InYgUbVHocx0
CEXSuwjaVAsA4cvu0eDJ6kfNtUHXfxNXMtCBve677DtGMF84EoHiI1wztr6RzFatr3ELDWA8TrS8
7evHbWBdzEs3TGdTwFLhVei5or6ZJCj2smeWMPJclqmLkr/HOCurhoIxUDjEMu03w32ijslL7UgF
bJvNhFw9FwIaMypYD2IR3+VdGNsBx9hwsx0hKo43EZWLVu59FMThXy5eI4sxxZurTGdfrwL2B6gQ
InAA+416HEhOz5nPjNFEG/FZR/XOTCyxtKO3Ffo96+K+LuwgI/Tl4iKtCyIY8iYNAidLhE1BC8AB
wgFoUoV3ZUuQRzut5K/E6JVUfCmuY0Og1Q2b1WuzuxaQnCi2oNQ55BZEsM0h5RxN6wDtoYYC+lJu
flzEum6FnkUhRmNLBivEBrTfbuwZiwVPeR+gSQHKkMZM4S1brN/YCps5IuK5rILRyhFs7umwTAXh
xz5sYJugV9htk6Ymxi47d33P3oaUiV3VjxVaL1TalpQjYQAepIInxsfIn9dKQnqTt1cTBV9nlxGS
lTJRYpCQSi+uGGmEdFa5IWGTcSazWO4p2jh40F+5yWn2KVybcyl320+5wmkHhnBDYVaZDHzl4LKR
yK2fXa+CFlnu5sCLmaRWl+cDwbvVMimFbfNrmNb6yBkIlTl1O3ITUxth0FMDJXIhbQermIJZgo4O
BVCuCXktMfyFRvPj+tE0fD8NwPwiVGoC9TGIk/WK9fAJjAhhT+2hbz7j37+owm6c6ywvaqF0izRI
p06LQyrNXpGKxeYZ0wKqO6e1bV6KUMlLkSahMJXhyHCbMEqYJhhdo0+kCVwpYCwbpapkvM9Jvd64
V9+i/Y5ErUp5IK32wsA9YxuXLZ+a6AvroW0cVAALZW/tjEl0hngg/tyx77Uws/R1IqeBwn3D52zj
6PXQZoc+UkFkvpU0PryxdTUBMWQNzH2Sv+B7M1nct7Pn9xGDABaFHwbD2r0ocneB0pcry33ujyOx
H+KB2BLY48+78Y5bkKBc17DVqpfMAJYq9mvjsMFhf+sugNvBES6sKQG1wsVqHx9Ak3lFraLLsRcX
UiiNAqsI6+Ml8DLuQGBCWDuRtKRcthWrJNQva6laXs8XnE2GfyiTUKB6jdsabKyuq2feCJDBGR4k
qRrF3yp3H8DEjIJNQ1ORs9Ui0qwYxizePHVbeHV5YVFDlI7ClF5Zvk+IPKtrRvs15rA6oSsR0J+3
TBwXmRy4hOsnvnMGhc8Wi+9B0hze4qDZ245HDqo8zCkOdcxcNWoELfyA/Oez3Si0JtT+s5OWGEPt
p+OCX75novyRjiprOZZOO22MmMDKmKofwg9LuaKU7Zfcf4Dj/mCMnDZOWWtwM/XO5IoiET0VN9iH
BSaobwXxfsKdAmvJu9BrwqQHJ2ews0PWF60vsOshEn2jKXIKIEuFAnjipzOTiyq8L9Kl7CEufsAb
3rPqxvxI0XlkSFrHT0DEkar/riwtjT1BD9CyGaiu9Gx5Y/83i0D0LGAcocPQgE4krXYj2W91BYiH
6sw4uE5aQu9CBLQ63b9PoQBBJAliiGVfmCWzaQ8gXk3nE5oa/1i9kvFwBMEyEWxIxKZEyDkcy8Xv
AYQUEYQ3/ZR98Yxhsc5iSKwYZi+M+g1SwppcqOU2uqPNWCjClA1Tq/X4JWMvB0nG34N3slL1ZK+9
8qyCvSLlN2tk85xdkKgxxzPR9Hn/atRdVz3NG2cgBNxW//p7/3iYL6w/V+Isx2N0DLOOUYGm/3ea
C4fwQk9bBk6LMY3nSUVPJvsR6utUXxPvjV4hAiB+7kVgwyLf4p2vqyTOV7R+UxySCTl99XIy0E7R
ovRgdvhbSKcGHsZ+OhDgfGCQSxY92ii1HkK69ew/igqPjl+4ITOMFUe4XL5cgIUkb+VNv8DBzO7s
nj+0u3aep0sQHnb+mlfCLO3B4QR4ehZ/3jsGudvZ2SEcbgm41qQFreaE904zTWNoWrxnY4xQrDSL
f6RbDzRKdkl4CzcL+CSihNivzckc+DF5VoAxcAwBRItDCj/lJ86+Vc0xKaqFkcbtjJoRUy8T92wB
+mCJrOpt72WLvtU1conglEenXF/a4HiB3JFuancCx6P4UH3BdT3+wwQizOwdDa2lC552SKTTu62a
Fe+8Ef8IH5OagfBNU0voS2BLtO6W3buTH3Ajo2HUI0T+yXbNpRd9a/Wsm2lY4yyCktbiHWkYykJL
RnXUmT5YGsW3ZV06W/0fY4Ug0IWIlg11Dm/jmBOnUw2O950tDxld4xV+8uHabmy3sEujEETY1nqe
RdLo3uWL/8Sc6Yf9l3LWLrhYtSGicxAVpMfkBu71Zm+mvKqJA2GYSJuCN6+96BMuoyUEcHlGrgn2
734q8+NXU3rxWxjQW2mhLJm/zgGZD+xLiwTJHxsaWeeyjYzh+LOtMuKqrswJfMN2fdTjb2ON6fAh
mC8bvDaioh7shpYYaX99JGfZpn8SsFQts3b+URZJT2oSRaJQBC419jNL6/Ge93gSmX+azbefRpJI
hGIw6a+HaA+Z5zL2irIuLoSxDY6I1KCnUhvDT8xJmkqZUjKIS3siCQ53nYJRTOSk8eG2J0K0Hxs7
Rp5Ok1T8P2R4MmI3vwR/EUAzQPVHaT+6gX7NjMoJorqcDd76H7cnmJFjL+oEeqbyoMyjj6iBJKhw
XByzaseFucrSr0jTActgKoNuyea25o5FZFYou9MoiLltu1+5SlH7uVA5hW0VXiRA2Lq0JrViVL8g
bgF6MOiKOL+qw5otiDAQ1qx9k5yBrYAlIELeGHRTC6wFRlZe7ZL8zXdseM2t8feY8OH1WsAKFW3a
ch11nW4EqeLZZqVXVS8YV/EGE1aSFDjSKD0fi/QOnMG+jUby+spkJE56HI6zosO7O1maDPwhsrso
PXHrg7EJ+Jjx32J5HebPizPKUdhnxmY9c6/bKrPvbzmgZKuHYFXjSigc7YXBPy9J7mSprxI1QdFX
Fbz/KU3MXuRBEBHCdzyVqHPmOc3M5b+DkHiiJf+s8N0rNsPzHZte1EJt7z8GOAzvHKUFU44UqAwQ
pLE7yaWp+TZsVwv+nAG3kL7m7vILxBflcYs7BakQR2YVXTZFPkpyXhtr0x6JJLt7RHq4a5yvRtyt
uXlL/JeSDFmjF8Ir8Vck1i8yaj6TDUL2oVn61KATe2yk9UyCBQHLGqOFdRSIfvpqvwiBngt/RJt6
DPGBGf9UBqDekY725SweIicNf3OcL+7ffVB6CmuaL8J1/cS5gd1JUwwUZpwUu2HhylaROIL31aeg
q3c9oo9mbwsQEp4wq7WyFcgHo0WuiCL/cYXk9L3Ag9usFWKEPCewDypHG4LyBbzqW3h49pJRBtdL
9Q2P4v6YEylfwveoRthuyDxnGhWaFcs08y/WxMC1lbZKNUG2txMtjBs/GycvtDRF+bJH9B7vUZSN
RZEhdRKKGfFFxGi2Rz8CvoWm/hhOBr9ksSRQ948vef+YvYz2U/wuFEzPssMEW4xusHzsrsp0tCIi
dE0y68OV/MHBHwMlObVzLKqhSrbbbJ8C21hYxDqs7mDRFgchdM9dLlkcf/wngl3azfCvRAiD6wFs
CxEfOOsFWRX8HL0LntIPLE1RXxzhxmRvjLbenjY+GMscO8Yh3UuY55HkoV2r0tVPmQVX5Fjc6zpT
a74bFEZyC17SlzzzqA+yX2jJ+u6/AltiY2gkqBEvvZi7Q4nWEzYwBIA6lfUSoa3hf4S1aie1TTJL
PYmZMYtxEZIAkgLD96rDHKKsVaVIhBaJOyspV/1VQESCgtce+MTZgsmrNRTk5vy/rKtrN6YaljEq
v+1TwFn49IcprTu0JGdVrPWH346vXzjIYn9/gA7CwGsG54tpbjPvf1loz7P9J1RODbBSps82fO4X
6d6Y94tbaI2SYz3ZqYNbUKx/POTz81hca9l0HIKCDZSm9pEAxlxUGwE5e7F5ufg6GL98IcWPROId
tJ3tr7WvZmVJS20B/DmYPLduwLsSgk+5a7WNGpRAtIvjHcm7kcH5waRoxNHGFaQleq3duJF8+Vjs
1bSPbBQrfGJ+Ce6FJs2fbD/hfsCgsuCcBrQDmpNRqPwXm2M4IodqF0z0lmvpZop5rEqogX8Z7tTA
2msiz8rp4QZ9Fsa9TEL0z19eRG2sQM62gNlLGR/KANUYvjlOsG15Z5X2CCKlP+UcipHCgm+uWq/A
4jpkJCrc114zVRl3ibo9Hm4cs3CaJrJ/lRlsMJgOyOoXkThs4A3UAsUnj7T5nhegSIcXLCq7TIYg
R2SOf3gg+uSaEKi+i5IubUZxhKJnYOs6NYSlzx5uhjPCXJK5Y50Jivl8VCewsY6IB7OwK75+EpND
hzk8oBmjWeKz16J2F7bvW0f27q3HRez5HFi9FRLwh/rqate6qhNAPTzinnujVyqIWoJM4WmV+YTX
N1HQuF7nJrsqz+5Gls4ISl7UeenqjIMVvTxUETaVUrv2orEvGni1PDagELziE5vH2Tb+f2QCm6+h
Hxw75x+0QdXlZPWEb+BDUh4TJXQyeOK93YirFEeBoO9frSMNAr2HjVuEKwGw+FT8nXuoCOriDhVc
fmlklnsWCRxVrnNZ8nljeE8Km9zNS7nn2NuFEutvMdUYolXHttYXSJSNfZ3nhF+LkZ+MI/cLoc6B
Ky2WcWOl05vMixST4IfprAFPmqZmGbWgexsh4OKHpeJEjiHfcBjc7ceOeDEaAd6ybmd/ncL0RD9h
i2ryA7XcxqYS2SWz86Hfsf2ER0RxSIV9kI/YqOCZnYLnoLlD6yqhCwUQDolR6AhnzmxOWu3vm89B
Y3/YD6fQ9u8RsjXh9I3mkuuGuOEt4PqpVhuFJcqBh5L6rbHvuWmwZ6kGYBS3cSFSsmze9YS5JeAS
eQj30q9zOiGOYHpqgAQ/W4wgfs/L99GKyWGU4SZFt7WyTTYEqv+LlJE6W0YN0prLYe/K30i6z0s9
2PHaZRw2YcrvmGzXtPmdNb6UWKKabDwo7J7smYZ/ONOqRoHTYxTvWQlirbEkYMnb5As6D7PgjcnZ
NgorgvVXdQ2G+48VyvihmZD0+Gv5vfPjOcYpoQdockYCdrgly1qHAdW+lQbmgWxFEWav0VSAaHSp
UWpgMSJ2XNoP1Ncc2k5v9XuQcpwGBZpAgRP5g1LssElNgT8KOHgv0rhRaoOsu68EQWqvqBIXwQQl
HA1Sjd2YjRFJML1KCctA7M90GWfjalQv5ByuQd/LFhzWZVZjFYKycIIUKgqpDtWI/DNFZALEoChd
c7Ug+/kBaM+EVT5Y8cdO5E0wh0E7OddPy1+uTRKopsArHZsmNYM7Q4qjsLWVYxZyosY8nP3oLt83
GNyem5W3KmvUR7ejJB1Z9EGsIhwTu7f7klKwn/ngp14o/eZLu9zPlSuoqwZvimwzChQiCjexJXc1
5IwCiTMEuDYK1VQVOJCrmsH+PMvUYGPlYlm3eK3OTx26oc0buHgo7J1XoBJQ98ly3bIZVfODwAHD
0pyEEHCaQe7UUTdbI76qDDamJ433uYffb91siq3VnxDaoxjdtafItQLTlr7/186YwCdb9WKEMWUR
gjeH9pS2RpB1dkh36hwJlxQeDHcYryifehG1db+ol33sbkuiJmcwwdViqKum5Iym80mJ0kLZhixy
cbjU2NUPlbDVVEzTu8PVM98OMz72pGQdyI2gNSqbP20AxVzZtUQ9rrM0EVDuYDguF+FtJJlnjRo1
POU/oSQ+xLveecuEYolIHGpAtzMxQcHvGKIdiQjMW6M5sMuPlHHXusKavWKiGET+Bj2xURpY76UB
ShR94VVOHDslcOCde6qKe2zd1goGA7VD8rD3vd5ua32JvCa+xJ3pnAmk/WHkefPm+U67FZVQpWc6
XNXXodvQKEp9Nn2NVMT2Zx34JYP/Tb1GDPnDmDN3RYYbs74VhLLxH7S8Gy6eyBRxtYyqs4YGBS88
dFfPvSYtpaZCULiGqpFmH3+jKAax7IhkIiMF9si3p9TvmIGZWN8g246dVWwh3OYvSopJGx5RxxzW
YkOo4BAGyhMqUdDG4PER4gel0LsUwZUL168Wrm7m8ASpM4Thdq6u8UTk+BaNKdcTUrOmCCHxTcNU
4zr7O6Y+YUVK2gzz4T77VvJ/jnPSeG8LRySo8nnGdXChNlnZeDRAXD2GKO+7FbxkK1vBS6FxfFbK
ycD9CIRhFedg72dr0bHenjCigHagq7aoDEI/eEPTrRgIMBC15hYuDisy2iry9A5GF5fW4Rca6Vmr
DXUgVG+zPSsSDQvVTNcFUh/+keBTlZSP0iIp8SclxvgxnOTVLK7dwYwjpVAvldbGYfid6KjOk0DP
ynIYBAl0aGoksid/v8Bt8RVENf/tbMwoRYYR+/6257PnnUW11YCggXY5vLnDwX0/vYmAJbYvQFrv
EGyiqJ+n2kGmbiLAZQIeaoVekW1dz2eu9x5ihpOxK0zsRIMFG4yIQ9YV0IuTOSklBFLJ8hA6Zj6z
K+yGw7jcJPFzAcPZ8anUedCdLL6F3aVZk8cXpQyimuSsqFLeeg46SVXZXpKpMFYZhLzGzh0M9sn1
I46KnmoaevEg9kSAtQEn0MoejzLqDG1y+E8b4fYuRFnEYQB/ALEiBcqVaYXbKhDRJrkgDi8e8RJY
zRiz0nr2m822ixVY2cVZ1+8OcT9EDguYWERQbdcLNAV2i7mOLFCXj3RMcjk84695nYD25JZE35K1
W3lMg5Yw+lwMAjF8FyUT9gxb7AqM5eKWWZOmdDkHO8uUpSZTMO3151/KW7Fk8HYRN5bok/z3EA8z
4+xRUBZflDT0EdcqdZK6vdazfWDKK/riYZlnrTUjzHSEcQQLHFsa2b7c3TnVpm12zHYL1G59+xG+
LkcuEaZYvJy4jnj0x59fSz09uIIPNhQH5Aq3RKl5wzlucVx0of2fSRnniID2Cfe9WAWiR7c8+mOO
m6CcSjYzxhfWmyzA+JksapErVzBFUy5b7DpJ2K5gxCFQXIaZYlNV8yG6cJbCnqLEnVD0cG//O6Pp
sZ7HtHPK8TjtdbZwd+LVgCskDtIKCnxeChb+YxV73KZoXOTWvYyE/vVrcuEy9WDfu8CTZuymUDWk
9QkR2b+6e3QkidOpFjJWh+Wmf3j4//M3obs4PtQQXgxnRZgU/MVdiWjzxhn3zrW2+rg6/UMSNUbs
S3HmfPVFr0EHCi5v0cWhGyKFbWjm3TmAvndC8yEFipZX77AnH6extpX4G4ogq/JOWqFsNmwUntLJ
uSSvos/ZZvs0gjn26YeBHtjXHBwbOcLcR6cGAbvgnN566wCP0SyVuA+pK0EG+thqABi6e3bJMEeA
qrH0my/Bj5lRGYGH2M8WcwcXH4f2Akn6n376DcybJtNDihH9QbfyEixPb7I2oZOkAiXWGam0vQ1E
2qVMGndwFpQegWwW+QHvti2r7OKJHFP/iWhi09mWSAX/pemTvcPgBxUq8KcDUpTSckdvMb8ZBDAX
cYNJ6OsSPt4CcZDuJT6/GHL2GSNytdwDBaUOe6R9aeuWlWFFVEHUCH6DMoHxNBG5tIQ5M2yUswa6
ubM+kQozPEVjT/zG/6D/QNLhM2mZGrMtRo7J7gLdzKf+i+R2VIW+QDa5NJOWicAr9IXFD/nlDpKw
AVHdGXVaOJElgKH5rpHoET7FxrQdp48no27RsLnSdc/eYFqXlu3QZ1Xf1xX8Xi5/8ZbNM16kH+C0
rECFrNBIbpZztkaD9P8CIKQCZ7+D9CeaP1W7Ksfs9DZUZSSefSMGGt8t44Ifyzn8wu/UxVfr3UTj
INWm5NQFRuVqswOAvRnLXrkjiokBaV5BKB0de6Z3XoHz5sTbM/MQN0niTLra7BDE7uZKcFK0Dz7u
YI/Td7n6rL/55Io11BR/7nOxNejiuclJ09ZTQTUyG1rbOQ4J5vFBkGxWldtvDIsWTp5udzo+dXL0
cxqnbyeLaSOh+L+Sa0ZLCEkV2ztBtJ7mYpZYUGHnCniYuhk/hjR/p/Sr2UoPTYeDYkl/iJqzenDG
CQG3fSJsn7ufys0XhwDYTWA3kf+QJems278slvgytRgkwJQidYyymZyikynrsFAj3oeNvzVhlZEX
p7n9E4vPUX5dr1ZOdna3wu8JYH+jVev84LAaLIoR32xFhs3K+wx9Tx8xaPEVmPJzqnkzsEc1CBks
0QowP8GyvN+V5JhuHqKBAqJdj4zLLx478uB5XDwj7tMMc/T3tHw0TyhuIaP+LodGuPfAX3lH4ZDG
aPIuy/3NcY0vA4QyYMA3IG6478uTfsMwr7iuUGlqgdnkOpyKOEebMWwa3ihzYqXXTvLc+JndIcl0
0tS54ASe+OZZFeLmnsA1u/HtaD+Se/GAe078VVESAYQ54lB6uD/6jY9qa3EKOFItrk/yCtPsRQGY
N8tkyAqUh4g3h2eiY5V3D4I1nbdbt9bfzydIqMiY2PHy3KXCVIi9ZbC6DmMIkMTDIJ/ua6bD1AtB
vjFFE4AjtjU4LsCqwHdKhGt1v4LYHcykdaCfVYaHBMKRbmgzJ91B5hllSx/R5kYdP19xA2f8aoqR
Y53cOay3Tj3QCxizF7t7yAW5ZNNJrD8831Dh/bH33hPQarAtEQteVUFhfhAMMcXA5PKHTeVqp3HV
I20iznLSs9w39P2cgq52MHlqvCgdoL++gF4Ht/uarqJ07XP4qMv2JfT6yr1o3dCgWPTjwTCksU7Z
hb1L5x43tB3jCFb/eG/dZ1+9aGB8h84njzvNOR2QjvVkBJj7cTZH0ykLdWr1GPFh5HZY29gJVTiq
OIFnifhwone8fycjXzsJSN5x4nLLZleACGKXAU7JEnatxPyPov6q2sc+dBemW2MB9vBWaSqm8l2P
eiIj+eD4XNZhiYHYNq4L3OJN69e94zevC5y/JR2CqThPExjFkc6jX5khDegpYyx7IHYOrs83HM8U
MemopQLk27ko62nizFgQEOCJRHIjmr/T+6RFijNBiuKX52SjToPoBV3QQ0iKlYKsZ2iDrqh/I2zm
XEqcWEc6K57cvi80NXbrcR43VEO4TQhY3mEPGVfObWrUvSCc4we51qAeGqUf867yPbQoFUNUfU/+
/ZtUWoJjT5NicoG2KuVawtrl0bIVimUtXqklfpXEB4L83nmyIIuZtkR41oeqk9xbjx8t/vtZO79+
2Gr/Spc/XNyc9WgZO2uKj/N5ixf5lTIKctJYrIDP/DDQAmnSCH62dJX9r+9poaLjEbWapCAyqA6D
5duHvLXpQMvAKAaHBI1b9cgjl2z+7umnVpygYD0EY1+o9Tkt9mpkphnWCN3VRoyfap1d0onnALKr
bd7s52bpl0mlRF7xVi5VwBeWqXx8XS41VKi4Z70LFr5zS0iUX/O1TopWmVGca1HSdy7J4ZL7g0LD
NdZFp6G+dw4FOCuA3BMtBeIs6RRhlMxuK48Lf1wu0WtWyZUNHCueCzMXigCFk3DReatcVpGMgBu4
ZLwzem/xHmqTUPt7xwP5POIkMG7NBOWlPUAorFAcB4E7ncoED86O+qxI2gDD0EWkKomcGIzUO6Fh
HTH1MFjxqrVm4eIxy1VOWyBUT2VF5uWPdNks5PVwAnXdKRwP96yKFcjZS9fZ3JZ0iXDoqpeM997j
l2/Kmn4p1ybM/dVjHenHJojgDf5KI8vwEH4naMSJXsezND/aAl3ks2IA/az+KH2mm/VFxbWa2DVz
vTDtOsPaP3Coei5Ago2YrihY3MYacsQVM6/FBidy/8l2eNTRZ7aZtWt/xXLswD2AMdS32N3Fq7oh
0HAwmWc4+WHcQBDqOpxNJOttYDLExgXwpPpy6NAI8ae9mXYhQCKGZrCcd7XNZH4Tsud7aTrSMXP9
lY3E3e06TJY70MsUPUkBHAfGKeswS6/WyKTwbLP8UBn3pTP1PbPE7rnl2FyiAc7ASlmgnzQES+1M
u2TFcmoOIVCJEnUdUWJ1NVB5DhvtVw79iYGKzwqDfCKLmIntYj72J9pSfUHqGdloqxmABOnmBjxo
vlAjmkkR4rhKN9bBuAOuvukfP+64LkKyiplgErc6ZDlzaoHT5Fme0QsAvqCdYm8SUyB1lRyOVkWy
Eq9AICqAXLL+zynILPr2PTF2QYuhAmtL2gGcGIQ92beFCTSuHyureZGVaZOFabO/WISI71uBZhqe
I3Yr6Bb4lEtB9smfl7jTGYjewV0f9ZAFfmJoPoHyogLHgoT7ZsfgZ9AHLFyjc5F5cO0nvad4Ww4j
qCnwZtX5cNJBIOpZ8ISJUfF5/sd3YuyLr8+ExN3eLemZz+iUUTuDRhU4to4blZv14Esxt9UBjVOb
BtVu9v4wBdxGxxD1U26hePcPzABuqVbuGTYZnCTP/vEv5UpBCvkivOu0usT/IfnsSfXfrUI5C8zl
ozI6Wdd+73CKSdPIoiKk8RsshL30NgtFb8zH/v91sVVnaUPcTaK/umfYLtB12zRbjH09mVnYWUww
YNR1UU2NwsqBaDDC2qFtzeM3smgFd8j2FKLReE298LOxizNlzTALzihTgAQ2T4wyLkNbMWKi/swr
NY89Is8Zeaz1B4ooWemkysbmCPeoUYTbXq40v2D4NhuH+zM9wrK1zZNruCu0shOwACpyoI3rvFax
25qLB8CDDgCvuGhSc02GYL1vWL+blvPLTqssw9oYa3JxnCxhFT/ojZiwjuqIa48AChfgBjpWEwMl
rlHpCaGoWKr8MATXJIakHSx2pnouTRawFHAjiE3cjaaNSKKqXAGrHO24CSRCoXE0/GM7tlGLUtaP
yR2XbIp33Z73CovQffSiZ8EPcjaFLavvPg4ILmzw/9GF65YsZjawXzoMlg6Q3tBPNzNRZMYNDRzH
+EgqCKa/pnEExtb8Jwa6aoFkc/COkBhAJj3Jt95y1tIr01X+BYKQsLKAVaFWbBWwEKRB9hqe3dpt
QOWQpscUEcuxGn/rPANtQkL7xee4ee9G5oL8jKo4NxsqDj1vosOHF51vqLFpPi9lmAQaDDciwPD6
7xOvBWiYu5cQjbGzBsGG/PBGyEhTn4SjSudagAfcF/FSauxPzq+RY1g5qkFfB/t3kqSksWHDF0q2
2xlJQRLVMsz4bDvtHZKIiC6nomJNCxPTIhq8CKzAL7UOMq0FJYhstjUZ0V518ggIBViyfVMsrDB7
CneIIAXHD0ehpKm/f2Pn6zMro9HnSCJJG2BpEk6UOAM1xkQbpp4fpze595sx8bt2uuYJ2FNxTXe3
UX7RCaX3L882ITn4myjQY7+f9cBFbAPkzd3DQwGb5lZ5XHc+3ddgyrFjdtXti414FyH6Th9Ai5Zl
qch5bZOL+TMbciFx77W34xCNifBVAS1SmVPJwRIlxe8/NGSahucfBntG3zaCk1DTF3/7TUprrqDc
Qpy9k3Twm143a0hzE6hmB1V/L8gXrHLdvJlChhzK3zp/lILNfIThiJ2qOfhqJD59uuBzCfDBLDsf
fXA78ERO5fR09x8YVSNmgGmPGPCI0RUbz3xbEbzdQa81RT4qUoGKqt7kQn3Qp5PdGkcVuIWcxSu8
B11+QKfFAGrsdOwZRU+/VqrPbN0P5L+W82T+gZDoYiTB9uYAjrXQkDvrEIkIOjYemEI0vJ12BdE7
wLe2wdUA51AXA7M9kG60QZR3oOG9prqa4UlzqvajHsSuHqyas1asTHiCfWPxcJhH8pMJx5r5ah6N
nWngjvLJXbGMyDH/ASlWquec2THhK3K/sFn70SgxS2FyUuQPS0YH0W5M5g+E/8IIbK6KrytbbDgi
ph0Re3NG3awMX8PX870clj/+q+UyekxqaYXHyLgPLIp2/uJDVlSPsiRQI5y3qOrMQIO77Xb0qIYy
xmrgo9ZUQWMcFJQYCQlD0fL++xue/w4k0iCru/AK0rVWG0dP4o/BmMW5TjhZEJRpKs5u9ob3k3IA
wIB2geZuC+tHPG5H/Hc4IAmkebx/u9ex8HKap0ULkXEK5D2s6UDvEXj6zQJRgA/wFI9qP8fTWAR7
aJXCZEbM50xSGIUVNpaW0z6EYgts0aa1BJI9Vt3h2IyC9uiemsjOdgCbe7hPBIlK2aG+voE1uI0y
9/+cczaa6nMyQJbQGaVrCwKNz11sGEunWy/nPbmQ7l/MqDzs+pl7efAXc1jTa+nDMbXVXfDby59n
wOoZxzsE0f60f0Tsz7U7eZUIppJlO25rYdE8JVCdMXOxT48KZ2nr/eDsC9TN86QKL7M8ThzBEyAO
XoxIJ9DQbEpkCVXQTs3IDCzhpBD7Jd/us9O36cHnO/kE7hFCf7BhU4+ZZ7Of78DGhPsl3M1B3nYJ
10L11B8OfEA2DDyaBef801biymkBoOf3FR/Zl6/p4sd5FjkwGK6i9BJy3KuhHC1O60ms7gmwLbpa
e4Pwv4Xm8ia8oi6j/Hv7GtV/8hEJx0TdvLB9xBWxfy5hS3k7QI8BzZvdalLNRW1Y8Jyw+FVACYfR
Gx6RIyT39773/s4NccQIig3sbviHCinxYJ05nWKLCHPOblWGsWmG6p3YTTXFSlHI1saeCyjVAkyG
t1XXpHXmoybqfr8Fq1i0Nx1Va8J7t9w4o6O8/jBtgZAQmfUErvR8xgZZFl04MIk/6YTlbL23tLDs
MwnJeqi8CwJYJtewYZwUer4krrnX24KF+zBIodW/IFYb3z2FMV/N33tu27dqvZZ+nLZm8p6ssA8k
C6Tkr86G3hTPfJVzc1He1WhzcLIueGhIOI9HPEqbeN2w/fEY7wTkzXc8LRLn7S1yhbcIOh6C+/rS
bkqNHSiyKAvV+X+qPTzAEG8oQCe59MoXjImJ838zlDMJckYWaKOLxnMpnqcG7p4O00l9zHlaztof
Q/a9dTfK2prjCmLbe7b6CCgGt1TTap5EvDI2NJ7C7L8iTt3ciMLsV2dEfUmx0J3aO9pu1BqV3Xsv
eYzA4Ho2/9Pi95VrxoD68tm0VfhFs95E5Jv1ft+voxqfw/gXl9+N8rq/ExAeKkurr4P3CdmoqbGU
liEyq49yuUt2WUA9cpKDdmJMqfQf/0fTbLbwasJakUyhjGEB67h1mL/m82uujX1heYMchvk6N1jE
D7SHnqF97RNlHA6hEFA7WkvkFdGThO0yrzFE1BXb5+IzV7SNU0xLlaV6/0pWrsTsUykg92vFFyiJ
j+nS8r4CINteoH56hNN8BQWbxcOYsHzNSmSCe455gLqCPU7A/3lF2CupadSimBGi6/FVsgMUlzDH
0H7iCunCIMPbk5hiIOkLsEh2hYDDAG3IyHLgyYLHkeNCzF+sJiVfecbK8wU6nFH2yU6kKChn36Bn
EIOw0HOxFP5/A19NhgZw3dGLmiW8NdIeDpp4VpmMypnqjauBFCk6mugcGOK6UgA12gs10TDWSK+8
EL7Ua6Ed9yoWnGTgpoYrB+oYb4gQ5a+dDaxQkfozLgBeUjp8v4WPtd60nW6pxTaWLdGuOcJyaxCT
c53QfOOBKxjF74TjOAbXGnZsPn5xgTjd5x6iEFg+Jm/v7rmvnqYG52TAl2yHZVxElNS2iG9vHhmO
IM9CjuGrYhBOEy53AUt7JhQcxnSJcapr0PVnAaTFZ6YzIEGbNLJSstFeVzHV/wfUeN/Fpa+ACYMr
/pV6dLkCEsgY3ozzJQv1x0l5j1HgZqXgQfG50iCqZmS+hJTMN0V59BfG32aILfwvWeyTmJK7iDBK
gGsz/E5K6vHTesddSohsSkM0JN0TRk/P6PjuEA8bvOsGxHZhYZBbCp3DqvXh/SMeUuiZqk4qPDNV
DyEq+L1HQxd/kOUVbcgC6tmJAX6a2qPZ5+F4qJRVktX3JV3ygf3WUnaR74diEpSGc5jZnQe5jjEa
t5hprPSOFYBXkIo8SKWUiwATBc3F3euCBRZELZvRlA+2L89VtnXDT5RR1hbelWPCbe7BaeGfHtJO
R5UX3/XA7RuyiCJT60GM4cLlLIFhUM0fFFWj7iKO91zIv8o3FZcADqkicWQkEa8+cqMCCkSLmB2Y
/55sCwN4eCgdnCIVch2Cv1jRNjVJ2BOnCEYg/0cO4LUAefIXkzV5iFv8i7WuN05jT5rRwJFLOlZw
/Sk4jkZMh0oG+exhZjO1VwySvSA5cyQdGtUadxUaHyeA+Rf6a9DhcrweSA1khrTW/qK5eEqYWyAu
gN98MKwHMqw2y2h6XawnSb059Hk4KykJYXySdsppbvTSd/KAL59JT0fw7ILKQKxyXWNVvWqe0UDZ
eh6p+wYrG0hZGLfxmu5r5G3BRnLIgyKmrEvojcSvU0kecsZedJC7xUPe/i4mawTKHXDDCjbfEv/n
KMxVnz5SdIuvaLRrUggTYhbIskHXae0vSpMDuyKAp+lbS9gnf2xxxJRTeB2YWF5uqQ5tYnfqjQ++
zeuKFQZIqr25d/rcJKJbjHx9lmsDuBchf899xoxsqhNMGqgoKkJjxqHG3/axl14fWwS2RR/Ov5FR
/GfSioGWbwhkx7TT4MyEhMMCEaS61SmFFHhiIXZOeb2QlqBxthFisplUDVMKo0MbQuPDBp0tRZQ/
nDL+N3vU1JPB/QTfaqiPLiXHam/M0tCJU4Zcwh/QXjqLslNVVu51+IyIOi5twLRCtdVny5fkqkr1
U71btRajSLVLdHHVKVD/QpGXDeWgolGFdCkuXukCI/UK5B1wQ4uzL7JFsWb9xsBzyKxIDuIFhG+W
gSU5Lgm9oWHb/MtMbHQCfgbKnA8P2aIcgB0MoobusUHQKaMnkP/hFEg722w+pNG4Li8ZO5VqN1iG
AKxzDO7lo+SMDqA0xtnifz9an+fIl7ytMuClM/5irNpaglO5cUcJtsA8ZfftghUuM7X4/m080DXj
shM0x4lCUwY+ieqgKgqtBcqwc728IuTJyHcO+Fv/9RUb4KLRdfu6Hme38nzRL2IB5/z0Fn9gLb4V
WPxb1oTVhqidR2HThwCaHBXnAm1J+2HGLTaM/fkrdbBGe08xuDZhOBrhplos8b6WDL84Y26bwJWd
MpTOGq+OCYI3SCIsS/a1EnenkYwiiBGyHvQbqwYOuX+5mytSnWBfkmgLfqhSEB6Hw0LJV0KM8suT
hNfzGmWpdfPl+UxsDWud4rcmHxPViLoFLFVYigI+ydzdRwi5HOQCZx3VohpkSlX7t9nv16waxh9w
ToeDYvoMThY7taXkNLm5Uk6TMtmci20pbp6nvqsqUoRLyCtOW4tciQgvaSqyA7clkQb8lxr2nGFE
ZFnaDfJ9XPobUHOVc9G2L2bEWha5M9N2FPFBqLQHL36aXQyyTym73leuxbQH2GaP78jYcdceOdQb
d3I7CMyru8CFTjLBEc+wHlNFNgdVAmd1Q7+WkcsOk+StYciQ4nxq0CGN93uGe6pwaRaNpg0LdlzH
HC6ivoxsbvCSt2N5BZR37TjprqSexM/WfLB7DGXTLXb2uIKgWbRkOiw9zS4IrHbnhajZtn26+jeo
7rS6NFDxIA2gCXLnLyKzN/+y3Ij27KlTDpHINysU2JcJBDdLiyw86vgNE1h7nulZN/WnzQPMhQwZ
wBIMCnA1RIaUAI3Q2acmaAA+jpenlsR8YDz3VwsfI5ZaTDfYqURx0qWaIN6Jk/52AiemScfx/aCt
G/gw4dfVPVgMnJFbkd5jEhL3FYwrLCFCSMHGls9hzCgqT3Y0GZG/eK2ZClocwltYeHKnHHxOtLfD
DZSBxPfhennpGbF1+QsmzeFrl8xuwNXn0CPNtuHpgwLXc7rLdIxWljCSrtBhpycrJsIzEfWzQ7IK
QD2S7+jeriooVzPXdJDstTRHRXJHJUs8QUQyKfZfi3chD6rNUgRIRStdKMiXDRWSD6YESGGjDdSW
JZU6VFB5RFOfCPDfqNZPbu2A4ggcDHCof3GnAIYl0vEdR+zkMEIVo7XgslXiJWqdBJc1v/cFMUD6
jXmvCUh7m7KsV4c0d8BsU9bO0SHf+oMA43aOg0BXlXkhgSlFwcCzfJ3nZiJwx47SY6n68DOPQcHt
j/8TmKFA0IXRMFJoVkeknE0PFfsfBtIDbO9yJ0mt+InIgh00bHD0Xv3V1qWMZGYI2GeA9sojTVGc
Kc2ZcrmMXtIyVq3ZmL7qO7RQ1XROvJIWedaAgC6SM+xVD0CJx34WuV5WPyBbzAqBCSRgx06THGm+
6sj0t6BrSkZ++vwQhvS8l/w0WYi3u0WHlUmyxZDWWZRzodWwUL57+WB1DGGOBzKBQiDoglM4L2fH
Yob3A2t2O/xotzRbd1m2+sBjzoPmWx4V8Jk76KHbELh9UIqBRe55+opdN7mxuMFMADLxl5NlQeY8
jlwnz+rCFvH5jsEwGYDV4EfFD7rYkMX81qdn/DP/78tnMPq7YZ0Jsno3ZSj0JzqenCR7flMC3Qjq
YQfNryVoGfmW9u7z2Db7x0lNxGUD03+zQNawfKxW1Qhzw0ULLAcVk1IHcRSg2FSrVxo3Q/Anqa8E
Gmkx0Yasav27GKgT8R8WO7OW2+Nm86KsZOdrdmuEmDnu6ohtFWRxOpy/32pnnj+R+xMQKB+zudj6
MfVxzajvAWdVhWgY8hF41Dj6m6K6Su2Ir8tQql7SWOOVOcQ7aqgUIQqLdNOfmco9c1JQX9TyWaQg
fNzMlLh+G8C3sH7ZDXPqnpIc3JCueZFjIhgrLYgBVx5RcrRw2se8KMBEW10sDFzEMQQcf1BhO1Y+
I5Uuk8AM9cifk1cE+A3rBxTgp4g7GXiA/CMkIB44NGBVCKSzMwSDtH8EN+9FosLgVgiRicvirgI9
rtLK9LQip1/ZYw9eRQoRXiNx4XIhvuUwMm90qUdbDFk1uOJRsC/2gTLv0OIiie7Q2pfPpWWOj8ez
eSCncNEqZjJ6fli+qn6HsQGwJXvW89t4Zw7TuobcVL1w1pz0IRDlAveOZ4+E4UF2SyXJh1I00o+C
rtM45ifAAw+OuHQQFH36W9T0THd5YQMXB9fudIFEXb5xvEegjRAM06Iz/Mq7L7tIdkUlVoSuFyGm
QfW5tCwgrYeQblPerCs7E+gjnui04g7+j9T8M+ojHUHISjsmLytQkOmQxQ6Vl1IVg/kvhNNmfdL0
RG5FdIJEBcbQ0JhSLQGkdDzhbS6r0UiQY94d7LD3gtLkSBGg10qcBEm6ZRg2MT3xBHet1qyImPL4
NRX/gXaGKtwSSepTWxFABqBKU5W8q+eOXHiYqDFRx0gw4jPSzVIDqvMmjHYuf03J9gpEuxtx01Vg
BeBTCD0CdJ/Z/4dXqSrQIhf6p/DgDylsRui01i/zXxu4X8rCcQsC+8AeK3CEJIJj1KPQKEjuN96Z
dlYysmehbntul1BvtulbbqSu8iEd1rVoqdwmb8e1ls2MZyrqEUWkHz35zTbpCL21yB4qp5XHdEEi
+UqRWFke1ols433lvjgiYL/EIDf2mo6dHsHDm0v6wMkA4aS5n8ZD0x6pYz+z92tn9v+oaIxN2nAn
KvethVFcd/jBavxFl7PxehivKTR450sZcBeDiqop6xjQsyz5FN0pjwe+4+V+5QEqbowuWJGGdbp8
B9scMRj/Uj0/TTDjZZiJ3F3mhTkqUMuWCDOcJGheyj6YN2PD4PmEOn+ZBaLYWFVT/YpJzpfHdZtE
rjrbK/nJkkemosypHK5o2kFUlJKZP9EEEjy1/+aqnarhgQD3B8xWKJmAanVD+OeImMgjsuAZoUb/
ZYEuu5fC0O+CknwNd76pDsqbDxZ7cShRU6WVTg+FoFRSZs9FFgliamQFq54i5Y3vJUOc/yM3AqMf
MehprQnFmkyWFiTUQrCUTO8vwx0cGekrUiKqrROjtnKITbeLODxCqpGdbVG3lIS34QoNfJ8fHYsT
QZPsYaT+30tqCSe6NifOJJOFOqvGX1W4StAa14NyQYPP5t1ffhD1qYb5b4iiy2aZEEfWZODhVQq3
wE4JpYvaLHaxBTUKnn9FHvCPDbLqRj6oTgLRGEhH360hHu8LVcnNTDF17B8Ia5ODMEk9LmNuwaZI
jgRar4n1Lnnd7NLDl66IWXacaxhv61XUL2XY2xsy88z0to/n9svXM6H8+JaMILlFTZhArP1lbhN9
08XNINem9OXC+6O3SbIFnF8kdh5OewW41kqft9jUfvzLhxyXqUWnJ39eYuwNCkV3gvX8yM0EHYF5
i/nd2WS3OtyIow3NjGjg1A4Dq/bDUqtVeTDeqGRapodqydrRVZ0vtfA2mXMGhNTTwXk5dzS8Xv24
voKPlE0fFS49iCUk/gxgnvvy1RNbu+hEe3bQOrxhiJES1nzeKerL+advEoaANgCRkZ8ZIBFDDgaV
cMkqH/EFyZOUvwGxGhFcBC7THnNgHBVbPEHQZ+JOTw1slDi36uS/qra4hcqUx8f2bF+Rgx6StcB9
YCd54a6DosVp5EgnYcsIofEeM80/7y/ioDiLAKqfXWLNWwEIF/J30J+xvJkehu2w6E3dWVnD+hqq
3CC+Va5NkzaZZIzDGfTpDTu280rkXG/vA+9OoN9xuEfiC8maZJz814YUmNyaromE13tdOopCBJKf
q7gyQLmloObEjrXOOMg1z2rTU997LMLDMSBka8IAakaRuOXzu3IfDlmB0LTCuR5p6COkaavzidh+
b4J4iR72AInw3HfeNm6i03kG+DtolqSoSsxHDngGv3a0wlbLCzrujREgMQrSBpGBzv6mT2CiqYpL
vYU032kDHeff3GEojfs42w2hMfcpqpV0NHVE9AT3QocG61IxAq7KvecDSjIpxyOKCFMbU8mCnFsW
ZwoncuMmUieyDQnODNgdQa00I14FQzIicrrDzFhrQYs5WpuT3gfBwEHs3dWecJFUHvdXqvTcb4BM
uHgEF/Bb/9CzVIYtAKK4YqT/7E80egYcw0KJnG59u45y2DRjk93nEohfsKED/zql+HUtxdRcmWna
lIrolRYLhnLftl8ts6irIHRuqaaL00AL6Cy2iNlYqPRM23FjIhOrvsXI+D9dZi5ep+GF+DOfqund
xDLiYHPXiz7jvfGK6dfyUzIVPf8a1MN4cXIw5SZdiFzgLJJwDYVAJwjZWISQEOoQHl37cYZKkjF5
Qv/1xKLxAPILJZzKra3rEMgAmdf++7EyZxP5W/H/nxkdXYzwATzMSJWDPpjqMAuUzhOM9dqkd5TV
NppKNs08BZlCyp+c24JmJR6i2KGzj49za+p1BfLemmRBmLz0UmbdgCWOQM2k/dYrKdI249G7RfJX
/ge4pA9LfmWQdxGK1ZgXQLsYIyRqMybilt2tmBcHMCd2c1uULDKfk1V0BzbTm0utP1cec1uYeeET
lRwO4E0mDBkDV/OagdRvURsseo0T1HHymLATot8YP/Lvjc7i/NsBA9ofqGv7mYYMDBjKCe4x4me5
QF5kNgIIFbb7/Phw+z64ELGvrKcQonU5YomiJHCpS3TvJVD4UA9mdJ0WnW/AysWa3oweYdQLbeLA
qMWNSdFe7lSyYqm8CbahJ5O3qqoJfrODz/CodS+yCJ6j0dV2xIO4wCYJDPwBmV+yUue4GbC8T3+z
GY9+vdUkSVPntChJ6Oqe08Vh3vtOKHjs96W8HHHsgZBbgIyR6jhQIojv6/UdL27527dbBMn9qKJ/
+wq+V0KC/Glc8ZJ2a0MeFX11/188qmfqw81LGQIwiHGgxCh+PzWfdQR/cUW0uGd4OcP+B0HcFQ1+
rpMBWCP2Tot1uax59+Wv8UqRAt2rvcE1LBeV8t3TTvqOx/WCWtjF+3egBWhfSRHcCxy9Wn0KVOOA
UOMiew90h7FNwzfauJY+2g3t/e6t8BgbQZ8/PA73rcepmaCLzoA0I83UcUPc4JEbvl6rCX4Mt9Xo
STPBdz45XQ30uR0N7FlvLxxT/A7OofACGxZbM6EbZjakOI9cEpth64fBMt8V2kvI3R0jjq03HB9w
FBi7cdV7BHTLSe5phMQmiY/5IJW18Maj0uZ0SNouSqlYoY7DB6M4Bn/3/Ce3GvI7u+Fgh2gkKRSH
cUyUNxh4WChqTMaoYD1TOqTUahfiWWif+xsT4XflARZvVxUt75jElK/cVCav3CZ8jL8LMFiVRre7
3InDmWrTAmMcc6Bq6UGaAPznsMTSzI3lULehfL4G+OksBRSOhWPXKD6sp9ajHKVSAt8wUpWM2G9y
nlUL9JcmZODXYFnwj94+STVa5aXGXqvz2Gly8+5urbiJiUMN6nEMgSqE7U68Vyv964cVy1aofMc5
qTNUJO8hbRW62E/uCUFuKue22R2DboG9fZziLlYCEzJgqBMz+JFBObIRa+2LUbApfOH3UsXZj4Qz
QKWuyrDVPGN2PCmnkDJiAIZohmwACz4bav8kqUMgPtG8x3nc2zvGFCGAzD0WzSrGqJmymjTJRwx6
HB01aoTgZcu+/26M7geFEfavvpCVD/wYYfPcVnG3QaihgKtZ7E+Zd9H7UNtoxUtqvv+aqqEpYQ4D
Y3w/3myf1A5p52OiBk1zSdx9hHXiX0rV3wmYS/fimzec9Nl/Ekq2NJLju4wImFegXjWZvMh6a1JH
5JAOccp12QUNvz4n/xzmf0HYZ+DvR4kyyvPB3B4qw36LYpbZf+L7GcC6lmxkLGhxEDgQ6L/ZYWkG
t4cR5dy74/olA3WmbzjR3qlHvX7xqTBw38oT4PdDcXe217EnUvXcDpUrWNkeIvV3bcBS72CymYiG
cMgDMGJPCzW3B80QP3z2mHFT/gEagzD+dQEmScVe7+LCFm8IzVKUHdC5xxZXD0C0e0HEis8LckyP
HFtX+saAJtn36m0hhFUT/Tg3hK/gvNPVVRSo4wWv7kTTJBv0vWIOejzZBdF1R+D4hD2KtaDkZ6lb
B41NJ959RXGD0By3CqHn4s8OWVELMTiFCINl+pJje4ENNaue+Wf8G86CITg6EQdL684kyMEUDUpH
b65fVtwuhISj4RGxIJqRkHVmW8Qm5TJN3wRBL3yGYeQCOe9WZ5BGNb0ybM+Nxpa9UtSIkPTLEXEf
RQkG9YXVG43Ym80b6OirVWkqgMW8NLIlrX141Uo4Xu13BCz2zHEK6krSmw+9g3rU/Ws/nxNsBMAD
WX2XdnTON0rYMpIZjKUUc+ZczZrEYlghx1ON1mcB+ZcRUk9lEnw8FcVM9U8ZR7+AluDJMxKHevaE
WUE6S/B/oXLhV6vFBlMOxA3P5Y+MPPfu7gduk5LeSzCyfzaMO0GeECzosNw1Z2Skc2oK5fQGFGFV
0MuXAiaEX6U0mKc0mLbUznSYTJuoiqIdlaXyTvnJl3T2XnwX2xrwkPuOWYZ5bXW1UBwEwv8snSP+
SwB20/ekBKM6dRKcJp+cSTQpeK47NGxN8DjbEPxBteMrOSM8r1mBj/z+s0sj6Iy5yqbTlTtYAPAv
A4JEpTnpbkh4yYeDEOS+nFizO/dA0w8Jg5Qgbgb0kjbWHrDP0jg4AZkCt3BbS6hoCJ4+Cg7bma84
xUYiBvO6LMkQWyCRmwxhwm2SUOivETgD6eMYnBH8JF3rgZobNzMxhnBietp6Bo7UFnp/yxGHMVST
6uTZ0qNX/htjuN1dR0FmFOenB9QZp4mDke9SXjgEND8Ngiild9QZHEBP0Dk5u11QeZWJ7Ay+oOPA
mPsWwMeYYYlE6FNPrRQPfYaLE39yqOqUqLnmC/05cX36J6mHFBox1SDNzzSDlg6eoN0x+ykLeQG3
xB3SJFug+P90yyX2gqk21oA5J/arvcEfYY8IoUKXRkuSIOzd0atGTdKplsX8yBkiCbvriEHDR6gm
IkP2XbcK28HDFmnx194xN45CxvqHSdMmRLxZ5RAloXTJulBAY3vF6wFG++sKU1MwjxqfgfSeI0xo
A8No+Ser78ereaL7fCvBw/UDmVGjoUmqOEdl8XPiRpZZ3PTJ3FT+0RAT8C5EJBzUqqRz00AZyoVE
3hg2FZL546GOB1I0HpPea1o7rYIAsLlZBcB5kIljbpMsUG5iIaXkjqbzi/PosDwa6hGSm/GmpjZX
deVSSnYwcH3k8BgtRN3pDSbvJBBZF1884Cm6oU0cM4rMoXWhkjMVhHCGXlbI4h0qFzhfnPlpTAw2
TZTPKUC8M6hRdBiqLWia8/O3gIAAPvzsCfsCNDSaLe7G2n2yl44+RJNcRjPRD4GVzReMTfmukDBv
Emp1eRuJ6FD91b17V97XsG22+K4oEbame8fEpkPNI19osWzNrk3tXcbw8kdfzAkbhAoq+275RuhR
VYL4tekiT38WqBMC8h7GiG8PlKSOMY8Ph2693PR2BDFcZjf0a7NZfgN7YSwx+Bb4Alsq0mLL1G7l
QvhHFM+DX5suIIc5DOfiVkCi7oQLKvdxvNKcdcmEdNLGS2F3+61cH0uFpZ0WzM35QzHyaRG0UhjE
u+T6vaNcG3yJtvnCotN2v3wU5fqWkdRKb92qSrmcXv9b9osKBRMPr/PdX9L0uNy3eqN+kqjoXMum
TCW9PlNG1U/4c7pU6JQv4HOBkxDKMbRhQna9HacFstZS0jg2AUzDIgURD300ll78LzStoN9oAD/C
Y1t4i+AVK8bhAfX1JSs0ghf1j9mcQyOzwxqd4T+YCDkXQE8/pGgjSfoHhWHkv04swaCzPcCDbTSh
CrO6s80zsGcOWpH/Ibv3UyVb8B03zBS6NdpUzp+bD2RncXb2jKInDIUTbj+oeTcnJY6sNgmuSaFH
FOZVJ+t6G1rVcceHSySKMKU4pY7UX0jVApoznR56vQiApCEXpeNeRMktXqkxLpcNUOO/RiopgCfa
xb7jt1evnnKEhrhklGmV9g1RCuPNWZlR39mMLsasjKaiRyCMvrUF9CahGMEEybrcveJrCS43yrdU
oKouClc6N8j0hBDYIiW7AZv3fYL2zZRPrsNumaQf2IcqWFXc5YBoDPf9RnijhTvEI0EibHggPuGo
g2Sf98t+B3e3J2WXAS1OzcyZL13mkxgZDs1/9e2xGqc1fnnVlcpGH0TDghSsNcXU1BlyWMZaT8Kz
FqW2xMLmm1Ay4WzuhmJsCw3hra0Y5EgipAUzfeNUUkH7zda7s7zxSLkBHd2x6XpOGuLMfuodE1pQ
W2xXYInimZgMQhbDMDo3cwznNJH+IlmZ45PgVgpwaURWqD72y4Hbep6rhejOSH0q4ofgH0Ar5QBk
0y3ghTncVizSufDGUlWZcY43l7PFCMAW/WSx6VyAr/qzGi898PJCuq+pWbaTtv6QNwhAV2f9AAfm
q8l+v2sxJmyuWz0Cg4m8iZ4XMXASCSdvyi9gnvF6G5KBG1DwH7KclbdD1DJ+4/m3SZlJ//0WQ/6t
Lvj27i/VCBGGLzraMbLwtLzo/hhsV+QmicyAw8T3bkYEGEnee/xKIP1ZBLSyWCrXUCZJVGaima19
rnI+/1+aJMEWfEMXJHHNUNRqARWayz23LQLhQ+vGI3DGYn723hiEuJGB4oscSSZxuXG0NYWM8c3o
0l2UbKqV4BYTFyhIGwmUXayH7ZL295KH9/ttk675gp9RnhWkhLykBRLHBt2++n8ItR/h7jZlb5CH
L+CjOmqxkm9pXlBUJPAB4WgberzSB6yFDLJd321DUQO9LEbN7PC4MZEieXZ5Z76t0DnjIeXTLr25
K2rzykSKsv84rHGez3H29ITAbhVC3K0UhZGASDiyG5qaTUTSkAlzd6eVxgwwV3wqWo/tRhZYqm3B
0+WPLTXRaiW2GC6kE8GfxSMoaOcDjQ6F5Tx3EuiL95fL6v3lcC/IH0SSmVwSroQcygDupNGViNR2
zcTzDaaV8ct0EcmWaeC1Nx+yh+3C3u+GA6RcRxAEGrfqx7YNiOX3C38+O2gBehgAxAi4GVvySphP
hPEH9Yfkv4Z9uiRQYmJzcMt0QGxpAMXtQSfGb0bpg2XZNFuZLvixCTh/fmIkNOl1yyeMaUxEktua
HqVFfi/xGEDHAu7r8E7cmNAbMD3/aOe2Zjuswca0nfA0CHx7lFr3pMCggxJegXd2thv4yOD8ci2j
NgJ1Jy1uB/OqsJCEisSM30uFFCTyY49XwYWoW80cBjI5Bnk3ROwo7+JhFZs5CKV8IEkCduJHW1SQ
aZymtAdcYfqbcjkzEyFtCBhKMqFhpZ4Nuj8VqtixfaIUl12dpselAc0YcN6MdyWm+I1POjAVeKxR
vNuybZO2zhPeAgg6TbFP4xmuy63uyxpGic6B+m/uLJT6jZUCGoDTw0uC3Jl+VZxBqWKiBx/+i7fU
o18OkeBAnnj9sEI1rs5Q+rbtJLXuP7vcpey6rc08INBfyxmSt4KV/xSEsRV2zWNkaOLLvu4Hir8+
Qik/8I9UJq05MC+H2xzp8yT50FPjnYVRx1PWiFjb8iLhgi9ROvMyQGmL8vQeu5EbCQyfso0u5Fnc
qnSaoMADXFUOEdk7a1xAIbAZOf9UNTHWM4x/Md8YcqWXRv20QkdlFrwMb+sk7U5rdH9ZCRlMRVwt
VbwI1AZ86dgaZzW2CfID6teN1T+5EbMlCqlo9kFPoBkSO+/0vaXQFbTkdlsuyc0J8aYRSjZAHSMf
rDbzv0PSfT/dpHgBWDiQIgkbRYSVO/GfmsYh8CiOTUsYs0OhJ5qSF2IKkQY1YxIYykqf+Tb9e7TS
6Dt5nLcAA820Rd146xk6Q75+tXUGsXD7xi8EylEsWRVImR/PNSoPQ7jzTT+Ql4bRQagssrmpmHqA
rAWSf8+rFTQbHSTN1/IXQMbIWo0uwZ08bqhxOjE450l7jr/Gvu2/cMmRgeIk7SjGHgtVL6JwOoaL
7/WEzEviFkq43dB6KOF/5h7kXu16v9uFUnVKnN0ae7W2s2+R2LS3oP1bqz/g/G/EpwyVIkV2M7NQ
LKqkmSf4tSqJrPW0vY3H4gChm8Vhb/QGkLS2Okh+jMbvgCoa4fCqZqeZmf48kbN3csYF/HcUzmrR
npp+tpGiIRWzfdiuGE+lQXnTMaeXnJE7SA70c5HKE9QpqSMV7zYOZUxJfwPcnzKnTQfu8096n4UJ
ITWRbUqRMW/z9ho82sdeX3MbkjtmlMezhrh7a0NZZFfZISq01fRtmdLGeMnYxfjqP1zfjqfzoXYT
arvFBtOUi9rJPOe1AKt1G+reh9IfrBsUC66Z9p3WHTZ2zXcIqt9fpi8VwgESxn9LRndwwIjcFWO3
4A1p/4lJSqnPUTZdhex8Un5ppn7kIzcWgo49UvoGlBWTT3oacM3oF3wgy7YcVuljtWvySYsbXtwJ
36E8A2le4+5r3fWVpAuhEnrg7NIzdHQ4PQyRlqtU1FzVe4/C9TmFBO5NhmBSiNJOSL7mqBn9g+qb
OQrk4NaF63QuDBtq1aq/fghpuZEQGXkLHFFkC9INBQywpWyeLnChg2+dKHPhznracmM6N/4kRxf0
CRVnF1Y/5Fi3UkTABGIRG7glvfg6ihS4BtYWAEr7vaTQDQ5AtSHv1+4fo3AKi6bBf5ZobK7aQuzs
7T7c1MAWCkBxIJTg8H+JMHRt4/xAMu0z8WDf2HZ2GviwhC/VRhp8kKupWLJABc51OkqtSHo7XrTU
GX2PD+kd7DlkFPvb+VI6o2/gZC0dtlUmVJqh60EGpvzYq+uU7dhxp5m2TndK95vDwyQpnx8hFcH1
Ly6e3QcgLwyKSro0wsJgF/Cs0SbMkqdwCwQrqeWmNB7uCk0P1oGe5Y/QL1i6z5vcn58ugaiI4lol
0VdaY/gWUbXXfKCUmCpby1VZ4SzmJX/gCgSpE65SEFH99ppRHw3o/f5rQnT7ePZNcW7dTU7r6Ell
XSWaWz+7oIU7CxpUZbyzpWAaqhcyhFKT6oWm+bXLKeUnInqdQnussAgghKw0d5Zj8Q4leig4zUDp
48bXPnmnmvwY4puaEuEIcE/k8MwauuUJOYRCzGUIOFD4p9MKlx4ZQcCoKW/F96p0AVp0ls8FdHSB
EQCxmJ5nJ1pB6nqzh9fDSj2BckLbhRU4xSnDCXNNMC2zdakgD/AFJ5wVwmueXbi5Ke44lGIN3Jtb
rVXgkYTvYglY6OcY7N0dVOvC8ADZu2l27Tf/CFwFYJ6iu9h+g3YV6e4PHLNkjLYYHh/xQHHbjLQ5
UJqb2VJmlMQww0g/E6TZvZTIjJFjiJ/QPXyRgu6rGAv2hbOUktWOx2CnEwCQH4sqNKgy1bfN9lTz
Z2qovFa/bDtZeFeOCsC1xrzAia7wRAxvOYdoGTqjzfqvOVI6RRYi2Exmz9ZMZFRh7Jq17X1OLPwi
H7148DldpdWHmv1SPzq92pu/prFk3Uvb/jicP09ujhi5cE4XkI7MyqDTX3dhnDMWtZqd22IrR2Mi
4yDzFKcuGseB8z1qIbPh0CVjybvOUSxe/z0uDhBcJXYHTASlfCW65KPprsPpnxanIvBSAax5eMhu
+LkeVAQ5F1GyioEEBX8lcD1ysgA51iR0dvhn5zFLZA0Ib/jrISpAin9lCONAcHOzrLCsuGC/2sQX
x0mmwBZQXyYkEV71OF3cgb4VVV4Y/+qGijF77kX2DlSHEZTJqov9P/kOQnQDcGi8e8tSyDJXFCAi
F65py4S9OHstPOUgexScCDABCx+QsbhHARQLuoDlT39hXqH6g/5eChtIIeoFgZ1RiEW6pxIwyblK
NtWKruBcPReVdVjYCRxqjzFVH3Mps4xo9KOutch2DOLOLH7PvXg/OyqAFCHuXHW13jPuc/A3r3st
qz0gvj2783PuQznLP5lhJDeGoCbHymjf0kOIi1hK+au0iq7qnJOkyO5PQTASiYI000Q3t8NDVUpy
vPNaYf+au1sL6bTDzFY2uN7lR1xZINaRCDWeCAx3D9+QFK/C0cp/SwUc/ALMC293q0KhSXiI3wF+
kZ8ZCGaRaW9zL6wlVB+4HZ5tkdSBwdbVNyQ56ladII+IcuzbZy154ItN1w8UYg5VATv2uYwEqviv
CpcGcSnZ7aqZ05eRpAz/ABHuZOjiDpuMCS8BrGV1bDzqe5ULB/k4ojf1T0umnt+HnW/TJ+oqsoiq
vQ0/SPYCnSv4Gl3SExxSS+p5jFUtg+eqVHRPkbzeHuYOYSI6hS+aF8/MwSUWQ+mqNEnNNtqgatEV
s0mhGs1cTymSzceA1GH170ac90DhUvHoVZl7d3WAojVIwTrRpinKdMCh0720+BnTn1MyqD12zvmD
AICgFVnqkDZCTlV+09UAZkoYZVQjptBFVAclC5SmA+Vp/nN0EMpxRamzop3brG6NBG8wkW/OufzF
H/4zyfgwYIdp0SrCzX6JQvaZdueAzSWiL0ceo2Eav1MkC5DJ8z+gPtpSCfscQGHDQ9jrYtNbTYOT
7Ivr1VqoKEjkNkAqha5uOF2MGrsCjnya9Q6J1Hrs7ekxEs/CjpoeC9V1EUe/dF5HUMCpVdoqxebc
75ENTAkW9yNUYa6H9wginuGGCKfEpTBNm6flKXOLHxC7oe1yVhlIqaVw5a9sUkaOEz1jUHKtGZOK
8QLgTvDN8nFVnbVELOEILK1Rj1I9lGkK0jhEPCB/9PugN6+wE0ccmEj+VnqDlImgusYzWMwA5ik+
eAY3OM6LJBoNUvHnY2hhtHBWnNzGeQP6rAp6JEZYNDeaOjgQHE8ZxCpJQxeU6gZcOhFJbB02PP5f
6KCFpgGCAhXe09twxHCMoTClsHDg4VGnCt51zbrsRDsrUmC48af3ZP+QH7m0ev5ULzIKU1hi8QfW
FkvamAT6XgeDzk1fpZwQmgfbG1NI1Yl7cPvxYJOH/SAnSt/yBYSV+7LL1H3LdocsO6ORHWMKGXOK
NUZJA02MY1alKJtWwxu11Y/aVQJPTv0GshOm8AXShm6Fb0kUwDGWw1poQ9pLEnSii/gxYuBc6n/6
CzeM0wKJJOLJ7Jn+maE3bQrtIr+dXdNE6NOs+LgGZ2Ix0JBt3CC1JFA1A1+YGuwS9gtlUGk3nJVl
81rI4z842xyiXLsbKI5phDd1KzCuYC/UlNmiNhkC/i73ahgnttnBTvJ6sQUhEy1xu3zEAS11OeZq
2/q4wrtlMe3RT0GyEv0ON1JA7ozSCXqhTBQW9nSFJ50GO/lDp7/RgeglkQ+5P+282P4w5ZVxzQvv
GNPmJtFzupYDvF3ZwoyRHcspspe/Oy3zc4sMRWGrwpQ6zwYItIF636QzZ9mQcQqnbo0suwwzTi7d
lV3lUR5/hjAVvu1lzBwFosS+m/RFrJiH6mPxUfUnXfsvAg/XixxzGL5EY6AqGcUhPvc91zF2GsL3
TaiclAzP6Gb7zJiK2+gJPipayhEEquoo6UJwQYr6bd5XuWy2cNH51ATsfRIefQggHnqQJpAlOss/
2pqok5Kza20F/bHBB7eywZB9kQIH+o0HHqE8obtJI2l2wUbG8FVfmV/vv6E4nMd28vMBsfAYGlLR
pRTa4AyqeOSjCXxT2MiV9NwYc/w56fOzMKpJCIQM5eHDIc1E6OJIgjFXPhB3oLDi1i0Cbw3QfLBA
mYj8Wl87DH1CrEWJgPbB1yhnbuZcGs3Sah6gOgtkerSer90VsKelQrGYC9qqU4XFms5d0nd6ZeLM
gP+NlgeSBWLcnKNklabAPU+d8uNu/6W8wvBmMaVFDchTZGrdpI+e+lWhmclOAe1Qhy0oysFYXkLA
3YfzmukAIh+mKp+IsgP7wSbBHywXKLKcEsOUWtkEa93mqXZj4jRCkt3V5cKhQ98B6Q5qUuAd8FRu
ItuJ2iCGOC5ueF3Ki7zjwIruqGsz9BQKP1oT4pTxurfEBaPUOgi7cDnHt1ChWbH9I+R9mlDHujLL
L30QP3s7tHKTnUGBR20GjHMpch9Xbqu2IGs2/c/2kLldIv/2DDsNILbWku8OsRJbJPWNoMErRBNe
Rw7Yk7jfmq2yl18JpRDqsNpxLcfom69A69CmM6RCWhe+THYud7ad5iXhzpZa1RnMUILmhc8y2UcD
iPpQACNgB1Jixsu4d3UUltwLgdSeJzM/6NTV6wJ+qqW/BsPsV+tww17F+FqkT5LSWxENFyODGLU2
FDdMF+Ptkk6YRt5dXfiCpWL2IQPpQANbPsqeA6LKdMaIC64ckzTwjsB4qoVnGeN3SDN0APgXKYjM
Rz9cTlna8FXcx2s2KiHbFI5kf6xgz04BAY8VELV8i4nQpMqlXfj/rhp49h8M5ziBzC4wX5v4+b9g
ZeZWph3Bw5o2ZiIeShdMavHLPu2LrAk8RUbGZ8Y0pZmgbai3gm1U/4ur9sVN2cBgJPzRUSAYRFH9
I2tsI1/rammDI8uL3MzidKbisomHfe7Cghs3AH74Q1Fa2NkEkjbNj/afEY57i2LZduP1Jf74POcE
8dg0toeQONZHUE9Fq3lxyAzVjliVSI2KImYC8P79tKLL63KxLfJ08ZthzU5OiI5d3+teXfRIo+my
qtdk3VnoCHchLwP04vnRm+6jpEth7KxKo789CVhr9GnzU4FFMdRL7NXQm70/PuGlO7z45pSYjlxN
5emRsyA2YDYq5XzMuPSEIkIYo9G29FI+4sUB1OC+VrRfuJwRAux6Utsyr/P4xJn4REnD3MPs3etB
phJBhnY6iB4eTiShYNc247B3y3HpVK3ZoSnQXUuZvnGfloXFUkfuR7Al71yVt+h6GwsJG/hIlHWI
iLpKWR0uCw4bHU3lBQeMPCgjAkIAwlqig7qbW2DL3TkEbkutgoQFmoxsRiwISY/WWyBG0YtwXCMI
M72aAVvGZe5gqPNMduAbdyk4TCZbBA+R777zkxjQqDs1aWTd0C1B3d70vhQPtJF4IbcW9j5FvqbQ
8iPikJz5wesh9+qGn94I+ztbgbwIGjDP0LhWpmM3sgCgYXri6tDkUDxRFExexebLiw+KajGnNisx
vI0bnT8VpSK4Uma4wPP0Cz+mid13abOrhuxoY4L4AN5Lo2xVW+QoBmQV1WtIFd6Xo+RSrYka9bpi
9KkUIZUCkJ15JYrJXYB1xqR3w9upPq3FnzUSCMrYnM44gZ7t+cXzEhvfWHXkeLqxzh6TY2kpGvxM
9UKxNtZBJoTji1KO1AfYoEff2bBhrPdfxoV2Ux+fyB8WN8vkBNXdT+I04KI2N+3Ixiur3NFFKFpn
UsrwwYh4igREBM0ce6bpAO9Hykqd2Lg9Z6H1IwthoBcavX4ALCdGBHBthamPGMaKGBWAeGFRsDJP
Y9ZilDQaC6vgPujzPN52UPtNmOPcEPLbIpSP3Et0fu3OHwJhAwSn1aYI9qK0kFqiDCpMBD0S/L+A
9OtL4oljbrf+wWayy/YY3xa5dxLWo9jdISnwS70bMOLZkI0ObJo/is4PWFoA+Xns6rQpV9jHtTO1
ZPSwsKfZK48qEKshFVPt7B9lZ8JZXBG1C8EcSkZGuhMJONRBLn+sXX7boqXaapM/c4Q/0JdFLuhI
HD5q/NB94+2snUf44VhKQRO9q2IyGcZFUFltF5ml1hHnhj0aVNl81aGOdX+0KO4tt7BnHfusGh28
lMsqrDwhEdK4apUagb4apjglz9JhBTm8jm0FoWZK/ulIJMr7H3qNap3lwHyy1yplkka2a1E0nztY
SdkEkD0dh1aUsdNFVkQnAOM6o6/WxfR2/TlGO66wxDa+7JhlkAvQMlTuNLxrQVmQInyABlMPrJu2
zCW1GvGAVd75aiVbjwgaF7tLss1LDB5ovOeiYBq1ML7S74J1b+8oCCwwzVkANmDneIbBQk23C7pS
lDPW1KDB0ipcddXQx2wT9ZlOAwNXqVOokyNX2lv3XFw/4h95RMUKEpg9QI78fmknNoiHe1zZcmXD
Vvtu2uYPH5fbr3ZVcT6rcF3tX8iTk0Z6AH0IR4CIG5qX3nBWTW7S6AcZaGVfpz3UbALCrK7Gnd/m
uPnpH5mpObeB1HDkSOYL33oSU+5msmveYthwjk1ll3x6F7LEKAZuq6a5jz+PXM2xMZmzCcK57mzn
CK0+CNU9lK/Ya3DyEaL9CMs/df0CItIWif3CnMxA2cfjiXxm5KfW4x7MuxW+9PnvHoYvcO3VU+TZ
Y/KS9woGmk9g5a/di3uaJi9U115Z4TUTJuDt/Ask+Ivmr19K6ttimU0cCG5tKMVv+YMlHHuGFsYV
/vri3ErEpQH2N3zofCWQLzJYlRDHhh50LNwRsAYhhtyFdtfitbnaszYUJIAaCKXFR/vW4Lczr0O6
PKqs39z4HlhzsWnMXXrllMQv5IkrtnJ0AcNstrmVst0HLpf6b40PKPNY0U9J618kUabR6En1x1Yf
RV/XTw0GtY+0IqWUrY2N+iVrClCTrXSy6dX5nOSIhNVZ4mm/Xn29ep1LcY6rWB0nPnWTTO/7e/4r
KSxzGW3r/ZewR8upStgsjh6593tI+fun9oG3jya6GD2qMz7W1hmsT6Qe7qc9NK3ApxCBAKACujPU
VBedRVOMUPuS7qjM8gdx3480R4kaE0AODTfGj9NEUCRdzXi4U5XB8j0dY1EDvo+tF7m0nrLQyjlF
a/JQkhz45Y881xCASLltV8mMs2Yqg2h2RgfY7J1HNNeU85qcinxr8UxtS5nvCT/tNxul8XVNxBvs
/0apJJqggTO+3SzVPYEkj6U3ldl1xa2C1ch7qQZ2/JbwyK0kC2UbD81Stm9ntic5VFDYpfuKab6p
HArRSatlvP8k/Q8/ZnSv7vzJ/uvwIDbaYfzCaSXSQ2lg3mADdD3sRD3NuJcuR/henAPR2/J4fqnD
uptGEki0UwtOcxjE6jxQmIeSjgpxa4ZO2myNgjlyilIUme3HOGt7/n5nngwSlguEmdEkowvxofmM
Ia5Mqmn9RJiKn81DSMv4W4MZjbHigs+OdQCg97utKcA59qCjA977qqcMov1e5YBARuCMqIPSJwja
afb6L4wrGiPuKXtymUWdvi0NpFuNrP6kiuFIiiblRgBOH/Oh/N5Iz2HEVyWhgSZn+b/qP5z1YTEW
zYaGKAFd05H1MkLR/Of3Fp2IQd1jqRXcULWaV1RawJG3lUJNKz/t+DOPoZaBmnlWoAJEMg6ybtdm
ovXBPMHHhIBXQSsJEua1em63/lxJr62cAtMCTM3FK2PCAKs7tiINwy2WuNJkKiUFnHLNXy8SyJId
vHK274SFvg5hzDWh/l/4Al66JX4+RCYDp+OgmsvWtstk+GvJXeP6vrlDGxvA8JO5V1bAM0650fvs
DkmVfTOInB8KwWO8euaZmrjPxBfV7c1opLt/xzVjyeZKPflR91XMJ13T6OdnhVNHvuIPOkxJjZph
eQOrOhMAjHMKckFFFSCMU+MeF7hlATf4nQnSvKYI2EtopNzQUVPATfJ44N05rgfPjv02lP00Nw2g
b9k5RyhfkszDttRKAJCbcfhgLMKnMc+c2r2E+IDlY2jPkf9DEek7OEGOMIUp5eT10XboR2pFm/Eb
6R7EIMiiC6dDf3+n4y1cHWSiCZJlVFpzbhIZSMbOAsrDO/nGfMc7vMAKEi0SCGavxAP8pROoQTTN
luux6ShP2L7/+40ox1aspJ65nS7Kjm8QbB4OqOpjrOcEep0zZ1aFuOLlYpjODwNBmSx0yOKT2G+U
6pLDiOjY3jYVrhSv9JHwW3sSnFwoTOSV9IoE26sn5GhmMdvsRCMUVMOiY+W6/iIJ4eV4Iz/1yuX3
2NildIyJS+endpzURLIUAoKNvLhR1Ed69Bw0pLWW1Jrqqvfl+dvY2RF1CL4/mpfRNuxPIYGqxUo4
GJ3MjLG0ymwVSrQMDAQRYgiui37H4gx/2I70uksZ+2iD8Ex9HU0gSzs0xPQrPZOrwtKqLapMA4SA
HJy1ZL9F5n4auGSbfs+emcX0VuKaM+Z8y8dgvBmUk1yTyIgGD6WZ6VQMTTx7xojW2uOWKdykh7Lu
I/1jWYXuV1uNNC68W1trudnoNCHsheTTXlK1ynxJLMxyjsB0spBAXrQ6gavs/eoGaH+JzsXZuDs/
TvTIt2yjY7FgPdFNOvZBCp3bXjiMMgvBfs7n9WGIw7rukhDm5RYkwBEsBqDTBzmXvbXXn/zQxVh4
4HvNIb6o3eL3T/Te3fDXLfYHyNlioEJYZzSGGuhjiBOysB0XrN+qHQCGoO7nuNVDU/uYKDUdw4L0
6z6MNtY9de292U/zoR2Xyt7CGlVIp4kNmWPezB1+vU4EskXKI0SJYQCf7g6bMN8WSYgz+We8YV6G
MOk/dsyVgc83awJeOlMt7w3owouaqIwF+D0NyDKqdPOEyzB/xDXU9tpbHOlQ26KfumLyc/qVMAqp
P/K0cMqzGidMx+hPvQkur6LtSt1nFeytfSCyN/xLURHT0RocD2FoDWHuVvEhIRGLwlJx3oIJ6ihD
1tnmruVShInGEbkcWGWPxJ/Bv8fGnZeto2E0TmpDoserNfzta+fsZfJ4oaLY8LwwsFm/fx8CWNUl
K0Ba3cAIinZ8ICml5U+ZcrMScCv2MiDUHdVBcqmR63rwSHxDe9cs0psudC9u9m1rfU8OG1AOSGbe
RcUOC6RondanzqykFMQUEMQMtF8tJqZaUUuI5surUOisKI6XVuP1JkZfVRWsvug0pQAnQakpUtqS
7Se+I7sSy/Hd3UGvrFd0FeCgB7HfFZgArUsLJKFLMbJXzEHmfEGOIHzgM6zdjt/UAQ5LAWno4fPj
bwAqVXeGctxzFlFP3vjQ9TDGNkwGvWWgLGRzxPEHn+nTJSZS0G8tU5FXV3CNc9/ATOcMBt1LwtC1
20Jz7+L/Re4AX4rOli1qLbx1NVdIQgBCJgpQ57eCiwJj8fSwuffYj8AKDhiqghsUiqeD4np4GFw0
9pv/6LZETC7S6Xr5/ud6qLoB1V7RkpfVGJ/MXBNc5Ts7Nm1x5keMqvIaHQOKhMPhMC8A2wW5yrIV
oCUfp3MXlnl/M+Br7XUKBza4VRQg7G94BuxWCM2akwAHbRxNnXkumTbBpuWoEe/aLJnRKs5e0PZi
xVEY/xRnCO/v+bD2Ld0UZqcF9UaWtyiSSgg/IhYyeJH5DQ9pF5a/d2AW7FlSHjdVCyqS0+f/yhiB
b1cWnDQJP4v+H4fjbURMUPSaRbmkBSwZdSXIAk2HgsBSiVJLaPkUzgqYWwoDc7gI3klmvPuMtGxJ
8/s64OpumXEPzXxFHmKlveDxA/RU9N9DgwsOSNn9ZS8k0AKLxkdsaU96PYHWw3S7NIK0wU1hPWnk
4adl2d3jehH3jkfBDX9tINUZoe3MEnJnFG+ZxtGscredHkLbulA4hTjDkIMf5+mdiR2pHF74/0n6
rUWLeKpfHvj77VYeAuZCCYQ7HyL3dUsTZRlUZzwRt2fK168cA57+dRAgWq1ZCu9dwlhhZfJ9+8TF
hfxc2CFv2LXElJzxvpco/Hs/oTR7WQQGBr+pfn1jIpts3dVJt7w2vgc/Ue8oHtDkrjZtykeqrjxw
RJtDqn09bER4wIDoL6y6g/TyKTbgs0AV8+UBRSWu3oHMFzVaxBHp+ZmhbreI8QXhHpkF76wZOZa9
ADPJgq24NsAYInlB93THtaTbbueFvSVX4P+yAAgaSb6/+JUct5CVhhLiYLyDlwzxDbuMM+b6nrnz
aWVKVmgFBVLxcgUDTHpYJpjvnLbjVgkQ7uogWeIsXkuXxFlH7NZO7dW8ANGrTPqkDKt3SqT3filh
dBdgIHJCyXLXauRpe5lJArC76QpDIU3ZUFXJsgTIj1DWHlotSQv3gaHcwVDbeP230cTEnFznnkwg
4NqBZLQ3tgU1QZVMvdySFHDr13e6RaqAH8wkIcVS9qNO72ptE+muRJRJf68iEcD3yvAVl4q6pm3f
iW4OR57ukIxCjHpOkGd5murT8Aj3nwSEcomaTXmetcTL20zT7S6O3c0YuX8NTZ4o2NKR6eVae03B
yJvEcCsoxMnrxFqJjSZ8OWYk1X4RjJmwRwIouiEKm+o6sCDMugtcwGzzKNJvPYJHoRb29uoEEtn5
CDyKweosmxBIgDsL0kAiMeRYJcufhMSNkqhUG+V8jUGI222F/wnisITrJSsr3YuIG2vzkmQEY4S0
L+6i4VXEJlnyRIGfTWpnK6HLs17b78vbctnzTgjajWLuMgeeZCcGZN8/o5i2V/VMtqIufgnRxUEa
0utfII6BXlf5aBi3FUZIPtMf9tkgMxemIl7JOIkTnjD6xdS49NTrKdqKnzJDIfqhrE560abH/HO2
i3H2RQFY/HDdsSsTF6r0IEhIgQtFPRlog5VF/PuNSTpu8LT6H1UXPUPul/OyVYL2kW+moB5POOvr
6rtfUwR0F9qdb6KUBUoZSzynaC5JgHGnNf5OLDiouJEEkHDFtiLGzNRT142gY3+exlxgEQTvZ5PD
OGfzZ+eOnO5hEe31BksfW5EW207NSzfPCP7ZoUITFksuKPqk9UOeYymSrOI3gGE0UOphS7fgmVYl
twME723z6lluB0LAwldOUW6n7mL0v/wUNj0Jhm8qcZTwZoMGWnKWr534zOTDVAP+3jny5Zq1jkEN
dIhL30HGU5FWP/Ful9e+hvaclSBvmrT+uqiKmNSLnzgN0SiBnMcYsOLDqHMTzkhttetLS++tzXUQ
j76OVp4Y4+ubJP/lBP9c9tjt+XWDDslA3IUHD9EfDLdn9SNLUKmAiSd34ZV/M8vGZXvVmi7R2gFD
WI+9eDIBJdB0WcKDpdxM7SpjWhbb20vB8iaQGzAuApBnkKWimAt0JzRVNORJljJ5l3dBvNkwSVsS
/3/AS7tDMlG08m5uhLE5+S4AEta7WHDGJEAeQl4x92tTEvJz1ksWLjCLhb6GREMdPup+2shXkM4G
cKuz4QmymPtnidrHuP/J+f7eQf/51RxGQl6GCwA/ZP3DCnCKCpoo6rojaIZYIeOtxbDEiQ1ouyDm
kF0MKiPY2WbQp4hNYFjdMZvuUZLgVBNyAbXc21rrE/Af8lcmbkG3uw08YAPCJSkxoPI8OCvsZIzr
Xt79W3zO4SXkaYq9Sdd2Bl81lar/+EPBjlUsxYt2o9k9TctZTmFWAsv+fMEncLBMgYZuwHug6m2T
o3AJ0mZzmt+Ig4cZ9OIN09uPc8oS3Ys/+g/wTfeM9lHhcuyWVZubGCXvQHM3B356VuwRJj00SwlG
GMD51mM9kQL+2rkrHKT+xsvh/X5xuQ2kyX3+lwj8L7AD+qviAp9TE/ajXWbJmU5h4qnQLM3usGXJ
7yqZ8evXkMO7rDBnodsdt4BhNBFja5EWRa4rAR267jL+GpJPm+JrH41hvpim+6af7rZYMZi7qvoA
kd9jDH0Wdxl2jV7RkDvrgmw59HQe2nj4RDYR3x/ZGVtOqo5drNY7VhE6tZWS0hv9AKQGQnKBlrCX
pNKtcayui/6Vgq9QUYc4NtZs29PZIyni9UlPXrczEfcqS0Qh2ACyhDTSFhrp653fDru41OxM1i4q
hL4VFxJ3U/HYULdXgCTz2Mg5J27hiSXnEecnOkXN3hDMmPgLtyWO8p/9PKckxiQ5XCG/KFBc3dMW
mRUrljW+zl28r+E0FEiUiTeDbogg/15ZFkHUI1Nuq/jyhq0rOXSMyvGZReadc+m3P9iMzrJOnrWi
hUIyX7ALEHRCeXTHktP7lLvnYq7OeqnytAwZF2MEws14Tnl4EjhWTsRAiJ7f2UTwNeJq/JW6FzhW
27GTF38L48iB9fAtbBaua1u5KH7RMXdAyuqZ9ddderdmaoHrbPYJmsgIx9gH05mkZpIe2cUAIpuH
cJYgl4p7q8je1GSEOOuOz+7obHP/u7/mzLj6LLiff3c2T5U4d8qE6EcDCJqTD3lqO8CKmecJaZT8
X5IrZrIHpwZhw3SU66nGie5n4ynFHIyt12iVe1WhXF5NLivqE55JlYJ0NpC21jxWa8x9qj5Al7Ki
EESLpjwPTFu53YqRkjOOVHYxYrLjQJsjQF/oMC2pkA9DEMOFcWkAnt6SecfJ8BT1J6PZrhcJgvAz
5ymdwkO/MFFz0sXFUDTYIJED2sdXrzA6DImfzlShoTF0Wd9ZGrLIJt9AN/zdb6vwXWAkHXl5Mq3m
jrJTAZyCfGIOJv1gNJt5MKhuljED3ieB5uoxdm5dKaJQnTBGk842W5VYlQMaaanKwoYV0aZm9F5L
g8c7cLTb/k6MHoeE783NRImMXCnvcevQMOffVud63KMJatBOwDYgqR8Q/qpopJcSdXo53kFb1j8V
8hciU88kUjQ8bZNC03GVWmzROk4sdnEz77DcYu15VeOsb8qjyRwvGHP4BXEvfqXzD3KSQx3/XFqa
qzXiEQfFcBbhoX4+ji2TUp3yRNGw/fHZfySsK/8BpUBHQRIJZ5giv8M3V7kb0ltwVm+6po6roh3N
E4e2r+bMKGQ6+SMQSJMAKCU7OdahEmfrQYvIZgvIsggcPd4V2YS5NnUYUp5fRaspMX1DjUAgtrdJ
722nf0yP95iw8ghJjCD/hKY65NlxYylxAEiRsQ2SR0p8GqTsXiFPz02Lt5YHqK4THD3iWox1bJnv
Jup/ioeBmBv71R9dZ5z71o8nwU1RfN3IKRsHyHKuhrvvEzy1MIvsYMj77MxSp2D3QzOHTpKPssAd
tHyWevB0Nt+HA6Jbj1pRUmShdFO5YLxJ22EV7fZf7fwjADBbOjGek6RQq4oUfZ6zbC8EspzrIWmf
OET5uRJDrNyVjqlUmI+M8/cXShqhEulBhmDUJnhLxX3jy/ALP+TfbLpo9oh+JWtv6O0BxH7JkoEw
uB7SrdaSD9dGrWGgH/AGKkSmeGT3DOuC6gqaBFOhjluPWwomYXaZJO2SfJhfr4xBcuKM9Z3c19v5
Px0sL7BR/1Gz7RfSwJYWmPZBkiS6IR1mpKvfvJ8kBTEi+6s5AEYozj2Iue3hivxTIfn0N6xHdcsh
GIbLgnVVXav8nPJeUQKSYiTDBOkv/zCuUmfWBT5wRKU7blMbZjRynXhNqugGPPtoa3c7JDsr+6nN
YZ4PlYYuZLuiGdlMi/6XRM0YqLLoXE20aaCS2fDy/VCBCXvbrGQDwOO41sbJU3Aeax8Nadpa8W4S
cG754GH339ougWQjTnZeSy2FwWvWS7NvjvQrAjP5WOZ0hmKdAOuA89r07Jwy6nuFWL8KVMo2trNO
JbK/CkBkcJCi+s7jaUijhyvvCjkAg3FBztAFlTAt9oGxCoc3aqZuvWg8cEk2pOrvVi0AACNs8tuT
9ZQzAVZjkptytGNZEzQshI9WvwqkNk8L7VIIFaLIfNKqz0dimKyXzM/aRfdH0Lofhh4XT81wIY0E
O9bi7KoCiuexlGJ1Hx2wRMAmZo4X8JstR6OuRjSwAPNUEoJAJskbBLx1JBa1RctSse8J3z3Ed9mM
KP5FZ63hdB8R+3w0E6Aw6j/+IYnvp+iS9dfvOUOgjrasIesyrskT6TcniAJr5cgj+OFbUP3on6cB
DMyfFlppmdXQwnUk/hc1bpKlJ06hkNQ7hxXOEE0oisAqGCXP649PL53lpn0fgKwmM89QVCjGjgjz
mCJ4q/LiDJTu2RpDOMCZhljMKRHULnP/iYjoQ2NMY2trdh4MBffAvPD1ciMWmJ1ClPH9jDnpn1+s
3W/iLXd4Tz2BoaknJRgrf+HKCge/3MAj0pC60y0lh4gmWjidE3XQLGqR36klJjv2yWfND8ycWsl1
bzaIVQUUMQEExvL1ruB0N/dtI/y1/xPyQaeGovCjR1WviOj+wGLKTq8O2hGF32GAHvIy9n48swq1
4vtaWmfz7KJQ2GH76d0geL+3znAYh8ODfDBvEKfL0kXmGUb7BwEd9/8fBGV5xYTdXZPMLpWa/uAS
7Of12WldPsvtvXsa8mUzYBpe8ZYgLd91Ib4yKp0t+wihGdEFQmo4RymW46qji9+HRPtwIhebN+E7
yP7Ga9oTHEOLC+auJkFaPF19f/7C21pCCrgHMvRyAJhcT28Yo8H3smGi6Yo1xL3T8WQ9IOwXYe40
XV2SqOn1WVIR7fsNWWW4d0IgChkpNT8FA6zuXUJJucDGu1i+UmdPUZMGcAykd2QjGXXueLQyX7tp
nfuRFuoJw+lYKQcqpopjg03QAXtFCmMXM83lJMEHmraUdttgOR1W6z1QB7cwKmDFoA/08N0QdzQo
3TCV6tRkzqwHIyAntJt4APVAK58XAhda5dtBCsEh3TBcp7Q4Phe/MWWM0Ahg8u6prKVxyzhcDEP+
pHwWZu4id4Ciq8UuZlc5VO24eV7SWESCV1HMIl0QoPWmlA0KzaQRnCJN7M6FdJwQK4CXZi7BBN1X
ZZZD7LbIjEU4sLG+wIHYX9HHos7CHxV/RsHs5I9zPQYMUamFv5+OvjXMid1knfE6+kPGvfjzJH4Y
v69+cYpxX2dfWrZKEpEBOBlvDa3sDFln4pVQg866NkYtHR5uFMvtbLESOIh8NWpTQA6lnGRKQwzg
mipXpiD/VLF/ZRz5q+ZwCD3RkI1lAOBeuciTXEgWcVH5JVliF1M/QvAHa5VdUBlFunEbR2yw9y09
YlF/eafNhVWMImyNk9bWD6q7EvpqNfsttSS8AJlauWRO0NDA+LCFxwUNXrH4G6THqucAbYBhPmoy
KFU706hcMv9HwF49rldbRvnlwHWX0cHNrTJ37ko0WXmr7O1bhugC7CAZUBuITM9Hu+n3iXq/obD9
YVxaMbuU4bEpCLj6byTJe7XXdgS+ZPeZR9IU9GqgLY1IGOB2i8GRmBn72MsaLY9s523zm2F2Wgf/
zz1ljY+Sc2na3lWI16LyydWBrVSAbpMrldIrCotGR4cUYf8porEvxr5SAv1IGSD3e0jdF0wnoKy0
EkWOOcUX97q+jja1DZ4AJVdO0peyG3peM4E6g/PXIQtXVcJy9380jRqDxCJBBsGzGjPFTwNC2ENF
Gblgif5nYBBCMEl6YtXwGtJCZHeCKp3E7sXxEX686uajh3VtC/YelK0UJ3+Dfkz4yJwFJSuPKlQl
Lb0OVtGzBOUW0TNPiZawlGmkj86nKAEkO+xc099JMbptDlK5iEEGmKFkoC2jisU6SHz6pLBZV2O3
/1Ab+psrc7ZHAquFkHC0kq62zxij8T8h4w3Zsn4LCi/8yc/Wmupqaw+nF2JiQ2mE8JQ/JWujlgB9
QI+Y5OPfNRwnYIhfmIT/UDxg9p1XIZwcG0uklL82wlJVgp94UhBn+lLPozMBb7Yr2AtSjkZAKYJ7
0209UBmloiKTaBQbMnsTP4G5GbUnfsgkslG8TJeBkFFhiL71vEb8P+vs5XhJwGSOdadLvOSqdcMW
IuETpW0ClhcyhAfXyZvLW2/mohRzFGMVRoXFO5T3D6jgnAJ7XtShAk0xQEimrYzdhPJW+beJMoSf
X1wiBfYJArAYK5Z1NV9xrpKAUt5GWixSI5NoXLgTyQad+pPLJ+rF2O0r0N/FecAoXJRt5QE7wD00
LlkOyNKZrW+C1rUe3HqIQL7P4jgar7uPb7W5JZ3AsLdI8xRwmtIoLGUSsViXkCus5aUFHe/r9Yiq
gNbzqZtAR3Gt66WgOrFxxBYMXdtwwHi/vYcH6V3JjGqDx9DR9XXEtaO63081xhu8Qqa9It7/A1Ji
bMNMZffBMjS7skn7n4AWXg4Wex6nkGbSIzk3O7o3CwUaYDkwnsaycexqoeKSam7miQaXpCJI/l6u
ntvFKxMnze1tI3qnv8w7723fvvt60hkq+daBm8BpPkcZLlPWLlavpgLYngxENHzK+oIzGQ7vIcxj
WknwHdxRvkMxUhfp0WawhA4+o8wsC+xT0R6ENWekJ047YaEFffynlq20orhX+G9QeJUiZvRxXlg1
RAnHCjRUmubYyOiRztX3pAl2tHmezR3JytOMwwhwXXkt76Pzbgp+cnWo6rEQ3zeXEX0ZX50LZ4Ac
COPs4zY0T/JL6Ze8MVUzXcIWeCYzZcDex8D1ronDUDnQE0K36SiuuCiHdmXbLXNGDCq2Ua1pzYTO
p4a6P3MwQmanUBRkZkDhTIo2zh1XM8cbS2Vhas0xlR7dINYpoDl2POGa6L4jP6FZwtu9p/t1eph3
tkBGuhMOC20apZVL4dLrDLf352VR0IaYIwaYQ42X6N+QC0olTcLk8yKcei1QFHaq4ED3VZedX053
0io9E82cCFyOL8aRkexEoTowVZ8DXDLsLMQTIF5hg6JL36zk1guAeR11J/w/yOYGgHHTYBA5cUgV
mQf5JjPnFS5SiaOV/MWy4iYT0q5cfy7Ab71MP0wFCwFgyazF59FsOJpc7VspWOI3QdKgeRSxayDt
JngYOhQQbO4ItIEiUG5qHfehu4Y2MmAsiF7RR+oD/DCRHa/esi9DPkRc2pijZQbvNYtCYfOiVlOH
ywpSzKwpWw3vsSeZ9X28aA3VjDM8xqgoi/C988CQCVcpvWOxOqRWxM8IVunOLyRRm9p/ET108bHC
oNN1J5hnYDGWnQcx8/pyjKxhWJ0ps5cEIrtQNLq3/Vj/lcxDkcMmHIt3U/X0P4Eo3Lsh2EYy0Lt8
YwQBDHmJA/hN/uTadC6C0VxftJHG8YeAjtSxpA0fJLnMoxErTYSGyADLc/Abo+5W6Ih4Z5MOIieu
y8uQfu002JdYg1g2VtLFJax4MySi70WPY+C9b/lTTMpgixftAOoRcnCvMALHsBa8ArBbiqx2SUSa
bkmtvORZmchnnlzWrlw5OSWoX+1du/2vJfcjVvVB0a4kkZgq2Deq1mX9YLHTpu5vUcG9XUTn1o7C
OzYc4DpSeXWYQriK7f5NNGi0cFELC4V1ojUj6w8gQpoDGeGGgfwA3kF8+Qjjby4xEk1GMtBBGqWm
6PNpllFLlUZuOwSRUK6nGfxFvlPgfWgerENhtlH8OXiM+ERf7PaA14wrNdiuX/6cQVnT35rCsZ8y
Ki9hfEsGCdhwF+XTBJg7JmkPwWNkSsr9AybX/UjLrI1BPvs6+OouGtqGP6FBp3iyXOFq3Tn0lvIP
EurF1c2JIWDIlpaRt/dnnYMU2TkpBwNqe31b3/K6Kx9MTL535cuWradsIJkZ5AfRhIObcmFHayVT
/8udKbfNNzbHeJ+vzYLs0h9ishkDaXblT/6W9Pi1dOfae39zNtLC0uERAM4O68SLmk4Gypak08xU
YrQ+nM6s3kUZEvxyl40sH/M5jjAnHSsxBf8SESNMBu8dVBZfOBw0u93RkukwJedm9EtL8Nc4H2xF
xDIMNO2EiOVdxZczLr5o6aaBgS0LKo/mpSyS6Vh13ESg18m1Q2/8hqlRdvaMk0t6wkXgIRHgb6+H
KRMNrnCbIRkoKZzajw/EzB992UXLv8XLr4SthCEZdrA1npBqSQ3AK3Kvw6vGjwpMV5rp8VxyfCdc
flrTLAuNK1zlAWScCknSwdunJl8Pd4asyESKjplEJUCw/XJYNrGjfYTtiLYS3IfYj/yCfSUxLMbT
fBo+MNVO01V70cF/FnzFSTmIfMJvyL5qjI2iQ6MpD81rRGgyYglHDSmyfqfE1ZJdhAtdeXctbELE
lvsc/j7MbDRv27z+xAVKFCSFFMOrcydAtMnkgSYB6KTLhCxmlpDXj12uhMb6sn1vB+q6VeplvIEW
87mhpUpMybo53T3s5ZxPMUEU+Wa96h00kNCPrrCJhU3lmxTF1QR8EwwRlzKo+YvomWHVWAsrHvgr
r86HzpdTeHbe5iqgUpt+fnaPdFNBWealdaTSN9FGz/dcxCFtypLiaAx+v3wig/KC+WpkCakqjvnE
WjcZrBS6OONfQzej/1vvKh6v+dClHniHIGY7aBAkh3WmgjAHouMG/NwvA5wA98Ssl8c0v+wJh3Rk
L1jbrp8smhqVhErzwzJ7rl6TwzAM1o/UFKGwEEDqbfFMquQPosEcifPMPpIxFHROIvHcmXCOuJsY
ATAUNSzhqTkM/xXF+8WZFdxn+iHssTeJM52tEapSverXPm2LACi4WOztOo+W7fKmNUet9KreEtGE
4iVdZlVyKrHpKGSWgdm0F41fdLNwr7nJwlH/YkXRu/EIUJdfrzD6p6kVRXrWTo53Q6eBQsltOAtX
G0qTgRHWHeou3E4gBag85bWl5AwHZm78c5Khk9204P/f/PQkgL0CSyYwNam0gtvLM8FkdY04n5hc
pIpYcWqju6HCDEVv3lhD+B7SSoDW7SraBnaB507OzGnH2Odd+3fmDTaVF7jogbF5Sbo6zCrjWy3q
G4tvj4OnppDeI8+KRutQZfUuD0qYo1SFOwTsUPw4aVMckBX+o3TJ5ZaFNj66fWg2r4pUfPBQQ76i
zS8JTKMyYKvvEZz/T8jIGity4htgJky8QQH1ToLbKlA9wqUlMQs68ue+NC4PaaVP4eFkT2sSU7Za
iTej4HhRoPTYVMbxYTWr3FNhqNMmokWU3+/v+APbAcVwE1PAsPYsYv491FU1VWuC8w5qTBeDIuSy
6hpAoQagUIGtbvf9EwqxVCJ3La+SDduBH3S1mHvmbsGgZtdWuFlDYMr/7YgNJ1J8ZeEfF0Gyvpfm
Zwa0m394BjPbeF9mY1t58k+DZyuA7/6fFzVnibTj9m3uqrvvdLsYE0IV5K8Jhepmdo6TpdG6TS78
DYT76jNn6v4HUJcVBSHHyVDM/CfwEpFQFyC7mE9aTHmlGv/nch9a91sMbPmTrCUsP0BGnj7bsThX
YVZfs/E9nK1igRy2t9+sdVEsk2p+xkpf9UHYFIUC+9kqxjMhOQHSUAwHPqsdiHqClvP4ltX5qahH
QlJwKemPTA3YxBgBmGfnzV9EL9dhc/x8PUtxvCnGQlv7G6JPdQdPjy/Qe13HfSYHSHWX0w79sLB+
MojqXTg3cEimJss+lc8AnxRYrZ1oahb+OWWLCJyQAT6qMOmOFYXRpCRivszCZNUERLuGAJjr8PGF
foFeaOW7apAzpX0s28phvzdONRucTQCOAIkVV/fT46sW08MH8XlfsZE3d7G8AZ3axOovyLC3s4hw
KMLZAQXiWx13LVDAqD3tMC8P7KfnhH9GxIG8MK5PMC12tc4JBVVPBGrhcjIsZIFFuMJaYiUpxIRv
0EvAIt9dFvYpZJcDXanAw0CTr73yeDeopyUqDgZhL6+NTIBbAJ6UaYIzmMNq640rQJhdu3jw3Wwi
6yliMtUczXqZyEGlgffBtWghTUdjc+wdsDh9tNc6j2VA/nx10heDPGA7MHde7xCSemiWy/AunhxE
KsW8QMN9K3FFP1yN+5GzesC/N6Wm5REFpjAqOQ7VER7owv3c1wqiOq1ET/8JPzn+jYXgGL9dMxW/
c0oBjmhY/fCr+PQJ6zptls43CZnZk0rqmTyucm8t9It3IXPziD+1oA5gcUsHxrpUyAvWGtPiquWv
Cdnl4blAitsHG4QC5aDZfQynIfMmHZcOAWaYvHu1pbYKcQ+nabKoUVlOwCaLVlTfv6v/AcgktwgR
3G6IUAA+r9/3tE6PDpFUCcB46kN9RS0iCYjkOjRiQK0HYo4O0EddTtKPO2rUy3/6zbBtoPyuh/8/
bVjB3ctwL8/I+v9qWtv0nSxvj9nCkIR6HlcNzoHj0N2QS/HsJRHgd2ziVI9lqAsHx8J+wB0ZtiMU
tyDKIcalPO56Hb6ZpZ9iXrhkWKzEaSkes+XVzEQGY7JHVd3rEWsH/Ky6YyFAb4ef9mplelr1tCge
bNklfjHpN3gZa8v5BEgLphyN5aRsDAENqfUXOfHsWu38C/H+HEXZxzFQCQaQYPrXwO4UjRD77dRi
fqE0OcWHWJwOJFg96z0pM2/F8zq276SUtOTtXEdFvMfAC+S9tiSwrOIBTz6sPQQrWgVzJaJVeOiN
6OxngVicJS5pB+UqGQMxEborKpmMf+Pa94S0P3cKc01kR9U4O9+wwzovdFdEbYHBnpJICyFYNbwc
W7e1T1asuEquYfeHsgSuWGpIn0g0RrgdYS9MMcVjuJ7Iv+t+83Thv+ljUq5GII55iG03dIZc1NiH
d9VhZArikdlH4COSekMeFoNKjSCNrVStt0sbokteYvIN8DuctlOQGdz153CDsEwEhim6nphemh17
Lyvw5jpaJPadxEdKPAGuWnx00G0rj49aMFNjZs+/eWZWP1z/EOctCcuA4/fznZtIAGEVEQidPBxB
VQQk5FgKVHpLV2wgUaT9BkFVEXbVkoery0y+jEnlhjcwYlnkr0spxcQI8p3fICsS3xVhMSl6JD0J
93Vn/l+mM4uX11nNJ9Yb01CpxzE8xFyMj3HcsvVYH1p8z4RsnHuXkNKl9R9/xbJFNS0K/T/HQCFZ
H+T3x8WTiIqGtN9U0Y7v3vMRGwOMcXy3pZI5/liRZcqitFhkiIovtZppZaG+4cSnbq0LQ5uKNiWz
hhzSh/Dy+FGjJ+HBxdSOvIajL4D+czQoY7GTfyp1/MtX+wCMCdli6l43hJJWrpMLSLhuB/l7bibN
q42ZM2zNBMr9Uv5SjnzqBcAuVPfIQrzxtHAo9wnv3uC/vNVSpy0GDRn46MYHOKekuGY/hdi/99A3
A/QPnEaW0j0tP20oHV3GhR4kUH6mIoz+RRTRWo6btWlocD+p8g1TWbSR+zL857kFakmVKoMNbjZc
wMNsAxOV76VHVRlxW3I41QOQpohF+SsKxZougQsP9BdQ8S6cSW4ZSeO0ifWkwYSaOk/NP4E8h38p
SAxFBe2XFUEEBUkOr41gj7dR4/DwwUflUGlXpJ/uuCQ7TvqBl+WnnZBUa7U6tIJMu7M8DV46GOGL
uOHGJzdaQl3NKI16IqGt8GLUMA28Pvm9xRV6JXzY/U3pYqGsUXELy4dlpiVdZSQez2yuZrEBM4xT
NpCR10e2HlWaMpabnMrCY8Wry5aYNdHgW7F8MMmvmujclspcCCrep6V/vCvs4fWZcs9ZNECYttiR
OpcamPd8k4IS5xWhdjmWzzhgi0qyY/3nKPBZLzchzdXR5cME3i1Da8mxORn27tzZ8f3OZ18pV2FV
akblCDtjwbmP458yQjFeMRiAINpe+/Xj2fc0TMrcsRUoMpkCd/L0sFnp2jcznMaUwrEHFXtDOda3
otZlSvUQA4WNrYQqABn07jq8OV7CbBrcvopgbSZjJPEELHfK9oEDQ6uwXt7sx2/YXr/YWulpOIuq
SaQMGYav9R0Ep2FEaL0fTNMXjDskTTkmEe4FgOVlAqT9EGDMEgEUI1s8th8Rz/Wcfs6A4Vc0na96
Ebnz4SsJTrvXNd8f4m3mTa8KQg9WQkOh+eJyfwPH/EabfYyEAVfqo2mReW6lW8qGxdbwBbW8+1tb
SA8YaxOmmhdtHHghFuyZ5CJgB4uTPvnvddiH76DF301XiP7EtJmfr5zQXvv0w6zIOfh/MFiZGQM1
JWf9nbm5AIynYqwFM7I5QTEH1a/wqIRtrKaddvI9rIAPESxuvGe1JBU5Mlj6Z+QptdauFE3UmuPC
E7C6rLVf1cHDtk8rE6898Cy80I4tLtkWXmzUUh400Cx6D0ozpqd8kWko0M8B+kkPEYzY8dFGD3xk
9oQE8p1OK8ZwAT6EAH48xF6kJ/krAGzN/nw1q2q+qy3K+CFu7Rzb1FJSuNMv0muAv7bUl9rwOP8M
1iRPHiEEw23zjxz090W5UPNlpWFx5QCV8pEc6Bluu6nhTreKcB5gKSFNX1cH0ppVOWlWLRD4VpC5
WYFTsH+zcoBneShsDeoJFo2ApnKBS5pPza9F+nhJa18SOOoSweVI0zSRnlKpqK5mqSTqvCrxY1SK
g9YU9urQ44HT3FWHfcwckizrWnnH73qa9vOfCI0flKzNL55v4BDmuM9S8uaea3cdplfFemAV7jWj
v0KwOmaPHhZZaDXfHvGJm0F49hv3TtB9c0SyBzz7BRo/LjMXFqnRqh2gM+WObruhcR9bqmAvN7+A
qIvufSt7ofPlhXzT5hnEpS3uCpQDjjt+9QbFg3ZUMCJJsLIQtbo+4iBF9APWHPcrlBIn/UlCALEA
7Ywlp14gxGL0UrpV5C+iBlyKaNg6pmby2mRy+31e8AyR/tO+b9HWygUIMRGMnf+sdyOoM6R5Xcve
ATakdOX4Y2K/qCT4qA9n2Upus+vS5CirAM0gEXqAkBSBHlinI+OAC9VPqWcMOTRTsZP1K7wiGV4/
1RPgOJJhdn0CofzN5waA4+RHTdhguI27PILOrbLpIfYMrdMeBzliLYjbzin5q57J9OWX9/RANA65
8VFcvRC7uYa63PcKU+pauQWNAO4aYyq+7kq3ErqBf1L/z1G05RM+2+2kaHJ5Yg9MdYwK8T2CwveT
ERaToi+2I8C6AA1sTU42qf/0gO6DPvoWk6c0QaPQhTz26OehPlbURveS2vG6JVDk6MOMdPmTn6Te
VyWxweh5lpugXsne7NwrbkrkJgpOPWltGXbvN7Fa13GjeN7xVVgiEsFe1q8qILDvE8NvrVZ2doz2
Tvq5IMaEKJCLYPNteUDnOrOmpYnmy7ns/pze6r2vQImNSRAvhFzrB7XpBZRb+lbPGBb6cLFaxWYe
jPc4FBW2f+TKS+6N9b8NlzXR8YdsCemSrbuEyrf0X5F/hd50ZQRT7mN9aFihN1ocKFsAm27ODg4g
b8gf4+tIJ8nFj0NaSUZLu4Np9Aw3rrYbGGoOrSC/c7kIR7tVaeOipcsrLWwtpb3J+kvibcK6PfVx
TM7k8rpxcBiK3C0Xr2m5YQZ1330wzIbshAwgda61v6ZHwc5bVLGZB4Ps/Q1FuDJTIuWmf9ID/eWO
QK9NBD2IjvqJuEbgrl7jkkwY4HiNQHDsS0ZbCcDdauRR3MmxXA/UPtKTuWVHP4zwzMSAWTISaEVg
Jc8xmY0DBIkKO6+fc26GV9LXzBYDHFtEBHWK8VsFsC1VPwUJaQKueUB+w1hXV+eoiYBurLk3Dz80
gWO64B4OhToCuFaQh6JACh7JFBxQ71wJfQRhZlIw07azYgub51EAfeRllihOukBOnxOiDQMxqrDX
uZy7GrihfQ8kBfzMzK7H+cwFmqX9/E5LfM2K0oLHDWth3vw4YYsSwUpdGhQh1iteUhwmo2n9KZbq
Ds3S3y2ciJz12SgMNWIhtPZ92WsGSOl2xM+DAMlMC2yqvHSH5KTqvWH29kDEaB4//w4tabdHs33j
wOitKO1+7GIEAJaqUwA75M99z5vs+6mwTOK7ip4mQ1x3RmpsTQlHgOQcVrq6HRyvxz8sB8+IR43V
GsjXhMk7nIuOFYprtg4N9fJDo6vySBwcolsRRxxYEn95Rk6pfKzq/Hx/nXOH8g0QObO/2WF8ohie
81kqmpAWcvANs0Chw/eT8sZK6Zg8RDoEbGBMMmfoPRgjjO9kzt+gNi0GDBejog2tTSXBXW7/SO56
H0cHDIPfFp/B2/UOONrnsnq+81cbKStzgb7qrkYJfXEBpUcUq9Mrz+0KXzLCaE3uLwHBvpXXOFmx
yA4RCRjThrwLI4RxLcECjFWPaodoLSGjTUQX/voT399GgDn9YppEBTCgoMkIWXZfkkmGs6GhYHKk
i2NTuBnuLfoH2UZZdBi8xHJp1hPVqaZgfTYP85uMxqyWz8GlixgldlhGnBJkE5ofCwirl0uDWg08
UfUUjm1Jx+cujRnnVTOd5c9VO2SfusNFHTxh0hFpAhODWShlXIDZ3y1ZF1iOwmaxL9JOOxIeEn0a
1FOVe+luEEagCU1Sf1RfA8Pp3FfLA6JroLigYoaZ77DL6KYdXrUuASr3KYDsHMb9EW/E5ZqYgv4e
/j41N7RYyUmO2wH3iq4vzbupPKhpPJaWeJphnxuFPuwHiGFlvv91vT35j5NB9igOps8+uEeFb+k7
Ucw8OjgSqvjqC6+BtTNHrYFHEoa6VPUXCSDdLj0yw7xAEynkeNG6M7XJfNRFeP+dUdOYOW9Y63MB
lmHnogCFPjJjcVSdOuYX7fgE5LeMUmF1zHMtkeJyOZzMJ8YjvBVkSGj+6D811c3iqmj2WLUnCukc
l0r+d+hRD9WvjQRYI31OWKfaD5NC7hImrnTk7i73+ESton/Iq6TaHbvOPkMeulw5+36HlIGlAuDS
HrLiFpBSELiVT26nOnzpYZzcpkdGssJAZ0waTCuQVf9HKIBF8wVTwOb/Q/k/s9PpU4uoOiIJc9MZ
OhLbvlThlfhaA7dGZCKX19E8tBEgQlUgG/PVkrJcpGfgq1u0AyhzKSTO/gqKA8w73irm2oMkrtj0
KTtEuWGPvUme3jSAAJrnN8xKq4Nw6fP6ZtO2TidRBPWMDWOiFBS1bf+kvpzwjw6gV4Kpm5aXZv6D
k9ZIK/MzFFCUFExMeWWTykU4wwb3TmMwPzoqmQkGyUb31qGKZYSiv4vpIa++1R78a3rt6nQqcazZ
i252xVTbKu7lO3KMoMbc1+WOy/xy3PdH8eRjVZutXgIGSQTMeg5yyNlMZVNp57tWkYmxm4AFMTkb
fO/n1mbuvyISa9dTZd7vWjuN69jWxEsQcjI7DlGQk2X+13TNJ+wDxtCsOqUeE0tlGeDQBnVRsiAX
RxrAUvXcFhV2dfJDjEMj/lIL6Wx7RX6heqE2EBDu3sG7OF8c3Rd9llRv/sMKPBDD8YzBgTz3S1KJ
XnD+C3HO3C8xXgqY1KJaRQUupknRuaV95U9VVW4dVc9+g1ttRul5lBJ39Oer1PX7umvOOBs9vvTJ
QzvNVIMYMLNvkGceTdoIHLifT+EmgUSYGpQLx8hp/AGxbY5yQ+YrGliHVCFQn1GfZ+GbArGrqyS9
W4qX78tJvb8RNcsJSd44k+D/ErHSJJQk0voPxKnoWIEj4ZpnuZBS0W2xI2n3GlRyTUNGoBZ2JSS1
9E++fjKQu2oQBMnX+BdmgOXseJMaebNCgZx2Rew2W5xrvJ9np+WzC6TopQTzAZ8ebrirLFaW1aTq
jbkId96WsZQ8e8hkGbhOMcPw2jXKHsXUUNb5kue4xt98juXeLsh2TvxSzbJGxDYYcgA5/Evn1ZBC
xycSo45DIxH9dnztmAF2OrXAlGo0X5P9gblVh1bi9N7Y/pk0VcsV60Q6xDkxQkFnlhAe8L/v4Clq
Hc3Y9ekwkl0xj15nN/I1ffYPLGvHhuhC3Mu5dzJ4RhsQ7Wh20gqk8oLPE+tBDZ8WzRxj3DaYw8at
4SuDs19YyVt+adATpDlazNhO7L/cKgueSrdDaNAAAhIUMoxkum+DIS/udBQkzz8HnTKzI/L6gG3X
0aAeQyC9WWcwJuq/0CuBk/ERU1Ie2FEAIzYmde8Y2xj1XfVE9EayURREI5G1uaV+2/TN4ppE6kSB
EooNAZRoOCBeJhZBTlUKWjoM7OLQnBYZP20eoRA8mgrwHmIvGTNkGPG4pRcBFptVLyv6CeAr1RiU
+RxRf0VJkHHkbcWgvXJup9u5hOKVwxvCG9SAHNjsIWUA5B9s47Hq4Y03DvSSfLW8IDAdPMEY9ejn
2vXQoLzCcoOTgu68vH08UXyWgwUqH0Ro9rv4ryhaMe/PBpCFEY9AsuV/6Eayh+pS19DIXTE9GHI9
q5ISx088xLKR5ItnS1oAiv2FneDloTnCK90vG6SJ0tWzsQ0xuhDKUBhhpYGdxahN7STuvBniMDoM
mQX0347UUFR0OrmmbZOPTsGvHmhKmAApJ2ffH+FBPjTHK99qMNvEACXMcvgS8amOs5VRbhEa9GXC
GdxV4KCqJf0DS+PMN2bdI4yjwpKO0OYkgSWWkNsgx5+fyVWEf7tKEprI8bj95CmzTC4Tgn8Ym3Zc
h2aQK2y2T8tfNitNQy98JZrytM8rEe3z/T78kbexxZmxK1tJliSykOFJii/5bM1VsSUGeeIqZU+m
WEFQpgLnqwB/9U1PTRLyzva2Q4JiNUaocYk+YZPy8j3tp/wuZF2+o8/rk7WLfdRBklGQhMQH/kLz
f9SVl7J3QTt0cNIrBaDnS7kQchFfraptD3tSlCJCQ7JeyCIn+E0/mDFNAz9MHfEIKBGPhmFxrBAY
K0T2uUgqolnf9aNEsC5XhVXPAIa1AYEsWCknLN1pGmPiCag70lS4/O4q+APNQsM3jtqFnz4tOs47
uhA36IAccH0/3JrXU/ANYPi8vCDD8wO5PW5ZgEh/qMFGKFzqhyMgGC3WKE1CABHoofdMeMoRTglz
72tigmegxHNXTEbXa34diJNbyzri7IwzOmB7dK7Dmxxhj+GKYrb640R2pfnrbPnTz4/2t8K0c6XD
abOzuAdzEl9fjVF3ssCw6rNmrzMfowVO+Kicm39kgf/gvMUL7qa5kuYUUWlUduDm86N5SxFCrVS7
zuJsgyQy9H+ma+Cw+zYk5x7frEwreWgNUXsudkueIcukDnIdUu3Qb93QrA1Gs67NmFqZE2Fgb7k4
BUe+e4jZKAIie4qeMqE6ikgJDkz59zGXcOxDSj3BWrZBXzBHI/O0HikuFKwkNICNGN79EdhAJv2W
95oZmB62i81UysxLV+sSGGW9YzEwiYsF9RMh/ocPwBouXoB2Npq4VMJWNycsDbSzEEL0kFQZ/t7R
EKYh2Pc6igOiBcAiPdRgJ9tmqH2RQRktOUQ5LOnRn29W8r+dMDh3tiu5dUvCmRZmSd01hAOlrSMG
hEnCO5Kp3m/EDpyUtmDsmvVjFPsF12MH+jMBrnuCf+jYew8HwKSxfbn58eObF/t8r4ClbfN2Uqcn
wecPwgyBktd4mCBhW4hFtY1GE5+8wWGwVH/URnqPEMYK7N//Lld4K/iyg4z8s+17f+M4N6AzP3KO
keyqUxcwETehEc045u18OYdSX7YOhIZBkz5OjzUKPfQvMxOqlSUjw6YXX7vQWs9W6g0GA7n6LNrc
VdVSUYax9nnmHg382Z1H48ir3+f8yGCJIHZchBXXEPWfaq9RmOxD6x5YDHfSjwDyS4XeoYw85AWR
z9zs6LsofaS/tT1P67sBFXwIVcM6fkmbIUgT6MAerlQCDjjcrPM9dvvaTR5ndIHxBOTy4qkiLa82
OLcdcfQ7fbrU4sGmnjxU5/id66UQtDBNGF5AflEClbBQR1kek2rG5aham2nNba1aSgb83YBsYlxV
KJXXAoLfJ6HasvOeNUk+GocASn5rGBZ8EA/uE+peYmn0sTIWSX9wZp16Gsh6p4Fx1OdLMZOZyw+z
YTjFyXTGC9lp1pGz5V0pEe1hesKpA+ImcTVrjfFs/y0gWudZ7P40PB9qNEJp6YicBkEImW1pAPxl
Egt97iG1IrGIYFoHgNDmaH8ORy3A93cKKkEJ7xFfEsIwqClim3V7QArXKFXu7XtYZNfPNVEMRE8I
BCy6ff/8QzXHbIUknmq6kcoE9AF8zKkwqAkN0jQWyR31DFK/LaqZrqyE7jRWaXQ1GPX+IRjjlhZv
DK6M9lO1qc1pgNBUJlklotswvo/mDjnlQKJwM9+dvpuQykj23dnHdyhTuY1NdkARDiA71iEExcPq
TRHPqLSrS8hczKftCYz3XPqP5tS5V2xe8NqmLvPStervYT49+mYrv2SGnBhwT3HHdqe+xPkYOaIa
Y9iwFBcaBze/KwG5m8aMkPiu7ZJ0pTJC1hbmhLCbxrY+kPxyKrPuDJPY2YKO9Zxmt9lfHfI3IVQ8
ZJOPbDgF5G1sakQJSwSBP0NjRpGdJ9VfZMabUkuO8koUi3FKaEkaLeoxG4fG7u7D+NdzWQjBTNve
qDA9WoS5cgwRLezWbUBHtIv7HCsFj47N2G+u48OyZGNkxH3hM5r5tHvQgPbdETQPwnBzBzsl4/9C
o2zhqsdVHOM9TbeUaOCfpdwOS4VK190/WoDWuSEq4rnYxILacixrrXvGJg8EjwmBhlePEQMkZnIu
RGykeKGhKOXagWacfD9TyGzmf0jK1jCV8xvlNU2SLvLxCO2mUsgHXrHa3gIkz8i5PC8eeu/0ET4I
hX6kRh+7J5NMeiO8sV6KdrTBtx9WoEHtWnRmmPiwmtbjP2SMQTgbDVlCQt/SPCTVs0j917YmFyYc
nSnQ7IlTGiIoyBnZOQ6prxlK+95cLaGdoaJULZj0RZtZOtrcYfCKAy2E8lER9A+XqqrzqZ3OKV2R
AgFu+EFhEM9Z6mnxY0PgzX+qcAiTgqcBj75u2XyI9WH/w3+Bo57SZQrs8Gj64xY1RnInnkAIpYi8
L5URH7RcHA1okbtRP0l5d9/+LFJIKLLedhh1SSda4LmclkIwimJpR+1KVMpfdoqwqKMchDHQBFmQ
9OASgdwwAQJvl7rrGHMMvGNSVK7Jed3cilo/VdKxjrZZC3Xj6hjJrgy6IyK2zGRTDyLCaxx1UYoF
/KvXe2iETDvUi+XnuofWVawJbUKeoRJWDFCEzw8NQrEKMC/RW6MkSB95RSDgii64QDLn7CoGDpZ3
EuDkpuUUlvEN2oxnhxOkwTNm2y+oYqO+9ryhAqugVFl9Eyl/nCar48yBhrTCyUiIxQdvFjomPfJp
DbLLLCvTEwwg/eJVZ7K7G5jktYDEYESgwEwxnLftD1twiiY8vtndOnwu6WL1QkARs2UH31P8ap1/
ziNFzQSV1/owvCHth2xu47vGYCuhZqCWzYvsboGe+hiFkaRddBtItMsTlSL6/H6hQmUq9sr8qWBF
ikyjYIe8bn6j6W3RKItzXTyKLxedbacL+cN9cTwP3Vh/c4OCmSN6M5Eo+vcWffF8GFmjK671WEEv
1XROSak1LUFKOn5XgowU5td+NYZcg05iR5/3BJ/M/JJuFdDAxBcT/Xm/LauVwQNRNl8kFho30Jok
dXTOzSpenDWP2CuwSp4j0SNa07col3MUHbjCVxzW2083M5B1astJGm5p7QLXZAEdwJSCnVpXMnbm
sV5vqgSrtgfMTMGC+sOTh8Srta6ddMXeNdWalwLa62qVDmRwl6jvBUOWwfXjcgjVOqJY1Rszmqmy
Ag3KjXWeqLfufG0nhyk6Q0/6M2WUrSVrjrXPJoP0aSPap8dG5Jb5NVOLWtHzFtyNAkmytTe4xT8O
tXav/qb9ovn5Y1XVAQqgjGldGzLyCVRQgp+wN7BTFV2B5z6vC4j8y4Aix4PHWGZgdEZ29WqJxSP3
dsk+Na+/qdUvr7AFABGdFBXcnp9hPy+M1B4Qdwc3I8JpSRouUO4eLx3cbNwjL3RIUbfbTFvLimkA
/xInS+FA8T+3+0rW5Taiv1tNBp445kZs7UkgQb33jtB3niwLtebqmQVnUXVA5lGc4mu36N6na/iL
ntx2cHiccHFG1c1UhMXmyZUY04jNHuvSEarzO4ZaELPm3eagAptZath/cLJqXTFZRL1pJE5a9Ui6
5/291LO5NoQBXXSIbCtUhHY2pGaWhBPhwyvIwWhUAm+OyydSdwfzSlqdGvC9StG9KxvNnOneXZ1o
4rkDPcRbFN6La/ZQ76cEMj1FEy9fl9BSSNG/dTSpi6MTsNt/QRS9nimz3ECGbnaDZkX97ixN33z/
6Uf20q29+92VnB9npJ6BU+4wz9a4o8NqPm9cQJBkouW47k1OajMYc0UkdRWkpS7k1gIWzEtjxj8X
K29JGvBaj+YvuY7xp4B0BE8bt5ehegywTJ3ssOdSiSRlcUMeAnt0LnGn7ZhJf62QvCx3ucGbUEna
IIXCs/xgU18C8Sdkkii4DRrBfSEeqjjOVJ5yfd2AfR9o/Zu4IDFxyFzC16U/3Jm0fTUQMV/+8Z7y
iHjjnCkVhJ2VKnCjt6h/nI+65CcwNkO3vjhSLUYZMEgOMGqSvOPxS9zyhmEoKWB4jYkdPV9pDHkw
jJn0eCoHmE85m3jqb0rJsbGyJRLyiFOKAMq2CASeHhcTYmG23O25wHrDOlNWQ92/jVxcRC74GnGe
/uXTZdXmADPUbX88TLCpV7fhjDOYWajNI1P1JsfQl9CGkmC3ySTzMPK6DytPgLtNfYPC2Sp4x1Zm
49NRztNpZH1Xi251k5N+vmioeoTzk/IXbYrXOcjjcNmkiS3Q8naguqoxLNOyDjudkemI+Ml7NlAI
FexHRq/oUB62HlSER0zxxoKc9Xqh6PptBG6MDW6hIfZ8JUOXO4roFKeups2esuIOdCTQttyIlcPM
rDaI5/L2iThBVTW4DJFQsVMdb0gOTiSZIF6sDDbgN4kB/MpY0oPO9aiG8uYGqxmvVmdXiUu1a1y+
Vvtu7xUeGjAlosQGuqFeACYe8R9ybfXgzi9UJuJrWujcwHyI67xLEL/nXZkzPpWtRPMyM5qsE0AQ
d7RzrSfdZ2Oi6CgHwetBDWtm45Ijn4ma88PLv4+n+hhUXyzE/Dy1f/7tKVgCCmxJUvgAObf+Usuj
MAjzYGYDTjElNiWORyfusZA5XeCjybJ/bf7+6wzXcTfMWQ6yR1ITG/+xKd97jJS0/vy+uBSsxCFo
SIgRhdqJBkz4vha+GBknRvK6KvKMsPkGiG/IRsIx3U386bb3VsI1g+r+d7L6MHjwMkLWBg0MKDhD
FSZUqKnEbuICoE4/qfTaLwfdu/5mu1dJikABoM1SgsQyUQ6O43Loz19GD00zWsU/+7kDe41UGDR6
NefWENgj+jUdHpL5cSk0udACiKrLSBCwHBvaJcgcn91s+CCgWLMy9U+tBwnZkPBEmkBS31qKFsUI
+rebqZlZ5zNcKLpf7oiTe21OehRpttaR2USLNu7srcvhRMNmpGrXgHysaEWS2AsADtoqJmYcvkys
fQlDacjdBx/Z2l0P2m99cdkrthaW3TczSNvkdsabOuIFFAN/V3I306JkqQdBi4f/eOvRv47rhJpX
MAhZxqwcOIn0RKYRiTUDkL8GIiB1ISQK+MP28v32Ryouv2PGF16LMuuyY9FfwfZ3kCPecJmssd+U
OPUB0c0pA9SuFT5HZ+Y/O8/dHTYPnj4JorCdxa6nH5LWx29/3RbRMltm/dsetgdSGt4M//AhyBmd
ZT7FGwcX/3F18bbH5BGiXoubnCQbFy0bQ8XmB7fUw+7JoWUTakCN9LIKf44JzDj/iPzankO0susN
MneSyAZ8B6o1YXvglUsPV/g2YzNVrfT4RcTE5KWEs0N0nXCD30xJSXHIoW1s423usUUPzAkXfo7Q
902yZXL2tQ1RQYvxa2QIDGoBh6pZ2b4t5CPScI2ipXSb/AJa7GLFNpxYRTQab8kNTEjt9zcYArQ3
mS7DoFf5Fef0no5O7FdGcuvNpo0ql7fggygrvxroXBY3rlMWEFktTrbS53cymgm9aBs7mnt1y2xz
h7dlcznbt1N5bcZvr1pnBxdry7M/+O4gfU2TAJaNtxv38tuFLkvbkkrrfgAC0NrPQhPqr+xtWkN3
pHQUFX6bWCrwzLzYzMXj+Yhi8zis+DKChNe4vF+5XpNPhDcViuDOmB8Qs7F7B2WPmnc/KYc0cnRa
1ysttKpmS6LpKReOk1Z6U6scb4FxSZTRE8YoJxFdLGt+dljZARjhWS+MA87PT90X7RnkBD9Df9N7
q/9uE/BGl8bKPY42qZPNR69Q8BUZS8mp/WKBdc2S3mlqUsFoeSWwGcKK8miKs/o8BJS2VXrKhTFE
Pv+yDoTGKFbET2OzSz+Qh2xp9kYEfdzW4lXe81tnLAdzInANWeCM7yPz32cveK/yy1rT3ga4L2BM
EnHhSMUN9/ki5+lM9sR0iltENqE0Uq2lERk/61jXQRbjmlHVrGtZWjhDSQjYdyJj2zQ8PRs+Bqzz
P5bNQMpKvau5JibHXK42weBbTtF9HvPrVpF2+9Vn+CXbEFRLHdenPllcQNo8rb6opoTY/wBlV9b1
NPLxhaMDYbMSle78wetZepXO/OpHqX8Et3XNLQnZEI1RVZIyP1Ryn8EwYbjy41texVsoClzh0RaP
hgf8FDOak7s/uM8zBxJplp3E3fQv5LrN8MSaBkLszPEkQJOb9gtT9+YTl7I3kAW6fBwZAdqzFzNJ
95yS5VdRWJ/jA+x3/Tx3lAFOBCiAP09kE8IYtRUKCF2UUHXFlF/SiVEvAraJdGlslGFljy+NQ8y+
K8TYTQB6hVYz/gtggQsBI5yzbPqD4EKAoQhubl7KNhAUFFt2bEtt4fAWgVgoZTi5aX15qdZ7BO2G
1LYdF1tWwav3EuOVckUEPLVwpdzNrgstcFOrgngGQsltNRuvCXikGosBzIcuks4rRlYpXaFphfit
H6fIOSElgRJIKgH9EDFo0ytfGOpm3ajpw33qennx4k1Ckv2n8hDBT/IwG3NpLn6S0rH21B/N0teD
GKlwSGI0CvEYItMrV6g1uRjsqqnkQrUWSvFqs5+esP9SnwfpCx402+FJay36DHZF6iX/S7kZIcrC
gSbDk+jslujl9r/Mh4QdyUhD+WiwoHpzWKwfbd/b6nfNtOQjRwdcGcF2PAcUzDQ9CJHBCR8E8s8T
yZKvNPrxg4ac19Vm1mhJEPPz3SHPhfxq6TvXAbKbfCII8xbJ1fCu2I562wf9Wdk3enTURmbFAr3h
7dgHOSxRRb8ohOARxjlfID/OSZJPNoe8fuUmY/tNLtkqp/iviDyxvuIYwnQE88ntUsV+xoDdLang
LfHLjbuQBSWSuvmZJgmaASb2gPwJ5xK54uruZJl/8c+g17FFKVwOl7yzOpDRgQeWoo9vWen8qSWk
XstPZGJlkLR2f4w6iJq4giv0rNsUcw3gQEZczTqVPuVyXvLe8YM+9LyiIXXnWG240EV9I8z7nRg4
I+JF34uWwE6cBF/JiPdq8UMHoXy8XFdMc18TYTm+STAPnCGMVYLOSSZdukJKHj4ourFpHdrD1hBr
+PTs/8ewoELJJtaRIy7KlCS1YbP1Jyw6gdKId+CaF9IcMwSQFpLgAUlvwNEKA8hgG8YcPFMtVCL7
kJ2XUFuJLaBPQpLpUfuiN8TF+lgqFjzdO/JDWuzOi7wW4VpeeHpD+dpaCs5NJcODBjdlRJZw+jSz
fMrEdlFlsOj7EAzRnnKCfyi1+nHb4chA5qVxURizpcuij13+L5QiPuNkj9cTz3PzpMo1OejV9t3K
UtRzzQP37WcfSgB70pPpimqC8PhFtK2idYsyIc/wR84qUP6kZIBkr2pLPotyvssbgEQyv3lG5CJ8
dKXU6pWjRF8MfmBOvFKAR11wH4oekZ5I63TSbqdjK1ExDEOyHksyc4lkW6EA/zxYLJT8iPpp/7IJ
8LlzEPPI5dM5/vjFi6OeOZSyxiPF2eMZxoUJFRVzs+9jsO/xRWrwJCctKb7xEw357vaEJxMK9g8x
2fLCA4nnrSfdsyxLXa/F5NKt9s+csYxkcaUlO6x9rwkydeDQpE12eofp8tU9SJZuU6zga9q+Z8Qw
6XdaD+MHMY0C60G533rwAVFwItb5u9R2kyv5mE2se/odjJdFIrfAIEI0SGGkhTl3QgQWXnzvdIBq
88DyRvgHt50YMrDSDiteuAwmQHbKsniRSa7TdmIqxQSwGy8Ga+Yfc5XA9zhgPknttr3vDK+W2ZrF
kuRhvBKbN4lTQ0GdO/+yJ1Mni/dlPO9A3ddsB7ptATvNgkO6ebGJNNbsZz9q/kKGW9JHP4L+GZH0
17dk6RU+vzSWawkapq8O0EpR8mAsodSqCRluvFcsWmen2xyfkm81HSkiS0tqpyEH399y2Gsvzkxw
EdL594RJ/X5jVRsPSzneyhDhHLs8YnTfqCocy5WF5ncmqZRsEtxaUtT2/IH1E+7qEAlzP6aDhCci
eXODunSSXSAW1o6NLd+ZZtxZ2AlQp/HJiCJRQn6BO2dRUKO1IMxMbtA+6XUbMSlo2rbgoYkxqskz
k0D1xie1NjvUg3PaqSZc7aLIHPJGqA/5F7oS5JIu9x8JTlHjA+Zv9YV55Zs0xwHxRjodimNH5Gu+
J7uBByL8Bhu+JDpT96B0rC6zynTdtin5z5TVsY7O3SU/u7G4BwVrcgw4KzSmpqryYnCHh585dMA2
Ntd5CGfa3RyqiYw2PcIarXTjZVBu6uMKKLJ3emrW8K3+Gcu0Ra9Kuw3bSR7fmEDRvDzktf11hChV
GoTxCcoYaKU1FjAVGtK75F8ACdJOK50p/zKYrU7szHLw7MRiIKoOQBtptW0eAzXpWGip/Q3z3Lpu
Dzyq32y1n/bCyeYc21N5Xm3VKBX3N2B1PZxfc/aRVpUbV69sa0TxgGrMjpobxABaGDMP+gSdjqx3
Sgisuf0BJC96id2XLcIA3YBaPu8VlZiP/8WBOueEymG+qDR35x+zRJNPauDxIEZKTWEkDtzIG4Z3
Mv3LHLyTmgaTFXsmesc7skuVQHMnblhD+QZgpIvIJJheJ/Qjws6C7lX6fKN6JRiPMxdvCJdHPjYP
q5QlH+SK0+d/JjsTU6aetY5LmrTxW52NKyOO4FhVjMaIwM4YWNJ2kYIWq0XPdsxq7FmjRX+bgHBH
6+D9esNIcBE+sklwUtnxgwCru+M5Q6pxNs/Z2fxUpYrsiDTOvCka2OWtmO4t2MZF9ENdZms95twA
9n/UyDczfRX4vDHEykUSzoUQ6D/vSz2FUpemkCWmTLqt5UAzcA40gHzh1HBAFe2KgakD0d7vEAHL
HyQokx+mDs8IjetUCmDl9s7G/uCMXR/gyjtcXi/8puJLrCp1AlCee6+HxTKoN0ag3Y57cwnW0OY1
u4qM5OEPWtE9/fqRmUru7/WjF0S4vc2BRAlG+5eydIr8YEH2ZzDNIc+L+TjP0n8htCiIDQ6oXTZz
ism+oh/m9BPnLYuorzocnZTS7MotIYFYUao3Qfp0Er4hhm5UbHvqWNuXcFJK2lvz3vtVOWOrxjvA
w86w4BWCxwOB43pNg7lz2WXJNCZ8S5bNubxLKWknqN9efOEyhrLvTSb1dBzDxtccZP02I88/uX/H
gKNkWngZFwrG6DiV+xkwMXVjHSC2FgcRrjz8zICwkF+gGCBY3ZhHIyzvE2y2r0S231kwgXZspwo9
JRk/D80mtG/Te16ZbNkEfLmHlLalVPD8lDAMls9B7hIT7/JwZPD34hYg2tJbHec2YUq+5S1O189p
Iu6tq41JGPmWmj2mf6csS3RILKeXHZR69EBVGdR4VdnffWxvPCfeFow6BTzj5bdLLPKJ1EVuZ7EV
ypFtto3YKJbulMp6CsL7dPmTdvxyCE1AoXdjvu0Mr/CpMy+ebf/zEJDRwVNwQ2N6RlYTuH9BqpXA
qOSNhKcZKB4Ui9wSvHLzNNJ+TPeP52E1dz1M8pae6jDlem58GmeMFgJJmMJ/st/AThbIa3K4n2yJ
sW5zJJ3vRgrLLg3qyCXwYff3YhBwgBoZtS+p/TTkr8ebpiWZvkai4BSQTE1qUYEFfVXRvccNN78M
pbv+FAbLbfRB3Nrz2Vg3okQJWHvkW5FecwG/KdBrJynFpJAF671I86dl+2ZboR32w1AOADz1LnOJ
qUslmefl6nx5RU3Wd4ErhOV2NQN4aCQDrfhwjtJuD3RW69MjcV44T2mWqAKuNpPsZF3KS354o/6D
o2yHmRyZu9s/eo2D0fm7UTfbJqxg5YUc/PF08E/6Z55HiMJZztZstP37vKXioOs3UcWppdDZNgEK
Wohi35/E/b6iLTssvhlF95YzjNvAo989aQEZ25Nb+swqn7BfIpFU/zZUOShQLoIf/HHo7jtf9Yqe
QcDQnOkbM18VYNItYWUIQKbf9tFl4sWD/wHYmZ/UpKpJ8O9dHCM69d8AwMvxd944AVs12YOgriYy
qzEyO4orbUyPBPgvcwVYc3lN+uKTpf2u/d3wSwlBoytTewT/Tf5pouRLQo4GblliIbHXiYIT0e3s
coonN/6wnqm+VThdgi0gLeefY2pCCt/FISCVd6/1Jadw6ehBj5nTt41m8mXgrr/oJho2ghphJ43j
fg1lNYDSnKp/f4+63Wf9dhmrjpFd/h7Xm2FRoJXKv2P7ytfiQKD4Z8JlGltuIEw6kOtcDKfBQSxw
i+Hygi+c0UMm7ry9a0b7JUXSJraH/oMe3g3V09bk+DUryxq/hP1nqTli6ZjZVP9PPC+FXgE87aJq
Vi+hVoJZCjDPf+DtX27WLXL297OaOUD6HN0Ynuy7ClioOsqVxpc4V1JeKX6Ac657VJg6RBcUaidM
ly+vKNP8Iax7/ouWCcJgK7Yg3cA5xzDLJwYTwWIOTcWNHegjdw17Ji4EBEp8oAKuJDHRRUrsf5CC
ntcm/fOROf8Xk3769xRBkv+QXxgcFdA35eOjAUdBmRjWQ8/3jHi2OrpAQhSqTwP0sS4SeTYdZZfs
x9HSLtn5ScLD2/euQohppSTYrIVtd2D7DxJw5otQoC7QyoXvGKGmBg4QpqQQvB66T1u/n8bzinkG
ZtEGeBp4Z/qxcbcreAvrdPLoLkwaxAaYBZH/hVGwIKz1ThxVIGKxV55OuaQAAqZRrVGXpsbOTj2m
HVsdj98JHkKkl1EX/BStfadjPFPaj9A/UscFkyhawyJKi7wN1Jj8Hc7yDV94XEsW/AmapQFq/a3Y
3FceRXx0RcL7uiSMqu6nLZUumuqFII6DjdamNc4xgYpuodMQde4Yt+sMRNf8q7WnDaXFk9oKsb4a
HT5hfPXJSvbdCWmtS1phSK8y94jNir/Nvynt+lHNr4EwCP/j9tZ3kKiKsIuV7NocnIRY4QU3enRi
hrmwOZjgchIJ97e4LDEaxBAkOUsmQNR1r+8z7FnngjIKJGVwDcYxA6/JYUl8SRHk3v1vvXaGyunc
DZDsCQxHJIHaLWDfDSk1qQJtsInGkhV0fdHZnsnRIMOUUC/zmizbNexBJoJLvu+fL6hjJt4Sityi
TjPyAuHLs2gc175A2Q2//5U8iONoTOyqtM1TmWarmF3l0J3faFGJkEQ6y1DumZprbBW0505TpoRk
u/IoiEAsGgQk/B/KZgX7xhNC/dokI1HHd4WHdPxIz9QxK9zOHbah45/bZL2mwGticT3DbMHM9VjJ
dyuJ1ePPdkWXMY19rdBV98HKRkntc2pkkhiGv8yavbQI6pq1oU37Wdpir+SeZiapFIus/iCyEuoX
rnOFUNBKs8vxKsygsyO8/VjIac5e+ekNqcL3G8daOX4Wz0+T/C4N+oW4ReWonpurMP56uOAYZCkQ
U1/ZIX8fNDmHDRYYfjgEAkDmYBUavanvqXPdqLIpgxvlXhhNlAN5B7EoZgKTcjrCJMA90Ki8R7wE
33k7wrIUcZ4N1F0E0AUYJpjKLcXliThIW/NlS99o2fQ0co28dXMgy6fSkBSJMwNdJOLDwCY4A6zH
UuOc/8Z35UqRifx70yw333/pLQDo6bdF7F+vs49UgdXY53uLSB14DWrxdDltV8TVsIHV1Heozrxu
85hVNjSwLTQ8K9b4jyvsELLqG/q2VmURWLtJ7K6xBT7S19jjSLrCADv7O8+zy/0eK4ii3xDZgD6A
rYgoG51Q849kExG+FLc4HTujILvrbqw4UVb8uxxymH0JjpaEQ2cWZ9ucN7DqKglIWgChYpVv6dfy
+UD6THMhmee6QjbZra9MK4tercKn3NbhG3CK5ED61HZJnYOprIXYznsZQP76S4a9BEaQwiR+Ddvd
cyTmzXsGrx3FoFxE5jP+pc4V2XH4RyW5Jo7X4vS8ttQKtZsENmsVHELMwhutWvvAkrHvlQPFwKnk
d8zPQEfZ/i2yYrCYYK0GmYKCuCWk/V4fy7V/2MIp17v1/PjKM/ueOvqvfml4j/N+8Qr833I4+7IW
k1i+nslq+RtZkQRZlzXIBZE5gf/gwS/ZPSefj2seiTlyb8Z4Mp7spAHcPU3M9hAdqneI4cLsAGJJ
8x8TgTjOeZ3GSUI8Cs9ilKNZTZJqsrMd8jemyn65UoMff5vbqKcUEJu/WuKLeDAcf/nrSy7JociN
jA3KAmFh6v40I33JklPaMTS8RtOL2+zxmn5tRigPHWpIXgcH2xDw60ZwLchuG3UE2C5unKWdlkDf
4KT6GXwBt69ckzuETOsL7HWDgoR+3s5QsfvZ3XV2uHUyNDrIIQ+4bLG6DjNsj8MeoPxw807dnciT
IbBqSo8OrOrvoZhTkuR30Fx9rl2v5B5IfDeG8zX/nw7v6+XFcip00lL9Mmd2CkNe0DuQc9lrhCQ5
d4EFJ7pug21kjIUHWJnCgQNe9k/qJ1iX8td57V4ZrEdjy3rqX0XlIE+TWUsztzR2jvFtqzPFATWC
wxK2HVsM5cPwZWCYgpX5+9tsmUwd4QD1EBw1+4nWD7myMKhgvz4Mjgm0PHZiqad3IyNA5Bh7SZ82
LC06OeCGO6GAup4agoMEyvCwemvkLVO9E0PqPSQT3ELaPkb4FObs1ueWnxyvtgfUuEqKYHsjlB/R
vvFryfRHJGgGjLQ32ZTzhfqhJMEK9osewVWaW8kbNc1nlGci/z0J8rq68YFKSS2sqHN+eCw7MewG
WvUmYd1AjbpURlpJhZUjw130/noPiAHRqwkywbQ5KSYeQTOi9tradB48jcCdGnlPf4YpQ20WAItH
0L2Vyamq+Zb6fsENzZbqonPKAkf6xLVtcf50J2cM/tQLsT1jXKWG983O+Um+KDWiw1QADdD7BVug
59D8K0BROap1UmjA1SACGZo+KgWoHrQgZk/ZWM2DRorvFld4P8S8jBJYCVQOZ2iP4etBJ+DvJy1S
MWQNH+/slMVT6rY2I4AdLJkSamLYVFrPQ4XwsJRmUA6/MAFxILRWUegtSPho6qHgeJv7EAl9Baxe
440alkxAt4A0JnYxVS1jlWvXzWp6aZIYH/0+ibJkRabAM1L4tMs/Vig+prE3UukucJ6bPmSmV9Ow
3Yv0t54OYesbTrID69oJtwqTXMy+Y6aLAEgbC9xMmYWYUhIKWrWSSeHAkHw9YlIY4WN7KBltZ/Pb
ChFauMGsHHofoHjH5ZItfoTQQnFqNUbu2gChkA3EWieokje+H4ngBHHRU0iD4OAA7k80qLK3xpxv
HIaibwheMaEtgeHLEe0PXpFqvjrLw5sLjvAEVgy8YOmzZeHtwK6Q28nag4c/2BBgkk1IfAD63Rgg
VKfH6v6IMloiOCwlGmIdNuaTlWywjcoK6YW6Wm4dqIRBCDRKsrAoM+eHBRaBlAvdE8OtH5f07Knx
I2cOaCgkZ0kOMxrATo9UWqsNiDAMyQ84cbBfofg9L4NKCs6M7DuJaYdZHU7GT+SwGTNlzFdXtFpK
FRHjPdC3dsBbEjIYKNhR+BcC26/l8CcjB0VCoPY7bBaYvib/Jhf2z9t1AD6I4Qepy+47cV4yrYxv
xLsEHsi9ezc5pBjff04KgsoS313+9CvVuudAf3w1CIFcDvUct5Zuaddv7VmGnCEJvPbxX5mzuYRz
Oy4YHavOf6MpmFdHw+wvNo/9OSa9GO7mKmwZ3c8h1JzduL+EPmU436GSCMunBDr5TZhqjR8WJZey
kuJ4Bjiha2Fw79Q2eu+ZyvDSFoT1Ng+pghxZuwo8xpo7+vLUyxBrmHALLJ5KgsYj36pb7bl+A51A
s5gumRvMlqYz+URwy8pRNXlN/1PKH8oGjd8s9yJGI6u361mvwmtnejwrd81TyMyMCGSFuU4j1IqC
JOix2rLREMCP5XxNJoAwX6CHtSEAZNZTujMix08WssOP9f1ullknyacHswUDz7v81so4RzrXDI3I
qser+1dhxlLeRXhZP0Q28WMidt/8r5jFwEUtsnQe2rR5U5xwtJeov0HMXvY1lunk3VUbpExAVWm3
OrbyaGnBSiy40YRzYe4GUUegdulXRv7rbHYyN50Tz5iH7CT5/ZwwzdwdXDgNOn/XToNi6faew3u/
Vs2u9mzVgc+vG7j5hkgGFDdwJGC//WCXFjxi9izt5+7VKao/TMEWaC0GtzqYRiS1gmMXD17ZH+ah
yiltJGzcN9AibrRhO0RvNanmUd2KnTyKCkyh+bodNPPEEYwRJ1vntMFQ6gh6sVfiE3+rlnJnDQ+n
hX7lZO63hGWHsSQwQfHXLgvEhTF1Hm7I1DE8cagcBhn5KdvjJx9nF1KIPTT+2vP6BHwzC8Qc/iIl
2dyEdQqa+FJdcuP8lj0IPQY2n5SfixgFyAsWWkf+fSRu7ZIlntmsdLpswFKr1cTW/7RJIyzkHnZQ
dpqdq/b5fmDYkEKc90b2z0+FWegzwabuY1s3hIUzPQcDG4VhPmpZ2NuroJysD1hPXvP7deFgdDEv
z7Ryw249BlogthcGKZj5i1IEX50Mc7+ovWCYoBIhtcFStprZ2sW4Ohew120FpG+Jy0Tyy9KUqjH2
UKx9CcDmnUm59heE11ed9BhrqjDTawVCRVHJbwKiizMS0tF0IlIiFJwIsjrQvNctlkTPs3SC0oVv
PT08++t9pTddHpnxRqFsQv3GAzeh6QrbKJfIiKfwi9kM0/d932NyJLPhPrWnCXt2eMk7YnmDDSiT
Iv341wwjN6tPmwwPXDyUB/uqF+ow7bpxilb3+wNtFgJYAHtZx/nZ2RgCcEgDF2jfYqpe6ul1JEfT
4UaIgSsanGfeF5DxWnYk4Wvrumw9t0SWYB1odjOV6c0QpZ2sY/FoB+f7M+TtPBvJt71WfsKu2P/9
r1Y7Znd77occIfafblLd3dos/bI3gi4w18BZciV3aZJHv2msP2/4MDgjPK/mBAL5TCP9GGpzdkR2
jIJoqFBj4/84mhwfA43+fAMABQpUs7t9+RSaLYDi1uywzoN4pT8qFkd1sHSUrjx+t99euEnzIsOX
PftrehaHDnPSwjzO+B9xNaOgMtDdpn4Mxwl3Bhzh4WS2HMiA9uM3DIbZzPqrJdz8g4aleBlvZrXq
KIIAPb4lN1zsUNJl/3UNTYztLt8gBpY66Iy0bBxq9cj6COY3ZcPxlHj2aboqFMNGoodQ02fy5D4T
uvnC+LnAcyHB0CQ7m38WASlUC8mqOukyjhHOlcfe5MLLbD2VtuqjlaiKF1U4Gpnl4pZRuNRUrRGV
VngwmtDwTiYpurYzimeLpn+uIbYN3KB9Wt+7YTTIuDV4H3Zv+Gk2brZaCRR7oE5wLw4WmH16jBLS
3ol2NqS7KqOuktyDOcRgLft+t1rfJkjO9TAOCMP20jZBUChSpSiODHW34M9QcKBnU5VB6DGphuM9
Ivo0PQgg0dCqXM9psV8e3tDFeCRQHlCxBz6EuWcsOu3JUM01p0tLr/joEUrnAC5P3V7zKmGBg5hp
peId8NoV9H8FBujSCRhCm0LgFBwlx13gCT9oX/PAKe6i4MjjJ0NfBw3SvtMY6feotZqkz9uG4b8k
XeZjs7uWBW3W45vSOigVvfsjPCzom2DbYavnR2mS6AYeQx9GUz8qZQ8mRYYwZe4Fr5/xvZyI3GRZ
KcugzT4zdM6fp/lpdTuYCboaBtFyWr3r1XbsCahFWk7Zh79vl63E/CvDXJQl/3zgKE31zuDzuP+V
+lMi24XesyWXl26O3V4lUwDvPCE3k6cCFXPGha0vF6yNhI7Ed7oCmEJvKW3Ec8LH7yd18Lg5bQ0x
/RnNv2XiZZ7tsV4t9Jwpy8injaIbRQgNmKiL/03RZVdWzYakQlIEYHSTrOOGxhqzLzraUPCI09Fh
NWyEuqVCrhglrUD6YH07mpB0rMJHbJHQAV5t9oeipkNlNovi5C7X1ejZP64Yo/fqD8jC2TgDxoh3
teyK1t8xsTaRmPJLCSwHOwdUJejftKernX8x2J+aX5b6pAoAaXnyF0B+sKrmXoIvGvRel7FHL/fD
qRVwencD2LA1GHwwCD4YDxiJuDE3lOIa/x0EZO4m9JSPz/AYX4Nk2eTRBIXI7gvANDBlDeY0U1Kc
852BcVU08x5XRGuc6NOv9iyJxU4D6E4lBc86c1vB+q84U2I44DwhZCpfpW7hz7W79jCg8uOzvVXP
yw80udYaDRVwP49ISo6i3Yi9CMiZKhqcnJ0FzGgP2F92xMRTVkb/+yt8Fenov9RLLKK87zphGQvC
FCABSvFBY0y6xdgGvl2vIk4+Vq7hj5reeSOAlO9wL6OH+MBAJeiz/D/LLGAmB60Gh7jQ2/vQ6Cvh
oNT3o1CdwiB9lCs/sXyB5OUQCePbeEvLmMd6rViM5dl/iFoc+9LSyu5UVuHpHzFtdJw/4J1HWAPC
deRv9TXJnDHzdclf6BrEMJCVvFtkmEjuwaTSch5gjY8YvGMITCQBkzEGMWK8pgC9GB/5dCwjmbEH
OLsnoHJwZV6P2l1TRsi+5OTgJZiHtLmm2jscXLpM6A6jaq/0pZvq5ZPByIs6WzgE6dlwaR8zb+L7
mu2VsBuxj1hldUzr+zYOdW3uK6GlsVeVTiS85LTrikAt9D6TOZCoNHwb/S5SmpSKmlrjSxLDcU9Q
QkP8ap/EMchHdSIkTURCkOboqN5SoFAMW9Jmupd3hsXIUl0F7sGeLX0fonzztsdRWxI8QSaqd2B/
+KakG81mgWEzw3VdZGAnPZPvhDUFdHGNyoRZWpPS9EefJiCqsRBjRep2oWULhJmq0FA1e45hdihB
wQrvMFyaDutMkqVp+9UngRT6amBNlvZ6MJYXUn7K2J7t+q3qsawbxNqn0vFI6woWchNO8nJxoSmr
/FhqcsqLifXtkBhLBYHXeLyuZULo2WhnHcjHCzf5L1casCCbMMJYZe3xbKKAZANzJwXW6WN2Evxw
scmbAZQxGvzdESyDFf8Avjj6TpFHrIIqgMiRUsS9Ac2KYj3Ukkj0VKZRMsCD2GGzoXlSm+KZl9EI
NSb3UwmiG12+J7OJWgV5cAVNzRGk99R+NDIKdAXZNnqAGJX8e8SFY5WaQyz5WJIvyfoE996PJR3q
Q7gtMrmshxnuXbta/mkljTZs7t7wTwRfDSBVi7zG39mnlLEVr7ufFXLiQ3+hko9+39B2BspagSnn
btZ8fd+k/erzD50eRYWb+uGUfbdM7eojFhyU2+uCXpy78pGqiOq0bn0poLQC713YeFC8g3HtOww2
yfaXn9JEJAP/1+cDRHjy7b/Z7NwFGuOWUkgtEZpC47ffI+H6/XoAC28OinloOS0kvAiayV45cbuH
Q1NnJeFxPR3OotTbcaECCMyEeIiVZVBN0SqXBLiSZoVP6h8YRq2klpeTup884KCQrZ5AbFFCBYUN
xpXPPZU1DLPZu2orv1OGesgFugAzdfr1rOJc+DDVsoLdwzP04IwklItbpA3vEv66iGa1JvbhdKmA
sc2QzSPFUJEI3v8TBWr7U+YXSkKCKgQWLP8YXskC8reQWs30cZvk8tBdtMFrM2SeZtNSsgmj0I5/
/iTnm92GIyOJ1tDHerGcqGoKhtr2vsOmzDdPEruWh9nSYV8HOM9CN+3vC8Cn2pn0dpynPbsnKDFb
AK8nutLvJkWVyTv6CcqWsUgCOm2QEOdFXbaWMm6g4QF+VFHnC8QxuSSjZRA4DsSNfqv1NM0LHp8A
uN9f58et9tnJ8Zajp0WqoAWtp9y0RL9boL6o24634yudkvIsGK8KGr1CYyEICGfTkn48vXgLjqwR
OfjomJjti+l4DSRuqTCV4jkWfBYOin9Nmr3ev4IHgno6yB3J0p4LYHpaA/PTdx8CZhniPXeGPyja
A/6Qxz3h1fsDUJcUiDUdunG9TECNI9m3l7K4eq7Vrv+JHv4TygG+QKYdEH4lE9GGtKHlAfQmpIMj
D3o+y64h+wVeeCPUp1tO2onkDWP6+FKcyKteAWo84gaj+O6evAca3efW2yRKX0er67oLU4y7jcdQ
h4LAduC7gurM2S7GSrzT23j0g+e08hlVTgtFTsVVJ1deoeDY1/4K+TPWzH/ezrQexh4s75xrN2UZ
m+r1DK1/CVI4tDmqf+judsP+ASd5p+1Q1L5UsDqqddSiVreKyabXHV7N55eJYhQOzmsw61rNDfyT
tWh5IjLWeAKaxuhw47rCrHz0P4zWKQslmQbNmoKsnP5M1dKc80ABsjw48fDsWglslobOvYopz0gN
YYp57IXqAaqegJ/KTpXWsJ8CV9mm8W8r7MVSMjNnXHCARUBVhfx4ilDPJOAwEcqQvDu6Q2QdI9PD
JUsPQApcGk2GKm6CKPHSdBlHcEY6/AoPEstT1/r2f4BwjJg+xvkHlJcdJjizjE7oopbKnI/qdH2b
Mhp4sn9KjjZ3kFkUPUK5Nsd73ZzDaooffomubdA3FL7y7oimRM6CWY1/slJ/D+YCskYPzOHnI5Cs
ndZWD7Mep5q8qGVU/XVrWb7Hrembi0B7Pzb7ESXIuSRU/s9VCv0SCziZSwvDC1UXd3OoitF74tzn
g2fcjhbwRhAGapN1z9yKkcUi+WVdV0wqtskfu8mt8mF1I+DYbxv1J6ymFXd8PPvd4OL3CZAgHF2N
nMg7mjqoq3r99Uu9sxYFlbXMG38FYGEC4A3yWcW2y8gtNPLJtbq4WfCSiZfmJBG7uIPJL687+D04
8HULYOvctD2N0xjJg0pZId/yJo+CQndYHClPXHYt05TaP7f3cmwr3ikq8k5fMprej8allMoh074a
jvjbmVmBsWNnDli1T3tx2B+aCmqxTaxDYdoocdozB7PUezjucf5qiwg/4QRZIm2okZxPiR/Pntv0
6+rV72dc9Gyz3xEXE2CRJVkBp+RXOLg7ZQ1wwcbzdQDfvGgrr+p1rVKeS0PA5APvQZ4aQg9UPw5H
bdvbCEFo1xmyllnB2W69LP9XGatZ1jJftDrSPvhS+3kk985618X78y0VXQkyVK/GEbOyBxax6Q7o
j6tvMO/tynli6HDnjTf+IeRgfu7bAmFa0INZtxCIF5tPIcyZEtL87jX710SduuN4g2gW9mpM6UkF
BQyVtM6dWBCydSAKgSsPHgxs9zB/xVLyzWI84Ou2tNWFVNDX06KAjpn/KfDEwj3TrIm/apPm9BdF
W51r+sMxWz1hEwNKKV+FusnPtp9DIeBHnF2x2Tc8bQW1OISInUGEnr66gycU70UZEiSs74553HMI
3iAuTi9YT4d5Hq/v0We4XvNcKmuQIqeYZvGdq358YjGqZ7WPdU0zHLN0C5jYVNg5sMFAEihuLfPN
I4zJfMezU5DrYjB67jo1G1W7YJRmVe2XlanakTriIR6VZ/FrF1iKf7KtO4HoQLmv5+9zPcNH1Vel
A6g4/5xy4sO0VzNR2TxhE4TpmZGnTC5N0+4PCaT61X4T59NQVhrZL4A4fTexXWgy+Y3W07mhYmQk
e91HMZiOwrn7qADsYFSBzZ7/eVKIUpMXiz3flgFKW5dOW8SUpCJM3rSYtsifiN4g6eNLdr41CpzM
VXWbfdQOtL8tlooYJrVJTTjH0sTQEsCwsJFRN5j6aQ9/QxNlaXg7csWptemL318M/NXa3TziV8nh
GV3vASek1kPEwwJ5T7GDtA6vxCltk1B7XN9iARj8SlDCfb4K4mPYevpD3LJyPx2k98tHFZ+zDs+w
dGouSrISK7EbfnAvLSp2gs4Q4npTG2Y21ai50pNxFOzohLiK+2AX27PUnYwUs0ip/kMm/OzHRqXJ
JFFGogiZj2z5hCMtVgweCbAWBnBte0OOVyrQEbSq8giMLAojNQ7KvK6/M78eMIavcgjBNfqVkEs+
FEzwweyFmKTkB2nthi5uPvssC1I3g0hAu/m8s4UpVY1GFQHOAbJlC/A8v2jZRIoszZUhutwt1hcz
nKqi89+tG+EbBVB+ZI8YGIEYMzMZLuoBevyNgz1NRL7SmVUmD2f7VS8kBJrbthCX1AHIAccQdJkz
Ftzj3B3yZGtr/YsDY/UNbI8XXBwbt7yOgeDACT7VuCks7uzjH9u/DhdVpgj/C37L46diLdEtpKwx
VOmJ5MfMguZU5GjqQ8XgRWsGDkX0vPuQ3GoGBk1gbHAbfyH70XczGX6mQnUmHeMHMbFHNMXB7yh8
GXlmNut2k/NnWLSovcqDGZSjHqyjTOz64FDo4NGpbs6XHJMzUcqnxnwfwiVzyuTJwtfCI+8Y9ja9
Brop1ortDF4Gz3OgNYWVzPDQzOAjzXoVYNXpag8auTu57plwH2hsZujD76P3LdcYr6OyvAUPspwM
2RtN0eNyaVrXUNKFUQBVeXEVW1fEviFRfFhME9LLu9DTPOloxkZooiRz8KdBeetsl/CGe0Bdplq8
WY8b7TyxQLvd6YX27RQmqqq70LD3X0iE8goiCAW5ARlOY29psGfIgr2Ai9+qCsjlT0gU4lu2PnES
fvKoKDCDbS7gLxbl42eimgIu7KtEyjjZf2u2i0ai23aGHBdne/gqC+EFio8Hq4DWFd4JEGARu9rk
KdVNq1U=
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
