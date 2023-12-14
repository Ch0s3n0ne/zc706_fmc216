// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Fri Sep 15 15:08:53 2023
// Host        : DESKTOP-A0RH3KH running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ afifo_sim_netlist.v
// Design      : afifo
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z045ffg900-2
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
  (* C_FAMILY = "zynq" *) 
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
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
/APNjpE=
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
