// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Tue Jul 18 17:26:31 2023
// Host        : DESKTOP-A0RH3KH running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/4dsp_test/527_vc707_fmc216/output/vc707_fmc216_vivado/vivado/vc707_fmc216_vivado.gen/sources_1/ip/gig_ethernet_pcs_pma_1/gig_ethernet_pcs_pma_1_sim_netlist.v
// Design      : gig_ethernet_pcs_pma_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx485tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* EXAMPLE_SIMULATION = "0" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "gig_ethernet_pcs_pma_v16_2_6,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module gig_ethernet_pcs_pma_1
   (gtrefclk,
    gtrefclk_bufg,
    txp,
    txn,
    rxp,
    rxn,
    resetdone,
    cplllock,
    mmcm_reset,
    txoutclk,
    rxoutclk,
    userclk,
    userclk2,
    rxuserclk,
    rxuserclk2,
    pma_reset,
    mmcm_locked,
    independent_clock_bufg,
    sgmii_clk_r,
    sgmii_clk_f,
    sgmii_clk_en,
    gmii_txd,
    gmii_tx_en,
    gmii_tx_er,
    gmii_rxd,
    gmii_rx_dv,
    gmii_rx_er,
    gmii_isolate,
    configuration_vector,
    an_interrupt,
    an_adv_config_vector,
    an_restart_config,
    speed_is_10_100,
    speed_is_100,
    status_vector,
    reset,
    signal_detect,
    gt0_qplloutclk_in,
    gt0_qplloutrefclk_in);
  input gtrefclk;
  input gtrefclk_bufg;
  output txp;
  output txn;
  input rxp;
  input rxn;
  output resetdone;
  output cplllock;
  output mmcm_reset;
  output txoutclk;
  output rxoutclk;
  input userclk;
  input userclk2;
  input rxuserclk;
  input rxuserclk2;
  input pma_reset;
  input mmcm_locked;
  input independent_clock_bufg;
  output sgmii_clk_r;
  output sgmii_clk_f;
  output sgmii_clk_en;
  input [7:0]gmii_txd;
  input gmii_tx_en;
  input gmii_tx_er;
  output [7:0]gmii_rxd;
  output gmii_rx_dv;
  output gmii_rx_er;
  output gmii_isolate;
  input [4:0]configuration_vector;
  output an_interrupt;
  input [15:0]an_adv_config_vector;
  input an_restart_config;
  input speed_is_10_100;
  input speed_is_100;
  output [15:0]status_vector;
  input reset;
  input signal_detect;
  input gt0_qplloutclk_in;
  input gt0_qplloutrefclk_in;

  wire \<const0> ;
  wire [15:0]an_adv_config_vector;
  wire an_interrupt;
  wire an_restart_config;
  wire [4:0]configuration_vector;
  wire cplllock;
  wire gmii_isolate;
  wire gmii_rx_dv;
  wire gmii_rx_er;
  wire [7:0]gmii_rxd;
  wire gmii_tx_en;
  wire gmii_tx_er;
  wire [7:0]gmii_txd;
  wire gt0_qplloutclk_in;
  wire gt0_qplloutrefclk_in;
  wire gtrefclk;
  wire gtrefclk_bufg;
  wire independent_clock_bufg;
  wire mmcm_locked;
  wire mmcm_reset;
  wire pma_reset;
  wire reset;
  wire resetdone;
  wire rxn;
  wire rxoutclk;
  wire rxp;
  wire rxuserclk;
  wire rxuserclk2;
  wire sgmii_clk_en;
  wire sgmii_clk_f;
  wire sgmii_clk_r;
  wire signal_detect;
  wire speed_is_100;
  wire speed_is_10_100;
  wire [13:0]\^status_vector ;
  wire txn;
  wire txoutclk;
  wire txp;
  wire userclk;
  wire userclk2;
  wire [15:8]NLW_U0_status_vector_UNCONNECTED;

  assign status_vector[15] = \<const0> ;
  assign status_vector[14] = \<const0> ;
  assign status_vector[13:9] = \^status_vector [13:9];
  assign status_vector[8] = \<const0> ;
  assign status_vector[7:0] = \^status_vector [7:0];
  GND GND
       (.G(\<const0> ));
  (* EXAMPLE_SIMULATION = "0" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  gig_ethernet_pcs_pma_1_block U0
       (.an_adv_config_vector({1'b0,1'b0,1'b0,1'b0,an_adv_config_vector[11],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .an_interrupt(an_interrupt),
        .an_restart_config(an_restart_config),
        .configuration_vector(configuration_vector),
        .cplllock(cplllock),
        .gmii_isolate(gmii_isolate),
        .gmii_rx_dv(gmii_rx_dv),
        .gmii_rx_er(gmii_rx_er),
        .gmii_rxd(gmii_rxd),
        .gmii_tx_en(gmii_tx_en),
        .gmii_tx_er(gmii_tx_er),
        .gmii_txd(gmii_txd),
        .gt0_qplloutclk_in(gt0_qplloutclk_in),
        .gt0_qplloutrefclk_in(gt0_qplloutrefclk_in),
        .gtrefclk(gtrefclk),
        .gtrefclk_bufg(gtrefclk_bufg),
        .independent_clock_bufg(independent_clock_bufg),
        .mmcm_locked(mmcm_locked),
        .mmcm_reset(mmcm_reset),
        .pma_reset(pma_reset),
        .reset(reset),
        .resetdone(resetdone),
        .rxn(rxn),
        .rxoutclk(rxoutclk),
        .rxp(rxp),
        .rxuserclk(rxuserclk),
        .rxuserclk2(rxuserclk2),
        .sgmii_clk_en(sgmii_clk_en),
        .sgmii_clk_f(sgmii_clk_f),
        .sgmii_clk_r(sgmii_clk_r),
        .signal_detect(signal_detect),
        .speed_is_100(speed_is_100),
        .speed_is_10_100(speed_is_10_100),
        .status_vector({NLW_U0_status_vector_UNCONNECTED[15:14],\^status_vector }),
        .txn(txn),
        .txoutclk(txoutclk),
        .txp(txp),
        .userclk(userclk),
        .userclk2(userclk2));
endmodule

module gig_ethernet_pcs_pma_1_GTWIZARD
   (cplllock,
    txn,
    txp,
    rxoutclk,
    txoutclk,
    TXBUFSTATUS,
    D,
    mmcm_reset,
    data_in,
    rx_fsm_reset_done_int_reg,
    independent_clock_bufg,
    gtrefclk_bufg,
    gtrefclk,
    rxn,
    rxp,
    gt0_qplloutclk_in,
    gt0_qplloutrefclk_in,
    reset_out,
    reset,
    rxuserclk,
    TXPD,
    userclk,
    RXPD,
    Q,
    gtxe2_i,
    gtxe2_i_0,
    gtxe2_i_1,
    pma_reset,
    gtxe2_i_2,
    gtxe2_i_3,
    mmcm_locked,
    data_out);
  output cplllock;
  output txn;
  output txp;
  output rxoutclk;
  output txoutclk;
  output [0:0]TXBUFSTATUS;
  output [23:0]D;
  output mmcm_reset;
  output data_in;
  output rx_fsm_reset_done_int_reg;
  input independent_clock_bufg;
  input gtrefclk_bufg;
  input gtrefclk;
  input rxn;
  input rxp;
  input gt0_qplloutclk_in;
  input gt0_qplloutrefclk_in;
  input reset_out;
  input reset;
  input rxuserclk;
  input [0:0]TXPD;
  input userclk;
  input [0:0]RXPD;
  input [15:0]Q;
  input [1:0]gtxe2_i;
  input [1:0]gtxe2_i_0;
  input [1:0]gtxe2_i_1;
  input pma_reset;
  input gtxe2_i_2;
  input gtxe2_i_3;
  input mmcm_locked;
  input data_out;

  wire [23:0]D;
  wire [15:0]Q;
  wire [0:0]RXPD;
  wire [0:0]TXBUFSTATUS;
  wire [0:0]TXPD;
  wire cplllock;
  wire data_in;
  wire data_out;
  wire gt0_qplloutclk_in;
  wire gt0_qplloutrefclk_in;
  wire gtrefclk;
  wire gtrefclk_bufg;
  wire [1:0]gtxe2_i;
  wire [1:0]gtxe2_i_0;
  wire [1:0]gtxe2_i_1;
  wire gtxe2_i_2;
  wire gtxe2_i_3;
  wire independent_clock_bufg;
  wire mmcm_locked;
  wire mmcm_reset;
  wire pma_reset;
  wire reset;
  wire reset_out;
  wire rx_fsm_reset_done_int_reg;
  wire rxn;
  wire rxoutclk;
  wire rxp;
  wire rxuserclk;
  wire txn;
  wire txoutclk;
  wire txp;
  wire userclk;

  gig_ethernet_pcs_pma_1_GTWIZARD_init U0
       (.D(D),
        .Q(Q),
        .RXPD(RXPD),
        .TXBUFSTATUS(TXBUFSTATUS),
        .TXPD(TXPD),
        .cplllock(cplllock),
        .data_in(data_in),
        .data_out(data_out),
        .gt0_qplloutclk_in(gt0_qplloutclk_in),
        .gt0_qplloutrefclk_in(gt0_qplloutrefclk_in),
        .gtrefclk(gtrefclk),
        .gtrefclk_bufg(gtrefclk_bufg),
        .gtxe2_i(gtxe2_i),
        .gtxe2_i_0(gtxe2_i_0),
        .gtxe2_i_1(gtxe2_i_1),
        .gtxe2_i_2(gtxe2_i_2),
        .gtxe2_i_3(gtxe2_i_3),
        .independent_clock_bufg(independent_clock_bufg),
        .mmcm_locked(mmcm_locked),
        .mmcm_reset(mmcm_reset),
        .pma_reset(pma_reset),
        .reset(reset),
        .reset_out(reset_out),
        .rx_fsm_reset_done_int_reg(rx_fsm_reset_done_int_reg),
        .rxn(rxn),
        .rxoutclk(rxoutclk),
        .rxp(rxp),
        .rxuserclk(rxuserclk),
        .txn(txn),
        .txoutclk(txoutclk),
        .txp(txp),
        .userclk(userclk));
endmodule

module gig_ethernet_pcs_pma_1_GTWIZARD_GT
   (cplllock,
    gt0_cpllrefclklost_i,
    txn,
    txp,
    rxoutclk,
    gtxe2_i_0,
    txoutclk,
    gtxe2_i_1,
    TXBUFSTATUS,
    D,
    independent_clock_bufg,
    cpll_pd0_i,
    cpllreset_in,
    gtrefclk_bufg,
    gtrefclk,
    gt0_gtrxreset_in1_out,
    gt0_gttxreset_in0_out,
    rxn,
    rxp,
    gt0_qplloutclk_in,
    gt0_qplloutrefclk_in,
    reset_out,
    reset,
    gt0_rxuserrdy_t,
    rxuserclk,
    TXPD,
    gt0_txuserrdy_t,
    userclk,
    RXPD,
    Q,
    gtxe2_i_2,
    gtxe2_i_3,
    gtxe2_i_4);
  output cplllock;
  output gt0_cpllrefclklost_i;
  output txn;
  output txp;
  output rxoutclk;
  output gtxe2_i_0;
  output txoutclk;
  output gtxe2_i_1;
  output [0:0]TXBUFSTATUS;
  output [23:0]D;
  input independent_clock_bufg;
  input cpll_pd0_i;
  input cpllreset_in;
  input gtrefclk_bufg;
  input gtrefclk;
  input gt0_gtrxreset_in1_out;
  input gt0_gttxreset_in0_out;
  input rxn;
  input rxp;
  input gt0_qplloutclk_in;
  input gt0_qplloutrefclk_in;
  input reset_out;
  input reset;
  input gt0_rxuserrdy_t;
  input rxuserclk;
  input [0:0]TXPD;
  input gt0_txuserrdy_t;
  input userclk;
  input [0:0]RXPD;
  input [15:0]Q;
  input [1:0]gtxe2_i_2;
  input [1:0]gtxe2_i_3;
  input [1:0]gtxe2_i_4;

  wire [23:0]D;
  wire [15:0]Q;
  wire [0:0]RXPD;
  wire [0:0]TXBUFSTATUS;
  wire [0:0]TXPD;
  wire cpll_pd0_i;
  wire cplllock;
  wire cpllreset_in;
  wire gt0_cpllrefclklost_i;
  wire gt0_gtrxreset_in1_out;
  wire gt0_gttxreset_in0_out;
  wire gt0_qplloutclk_in;
  wire gt0_qplloutrefclk_in;
  wire gt0_rxuserrdy_t;
  wire gt0_txuserrdy_t;
  wire gtrefclk;
  wire gtrefclk_bufg;
  wire gtxe2_i_0;
  wire gtxe2_i_1;
  wire [1:0]gtxe2_i_2;
  wire [1:0]gtxe2_i_3;
  wire [1:0]gtxe2_i_4;
  wire gtxe2_i_n_0;
  wire gtxe2_i_n_10;
  wire gtxe2_i_n_16;
  wire gtxe2_i_n_170;
  wire gtxe2_i_n_171;
  wire gtxe2_i_n_172;
  wire gtxe2_i_n_173;
  wire gtxe2_i_n_174;
  wire gtxe2_i_n_175;
  wire gtxe2_i_n_176;
  wire gtxe2_i_n_177;
  wire gtxe2_i_n_178;
  wire gtxe2_i_n_179;
  wire gtxe2_i_n_180;
  wire gtxe2_i_n_181;
  wire gtxe2_i_n_182;
  wire gtxe2_i_n_183;
  wire gtxe2_i_n_184;
  wire gtxe2_i_n_27;
  wire gtxe2_i_n_3;
  wire gtxe2_i_n_38;
  wire gtxe2_i_n_39;
  wire gtxe2_i_n_4;
  wire gtxe2_i_n_46;
  wire gtxe2_i_n_47;
  wire gtxe2_i_n_48;
  wire gtxe2_i_n_49;
  wire gtxe2_i_n_50;
  wire gtxe2_i_n_51;
  wire gtxe2_i_n_52;
  wire gtxe2_i_n_53;
  wire gtxe2_i_n_54;
  wire gtxe2_i_n_55;
  wire gtxe2_i_n_56;
  wire gtxe2_i_n_57;
  wire gtxe2_i_n_58;
  wire gtxe2_i_n_59;
  wire gtxe2_i_n_60;
  wire gtxe2_i_n_61;
  wire gtxe2_i_n_81;
  wire gtxe2_i_n_82;
  wire gtxe2_i_n_83;
  wire gtxe2_i_n_84;
  wire gtxe2_i_n_9;
  wire independent_clock_bufg;
  wire reset;
  wire reset_out;
  wire rxn;
  wire rxoutclk;
  wire rxp;
  wire rxuserclk;
  wire txn;
  wire txoutclk;
  wire txp;
  wire userclk;
  wire NLW_gtxe2_i_GTREFCLKMONITOR_UNCONNECTED;
  wire NLW_gtxe2_i_PHYSTATUS_UNCONNECTED;
  wire NLW_gtxe2_i_RXCDRLOCK_UNCONNECTED;
  wire NLW_gtxe2_i_RXCHANBONDSEQ_UNCONNECTED;
  wire NLW_gtxe2_i_RXCHANISALIGNED_UNCONNECTED;
  wire NLW_gtxe2_i_RXCHANREALIGN_UNCONNECTED;
  wire NLW_gtxe2_i_RXCOMINITDET_UNCONNECTED;
  wire NLW_gtxe2_i_RXCOMSASDET_UNCONNECTED;
  wire NLW_gtxe2_i_RXCOMWAKEDET_UNCONNECTED;
  wire NLW_gtxe2_i_RXDATAVALID_UNCONNECTED;
  wire NLW_gtxe2_i_RXDLYSRESETDONE_UNCONNECTED;
  wire NLW_gtxe2_i_RXELECIDLE_UNCONNECTED;
  wire NLW_gtxe2_i_RXHEADERVALID_UNCONNECTED;
  wire NLW_gtxe2_i_RXOUTCLKFABRIC_UNCONNECTED;
  wire NLW_gtxe2_i_RXOUTCLKPCS_UNCONNECTED;
  wire NLW_gtxe2_i_RXPHALIGNDONE_UNCONNECTED;
  wire NLW_gtxe2_i_RXQPISENN_UNCONNECTED;
  wire NLW_gtxe2_i_RXQPISENP_UNCONNECTED;
  wire NLW_gtxe2_i_RXRATEDONE_UNCONNECTED;
  wire NLW_gtxe2_i_RXSTARTOFSEQ_UNCONNECTED;
  wire NLW_gtxe2_i_RXVALID_UNCONNECTED;
  wire NLW_gtxe2_i_TXCOMFINISH_UNCONNECTED;
  wire NLW_gtxe2_i_TXDLYSRESETDONE_UNCONNECTED;
  wire NLW_gtxe2_i_TXGEARBOXREADY_UNCONNECTED;
  wire NLW_gtxe2_i_TXPHALIGNDONE_UNCONNECTED;
  wire NLW_gtxe2_i_TXPHINITDONE_UNCONNECTED;
  wire NLW_gtxe2_i_TXQPISENN_UNCONNECTED;
  wire NLW_gtxe2_i_TXQPISENP_UNCONNECTED;
  wire NLW_gtxe2_i_TXRATEDONE_UNCONNECTED;
  wire [15:0]NLW_gtxe2_i_PCSRSVDOUT_UNCONNECTED;
  wire [7:2]NLW_gtxe2_i_RXCHARISCOMMA_UNCONNECTED;
  wire [7:2]NLW_gtxe2_i_RXCHARISK_UNCONNECTED;
  wire [4:0]NLW_gtxe2_i_RXCHBONDO_UNCONNECTED;
  wire [1:0]NLW_gtxe2_i_RXCLKCORCNT_UNCONNECTED;
  wire [63:16]NLW_gtxe2_i_RXDATA_UNCONNECTED;
  wire [7:2]NLW_gtxe2_i_RXDISPERR_UNCONNECTED;
  wire [2:0]NLW_gtxe2_i_RXHEADER_UNCONNECTED;
  wire [7:2]NLW_gtxe2_i_RXNOTINTABLE_UNCONNECTED;
  wire [4:0]NLW_gtxe2_i_RXPHMONITOR_UNCONNECTED;
  wire [4:0]NLW_gtxe2_i_RXPHSLIPMONITOR_UNCONNECTED;
  wire [2:0]NLW_gtxe2_i_RXSTATUS_UNCONNECTED;
  wire [9:0]NLW_gtxe2_i_TSTOUT_UNCONNECTED;

  (* box_type = "PRIMITIVE" *) 
  GTXE2_CHANNEL #(
    .ALIGN_COMMA_DOUBLE("FALSE"),
    .ALIGN_COMMA_ENABLE(10'b0001111111),
    .ALIGN_COMMA_WORD(2),
    .ALIGN_MCOMMA_DET("TRUE"),
    .ALIGN_MCOMMA_VALUE(10'b1010000011),
    .ALIGN_PCOMMA_DET("TRUE"),
    .ALIGN_PCOMMA_VALUE(10'b0101111100),
    .CBCC_DATA_SOURCE_SEL("DECODED"),
    .CHAN_BOND_KEEP_ALIGN("FALSE"),
    .CHAN_BOND_MAX_SKEW(1),
    .CHAN_BOND_SEQ_1_1(10'b0000000000),
    .CHAN_BOND_SEQ_1_2(10'b0000000000),
    .CHAN_BOND_SEQ_1_3(10'b0000000000),
    .CHAN_BOND_SEQ_1_4(10'b0000000000),
    .CHAN_BOND_SEQ_1_ENABLE(4'b1111),
    .CHAN_BOND_SEQ_2_1(10'b0000000000),
    .CHAN_BOND_SEQ_2_2(10'b0000000000),
    .CHAN_BOND_SEQ_2_3(10'b0000000000),
    .CHAN_BOND_SEQ_2_4(10'b0000000000),
    .CHAN_BOND_SEQ_2_ENABLE(4'b1111),
    .CHAN_BOND_SEQ_2_USE("FALSE"),
    .CHAN_BOND_SEQ_LEN(1),
    .CLK_CORRECT_USE("FALSE"),
    .CLK_COR_KEEP_IDLE("FALSE"),
    .CLK_COR_MAX_LAT(36),
    .CLK_COR_MIN_LAT(32),
    .CLK_COR_PRECEDENCE("TRUE"),
    .CLK_COR_REPEAT_WAIT(0),
    .CLK_COR_SEQ_1_1(10'b0100000000),
    .CLK_COR_SEQ_1_2(10'b0000000000),
    .CLK_COR_SEQ_1_3(10'b0000000000),
    .CLK_COR_SEQ_1_4(10'b0000000000),
    .CLK_COR_SEQ_1_ENABLE(4'b1111),
    .CLK_COR_SEQ_2_1(10'b0100000000),
    .CLK_COR_SEQ_2_2(10'b0000000000),
    .CLK_COR_SEQ_2_3(10'b0000000000),
    .CLK_COR_SEQ_2_4(10'b0000000000),
    .CLK_COR_SEQ_2_ENABLE(4'b1111),
    .CLK_COR_SEQ_2_USE("FALSE"),
    .CLK_COR_SEQ_LEN(1),
    .CPLL_CFG(24'hBC07DC),
    .CPLL_FBDIV(4),
    .CPLL_FBDIV_45(5),
    .CPLL_INIT_CFG(24'h00001E),
    .CPLL_LOCK_CFG(16'h01E8),
    .CPLL_REFCLK_DIV(1),
    .DEC_MCOMMA_DETECT("TRUE"),
    .DEC_PCOMMA_DETECT("TRUE"),
    .DEC_VALID_COMMA_ONLY("FALSE"),
    .DMONITOR_CFG(24'h000A00),
    .ES_CONTROL(6'b000000),
    .ES_ERRDET_EN("FALSE"),
    .ES_EYE_SCAN_EN("TRUE"),
    .ES_HORZ_OFFSET(12'h000),
    .ES_PMA_CFG(10'b0000000000),
    .ES_PRESCALE(5'b00000),
    .ES_QUALIFIER(80'h00000000000000000000),
    .ES_QUAL_MASK(80'h00000000000000000000),
    .ES_SDATA_MASK(80'h00000000000000000000),
    .ES_VERT_OFFSET(9'b000000000),
    .FTS_DESKEW_SEQ_ENABLE(4'b1111),
    .FTS_LANE_DESKEW_CFG(4'b1111),
    .FTS_LANE_DESKEW_EN("FALSE"),
    .GEARBOX_MODE(3'b000),
    .IS_CPLLLOCKDETCLK_INVERTED(1'b0),
    .IS_DRPCLK_INVERTED(1'b0),
    .IS_GTGREFCLK_INVERTED(1'b0),
    .IS_RXUSRCLK2_INVERTED(1'b0),
    .IS_RXUSRCLK_INVERTED(1'b0),
    .IS_TXPHDLYTSTCLK_INVERTED(1'b0),
    .IS_TXUSRCLK2_INVERTED(1'b0),
    .IS_TXUSRCLK_INVERTED(1'b0),
    .OUTREFCLK_SEL_INV(2'b11),
    .PCS_PCIE_EN("FALSE"),
    .PCS_RSVD_ATTR(48'h000000000000),
    .PD_TRANS_TIME_FROM_P2(12'h03C),
    .PD_TRANS_TIME_NONE_P2(8'h19),
    .PD_TRANS_TIME_TO_P2(8'h64),
    .PMA_RSV(32'h00018480),
    .PMA_RSV2(16'h2050),
    .PMA_RSV3(2'b00),
    .PMA_RSV4(32'h00000000),
    .RXBUFRESET_TIME(5'b00001),
    .RXBUF_ADDR_MODE("FAST"),
    .RXBUF_EIDLE_HI_CNT(4'b1000),
    .RXBUF_EIDLE_LO_CNT(4'b0000),
    .RXBUF_EN("TRUE"),
    .RXBUF_RESET_ON_CB_CHANGE("TRUE"),
    .RXBUF_RESET_ON_COMMAALIGN("FALSE"),
    .RXBUF_RESET_ON_EIDLE("FALSE"),
    .RXBUF_RESET_ON_RATE_CHANGE("TRUE"),
    .RXBUF_THRESH_OVFLW(61),
    .RXBUF_THRESH_OVRD("FALSE"),
    .RXBUF_THRESH_UNDFLW(8),
    .RXCDRFREQRESET_TIME(5'b00001),
    .RXCDRPHRESET_TIME(5'b00001),
    .RXCDR_CFG(72'h03000023FF10100020),
    .RXCDR_FR_RESET_ON_EIDLE(1'b0),
    .RXCDR_HOLD_DURING_EIDLE(1'b0),
    .RXCDR_LOCK_CFG(6'b010101),
    .RXCDR_PH_RESET_ON_EIDLE(1'b0),
    .RXDFELPMRESET_TIME(7'b0001111),
    .RXDLY_CFG(16'h001F),
    .RXDLY_LCFG(9'h030),
    .RXDLY_TAP_CFG(16'h0000),
    .RXGEARBOX_EN("FALSE"),
    .RXISCANRESET_TIME(5'b00001),
    .RXLPM_HF_CFG(14'b00000011110000),
    .RXLPM_LF_CFG(14'b00000011110000),
    .RXOOB_CFG(7'b0000110),
    .RXOUT_DIV(4),
    .RXPCSRESET_TIME(5'b00001),
    .RXPHDLY_CFG(24'h084020),
    .RXPH_CFG(24'h000000),
    .RXPH_MONITOR_SEL(5'b00000),
    .RXPMARESET_TIME(5'b00011),
    .RXPRBS_ERR_LOOPBACK(1'b0),
    .RXSLIDE_AUTO_WAIT(7),
    .RXSLIDE_MODE("OFF"),
    .RX_BIAS_CFG(12'b000000000100),
    .RX_BUFFER_CFG(6'b000000),
    .RX_CLK25_DIV(5),
    .RX_CLKMUX_PD(1'b1),
    .RX_CM_SEL(2'b11),
    .RX_CM_TRIM(3'b010),
    .RX_DATA_WIDTH(20),
    .RX_DDI_SEL(6'b000000),
    .RX_DEBUG_CFG(12'b000000000000),
    .RX_DEFER_RESET_BUF_EN("TRUE"),
    .RX_DFE_GAIN_CFG(23'h020FEA),
    .RX_DFE_H2_CFG(12'b000000000000),
    .RX_DFE_H3_CFG(12'b000001000000),
    .RX_DFE_H4_CFG(11'b00011110000),
    .RX_DFE_H5_CFG(11'b00011100000),
    .RX_DFE_KL_CFG(13'b0000011111110),
    .RX_DFE_KL_CFG2(32'h301148AC),
    .RX_DFE_LPM_CFG(16'h0904),
    .RX_DFE_LPM_HOLD_DURING_EIDLE(1'b0),
    .RX_DFE_UT_CFG(17'b10001111000000000),
    .RX_DFE_VP_CFG(17'b00011111100000011),
    .RX_DFE_XYD_CFG(13'b0000000000000),
    .RX_DISPERR_SEQ_MATCH("TRUE"),
    .RX_INT_DATAWIDTH(0),
    .RX_OS_CFG(13'b0000010000000),
    .RX_SIG_VALID_DLY(10),
    .RX_XCLK_SEL("RXREC"),
    .SAS_MAX_COM(64),
    .SAS_MIN_COM(36),
    .SATA_BURST_SEQ_LEN(4'b0101),
    .SATA_BURST_VAL(3'b100),
    .SATA_CPLL_CFG("VCO_3000MHZ"),
    .SATA_EIDLE_VAL(3'b100),
    .SATA_MAX_BURST(8),
    .SATA_MAX_INIT(21),
    .SATA_MAX_WAKE(7),
    .SATA_MIN_BURST(4),
    .SATA_MIN_INIT(12),
    .SATA_MIN_WAKE(4),
    .SHOW_REALIGN_COMMA("TRUE"),
    .SIM_CPLLREFCLK_SEL(3'b001),
    .SIM_RECEIVER_DETECT_PASS("TRUE"),
    .SIM_RESET_SPEEDUP("TRUE"),
    .SIM_TX_EIDLE_DRIVE_LEVEL("X"),
    .SIM_VERSION("4.0"),
    .TERM_RCAL_CFG(5'b10000),
    .TERM_RCAL_OVRD(1'b0),
    .TRANS_TIME_RATE(8'h0E),
    .TST_RSV(32'h00000000),
    .TXBUF_EN("TRUE"),
    .TXBUF_RESET_ON_RATE_CHANGE("TRUE"),
    .TXDLY_CFG(16'h001F),
    .TXDLY_LCFG(9'h030),
    .TXDLY_TAP_CFG(16'h0000),
    .TXGEARBOX_EN("FALSE"),
    .TXOUT_DIV(4),
    .TXPCSRESET_TIME(5'b00001),
    .TXPHDLY_CFG(24'h084020),
    .TXPH_CFG(16'h0780),
    .TXPH_MONITOR_SEL(5'b00000),
    .TXPMARESET_TIME(5'b00001),
    .TX_CLK25_DIV(5),
    .TX_CLKMUX_PD(1'b1),
    .TX_DATA_WIDTH(20),
    .TX_DEEMPH0(5'b00000),
    .TX_DEEMPH1(5'b00000),
    .TX_DRIVE_MODE("DIRECT"),
    .TX_EIDLE_ASSERT_DELAY(3'b110),
    .TX_EIDLE_DEASSERT_DELAY(3'b100),
    .TX_INT_DATAWIDTH(0),
    .TX_LOOPBACK_DRIVE_HIZ("FALSE"),
    .TX_MAINCURSOR_SEL(1'b0),
    .TX_MARGIN_FULL_0(7'b1001110),
    .TX_MARGIN_FULL_1(7'b1001001),
    .TX_MARGIN_FULL_2(7'b1000101),
    .TX_MARGIN_FULL_3(7'b1000010),
    .TX_MARGIN_FULL_4(7'b1000000),
    .TX_MARGIN_LOW_0(7'b1000110),
    .TX_MARGIN_LOW_1(7'b1000100),
    .TX_MARGIN_LOW_2(7'b1000010),
    .TX_MARGIN_LOW_3(7'b1000000),
    .TX_MARGIN_LOW_4(7'b1000000),
    .TX_PREDRIVER_MODE(1'b0),
    .TX_QPI_STATUS_EN(1'b0),
    .TX_RXDETECT_CFG(14'h1832),
    .TX_RXDETECT_REF(3'b100),
    .TX_XCLK_SEL("TXOUT"),
    .UCODEER_CLR(1'b0)) 
    gtxe2_i
       (.CFGRESET(1'b0),
        .CLKRSVD({1'b0,1'b0,1'b0,1'b0}),
        .CPLLFBCLKLOST(gtxe2_i_n_0),
        .CPLLLOCK(cplllock),
        .CPLLLOCKDETCLK(independent_clock_bufg),
        .CPLLLOCKEN(1'b1),
        .CPLLPD(cpll_pd0_i),
        .CPLLREFCLKLOST(gt0_cpllrefclklost_i),
        .CPLLREFCLKSEL({1'b0,1'b0,1'b1}),
        .CPLLRESET(cpllreset_in),
        .DMONITOROUT({gtxe2_i_n_177,gtxe2_i_n_178,gtxe2_i_n_179,gtxe2_i_n_180,gtxe2_i_n_181,gtxe2_i_n_182,gtxe2_i_n_183,gtxe2_i_n_184}),
        .DRPADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DRPCLK(gtrefclk_bufg),
        .DRPDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DRPDO({gtxe2_i_n_46,gtxe2_i_n_47,gtxe2_i_n_48,gtxe2_i_n_49,gtxe2_i_n_50,gtxe2_i_n_51,gtxe2_i_n_52,gtxe2_i_n_53,gtxe2_i_n_54,gtxe2_i_n_55,gtxe2_i_n_56,gtxe2_i_n_57,gtxe2_i_n_58,gtxe2_i_n_59,gtxe2_i_n_60,gtxe2_i_n_61}),
        .DRPEN(1'b0),
        .DRPRDY(gtxe2_i_n_3),
        .DRPWE(1'b0),
        .EYESCANDATAERROR(gtxe2_i_n_4),
        .EYESCANMODE(1'b0),
        .EYESCANRESET(1'b0),
        .EYESCANTRIGGER(1'b0),
        .GTGREFCLK(1'b0),
        .GTNORTHREFCLK0(1'b0),
        .GTNORTHREFCLK1(1'b0),
        .GTREFCLK0(gtrefclk),
        .GTREFCLK1(1'b0),
        .GTREFCLKMONITOR(NLW_gtxe2_i_GTREFCLKMONITOR_UNCONNECTED),
        .GTRESETSEL(1'b0),
        .GTRSVD({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .GTRXRESET(gt0_gtrxreset_in1_out),
        .GTSOUTHREFCLK0(1'b0),
        .GTSOUTHREFCLK1(1'b0),
        .GTTXRESET(gt0_gttxreset_in0_out),
        .GTXRXN(rxn),
        .GTXRXP(rxp),
        .GTXTXN(txn),
        .GTXTXP(txp),
        .LOOPBACK({1'b0,1'b0,1'b0}),
        .PCSRSVDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCSRSVDIN2({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCSRSVDOUT(NLW_gtxe2_i_PCSRSVDOUT_UNCONNECTED[15:0]),
        .PHYSTATUS(NLW_gtxe2_i_PHYSTATUS_UNCONNECTED),
        .PMARSVDIN({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PMARSVDIN2({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .QPLLCLK(gt0_qplloutclk_in),
        .QPLLREFCLK(gt0_qplloutrefclk_in),
        .RESETOVRD(1'b0),
        .RX8B10BEN(1'b1),
        .RXBUFRESET(1'b0),
        .RXBUFSTATUS({gtxe2_i_n_82,gtxe2_i_n_83,gtxe2_i_n_84}),
        .RXBYTEISALIGNED(gtxe2_i_n_9),
        .RXBYTEREALIGN(gtxe2_i_n_10),
        .RXCDRFREQRESET(1'b0),
        .RXCDRHOLD(1'b0),
        .RXCDRLOCK(NLW_gtxe2_i_RXCDRLOCK_UNCONNECTED),
        .RXCDROVRDEN(1'b0),
        .RXCDRRESET(1'b0),
        .RXCDRRESETRSV(1'b0),
        .RXCHANBONDSEQ(NLW_gtxe2_i_RXCHANBONDSEQ_UNCONNECTED),
        .RXCHANISALIGNED(NLW_gtxe2_i_RXCHANISALIGNED_UNCONNECTED),
        .RXCHANREALIGN(NLW_gtxe2_i_RXCHANREALIGN_UNCONNECTED),
        .RXCHARISCOMMA({NLW_gtxe2_i_RXCHARISCOMMA_UNCONNECTED[7:2],D[11],D[23]}),
        .RXCHARISK({NLW_gtxe2_i_RXCHARISK_UNCONNECTED[7:2],D[10],D[22]}),
        .RXCHBONDEN(1'b0),
        .RXCHBONDI({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .RXCHBONDLEVEL({1'b0,1'b0,1'b0}),
        .RXCHBONDMASTER(1'b0),
        .RXCHBONDO(NLW_gtxe2_i_RXCHBONDO_UNCONNECTED[4:0]),
        .RXCHBONDSLAVE(1'b0),
        .RXCLKCORCNT(NLW_gtxe2_i_RXCLKCORCNT_UNCONNECTED[1:0]),
        .RXCOMINITDET(NLW_gtxe2_i_RXCOMINITDET_UNCONNECTED),
        .RXCOMMADET(gtxe2_i_n_16),
        .RXCOMMADETEN(1'b1),
        .RXCOMSASDET(NLW_gtxe2_i_RXCOMSASDET_UNCONNECTED),
        .RXCOMWAKEDET(NLW_gtxe2_i_RXCOMWAKEDET_UNCONNECTED),
        .RXDATA({NLW_gtxe2_i_RXDATA_UNCONNECTED[63:16],D[7:0],D[19:12]}),
        .RXDATAVALID(NLW_gtxe2_i_RXDATAVALID_UNCONNECTED),
        .RXDDIEN(1'b0),
        .RXDFEAGCHOLD(1'b0),
        .RXDFEAGCOVRDEN(1'b0),
        .RXDFECM1EN(1'b0),
        .RXDFELFHOLD(1'b0),
        .RXDFELFOVRDEN(1'b0),
        .RXDFELPMRESET(1'b0),
        .RXDFETAP2HOLD(1'b0),
        .RXDFETAP2OVRDEN(1'b0),
        .RXDFETAP3HOLD(1'b0),
        .RXDFETAP3OVRDEN(1'b0),
        .RXDFETAP4HOLD(1'b0),
        .RXDFETAP4OVRDEN(1'b0),
        .RXDFETAP5HOLD(1'b0),
        .RXDFETAP5OVRDEN(1'b0),
        .RXDFEUTHOLD(1'b0),
        .RXDFEUTOVRDEN(1'b0),
        .RXDFEVPHOLD(1'b0),
        .RXDFEVPOVRDEN(1'b0),
        .RXDFEVSEN(1'b0),
        .RXDFEXYDEN(1'b1),
        .RXDFEXYDHOLD(1'b0),
        .RXDFEXYDOVRDEN(1'b0),
        .RXDISPERR({NLW_gtxe2_i_RXDISPERR_UNCONNECTED[7:2],D[9],D[21]}),
        .RXDLYBYPASS(1'b1),
        .RXDLYEN(1'b0),
        .RXDLYOVRDEN(1'b0),
        .RXDLYSRESET(1'b0),
        .RXDLYSRESETDONE(NLW_gtxe2_i_RXDLYSRESETDONE_UNCONNECTED),
        .RXELECIDLE(NLW_gtxe2_i_RXELECIDLE_UNCONNECTED),
        .RXELECIDLEMODE({1'b1,1'b1}),
        .RXGEARBOXSLIP(1'b0),
        .RXHEADER(NLW_gtxe2_i_RXHEADER_UNCONNECTED[2:0]),
        .RXHEADERVALID(NLW_gtxe2_i_RXHEADERVALID_UNCONNECTED),
        .RXLPMEN(1'b1),
        .RXLPMHFHOLD(1'b0),
        .RXLPMHFOVRDEN(1'b0),
        .RXLPMLFHOLD(1'b0),
        .RXLPMLFKLOVRDEN(1'b0),
        .RXMCOMMAALIGNEN(reset_out),
        .RXMONITOROUT({gtxe2_i_n_170,gtxe2_i_n_171,gtxe2_i_n_172,gtxe2_i_n_173,gtxe2_i_n_174,gtxe2_i_n_175,gtxe2_i_n_176}),
        .RXMONITORSEL({1'b0,1'b0}),
        .RXNOTINTABLE({NLW_gtxe2_i_RXNOTINTABLE_UNCONNECTED[7:2],D[8],D[20]}),
        .RXOOBRESET(1'b0),
        .RXOSHOLD(1'b0),
        .RXOSOVRDEN(1'b0),
        .RXOUTCLK(rxoutclk),
        .RXOUTCLKFABRIC(NLW_gtxe2_i_RXOUTCLKFABRIC_UNCONNECTED),
        .RXOUTCLKPCS(NLW_gtxe2_i_RXOUTCLKPCS_UNCONNECTED),
        .RXOUTCLKSEL({1'b0,1'b1,1'b0}),
        .RXPCOMMAALIGNEN(reset_out),
        .RXPCSRESET(reset),
        .RXPD({RXPD,RXPD}),
        .RXPHALIGN(1'b0),
        .RXPHALIGNDONE(NLW_gtxe2_i_RXPHALIGNDONE_UNCONNECTED),
        .RXPHALIGNEN(1'b0),
        .RXPHDLYPD(1'b0),
        .RXPHDLYRESET(1'b0),
        .RXPHMONITOR(NLW_gtxe2_i_RXPHMONITOR_UNCONNECTED[4:0]),
        .RXPHOVRDEN(1'b0),
        .RXPHSLIPMONITOR(NLW_gtxe2_i_RXPHSLIPMONITOR_UNCONNECTED[4:0]),
        .RXPMARESET(1'b0),
        .RXPOLARITY(1'b0),
        .RXPRBSCNTRESET(1'b0),
        .RXPRBSERR(gtxe2_i_n_27),
        .RXPRBSSEL({1'b0,1'b0,1'b0}),
        .RXQPIEN(1'b0),
        .RXQPISENN(NLW_gtxe2_i_RXQPISENN_UNCONNECTED),
        .RXQPISENP(NLW_gtxe2_i_RXQPISENP_UNCONNECTED),
        .RXRATE({1'b0,1'b0,1'b0}),
        .RXRATEDONE(NLW_gtxe2_i_RXRATEDONE_UNCONNECTED),
        .RXRESETDONE(gtxe2_i_0),
        .RXSLIDE(1'b0),
        .RXSTARTOFSEQ(NLW_gtxe2_i_RXSTARTOFSEQ_UNCONNECTED),
        .RXSTATUS(NLW_gtxe2_i_RXSTATUS_UNCONNECTED[2:0]),
        .RXSYSCLKSEL({1'b0,1'b0}),
        .RXUSERRDY(gt0_rxuserrdy_t),
        .RXUSRCLK(rxuserclk),
        .RXUSRCLK2(rxuserclk),
        .RXVALID(NLW_gtxe2_i_RXVALID_UNCONNECTED),
        .SETERRSTATUS(1'b0),
        .TSTIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .TSTOUT(NLW_gtxe2_i_TSTOUT_UNCONNECTED[9:0]),
        .TX8B10BBYPASS({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TX8B10BEN(1'b1),
        .TXBUFDIFFCTRL({1'b1,1'b0,1'b0}),
        .TXBUFSTATUS({TXBUFSTATUS,gtxe2_i_n_81}),
        .TXCHARDISPMODE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,gtxe2_i_2}),
        .TXCHARDISPVAL({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,gtxe2_i_3}),
        .TXCHARISK({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,gtxe2_i_4}),
        .TXCOMFINISH(NLW_gtxe2_i_TXCOMFINISH_UNCONNECTED),
        .TXCOMINIT(1'b0),
        .TXCOMSAS(1'b0),
        .TXCOMWAKE(1'b0),
        .TXDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Q}),
        .TXDEEMPH(1'b0),
        .TXDETECTRX(1'b0),
        .TXDIFFCTRL({1'b1,1'b0,1'b0,1'b0}),
        .TXDIFFPD(1'b0),
        .TXDLYBYPASS(1'b1),
        .TXDLYEN(1'b0),
        .TXDLYHOLD(1'b0),
        .TXDLYOVRDEN(1'b0),
        .TXDLYSRESET(1'b0),
        .TXDLYSRESETDONE(NLW_gtxe2_i_TXDLYSRESETDONE_UNCONNECTED),
        .TXDLYUPDOWN(1'b0),
        .TXELECIDLE(TXPD),
        .TXGEARBOXREADY(NLW_gtxe2_i_TXGEARBOXREADY_UNCONNECTED),
        .TXHEADER({1'b0,1'b0,1'b0}),
        .TXINHIBIT(1'b0),
        .TXMAINCURSOR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXMARGIN({1'b0,1'b0,1'b0}),
        .TXOUTCLK(txoutclk),
        .TXOUTCLKFABRIC(gtxe2_i_n_38),
        .TXOUTCLKPCS(gtxe2_i_n_39),
        .TXOUTCLKSEL({1'b1,1'b0,1'b0}),
        .TXPCSRESET(1'b0),
        .TXPD({TXPD,TXPD}),
        .TXPDELECIDLEMODE(1'b0),
        .TXPHALIGN(1'b0),
        .TXPHALIGNDONE(NLW_gtxe2_i_TXPHALIGNDONE_UNCONNECTED),
        .TXPHALIGNEN(1'b0),
        .TXPHDLYPD(1'b0),
        .TXPHDLYRESET(1'b0),
        .TXPHDLYTSTCLK(1'b0),
        .TXPHINIT(1'b0),
        .TXPHINITDONE(NLW_gtxe2_i_TXPHINITDONE_UNCONNECTED),
        .TXPHOVRDEN(1'b0),
        .TXPISOPD(1'b0),
        .TXPMARESET(1'b0),
        .TXPOLARITY(1'b0),
        .TXPOSTCURSOR({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXPOSTCURSORINV(1'b0),
        .TXPRBSFORCEERR(1'b0),
        .TXPRBSSEL({1'b0,1'b0,1'b0}),
        .TXPRECURSOR({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXPRECURSORINV(1'b0),
        .TXQPIBIASEN(1'b0),
        .TXQPISENN(NLW_gtxe2_i_TXQPISENN_UNCONNECTED),
        .TXQPISENP(NLW_gtxe2_i_TXQPISENP_UNCONNECTED),
        .TXQPISTRONGPDOWN(1'b0),
        .TXQPIWEAKPUP(1'b0),
        .TXRATE({1'b0,1'b0,1'b0}),
        .TXRATEDONE(NLW_gtxe2_i_TXRATEDONE_UNCONNECTED),
        .TXRESETDONE(gtxe2_i_1),
        .TXSEQUENCE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXSTARTSEQ(1'b0),
        .TXSWING(1'b0),
        .TXSYSCLKSEL({1'b0,1'b0}),
        .TXUSERRDY(gt0_txuserrdy_t),
        .TXUSRCLK(userclk),
        .TXUSRCLK2(userclk));
endmodule

module gig_ethernet_pcs_pma_1_GTWIZARD_init
   (cplllock,
    txn,
    txp,
    rxoutclk,
    txoutclk,
    TXBUFSTATUS,
    D,
    mmcm_reset,
    data_in,
    rx_fsm_reset_done_int_reg,
    independent_clock_bufg,
    gtrefclk_bufg,
    gtrefclk,
    rxn,
    rxp,
    gt0_qplloutclk_in,
    gt0_qplloutrefclk_in,
    reset_out,
    reset,
    rxuserclk,
    TXPD,
    userclk,
    RXPD,
    Q,
    gtxe2_i,
    gtxe2_i_0,
    gtxe2_i_1,
    pma_reset,
    gtxe2_i_2,
    gtxe2_i_3,
    mmcm_locked,
    data_out);
  output cplllock;
  output txn;
  output txp;
  output rxoutclk;
  output txoutclk;
  output [0:0]TXBUFSTATUS;
  output [23:0]D;
  output mmcm_reset;
  output data_in;
  output rx_fsm_reset_done_int_reg;
  input independent_clock_bufg;
  input gtrefclk_bufg;
  input gtrefclk;
  input rxn;
  input rxp;
  input gt0_qplloutclk_in;
  input gt0_qplloutrefclk_in;
  input reset_out;
  input reset;
  input rxuserclk;
  input [0:0]TXPD;
  input userclk;
  input [0:0]RXPD;
  input [15:0]Q;
  input [1:0]gtxe2_i;
  input [1:0]gtxe2_i_0;
  input [1:0]gtxe2_i_1;
  input pma_reset;
  input gtxe2_i_2;
  input gtxe2_i_3;
  input mmcm_locked;
  input data_out;

  wire [23:0]D;
  wire [15:0]Q;
  wire [0:0]RXPD;
  wire [0:0]TXBUFSTATUS;
  wire [0:0]TXPD;
  wire cplllock;
  wire data_in;
  wire data_out;
  wire gt0_cpllrefclklost_i;
  wire gt0_cpllreset_t;
  wire gt0_gtrxreset_in1_out;
  wire gt0_gttxreset_in0_out;
  wire gt0_qplloutclk_in;
  wire gt0_qplloutrefclk_in;
  wire \gt0_rx_cdrlock_counter[0]_i_1_n_0 ;
  wire \gt0_rx_cdrlock_counter[0]_i_3_n_0 ;
  wire \gt0_rx_cdrlock_counter[0]_i_4_n_0 ;
  wire \gt0_rx_cdrlock_counter[0]_i_5_n_0 ;
  wire [13:0]gt0_rx_cdrlock_counter_reg;
  wire \gt0_rx_cdrlock_counter_reg[0]_i_2_n_0 ;
  wire \gt0_rx_cdrlock_counter_reg[0]_i_2_n_1 ;
  wire \gt0_rx_cdrlock_counter_reg[0]_i_2_n_2 ;
  wire \gt0_rx_cdrlock_counter_reg[0]_i_2_n_3 ;
  wire \gt0_rx_cdrlock_counter_reg[0]_i_2_n_4 ;
  wire \gt0_rx_cdrlock_counter_reg[0]_i_2_n_5 ;
  wire \gt0_rx_cdrlock_counter_reg[0]_i_2_n_6 ;
  wire \gt0_rx_cdrlock_counter_reg[0]_i_2_n_7 ;
  wire \gt0_rx_cdrlock_counter_reg[12]_i_1_n_3 ;
  wire \gt0_rx_cdrlock_counter_reg[12]_i_1_n_6 ;
  wire \gt0_rx_cdrlock_counter_reg[12]_i_1_n_7 ;
  wire \gt0_rx_cdrlock_counter_reg[4]_i_1_n_0 ;
  wire \gt0_rx_cdrlock_counter_reg[4]_i_1_n_1 ;
  wire \gt0_rx_cdrlock_counter_reg[4]_i_1_n_2 ;
  wire \gt0_rx_cdrlock_counter_reg[4]_i_1_n_3 ;
  wire \gt0_rx_cdrlock_counter_reg[4]_i_1_n_4 ;
  wire \gt0_rx_cdrlock_counter_reg[4]_i_1_n_5 ;
  wire \gt0_rx_cdrlock_counter_reg[4]_i_1_n_6 ;
  wire \gt0_rx_cdrlock_counter_reg[4]_i_1_n_7 ;
  wire \gt0_rx_cdrlock_counter_reg[8]_i_1_n_0 ;
  wire \gt0_rx_cdrlock_counter_reg[8]_i_1_n_1 ;
  wire \gt0_rx_cdrlock_counter_reg[8]_i_1_n_2 ;
  wire \gt0_rx_cdrlock_counter_reg[8]_i_1_n_3 ;
  wire \gt0_rx_cdrlock_counter_reg[8]_i_1_n_4 ;
  wire \gt0_rx_cdrlock_counter_reg[8]_i_1_n_5 ;
  wire \gt0_rx_cdrlock_counter_reg[8]_i_1_n_6 ;
  wire \gt0_rx_cdrlock_counter_reg[8]_i_1_n_7 ;
  wire gt0_rx_cdrlocked_i_1_n_0;
  wire gt0_rx_cdrlocked_i_2_n_0;
  wire gt0_rx_cdrlocked_i_3_n_0;
  wire gt0_rx_cdrlocked_reg_n_0;
  wire gt0_rxuserrdy_t;
  wire gt0_txuserrdy_t;
  wire gtrefclk;
  wire gtrefclk_bufg;
  wire gtwizard_i_n_5;
  wire gtwizard_i_n_7;
  wire [1:0]gtxe2_i;
  wire [1:0]gtxe2_i_0;
  wire [1:0]gtxe2_i_1;
  wire gtxe2_i_2;
  wire gtxe2_i_3;
  wire independent_clock_bufg;
  wire mmcm_locked;
  wire mmcm_reset;
  wire pma_reset;
  wire reset;
  wire reset_out;
  wire rx_fsm_reset_done_int_reg;
  wire rxn;
  wire rxoutclk;
  wire rxp;
  wire rxuserclk;
  wire txn;
  wire txoutclk;
  wire txp;
  wire userclk;
  wire [3:1]\NLW_gt0_rx_cdrlock_counter_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_gt0_rx_cdrlock_counter_reg[12]_i_1_O_UNCONNECTED ;

  LUT4 #(
    .INIT(16'hFFFE)) 
    \gt0_rx_cdrlock_counter[0]_i_1 
       (.I0(\gt0_rx_cdrlock_counter[0]_i_3_n_0 ),
        .I1(\gt0_rx_cdrlock_counter[0]_i_4_n_0 ),
        .I2(gt0_rx_cdrlock_counter_reg[1]),
        .I3(gt0_rx_cdrlock_counter_reg[0]),
        .O(\gt0_rx_cdrlock_counter[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFDFFFFFFFFFFFFF)) 
    \gt0_rx_cdrlock_counter[0]_i_3 
       (.I0(gt0_rx_cdrlock_counter_reg[13]),
        .I1(gt0_rx_cdrlock_counter_reg[12]),
        .I2(gt0_rx_cdrlock_counter_reg[10]),
        .I3(gt0_rx_cdrlock_counter_reg[11]),
        .I4(gt0_rx_cdrlock_counter_reg[9]),
        .I5(gt0_rx_cdrlock_counter_reg[8]),
        .O(\gt0_rx_cdrlock_counter[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEF)) 
    \gt0_rx_cdrlock_counter[0]_i_4 
       (.I0(gt0_rx_cdrlock_counter_reg[6]),
        .I1(gt0_rx_cdrlock_counter_reg[7]),
        .I2(gt0_rx_cdrlock_counter_reg[4]),
        .I3(gt0_rx_cdrlock_counter_reg[5]),
        .I4(gt0_rx_cdrlock_counter_reg[3]),
        .I5(gt0_rx_cdrlock_counter_reg[2]),
        .O(\gt0_rx_cdrlock_counter[0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gt0_rx_cdrlock_counter[0]_i_5 
       (.I0(gt0_rx_cdrlock_counter_reg[0]),
        .O(\gt0_rx_cdrlock_counter[0]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[0] 
       (.C(independent_clock_bufg),
        .CE(\gt0_rx_cdrlock_counter[0]_i_1_n_0 ),
        .D(\gt0_rx_cdrlock_counter_reg[0]_i_2_n_7 ),
        .Q(gt0_rx_cdrlock_counter_reg[0]),
        .R(gt0_gtrxreset_in1_out));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \gt0_rx_cdrlock_counter_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\gt0_rx_cdrlock_counter_reg[0]_i_2_n_0 ,\gt0_rx_cdrlock_counter_reg[0]_i_2_n_1 ,\gt0_rx_cdrlock_counter_reg[0]_i_2_n_2 ,\gt0_rx_cdrlock_counter_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\gt0_rx_cdrlock_counter_reg[0]_i_2_n_4 ,\gt0_rx_cdrlock_counter_reg[0]_i_2_n_5 ,\gt0_rx_cdrlock_counter_reg[0]_i_2_n_6 ,\gt0_rx_cdrlock_counter_reg[0]_i_2_n_7 }),
        .S({gt0_rx_cdrlock_counter_reg[3:1],\gt0_rx_cdrlock_counter[0]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[10] 
       (.C(independent_clock_bufg),
        .CE(\gt0_rx_cdrlock_counter[0]_i_1_n_0 ),
        .D(\gt0_rx_cdrlock_counter_reg[8]_i_1_n_5 ),
        .Q(gt0_rx_cdrlock_counter_reg[10]),
        .R(gt0_gtrxreset_in1_out));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[11] 
       (.C(independent_clock_bufg),
        .CE(\gt0_rx_cdrlock_counter[0]_i_1_n_0 ),
        .D(\gt0_rx_cdrlock_counter_reg[8]_i_1_n_4 ),
        .Q(gt0_rx_cdrlock_counter_reg[11]),
        .R(gt0_gtrxreset_in1_out));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[12] 
       (.C(independent_clock_bufg),
        .CE(\gt0_rx_cdrlock_counter[0]_i_1_n_0 ),
        .D(\gt0_rx_cdrlock_counter_reg[12]_i_1_n_7 ),
        .Q(gt0_rx_cdrlock_counter_reg[12]),
        .R(gt0_gtrxreset_in1_out));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \gt0_rx_cdrlock_counter_reg[12]_i_1 
       (.CI(\gt0_rx_cdrlock_counter_reg[8]_i_1_n_0 ),
        .CO({\NLW_gt0_rx_cdrlock_counter_reg[12]_i_1_CO_UNCONNECTED [3:1],\gt0_rx_cdrlock_counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_gt0_rx_cdrlock_counter_reg[12]_i_1_O_UNCONNECTED [3:2],\gt0_rx_cdrlock_counter_reg[12]_i_1_n_6 ,\gt0_rx_cdrlock_counter_reg[12]_i_1_n_7 }),
        .S({1'b0,1'b0,gt0_rx_cdrlock_counter_reg[13:12]}));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[13] 
       (.C(independent_clock_bufg),
        .CE(\gt0_rx_cdrlock_counter[0]_i_1_n_0 ),
        .D(\gt0_rx_cdrlock_counter_reg[12]_i_1_n_6 ),
        .Q(gt0_rx_cdrlock_counter_reg[13]),
        .R(gt0_gtrxreset_in1_out));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[1] 
       (.C(independent_clock_bufg),
        .CE(\gt0_rx_cdrlock_counter[0]_i_1_n_0 ),
        .D(\gt0_rx_cdrlock_counter_reg[0]_i_2_n_6 ),
        .Q(gt0_rx_cdrlock_counter_reg[1]),
        .R(gt0_gtrxreset_in1_out));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[2] 
       (.C(independent_clock_bufg),
        .CE(\gt0_rx_cdrlock_counter[0]_i_1_n_0 ),
        .D(\gt0_rx_cdrlock_counter_reg[0]_i_2_n_5 ),
        .Q(gt0_rx_cdrlock_counter_reg[2]),
        .R(gt0_gtrxreset_in1_out));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[3] 
       (.C(independent_clock_bufg),
        .CE(\gt0_rx_cdrlock_counter[0]_i_1_n_0 ),
        .D(\gt0_rx_cdrlock_counter_reg[0]_i_2_n_4 ),
        .Q(gt0_rx_cdrlock_counter_reg[3]),
        .R(gt0_gtrxreset_in1_out));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[4] 
       (.C(independent_clock_bufg),
        .CE(\gt0_rx_cdrlock_counter[0]_i_1_n_0 ),
        .D(\gt0_rx_cdrlock_counter_reg[4]_i_1_n_7 ),
        .Q(gt0_rx_cdrlock_counter_reg[4]),
        .R(gt0_gtrxreset_in1_out));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \gt0_rx_cdrlock_counter_reg[4]_i_1 
       (.CI(\gt0_rx_cdrlock_counter_reg[0]_i_2_n_0 ),
        .CO({\gt0_rx_cdrlock_counter_reg[4]_i_1_n_0 ,\gt0_rx_cdrlock_counter_reg[4]_i_1_n_1 ,\gt0_rx_cdrlock_counter_reg[4]_i_1_n_2 ,\gt0_rx_cdrlock_counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\gt0_rx_cdrlock_counter_reg[4]_i_1_n_4 ,\gt0_rx_cdrlock_counter_reg[4]_i_1_n_5 ,\gt0_rx_cdrlock_counter_reg[4]_i_1_n_6 ,\gt0_rx_cdrlock_counter_reg[4]_i_1_n_7 }),
        .S(gt0_rx_cdrlock_counter_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[5] 
       (.C(independent_clock_bufg),
        .CE(\gt0_rx_cdrlock_counter[0]_i_1_n_0 ),
        .D(\gt0_rx_cdrlock_counter_reg[4]_i_1_n_6 ),
        .Q(gt0_rx_cdrlock_counter_reg[5]),
        .R(gt0_gtrxreset_in1_out));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[6] 
       (.C(independent_clock_bufg),
        .CE(\gt0_rx_cdrlock_counter[0]_i_1_n_0 ),
        .D(\gt0_rx_cdrlock_counter_reg[4]_i_1_n_5 ),
        .Q(gt0_rx_cdrlock_counter_reg[6]),
        .R(gt0_gtrxreset_in1_out));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[7] 
       (.C(independent_clock_bufg),
        .CE(\gt0_rx_cdrlock_counter[0]_i_1_n_0 ),
        .D(\gt0_rx_cdrlock_counter_reg[4]_i_1_n_4 ),
        .Q(gt0_rx_cdrlock_counter_reg[7]),
        .R(gt0_gtrxreset_in1_out));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[8] 
       (.C(independent_clock_bufg),
        .CE(\gt0_rx_cdrlock_counter[0]_i_1_n_0 ),
        .D(\gt0_rx_cdrlock_counter_reg[8]_i_1_n_7 ),
        .Q(gt0_rx_cdrlock_counter_reg[8]),
        .R(gt0_gtrxreset_in1_out));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \gt0_rx_cdrlock_counter_reg[8]_i_1 
       (.CI(\gt0_rx_cdrlock_counter_reg[4]_i_1_n_0 ),
        .CO({\gt0_rx_cdrlock_counter_reg[8]_i_1_n_0 ,\gt0_rx_cdrlock_counter_reg[8]_i_1_n_1 ,\gt0_rx_cdrlock_counter_reg[8]_i_1_n_2 ,\gt0_rx_cdrlock_counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\gt0_rx_cdrlock_counter_reg[8]_i_1_n_4 ,\gt0_rx_cdrlock_counter_reg[8]_i_1_n_5 ,\gt0_rx_cdrlock_counter_reg[8]_i_1_n_6 ,\gt0_rx_cdrlock_counter_reg[8]_i_1_n_7 }),
        .S(gt0_rx_cdrlock_counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[9] 
       (.C(independent_clock_bufg),
        .CE(\gt0_rx_cdrlock_counter[0]_i_1_n_0 ),
        .D(\gt0_rx_cdrlock_counter_reg[8]_i_1_n_6 ),
        .Q(gt0_rx_cdrlock_counter_reg[9]),
        .R(gt0_gtrxreset_in1_out));
  LUT6 #(
    .INIT(64'h00000000AAAEAAAA)) 
    gt0_rx_cdrlocked_i_1
       (.I0(gt0_rx_cdrlocked_reg_n_0),
        .I1(gt0_rx_cdrlocked_i_2_n_0),
        .I2(gt0_rx_cdrlock_counter_reg[0]),
        .I3(gt0_rx_cdrlock_counter_reg[1]),
        .I4(gt0_rx_cdrlocked_i_3_n_0),
        .I5(gt0_gtrxreset_in1_out),
        .O(gt0_rx_cdrlocked_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000200000000000)) 
    gt0_rx_cdrlocked_i_2
       (.I0(gt0_rx_cdrlock_counter_reg[10]),
        .I1(gt0_rx_cdrlock_counter_reg[11]),
        .I2(gt0_rx_cdrlock_counter_reg[8]),
        .I3(gt0_rx_cdrlock_counter_reg[9]),
        .I4(gt0_rx_cdrlock_counter_reg[12]),
        .I5(gt0_rx_cdrlock_counter_reg[13]),
        .O(gt0_rx_cdrlocked_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    gt0_rx_cdrlocked_i_3
       (.I0(gt0_rx_cdrlock_counter_reg[4]),
        .I1(gt0_rx_cdrlock_counter_reg[5]),
        .I2(gt0_rx_cdrlock_counter_reg[2]),
        .I3(gt0_rx_cdrlock_counter_reg[3]),
        .I4(gt0_rx_cdrlock_counter_reg[7]),
        .I5(gt0_rx_cdrlock_counter_reg[6]),
        .O(gt0_rx_cdrlocked_i_3_n_0));
  FDRE gt0_rx_cdrlocked_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlocked_i_1_n_0),
        .Q(gt0_rx_cdrlocked_reg_n_0),
        .R(1'b0));
  gig_ethernet_pcs_pma_1_RX_STARTUP_FSM gt0_rxresetfsm_i
       (.\FSM_sequential_rx_state_reg[0]_0 (gt0_rx_cdrlocked_reg_n_0),
        .cplllock(cplllock),
        .data_in(rx_fsm_reset_done_int_reg),
        .data_out(data_out),
        .data_sync_reg1(gtwizard_i_n_5),
        .gt0_gtrxreset_in1_out(gt0_gtrxreset_in1_out),
        .gt0_rxuserrdy_t(gt0_rxuserrdy_t),
        .gtxe2_i(gtxe2_i_3),
        .independent_clock_bufg(independent_clock_bufg),
        .mmcm_locked(mmcm_locked),
        .pma_reset(pma_reset),
        .rxuserclk(rxuserclk));
  gig_ethernet_pcs_pma_1_TX_STARTUP_FSM gt0_txresetfsm_i
       (.cplllock(cplllock),
        .data_in(data_in),
        .data_sync_reg1(gtwizard_i_n_7),
        .gt0_cpllrefclklost_i(gt0_cpllrefclklost_i),
        .gt0_cpllreset_t(gt0_cpllreset_t),
        .gt0_gttxreset_in0_out(gt0_gttxreset_in0_out),
        .gt0_txuserrdy_t(gt0_txuserrdy_t),
        .gtxe2_i(gtxe2_i_2),
        .independent_clock_bufg(independent_clock_bufg),
        .mmcm_locked(mmcm_locked),
        .mmcm_reset(mmcm_reset),
        .pma_reset(pma_reset),
        .userclk(userclk));
  gig_ethernet_pcs_pma_1_GTWIZARD_multi_gt gtwizard_i
       (.D(D),
        .Q(Q),
        .RXPD(RXPD),
        .TXBUFSTATUS(TXBUFSTATUS),
        .TXPD(TXPD),
        .cplllock(cplllock),
        .gt0_cpllrefclklost_i(gt0_cpllrefclklost_i),
        .gt0_cpllreset_t(gt0_cpllreset_t),
        .gt0_gtrxreset_in1_out(gt0_gtrxreset_in1_out),
        .gt0_gttxreset_in0_out(gt0_gttxreset_in0_out),
        .gt0_qplloutclk_in(gt0_qplloutclk_in),
        .gt0_qplloutrefclk_in(gt0_qplloutrefclk_in),
        .gt0_rxuserrdy_t(gt0_rxuserrdy_t),
        .gt0_txuserrdy_t(gt0_txuserrdy_t),
        .gtrefclk(gtrefclk),
        .gtrefclk_bufg(gtrefclk_bufg),
        .gtxe2_i(gtwizard_i_n_5),
        .gtxe2_i_0(gtwizard_i_n_7),
        .gtxe2_i_1(gtxe2_i),
        .gtxe2_i_2(gtxe2_i_0),
        .gtxe2_i_3(gtxe2_i_1),
        .independent_clock_bufg(independent_clock_bufg),
        .reset(reset),
        .reset_out(reset_out),
        .rxn(rxn),
        .rxoutclk(rxoutclk),
        .rxp(rxp),
        .rxuserclk(rxuserclk),
        .txn(txn),
        .txoutclk(txoutclk),
        .txp(txp),
        .userclk(userclk));
endmodule

module gig_ethernet_pcs_pma_1_GTWIZARD_multi_gt
   (cplllock,
    gt0_cpllrefclklost_i,
    txn,
    txp,
    rxoutclk,
    gtxe2_i,
    txoutclk,
    gtxe2_i_0,
    TXBUFSTATUS,
    D,
    independent_clock_bufg,
    gtrefclk_bufg,
    gtrefclk,
    gt0_gtrxreset_in1_out,
    gt0_gttxreset_in0_out,
    rxn,
    rxp,
    gt0_qplloutclk_in,
    gt0_qplloutrefclk_in,
    reset_out,
    reset,
    gt0_rxuserrdy_t,
    rxuserclk,
    TXPD,
    gt0_txuserrdy_t,
    userclk,
    RXPD,
    Q,
    gtxe2_i_1,
    gtxe2_i_2,
    gtxe2_i_3,
    gt0_cpllreset_t);
  output cplllock;
  output gt0_cpllrefclklost_i;
  output txn;
  output txp;
  output rxoutclk;
  output gtxe2_i;
  output txoutclk;
  output gtxe2_i_0;
  output [0:0]TXBUFSTATUS;
  output [23:0]D;
  input independent_clock_bufg;
  input gtrefclk_bufg;
  input gtrefclk;
  input gt0_gtrxreset_in1_out;
  input gt0_gttxreset_in0_out;
  input rxn;
  input rxp;
  input gt0_qplloutclk_in;
  input gt0_qplloutrefclk_in;
  input reset_out;
  input reset;
  input gt0_rxuserrdy_t;
  input rxuserclk;
  input [0:0]TXPD;
  input gt0_txuserrdy_t;
  input userclk;
  input [0:0]RXPD;
  input [15:0]Q;
  input [1:0]gtxe2_i_1;
  input [1:0]gtxe2_i_2;
  input [1:0]gtxe2_i_3;
  input gt0_cpllreset_t;

  wire [23:0]D;
  wire [15:0]Q;
  wire [0:0]RXPD;
  wire [0:0]TXBUFSTATUS;
  wire [0:0]TXPD;
  wire cpll_pd0_i;
  wire cplllock;
  wire cpllreset_in;
  wire gt0_cpllrefclklost_i;
  wire gt0_cpllreset_t;
  wire gt0_gtrxreset_in1_out;
  wire gt0_gttxreset_in0_out;
  wire gt0_qplloutclk_in;
  wire gt0_qplloutrefclk_in;
  wire gt0_rxuserrdy_t;
  wire gt0_txuserrdy_t;
  wire gtrefclk;
  wire gtrefclk_bufg;
  wire gtxe2_i;
  wire gtxe2_i_0;
  wire [1:0]gtxe2_i_1;
  wire [1:0]gtxe2_i_2;
  wire [1:0]gtxe2_i_3;
  wire independent_clock_bufg;
  wire reset;
  wire reset_out;
  wire rxn;
  wire rxoutclk;
  wire rxp;
  wire rxuserclk;
  wire txn;
  wire txoutclk;
  wire txp;
  wire userclk;

  gig_ethernet_pcs_pma_1_cpll_railing cpll_railing0_i
       (.cpll_pd0_i(cpll_pd0_i),
        .cpllreset_in(cpllreset_in),
        .gt0_cpllreset_t(gt0_cpllreset_t),
        .gtrefclk_bufg(gtrefclk_bufg));
  gig_ethernet_pcs_pma_1_GTWIZARD_GT gt0_GTWIZARD_i
       (.D(D),
        .Q(Q),
        .RXPD(RXPD),
        .TXBUFSTATUS(TXBUFSTATUS),
        .TXPD(TXPD),
        .cpll_pd0_i(cpll_pd0_i),
        .cplllock(cplllock),
        .cpllreset_in(cpllreset_in),
        .gt0_cpllrefclklost_i(gt0_cpllrefclklost_i),
        .gt0_gtrxreset_in1_out(gt0_gtrxreset_in1_out),
        .gt0_gttxreset_in0_out(gt0_gttxreset_in0_out),
        .gt0_qplloutclk_in(gt0_qplloutclk_in),
        .gt0_qplloutrefclk_in(gt0_qplloutrefclk_in),
        .gt0_rxuserrdy_t(gt0_rxuserrdy_t),
        .gt0_txuserrdy_t(gt0_txuserrdy_t),
        .gtrefclk(gtrefclk),
        .gtrefclk_bufg(gtrefclk_bufg),
        .gtxe2_i_0(gtxe2_i),
        .gtxe2_i_1(gtxe2_i_0),
        .gtxe2_i_2(gtxe2_i_1),
        .gtxe2_i_3(gtxe2_i_2),
        .gtxe2_i_4(gtxe2_i_3),
        .independent_clock_bufg(independent_clock_bufg),
        .reset(reset),
        .reset_out(reset_out),
        .rxn(rxn),
        .rxoutclk(rxoutclk),
        .rxp(rxp),
        .rxuserclk(rxuserclk),
        .txn(txn),
        .txoutclk(txoutclk),
        .txp(txp),
        .userclk(userclk));
endmodule

module gig_ethernet_pcs_pma_1_RX_STARTUP_FSM
   (data_in,
    gt0_rxuserrdy_t,
    gt0_gtrxreset_in1_out,
    independent_clock_bufg,
    rxuserclk,
    pma_reset,
    \FSM_sequential_rx_state_reg[0]_0 ,
    gtxe2_i,
    data_sync_reg1,
    mmcm_locked,
    data_out,
    cplllock);
  output data_in;
  output gt0_rxuserrdy_t;
  output gt0_gtrxreset_in1_out;
  input independent_clock_bufg;
  input rxuserclk;
  input pma_reset;
  input \FSM_sequential_rx_state_reg[0]_0 ;
  input gtxe2_i;
  input data_sync_reg1;
  input mmcm_locked;
  input data_out;
  input cplllock;

  wire \FSM_sequential_rx_state[0]_i_2_n_0 ;
  wire \FSM_sequential_rx_state[1]_i_3_n_0 ;
  wire \FSM_sequential_rx_state[2]_i_2_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_10_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_3_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_7_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_9_n_0 ;
  wire \FSM_sequential_rx_state_reg[0]_0 ;
  wire GTRXRESET;
  wire RXUSERRDY_i_1_n_0;
  wire check_tlock_max_i_1_n_0;
  wire check_tlock_max_reg_n_0;
  wire cplllock;
  wire data_in;
  wire data_out;
  wire data_out_0;
  wire data_sync_reg1;
  wire gt0_gtrxreset_in1_out;
  wire gt0_rxuserrdy_t;
  wire gtrxreset_i_i_1_n_0;
  wire gtxe2_i;
  wire independent_clock_bufg;
  wire \init_wait_count[0]_i_1__0_n_0 ;
  wire \init_wait_count[6]_i_1__0_n_0 ;
  wire \init_wait_count[6]_i_3__0_n_0 ;
  wire [6:0]init_wait_count_reg;
  wire init_wait_done_i_1__0_n_0;
  wire init_wait_done_reg_n_0;
  wire \mmcm_lock_count[2]_i_1__0_n_0 ;
  wire \mmcm_lock_count[3]_i_1__0_n_0 ;
  wire \mmcm_lock_count[4]_i_1__0_n_0 ;
  wire \mmcm_lock_count[5]_i_1__0_n_0 ;
  wire \mmcm_lock_count[6]_i_1__0_n_0 ;
  wire \mmcm_lock_count[7]_i_2__0_n_0 ;
  wire \mmcm_lock_count[7]_i_3__0_n_0 ;
  wire [7:0]mmcm_lock_count_reg;
  wire mmcm_lock_i;
  wire mmcm_lock_reclocked;
  wire mmcm_lock_reclocked_i_1_n_0;
  wire mmcm_lock_reclocked_i_2__0_n_0;
  wire mmcm_locked;
  wire [6:1]p_0_in__1;
  wire [1:0]p_0_in__2;
  wire pma_reset;
  wire reset_time_out_i_3_n_0;
  wire reset_time_out_i_4_n_0;
  wire reset_time_out_reg_n_0;
  wire run_phase_alignment_int_i_1__0_n_0;
  wire run_phase_alignment_int_reg_n_0;
  wire run_phase_alignment_int_s3_reg_n_0;
  wire rx_fsm_reset_done_int_i_5_n_0;
  wire rx_fsm_reset_done_int_i_6_n_0;
  wire rx_fsm_reset_done_int_s2;
  wire rx_fsm_reset_done_int_s3;
  wire [3:0]rx_state;
  wire [3:0]rx_state__0;
  wire rxresetdone_s2;
  wire rxresetdone_s3;
  wire rxuserclk;
  wire sync_cplllock_n_0;
  wire sync_data_valid_n_0;
  wire sync_data_valid_n_1;
  wire sync_data_valid_n_5;
  wire sync_mmcm_lock_reclocked_n_0;
  wire time_out_100us_i_1_n_0;
  wire time_out_100us_i_2_n_0;
  wire time_out_100us_i_3_n_0;
  wire time_out_100us_reg_n_0;
  wire time_out_1us_i_1_n_0;
  wire time_out_1us_i_2_n_0;
  wire time_out_1us_i_3_n_0;
  wire time_out_1us_reg_n_0;
  wire time_out_2ms_i_1_n_0;
  wire time_out_2ms_i_2_n_0;
  wire time_out_2ms_i_3__0_n_0;
  wire time_out_2ms_i_4_n_0;
  wire time_out_2ms_reg_n_0;
  wire time_out_counter;
  wire \time_out_counter[0]_i_3_n_0 ;
  wire [18:0]time_out_counter_reg;
  wire \time_out_counter_reg[0]_i_2__0_n_0 ;
  wire \time_out_counter_reg[0]_i_2__0_n_1 ;
  wire \time_out_counter_reg[0]_i_2__0_n_2 ;
  wire \time_out_counter_reg[0]_i_2__0_n_3 ;
  wire \time_out_counter_reg[0]_i_2__0_n_4 ;
  wire \time_out_counter_reg[0]_i_2__0_n_5 ;
  wire \time_out_counter_reg[0]_i_2__0_n_6 ;
  wire \time_out_counter_reg[0]_i_2__0_n_7 ;
  wire \time_out_counter_reg[12]_i_1__0_n_0 ;
  wire \time_out_counter_reg[12]_i_1__0_n_1 ;
  wire \time_out_counter_reg[12]_i_1__0_n_2 ;
  wire \time_out_counter_reg[12]_i_1__0_n_3 ;
  wire \time_out_counter_reg[12]_i_1__0_n_4 ;
  wire \time_out_counter_reg[12]_i_1__0_n_5 ;
  wire \time_out_counter_reg[12]_i_1__0_n_6 ;
  wire \time_out_counter_reg[12]_i_1__0_n_7 ;
  wire \time_out_counter_reg[16]_i_1__0_n_2 ;
  wire \time_out_counter_reg[16]_i_1__0_n_3 ;
  wire \time_out_counter_reg[16]_i_1__0_n_5 ;
  wire \time_out_counter_reg[16]_i_1__0_n_6 ;
  wire \time_out_counter_reg[16]_i_1__0_n_7 ;
  wire \time_out_counter_reg[4]_i_1__0_n_0 ;
  wire \time_out_counter_reg[4]_i_1__0_n_1 ;
  wire \time_out_counter_reg[4]_i_1__0_n_2 ;
  wire \time_out_counter_reg[4]_i_1__0_n_3 ;
  wire \time_out_counter_reg[4]_i_1__0_n_4 ;
  wire \time_out_counter_reg[4]_i_1__0_n_5 ;
  wire \time_out_counter_reg[4]_i_1__0_n_6 ;
  wire \time_out_counter_reg[4]_i_1__0_n_7 ;
  wire \time_out_counter_reg[8]_i_1__0_n_0 ;
  wire \time_out_counter_reg[8]_i_1__0_n_1 ;
  wire \time_out_counter_reg[8]_i_1__0_n_2 ;
  wire \time_out_counter_reg[8]_i_1__0_n_3 ;
  wire \time_out_counter_reg[8]_i_1__0_n_4 ;
  wire \time_out_counter_reg[8]_i_1__0_n_5 ;
  wire \time_out_counter_reg[8]_i_1__0_n_6 ;
  wire \time_out_counter_reg[8]_i_1__0_n_7 ;
  wire time_out_wait_bypass_i_1_n_0;
  wire time_out_wait_bypass_i_2__0_n_0;
  wire time_out_wait_bypass_i_3__0_n_0;
  wire time_out_wait_bypass_i_4__0_n_0;
  wire time_out_wait_bypass_reg_n_0;
  wire time_out_wait_bypass_s2;
  wire time_out_wait_bypass_s3;
  wire time_tlock_max;
  wire time_tlock_max1;
  wire time_tlock_max1_carry__0_i_1_n_0;
  wire time_tlock_max1_carry__0_i_2_n_0;
  wire time_tlock_max1_carry__0_i_3_n_0;
  wire time_tlock_max1_carry__0_i_4_n_0;
  wire time_tlock_max1_carry__0_i_5_n_0;
  wire time_tlock_max1_carry__0_i_6_n_0;
  wire time_tlock_max1_carry__0_n_0;
  wire time_tlock_max1_carry__0_n_1;
  wire time_tlock_max1_carry__0_n_2;
  wire time_tlock_max1_carry__0_n_3;
  wire time_tlock_max1_carry__1_i_1_n_0;
  wire time_tlock_max1_carry__1_i_2_n_0;
  wire time_tlock_max1_carry__1_i_3_n_0;
  wire time_tlock_max1_carry__1_n_3;
  wire time_tlock_max1_carry_i_1_n_0;
  wire time_tlock_max1_carry_i_2_n_0;
  wire time_tlock_max1_carry_i_3_n_0;
  wire time_tlock_max1_carry_i_4_n_0;
  wire time_tlock_max1_carry_i_5_n_0;
  wire time_tlock_max1_carry_i_6_n_0;
  wire time_tlock_max1_carry_i_7_n_0;
  wire time_tlock_max1_carry_i_8_n_0;
  wire time_tlock_max1_carry_n_0;
  wire time_tlock_max1_carry_n_1;
  wire time_tlock_max1_carry_n_2;
  wire time_tlock_max1_carry_n_3;
  wire time_tlock_max_i_1_n_0;
  wire \wait_bypass_count[0]_i_1__0_n_0 ;
  wire \wait_bypass_count[0]_i_2__0_n_0 ;
  wire \wait_bypass_count[0]_i_4__0_n_0 ;
  wire [12:0]wait_bypass_count_reg;
  wire \wait_bypass_count_reg[0]_i_3__0_n_0 ;
  wire \wait_bypass_count_reg[0]_i_3__0_n_1 ;
  wire \wait_bypass_count_reg[0]_i_3__0_n_2 ;
  wire \wait_bypass_count_reg[0]_i_3__0_n_3 ;
  wire \wait_bypass_count_reg[0]_i_3__0_n_4 ;
  wire \wait_bypass_count_reg[0]_i_3__0_n_5 ;
  wire \wait_bypass_count_reg[0]_i_3__0_n_6 ;
  wire \wait_bypass_count_reg[0]_i_3__0_n_7 ;
  wire \wait_bypass_count_reg[12]_i_1__0_n_7 ;
  wire \wait_bypass_count_reg[4]_i_1__0_n_0 ;
  wire \wait_bypass_count_reg[4]_i_1__0_n_1 ;
  wire \wait_bypass_count_reg[4]_i_1__0_n_2 ;
  wire \wait_bypass_count_reg[4]_i_1__0_n_3 ;
  wire \wait_bypass_count_reg[4]_i_1__0_n_4 ;
  wire \wait_bypass_count_reg[4]_i_1__0_n_5 ;
  wire \wait_bypass_count_reg[4]_i_1__0_n_6 ;
  wire \wait_bypass_count_reg[4]_i_1__0_n_7 ;
  wire \wait_bypass_count_reg[8]_i_1__0_n_0 ;
  wire \wait_bypass_count_reg[8]_i_1__0_n_1 ;
  wire \wait_bypass_count_reg[8]_i_1__0_n_2 ;
  wire \wait_bypass_count_reg[8]_i_1__0_n_3 ;
  wire \wait_bypass_count_reg[8]_i_1__0_n_4 ;
  wire \wait_bypass_count_reg[8]_i_1__0_n_5 ;
  wire \wait_bypass_count_reg[8]_i_1__0_n_6 ;
  wire \wait_bypass_count_reg[8]_i_1__0_n_7 ;
  wire [0:0]wait_time_cnt0__0;
  wire \wait_time_cnt[1]_i_1__0_n_0 ;
  wire \wait_time_cnt[2]_i_1__0_n_0 ;
  wire \wait_time_cnt[3]_i_1__0_n_0 ;
  wire \wait_time_cnt[4]_i_1__0_n_0 ;
  wire \wait_time_cnt[5]_i_1__0_n_0 ;
  wire \wait_time_cnt[6]_i_1_n_0 ;
  wire \wait_time_cnt[6]_i_2__0_n_0 ;
  wire \wait_time_cnt[6]_i_3__0_n_0 ;
  wire \wait_time_cnt[6]_i_4__0_n_0 ;
  wire [6:0]wait_time_cnt_reg;
  wire [3:2]\NLW_time_out_counter_reg[16]_i_1__0_CO_UNCONNECTED ;
  wire [3:3]\NLW_time_out_counter_reg[16]_i_1__0_O_UNCONNECTED ;
  wire [3:0]NLW_time_tlock_max1_carry_O_UNCONNECTED;
  wire [3:0]NLW_time_tlock_max1_carry__0_O_UNCONNECTED;
  wire [3:2]NLW_time_tlock_max1_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_time_tlock_max1_carry__1_O_UNCONNECTED;
  wire [3:0]\NLW_wait_bypass_count_reg[12]_i_1__0_CO_UNCONNECTED ;
  wire [3:1]\NLW_wait_bypass_count_reg[12]_i_1__0_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h2222AAAA00000C00)) 
    \FSM_sequential_rx_state[0]_i_2 
       (.I0(time_out_2ms_reg_n_0),
        .I1(rx_state[2]),
        .I2(rx_state[3]),
        .I3(time_tlock_max),
        .I4(reset_time_out_reg_n_0),
        .I5(rx_state[1]),
        .O(\FSM_sequential_rx_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000AABF000F0000)) 
    \FSM_sequential_rx_state[1]_i_3 
       (.I0(reset_time_out_reg_n_0),
        .I1(time_tlock_max),
        .I2(rx_state[2]),
        .I3(rx_state[3]),
        .I4(rx_state[1]),
        .I5(rx_state[0]),
        .O(\FSM_sequential_rx_state[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000050FF2200)) 
    \FSM_sequential_rx_state[2]_i_1 
       (.I0(rx_state[1]),
        .I1(time_out_2ms_reg_n_0),
        .I2(\FSM_sequential_rx_state[2]_i_2_n_0 ),
        .I3(rx_state[0]),
        .I4(rx_state[2]),
        .I5(rx_state[3]),
        .O(rx_state__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_rx_state[2]_i_2 
       (.I0(reset_time_out_reg_n_0),
        .I1(time_tlock_max),
        .O(\FSM_sequential_rx_state[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_rx_state[3]_i_10 
       (.I0(reset_time_out_reg_n_0),
        .I1(time_out_2ms_reg_n_0),
        .O(\FSM_sequential_rx_state[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000000050005300)) 
    \FSM_sequential_rx_state[3]_i_3 
       (.I0(\FSM_sequential_rx_state[3]_i_10_n_0 ),
        .I1(\wait_time_cnt[6]_i_4__0_n_0 ),
        .I2(rx_state[0]),
        .I3(rx_state[1]),
        .I4(wait_time_cnt_reg[6]),
        .I5(rx_state[3]),
        .O(\FSM_sequential_rx_state[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000023002F00)) 
    \FSM_sequential_rx_state[3]_i_7 
       (.I0(time_out_2ms_reg_n_0),
        .I1(rx_state[2]),
        .I2(rx_state[1]),
        .I3(rx_state[0]),
        .I4(\FSM_sequential_rx_state[2]_i_2_n_0 ),
        .I5(rx_state[3]),
        .O(\FSM_sequential_rx_state[3]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT5 #(
    .INIT(32'h80800080)) 
    \FSM_sequential_rx_state[3]_i_9 
       (.I0(rx_state[0]),
        .I1(rx_state[1]),
        .I2(rx_state[2]),
        .I3(time_out_2ms_reg_n_0),
        .I4(reset_time_out_reg_n_0),
        .O(\FSM_sequential_rx_state[3]_i_9_n_0 ));
  (* FSM_ENCODED_STATES = "release_pll_reset:0011,verify_recclk_stable:0100,wait_for_pll_lock:0010,fsm_done:1010,assert_all_resets:0001,init:0000,wait_reset_done:0111,monitor_data_valid:1001,wait_for_rxusrclk:0110,do_phase_alignment:1000,release_mmcm_reset:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_rx_state_reg[0] 
       (.C(independent_clock_bufg),
        .CE(sync_data_valid_n_5),
        .D(rx_state__0[0]),
        .Q(rx_state[0]),
        .R(pma_reset));
  (* FSM_ENCODED_STATES = "release_pll_reset:0011,verify_recclk_stable:0100,wait_for_pll_lock:0010,fsm_done:1010,assert_all_resets:0001,init:0000,wait_reset_done:0111,monitor_data_valid:1001,wait_for_rxusrclk:0110,do_phase_alignment:1000,release_mmcm_reset:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_rx_state_reg[1] 
       (.C(independent_clock_bufg),
        .CE(sync_data_valid_n_5),
        .D(rx_state__0[1]),
        .Q(rx_state[1]),
        .R(pma_reset));
  (* FSM_ENCODED_STATES = "release_pll_reset:0011,verify_recclk_stable:0100,wait_for_pll_lock:0010,fsm_done:1010,assert_all_resets:0001,init:0000,wait_reset_done:0111,monitor_data_valid:1001,wait_for_rxusrclk:0110,do_phase_alignment:1000,release_mmcm_reset:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_rx_state_reg[2] 
       (.C(independent_clock_bufg),
        .CE(sync_data_valid_n_5),
        .D(rx_state__0[2]),
        .Q(rx_state[2]),
        .R(pma_reset));
  (* FSM_ENCODED_STATES = "release_pll_reset:0011,verify_recclk_stable:0100,wait_for_pll_lock:0010,fsm_done:1010,assert_all_resets:0001,init:0000,wait_reset_done:0111,monitor_data_valid:1001,wait_for_rxusrclk:0110,do_phase_alignment:1000,release_mmcm_reset:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_rx_state_reg[3] 
       (.C(independent_clock_bufg),
        .CE(sync_data_valid_n_5),
        .D(rx_state__0[3]),
        .Q(rx_state[3]),
        .R(pma_reset));
  LUT5 #(
    .INIT(32'hFFFB4000)) 
    RXUSERRDY_i_1
       (.I0(rx_state[3]),
        .I1(rx_state[0]),
        .I2(rx_state[2]),
        .I3(rx_state[1]),
        .I4(gt0_rxuserrdy_t),
        .O(RXUSERRDY_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    RXUSERRDY_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(RXUSERRDY_i_1_n_0),
        .Q(gt0_rxuserrdy_t),
        .R(pma_reset));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    check_tlock_max_i_1
       (.I0(rx_state[2]),
        .I1(rx_state[0]),
        .I2(rx_state[1]),
        .I3(rx_state[3]),
        .I4(check_tlock_max_reg_n_0),
        .O(check_tlock_max_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    check_tlock_max_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(check_tlock_max_i_1_n_0),
        .Q(check_tlock_max_reg_n_0),
        .R(pma_reset));
  LUT5 #(
    .INIT(32'hFFEF0100)) 
    gtrxreset_i_i_1
       (.I0(rx_state[3]),
        .I1(rx_state[1]),
        .I2(rx_state[2]),
        .I3(rx_state[0]),
        .I4(GTRXRESET),
        .O(gtrxreset_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    gtrxreset_i_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gtrxreset_i_i_1_n_0),
        .Q(GTRXRESET),
        .R(pma_reset));
  LUT3 #(
    .INIT(8'hF8)) 
    gtxe2_i_i_2
       (.I0(data_in),
        .I1(gtxe2_i),
        .I2(GTRXRESET),
        .O(gt0_gtrxreset_in1_out));
  LUT1 #(
    .INIT(2'h1)) 
    \init_wait_count[0]_i_1__0 
       (.I0(init_wait_count_reg[0]),
        .O(\init_wait_count[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \init_wait_count[1]_i_1__0 
       (.I0(init_wait_count_reg[0]),
        .I1(init_wait_count_reg[1]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \init_wait_count[2]_i_1__0 
       (.I0(init_wait_count_reg[1]),
        .I1(init_wait_count_reg[0]),
        .I2(init_wait_count_reg[2]),
        .O(p_0_in__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \init_wait_count[3]_i_1__0 
       (.I0(init_wait_count_reg[1]),
        .I1(init_wait_count_reg[2]),
        .I2(init_wait_count_reg[0]),
        .I3(init_wait_count_reg[3]),
        .O(p_0_in__1[3]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \init_wait_count[4]_i_1__0 
       (.I0(init_wait_count_reg[2]),
        .I1(init_wait_count_reg[1]),
        .I2(init_wait_count_reg[3]),
        .I3(init_wait_count_reg[0]),
        .I4(init_wait_count_reg[4]),
        .O(p_0_in__1[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \init_wait_count[5]_i_1__0 
       (.I0(init_wait_count_reg[2]),
        .I1(init_wait_count_reg[1]),
        .I2(init_wait_count_reg[3]),
        .I3(init_wait_count_reg[0]),
        .I4(init_wait_count_reg[4]),
        .I5(init_wait_count_reg[5]),
        .O(p_0_in__1[5]));
  LUT4 #(
    .INIT(16'hFEFF)) 
    \init_wait_count[6]_i_1__0 
       (.I0(\init_wait_count[6]_i_3__0_n_0 ),
        .I1(init_wait_count_reg[0]),
        .I2(init_wait_count_reg[4]),
        .I3(init_wait_count_reg[6]),
        .O(\init_wait_count[6]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT4 #(
    .INIT(16'hBF40)) 
    \init_wait_count[6]_i_2__0 
       (.I0(\init_wait_count[6]_i_3__0_n_0 ),
        .I1(init_wait_count_reg[0]),
        .I2(init_wait_count_reg[4]),
        .I3(init_wait_count_reg[6]),
        .O(p_0_in__1[6]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \init_wait_count[6]_i_3__0 
       (.I0(init_wait_count_reg[3]),
        .I1(init_wait_count_reg[1]),
        .I2(init_wait_count_reg[2]),
        .I3(init_wait_count_reg[5]),
        .O(\init_wait_count[6]_i_3__0_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[0] 
       (.C(independent_clock_bufg),
        .CE(\init_wait_count[6]_i_1__0_n_0 ),
        .CLR(pma_reset),
        .D(\init_wait_count[0]_i_1__0_n_0 ),
        .Q(init_wait_count_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[1] 
       (.C(independent_clock_bufg),
        .CE(\init_wait_count[6]_i_1__0_n_0 ),
        .CLR(pma_reset),
        .D(p_0_in__1[1]),
        .Q(init_wait_count_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[2] 
       (.C(independent_clock_bufg),
        .CE(\init_wait_count[6]_i_1__0_n_0 ),
        .CLR(pma_reset),
        .D(p_0_in__1[2]),
        .Q(init_wait_count_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[3] 
       (.C(independent_clock_bufg),
        .CE(\init_wait_count[6]_i_1__0_n_0 ),
        .CLR(pma_reset),
        .D(p_0_in__1[3]),
        .Q(init_wait_count_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[4] 
       (.C(independent_clock_bufg),
        .CE(\init_wait_count[6]_i_1__0_n_0 ),
        .CLR(pma_reset),
        .D(p_0_in__1[4]),
        .Q(init_wait_count_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[5] 
       (.C(independent_clock_bufg),
        .CE(\init_wait_count[6]_i_1__0_n_0 ),
        .CLR(pma_reset),
        .D(p_0_in__1[5]),
        .Q(init_wait_count_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[6] 
       (.C(independent_clock_bufg),
        .CE(\init_wait_count[6]_i_1__0_n_0 ),
        .CLR(pma_reset),
        .D(p_0_in__1[6]),
        .Q(init_wait_count_reg[6]));
  LUT5 #(
    .INIT(32'hFFFF0010)) 
    init_wait_done_i_1__0
       (.I0(\init_wait_count[6]_i_3__0_n_0 ),
        .I1(init_wait_count_reg[4]),
        .I2(init_wait_count_reg[6]),
        .I3(init_wait_count_reg[0]),
        .I4(init_wait_done_reg_n_0),
        .O(init_wait_done_i_1__0_n_0));
  FDCE #(
    .INIT(1'b0)) 
    init_wait_done_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .CLR(pma_reset),
        .D(init_wait_done_i_1__0_n_0),
        .Q(init_wait_done_reg_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \mmcm_lock_count[0]_i_1__0 
       (.I0(mmcm_lock_count_reg[0]),
        .O(p_0_in__2[0]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \mmcm_lock_count[1]_i_1__0 
       (.I0(mmcm_lock_count_reg[0]),
        .I1(mmcm_lock_count_reg[1]),
        .O(p_0_in__2[1]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \mmcm_lock_count[2]_i_1__0 
       (.I0(mmcm_lock_count_reg[1]),
        .I1(mmcm_lock_count_reg[0]),
        .I2(mmcm_lock_count_reg[2]),
        .O(\mmcm_lock_count[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \mmcm_lock_count[3]_i_1__0 
       (.I0(mmcm_lock_count_reg[2]),
        .I1(mmcm_lock_count_reg[0]),
        .I2(mmcm_lock_count_reg[1]),
        .I3(mmcm_lock_count_reg[3]),
        .O(\mmcm_lock_count[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \mmcm_lock_count[4]_i_1__0 
       (.I0(mmcm_lock_count_reg[3]),
        .I1(mmcm_lock_count_reg[1]),
        .I2(mmcm_lock_count_reg[0]),
        .I3(mmcm_lock_count_reg[2]),
        .I4(mmcm_lock_count_reg[4]),
        .O(\mmcm_lock_count[4]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \mmcm_lock_count[5]_i_1__0 
       (.I0(mmcm_lock_count_reg[4]),
        .I1(mmcm_lock_count_reg[2]),
        .I2(mmcm_lock_count_reg[0]),
        .I3(mmcm_lock_count_reg[1]),
        .I4(mmcm_lock_count_reg[3]),
        .I5(mmcm_lock_count_reg[5]),
        .O(\mmcm_lock_count[5]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \mmcm_lock_count[6]_i_1__0 
       (.I0(mmcm_lock_reclocked_i_2__0_n_0),
        .I1(mmcm_lock_count_reg[6]),
        .O(\mmcm_lock_count[6]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'hBF)) 
    \mmcm_lock_count[7]_i_2__0 
       (.I0(mmcm_lock_reclocked_i_2__0_n_0),
        .I1(mmcm_lock_count_reg[6]),
        .I2(mmcm_lock_count_reg[7]),
        .O(\mmcm_lock_count[7]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \mmcm_lock_count[7]_i_3__0 
       (.I0(mmcm_lock_count_reg[6]),
        .I1(mmcm_lock_reclocked_i_2__0_n_0),
        .I2(mmcm_lock_count_reg[7]),
        .O(\mmcm_lock_count[7]_i_3__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[0] 
       (.C(independent_clock_bufg),
        .CE(\mmcm_lock_count[7]_i_2__0_n_0 ),
        .D(p_0_in__2[0]),
        .Q(mmcm_lock_count_reg[0]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[1] 
       (.C(independent_clock_bufg),
        .CE(\mmcm_lock_count[7]_i_2__0_n_0 ),
        .D(p_0_in__2[1]),
        .Q(mmcm_lock_count_reg[1]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[2] 
       (.C(independent_clock_bufg),
        .CE(\mmcm_lock_count[7]_i_2__0_n_0 ),
        .D(\mmcm_lock_count[2]_i_1__0_n_0 ),
        .Q(mmcm_lock_count_reg[2]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[3] 
       (.C(independent_clock_bufg),
        .CE(\mmcm_lock_count[7]_i_2__0_n_0 ),
        .D(\mmcm_lock_count[3]_i_1__0_n_0 ),
        .Q(mmcm_lock_count_reg[3]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[4] 
       (.C(independent_clock_bufg),
        .CE(\mmcm_lock_count[7]_i_2__0_n_0 ),
        .D(\mmcm_lock_count[4]_i_1__0_n_0 ),
        .Q(mmcm_lock_count_reg[4]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[5] 
       (.C(independent_clock_bufg),
        .CE(\mmcm_lock_count[7]_i_2__0_n_0 ),
        .D(\mmcm_lock_count[5]_i_1__0_n_0 ),
        .Q(mmcm_lock_count_reg[5]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[6] 
       (.C(independent_clock_bufg),
        .CE(\mmcm_lock_count[7]_i_2__0_n_0 ),
        .D(\mmcm_lock_count[6]_i_1__0_n_0 ),
        .Q(mmcm_lock_count_reg[6]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[7] 
       (.C(independent_clock_bufg),
        .CE(\mmcm_lock_count[7]_i_2__0_n_0 ),
        .D(\mmcm_lock_count[7]_i_3__0_n_0 ),
        .Q(mmcm_lock_count_reg[7]),
        .R(sync_mmcm_lock_reclocked_n_0));
  LUT5 #(
    .INIT(32'hAAEA0000)) 
    mmcm_lock_reclocked_i_1
       (.I0(mmcm_lock_reclocked),
        .I1(mmcm_lock_count_reg[7]),
        .I2(mmcm_lock_count_reg[6]),
        .I3(mmcm_lock_reclocked_i_2__0_n_0),
        .I4(mmcm_lock_i),
        .O(mmcm_lock_reclocked_i_1_n_0));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    mmcm_lock_reclocked_i_2__0
       (.I0(mmcm_lock_count_reg[4]),
        .I1(mmcm_lock_count_reg[2]),
        .I2(mmcm_lock_count_reg[0]),
        .I3(mmcm_lock_count_reg[1]),
        .I4(mmcm_lock_count_reg[3]),
        .I5(mmcm_lock_count_reg[5]),
        .O(mmcm_lock_reclocked_i_2__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    mmcm_lock_reclocked_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(mmcm_lock_reclocked_i_1_n_0),
        .Q(mmcm_lock_reclocked),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT2 #(
    .INIT(4'hE)) 
    reset_time_out_i_3
       (.I0(rx_state[2]),
        .I1(rx_state[3]),
        .O(reset_time_out_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT5 #(
    .INIT(32'h34347674)) 
    reset_time_out_i_4
       (.I0(rx_state[2]),
        .I1(rx_state[3]),
        .I2(rx_state[0]),
        .I3(\FSM_sequential_rx_state_reg[0]_0 ),
        .I4(rx_state[1]),
        .O(reset_time_out_i_4_n_0));
  FDSE #(
    .INIT(1'b0)) 
    reset_time_out_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(sync_data_valid_n_0),
        .Q(reset_time_out_reg_n_0),
        .S(pma_reset));
  LUT5 #(
    .INIT(32'hFEFF0010)) 
    run_phase_alignment_int_i_1__0
       (.I0(rx_state[2]),
        .I1(rx_state[1]),
        .I2(rx_state[3]),
        .I3(rx_state[0]),
        .I4(run_phase_alignment_int_reg_n_0),
        .O(run_phase_alignment_int_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    run_phase_alignment_int_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(run_phase_alignment_int_i_1__0_n_0),
        .Q(run_phase_alignment_int_reg_n_0),
        .R(pma_reset));
  FDRE #(
    .INIT(1'b0)) 
    run_phase_alignment_int_s3_reg
       (.C(rxuserclk),
        .CE(1'b1),
        .D(data_out_0),
        .Q(run_phase_alignment_int_s3_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT2 #(
    .INIT(4'hB)) 
    rx_fsm_reset_done_int_i_5
       (.I0(rx_state[1]),
        .I1(rx_state[0]),
        .O(rx_fsm_reset_done_int_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'h2)) 
    rx_fsm_reset_done_int_i_6
       (.I0(rx_state[3]),
        .I1(rx_state[2]),
        .O(rx_fsm_reset_done_int_i_6_n_0));
  FDRE #(
    .INIT(1'b0)) 
    rx_fsm_reset_done_int_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(sync_data_valid_n_1),
        .Q(data_in),
        .R(pma_reset));
  FDRE #(
    .INIT(1'b0)) 
    rx_fsm_reset_done_int_s3_reg
       (.C(rxuserclk),
        .CE(1'b1),
        .D(rx_fsm_reset_done_int_s2),
        .Q(rx_fsm_reset_done_int_s3),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    rxresetdone_s3_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(rxresetdone_s2),
        .Q(rxresetdone_s3),
        .R(1'b0));
  gig_ethernet_pcs_pma_1_sync_block__parameterized1_23 sync_RXRESETDONE
       (.data_out(rxresetdone_s2),
        .data_sync_reg1_0(data_sync_reg1),
        .independent_clock_bufg(independent_clock_bufg));
  gig_ethernet_pcs_pma_1_sync_block__parameterized1_24 sync_cplllock
       (.\FSM_sequential_rx_state_reg[1] (sync_cplllock_n_0),
        .Q(rx_state[3:1]),
        .cplllock(cplllock),
        .independent_clock_bufg(independent_clock_bufg),
        .rxresetdone_s3(rxresetdone_s3));
  gig_ethernet_pcs_pma_1_sync_block__parameterized1_25 sync_data_valid
       (.D({rx_state__0[3],rx_state__0[1:0]}),
        .E(sync_data_valid_n_5),
        .\FSM_sequential_rx_state_reg[0] (\FSM_sequential_rx_state[3]_i_3_n_0 ),
        .\FSM_sequential_rx_state_reg[0]_0 (\FSM_sequential_rx_state[3]_i_7_n_0 ),
        .\FSM_sequential_rx_state_reg[0]_1 (\FSM_sequential_rx_state_reg[0]_0 ),
        .\FSM_sequential_rx_state_reg[0]_2 (\FSM_sequential_rx_state[0]_i_2_n_0 ),
        .\FSM_sequential_rx_state_reg[0]_3 (init_wait_done_reg_n_0),
        .\FSM_sequential_rx_state_reg[1] (sync_data_valid_n_0),
        .\FSM_sequential_rx_state_reg[1]_0 (\FSM_sequential_rx_state[1]_i_3_n_0 ),
        .\FSM_sequential_rx_state_reg[3] (\FSM_sequential_rx_state[3]_i_9_n_0 ),
        .Q(rx_state),
        .data_in(data_in),
        .data_out(data_out),
        .independent_clock_bufg(independent_clock_bufg),
        .mmcm_lock_reclocked(mmcm_lock_reclocked),
        .reset_time_out_reg(sync_cplllock_n_0),
        .reset_time_out_reg_0(reset_time_out_i_3_n_0),
        .reset_time_out_reg_1(reset_time_out_i_4_n_0),
        .reset_time_out_reg_2(reset_time_out_reg_n_0),
        .rx_fsm_reset_done_int_reg(sync_data_valid_n_1),
        .rx_fsm_reset_done_int_reg_0(rx_fsm_reset_done_int_i_5_n_0),
        .rx_fsm_reset_done_int_reg_1(time_out_100us_reg_n_0),
        .rx_fsm_reset_done_int_reg_2(time_out_1us_reg_n_0),
        .rx_fsm_reset_done_int_reg_3(rx_fsm_reset_done_int_i_6_n_0),
        .time_out_wait_bypass_s3(time_out_wait_bypass_s3));
  gig_ethernet_pcs_pma_1_sync_block__parameterized1_26 sync_mmcm_lock_reclocked
       (.SR(sync_mmcm_lock_reclocked_n_0),
        .data_out(mmcm_lock_i),
        .independent_clock_bufg(independent_clock_bufg),
        .mmcm_locked(mmcm_locked));
  gig_ethernet_pcs_pma_1_sync_block__parameterized1_27 sync_run_phase_alignment_int
       (.data_in(run_phase_alignment_int_reg_n_0),
        .data_out(data_out_0),
        .rxuserclk(rxuserclk));
  gig_ethernet_pcs_pma_1_sync_block__parameterized1_28 sync_time_out_wait_bypass
       (.data_in(time_out_wait_bypass_reg_n_0),
        .data_out(time_out_wait_bypass_s2),
        .independent_clock_bufg(independent_clock_bufg));
  gig_ethernet_pcs_pma_1_sync_block__parameterized1_29 sync_tx_fsm_reset_done_int
       (.data_in(data_in),
        .data_out(rx_fsm_reset_done_int_s2),
        .rxuserclk(rxuserclk));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000100)) 
    time_out_100us_i_1
       (.I0(time_out_2ms_i_4_n_0),
        .I1(time_out_counter_reg[17]),
        .I2(time_out_counter_reg[16]),
        .I3(time_out_100us_i_2_n_0),
        .I4(time_out_100us_i_3_n_0),
        .I5(time_out_100us_reg_n_0),
        .O(time_out_100us_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    time_out_100us_i_2
       (.I0(time_out_counter_reg[10]),
        .I1(time_out_counter_reg[12]),
        .I2(time_out_counter_reg[5]),
        .I3(time_out_counter_reg[7]),
        .I4(time_out_counter_reg[18]),
        .I5(time_out_counter_reg[14]),
        .O(time_out_100us_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    time_out_100us_i_3
       (.I0(time_out_counter_reg[4]),
        .I1(time_out_counter_reg[0]),
        .I2(time_out_counter_reg[1]),
        .I3(time_out_counter_reg[15]),
        .I4(time_out_counter_reg[13]),
        .O(time_out_100us_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_100us_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(time_out_100us_i_1_n_0),
        .Q(time_out_100us_reg_n_0),
        .R(reset_time_out_reg_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF00100000)) 
    time_out_1us_i_1
       (.I0(time_out_2ms_i_2_n_0),
        .I1(time_out_1us_i_2_n_0),
        .I2(time_out_counter_reg[3]),
        .I3(time_out_counter_reg[2]),
        .I4(time_out_1us_i_3_n_0),
        .I5(time_out_1us_reg_n_0),
        .O(time_out_1us_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT2 #(
    .INIT(4'hE)) 
    time_out_1us_i_2
       (.I0(time_out_counter_reg[16]),
        .I1(time_out_counter_reg[17]),
        .O(time_out_1us_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    time_out_1us_i_3
       (.I0(time_out_counter_reg[9]),
        .I1(time_out_counter_reg[11]),
        .I2(time_out_counter_reg[6]),
        .I3(time_out_counter_reg[8]),
        .I4(time_out_counter_reg[18]),
        .I5(time_out_counter_reg[12]),
        .O(time_out_1us_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_1us_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(time_out_1us_i_1_n_0),
        .Q(time_out_1us_reg_n_0),
        .R(reset_time_out_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT4 #(
    .INIT(16'hFF04)) 
    time_out_2ms_i_1
       (.I0(time_out_2ms_i_2_n_0),
        .I1(time_out_2ms_i_3__0_n_0),
        .I2(time_out_2ms_i_4_n_0),
        .I3(time_out_2ms_reg_n_0),
        .O(time_out_2ms_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    time_out_2ms_i_2
       (.I0(time_out_counter_reg[10]),
        .I1(time_out_counter_reg[14]),
        .I2(time_out_counter_reg[5]),
        .I3(time_out_counter_reg[7]),
        .I4(time_out_100us_i_3_n_0),
        .O(time_out_2ms_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    time_out_2ms_i_3__0
       (.I0(time_out_counter_reg[16]),
        .I1(time_out_counter_reg[12]),
        .I2(time_out_counter_reg[18]),
        .I3(time_out_counter_reg[17]),
        .O(time_out_2ms_i_3__0_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFFFFFF)) 
    time_out_2ms_i_4
       (.I0(time_out_counter_reg[2]),
        .I1(time_out_counter_reg[3]),
        .I2(time_out_counter_reg[8]),
        .I3(time_out_counter_reg[9]),
        .I4(time_out_counter_reg[11]),
        .I5(time_out_counter_reg[6]),
        .O(time_out_2ms_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_2ms_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(time_out_2ms_i_1_n_0),
        .Q(time_out_2ms_reg_n_0),
        .R(reset_time_out_reg_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFBFFF)) 
    \time_out_counter[0]_i_1 
       (.I0(time_out_counter_reg[16]),
        .I1(time_out_counter_reg[12]),
        .I2(time_out_counter_reg[18]),
        .I3(time_out_counter_reg[17]),
        .I4(time_out_2ms_i_2_n_0),
        .I5(time_out_2ms_i_4_n_0),
        .O(time_out_counter));
  LUT1 #(
    .INIT(2'h1)) 
    \time_out_counter[0]_i_3 
       (.I0(time_out_counter_reg[0]),
        .O(\time_out_counter[0]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[0] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2__0_n_7 ),
        .Q(time_out_counter_reg[0]),
        .R(reset_time_out_reg_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \time_out_counter_reg[0]_i_2__0 
       (.CI(1'b0),
        .CO({\time_out_counter_reg[0]_i_2__0_n_0 ,\time_out_counter_reg[0]_i_2__0_n_1 ,\time_out_counter_reg[0]_i_2__0_n_2 ,\time_out_counter_reg[0]_i_2__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\time_out_counter_reg[0]_i_2__0_n_4 ,\time_out_counter_reg[0]_i_2__0_n_5 ,\time_out_counter_reg[0]_i_2__0_n_6 ,\time_out_counter_reg[0]_i_2__0_n_7 }),
        .S({time_out_counter_reg[3:1],\time_out_counter[0]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[10] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1__0_n_5 ),
        .Q(time_out_counter_reg[10]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[11] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1__0_n_4 ),
        .Q(time_out_counter_reg[11]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[12] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1__0_n_7 ),
        .Q(time_out_counter_reg[12]),
        .R(reset_time_out_reg_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \time_out_counter_reg[12]_i_1__0 
       (.CI(\time_out_counter_reg[8]_i_1__0_n_0 ),
        .CO({\time_out_counter_reg[12]_i_1__0_n_0 ,\time_out_counter_reg[12]_i_1__0_n_1 ,\time_out_counter_reg[12]_i_1__0_n_2 ,\time_out_counter_reg[12]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[12]_i_1__0_n_4 ,\time_out_counter_reg[12]_i_1__0_n_5 ,\time_out_counter_reg[12]_i_1__0_n_6 ,\time_out_counter_reg[12]_i_1__0_n_7 }),
        .S(time_out_counter_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[13] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1__0_n_6 ),
        .Q(time_out_counter_reg[13]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[14] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1__0_n_5 ),
        .Q(time_out_counter_reg[14]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[15] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1__0_n_4 ),
        .Q(time_out_counter_reg[15]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[16] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[16]_i_1__0_n_7 ),
        .Q(time_out_counter_reg[16]),
        .R(reset_time_out_reg_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \time_out_counter_reg[16]_i_1__0 
       (.CI(\time_out_counter_reg[12]_i_1__0_n_0 ),
        .CO({\NLW_time_out_counter_reg[16]_i_1__0_CO_UNCONNECTED [3:2],\time_out_counter_reg[16]_i_1__0_n_2 ,\time_out_counter_reg[16]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_time_out_counter_reg[16]_i_1__0_O_UNCONNECTED [3],\time_out_counter_reg[16]_i_1__0_n_5 ,\time_out_counter_reg[16]_i_1__0_n_6 ,\time_out_counter_reg[16]_i_1__0_n_7 }),
        .S({1'b0,time_out_counter_reg[18:16]}));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[17] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[16]_i_1__0_n_6 ),
        .Q(time_out_counter_reg[17]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[18] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[16]_i_1__0_n_5 ),
        .Q(time_out_counter_reg[18]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[1] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2__0_n_6 ),
        .Q(time_out_counter_reg[1]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[2] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2__0_n_5 ),
        .Q(time_out_counter_reg[2]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[3] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2__0_n_4 ),
        .Q(time_out_counter_reg[3]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[4] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1__0_n_7 ),
        .Q(time_out_counter_reg[4]),
        .R(reset_time_out_reg_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \time_out_counter_reg[4]_i_1__0 
       (.CI(\time_out_counter_reg[0]_i_2__0_n_0 ),
        .CO({\time_out_counter_reg[4]_i_1__0_n_0 ,\time_out_counter_reg[4]_i_1__0_n_1 ,\time_out_counter_reg[4]_i_1__0_n_2 ,\time_out_counter_reg[4]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[4]_i_1__0_n_4 ,\time_out_counter_reg[4]_i_1__0_n_5 ,\time_out_counter_reg[4]_i_1__0_n_6 ,\time_out_counter_reg[4]_i_1__0_n_7 }),
        .S(time_out_counter_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[5] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1__0_n_6 ),
        .Q(time_out_counter_reg[5]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[6] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1__0_n_5 ),
        .Q(time_out_counter_reg[6]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[7] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1__0_n_4 ),
        .Q(time_out_counter_reg[7]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[8] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1__0_n_7 ),
        .Q(time_out_counter_reg[8]),
        .R(reset_time_out_reg_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \time_out_counter_reg[8]_i_1__0 
       (.CI(\time_out_counter_reg[4]_i_1__0_n_0 ),
        .CO({\time_out_counter_reg[8]_i_1__0_n_0 ,\time_out_counter_reg[8]_i_1__0_n_1 ,\time_out_counter_reg[8]_i_1__0_n_2 ,\time_out_counter_reg[8]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[8]_i_1__0_n_4 ,\time_out_counter_reg[8]_i_1__0_n_5 ,\time_out_counter_reg[8]_i_1__0_n_6 ,\time_out_counter_reg[8]_i_1__0_n_7 }),
        .S(time_out_counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[9] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1__0_n_6 ),
        .Q(time_out_counter_reg[9]),
        .R(reset_time_out_reg_n_0));
  LUT4 #(
    .INIT(16'hAB00)) 
    time_out_wait_bypass_i_1
       (.I0(time_out_wait_bypass_reg_n_0),
        .I1(rx_fsm_reset_done_int_s3),
        .I2(time_out_wait_bypass_i_2__0_n_0),
        .I3(run_phase_alignment_int_s3_reg_n_0),
        .O(time_out_wait_bypass_i_1_n_0));
  LUT5 #(
    .INIT(32'hFBFFFFFF)) 
    time_out_wait_bypass_i_2__0
       (.I0(time_out_wait_bypass_i_3__0_n_0),
        .I1(wait_bypass_count_reg[1]),
        .I2(wait_bypass_count_reg[11]),
        .I3(wait_bypass_count_reg[0]),
        .I4(time_out_wait_bypass_i_4__0_n_0),
        .O(time_out_wait_bypass_i_2__0_n_0));
  LUT4 #(
    .INIT(16'hDFFF)) 
    time_out_wait_bypass_i_3__0
       (.I0(wait_bypass_count_reg[9]),
        .I1(wait_bypass_count_reg[4]),
        .I2(wait_bypass_count_reg[12]),
        .I3(wait_bypass_count_reg[2]),
        .O(time_out_wait_bypass_i_3__0_n_0));
  LUT6 #(
    .INIT(64'h0000000400000000)) 
    time_out_wait_bypass_i_4__0
       (.I0(wait_bypass_count_reg[5]),
        .I1(wait_bypass_count_reg[7]),
        .I2(wait_bypass_count_reg[3]),
        .I3(wait_bypass_count_reg[6]),
        .I4(wait_bypass_count_reg[10]),
        .I5(wait_bypass_count_reg[8]),
        .O(time_out_wait_bypass_i_4__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_wait_bypass_reg
       (.C(rxuserclk),
        .CE(1'b1),
        .D(time_out_wait_bypass_i_1_n_0),
        .Q(time_out_wait_bypass_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_wait_bypass_s3_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(time_out_wait_bypass_s2),
        .Q(time_out_wait_bypass_s3),
        .R(1'b0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 time_tlock_max1_carry
       (.CI(1'b0),
        .CO({time_tlock_max1_carry_n_0,time_tlock_max1_carry_n_1,time_tlock_max1_carry_n_2,time_tlock_max1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({time_tlock_max1_carry_i_1_n_0,time_tlock_max1_carry_i_2_n_0,time_tlock_max1_carry_i_3_n_0,time_tlock_max1_carry_i_4_n_0}),
        .O(NLW_time_tlock_max1_carry_O_UNCONNECTED[3:0]),
        .S({time_tlock_max1_carry_i_5_n_0,time_tlock_max1_carry_i_6_n_0,time_tlock_max1_carry_i_7_n_0,time_tlock_max1_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 time_tlock_max1_carry__0
       (.CI(time_tlock_max1_carry_n_0),
        .CO({time_tlock_max1_carry__0_n_0,time_tlock_max1_carry__0_n_1,time_tlock_max1_carry__0_n_2,time_tlock_max1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({time_out_counter_reg[15],time_tlock_max1_carry__0_i_1_n_0,1'b0,time_tlock_max1_carry__0_i_2_n_0}),
        .O(NLW_time_tlock_max1_carry__0_O_UNCONNECTED[3:0]),
        .S({time_tlock_max1_carry__0_i_3_n_0,time_tlock_max1_carry__0_i_4_n_0,time_tlock_max1_carry__0_i_5_n_0,time_tlock_max1_carry__0_i_6_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    time_tlock_max1_carry__0_i_1
       (.I0(time_out_counter_reg[12]),
        .I1(time_out_counter_reg[13]),
        .O(time_tlock_max1_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    time_tlock_max1_carry__0_i_2
       (.I0(time_out_counter_reg[8]),
        .I1(time_out_counter_reg[9]),
        .O(time_tlock_max1_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    time_tlock_max1_carry__0_i_3
       (.I0(time_out_counter_reg[14]),
        .I1(time_out_counter_reg[15]),
        .O(time_tlock_max1_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    time_tlock_max1_carry__0_i_4
       (.I0(time_out_counter_reg[13]),
        .I1(time_out_counter_reg[12]),
        .O(time_tlock_max1_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    time_tlock_max1_carry__0_i_5
       (.I0(time_out_counter_reg[10]),
        .I1(time_out_counter_reg[11]),
        .O(time_tlock_max1_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    time_tlock_max1_carry__0_i_6
       (.I0(time_out_counter_reg[9]),
        .I1(time_out_counter_reg[8]),
        .O(time_tlock_max1_carry__0_i_6_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 time_tlock_max1_carry__1
       (.CI(time_tlock_max1_carry__0_n_0),
        .CO({NLW_time_tlock_max1_carry__1_CO_UNCONNECTED[3:2],time_tlock_max1,time_tlock_max1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,time_out_counter_reg[18],time_tlock_max1_carry__1_i_1_n_0}),
        .O(NLW_time_tlock_max1_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,time_tlock_max1_carry__1_i_2_n_0,time_tlock_max1_carry__1_i_3_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    time_tlock_max1_carry__1_i_1
       (.I0(time_out_counter_reg[16]),
        .I1(time_out_counter_reg[17]),
        .O(time_tlock_max1_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    time_tlock_max1_carry__1_i_2
       (.I0(time_out_counter_reg[18]),
        .O(time_tlock_max1_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    time_tlock_max1_carry__1_i_3
       (.I0(time_out_counter_reg[17]),
        .I1(time_out_counter_reg[16]),
        .O(time_tlock_max1_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    time_tlock_max1_carry_i_1
       (.I0(time_out_counter_reg[6]),
        .I1(time_out_counter_reg[7]),
        .O(time_tlock_max1_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    time_tlock_max1_carry_i_2
       (.I0(time_out_counter_reg[4]),
        .I1(time_out_counter_reg[5]),
        .O(time_tlock_max1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    time_tlock_max1_carry_i_3
       (.I0(time_out_counter_reg[2]),
        .I1(time_out_counter_reg[3]),
        .O(time_tlock_max1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    time_tlock_max1_carry_i_4
       (.I0(time_out_counter_reg[0]),
        .I1(time_out_counter_reg[1]),
        .O(time_tlock_max1_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    time_tlock_max1_carry_i_5
       (.I0(time_out_counter_reg[7]),
        .I1(time_out_counter_reg[6]),
        .O(time_tlock_max1_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    time_tlock_max1_carry_i_6
       (.I0(time_out_counter_reg[5]),
        .I1(time_out_counter_reg[4]),
        .O(time_tlock_max1_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    time_tlock_max1_carry_i_7
       (.I0(time_out_counter_reg[3]),
        .I1(time_out_counter_reg[2]),
        .O(time_tlock_max1_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    time_tlock_max1_carry_i_8
       (.I0(time_out_counter_reg[1]),
        .I1(time_out_counter_reg[0]),
        .O(time_tlock_max1_carry_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    time_tlock_max_i_1
       (.I0(check_tlock_max_reg_n_0),
        .I1(time_tlock_max1),
        .I2(time_tlock_max),
        .O(time_tlock_max_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_tlock_max_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(time_tlock_max_i_1_n_0),
        .Q(time_tlock_max),
        .R(reset_time_out_reg_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_bypass_count[0]_i_1__0 
       (.I0(run_phase_alignment_int_s3_reg_n_0),
        .O(\wait_bypass_count[0]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \wait_bypass_count[0]_i_2__0 
       (.I0(time_out_wait_bypass_i_2__0_n_0),
        .I1(rx_fsm_reset_done_int_s3),
        .O(\wait_bypass_count[0]_i_2__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_bypass_count[0]_i_4__0 
       (.I0(wait_bypass_count_reg[0]),
        .O(\wait_bypass_count[0]_i_4__0_n_0 ));
  FDRE \wait_bypass_count_reg[0] 
       (.C(rxuserclk),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3__0_n_7 ),
        .Q(wait_bypass_count_reg[0]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \wait_bypass_count_reg[0]_i_3__0 
       (.CI(1'b0),
        .CO({\wait_bypass_count_reg[0]_i_3__0_n_0 ,\wait_bypass_count_reg[0]_i_3__0_n_1 ,\wait_bypass_count_reg[0]_i_3__0_n_2 ,\wait_bypass_count_reg[0]_i_3__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\wait_bypass_count_reg[0]_i_3__0_n_4 ,\wait_bypass_count_reg[0]_i_3__0_n_5 ,\wait_bypass_count_reg[0]_i_3__0_n_6 ,\wait_bypass_count_reg[0]_i_3__0_n_7 }),
        .S({wait_bypass_count_reg[3:1],\wait_bypass_count[0]_i_4__0_n_0 }));
  FDRE \wait_bypass_count_reg[10] 
       (.C(rxuserclk),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1__0_n_5 ),
        .Q(wait_bypass_count_reg[10]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  FDRE \wait_bypass_count_reg[11] 
       (.C(rxuserclk),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1__0_n_4 ),
        .Q(wait_bypass_count_reg[11]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  FDRE \wait_bypass_count_reg[12] 
       (.C(rxuserclk),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[12]_i_1__0_n_7 ),
        .Q(wait_bypass_count_reg[12]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \wait_bypass_count_reg[12]_i_1__0 
       (.CI(\wait_bypass_count_reg[8]_i_1__0_n_0 ),
        .CO(\NLW_wait_bypass_count_reg[12]_i_1__0_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_wait_bypass_count_reg[12]_i_1__0_O_UNCONNECTED [3:1],\wait_bypass_count_reg[12]_i_1__0_n_7 }),
        .S({1'b0,1'b0,1'b0,wait_bypass_count_reg[12]}));
  FDRE \wait_bypass_count_reg[1] 
       (.C(rxuserclk),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3__0_n_6 ),
        .Q(wait_bypass_count_reg[1]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  FDRE \wait_bypass_count_reg[2] 
       (.C(rxuserclk),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3__0_n_5 ),
        .Q(wait_bypass_count_reg[2]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  FDRE \wait_bypass_count_reg[3] 
       (.C(rxuserclk),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3__0_n_4 ),
        .Q(wait_bypass_count_reg[3]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  FDRE \wait_bypass_count_reg[4] 
       (.C(rxuserclk),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1__0_n_7 ),
        .Q(wait_bypass_count_reg[4]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \wait_bypass_count_reg[4]_i_1__0 
       (.CI(\wait_bypass_count_reg[0]_i_3__0_n_0 ),
        .CO({\wait_bypass_count_reg[4]_i_1__0_n_0 ,\wait_bypass_count_reg[4]_i_1__0_n_1 ,\wait_bypass_count_reg[4]_i_1__0_n_2 ,\wait_bypass_count_reg[4]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\wait_bypass_count_reg[4]_i_1__0_n_4 ,\wait_bypass_count_reg[4]_i_1__0_n_5 ,\wait_bypass_count_reg[4]_i_1__0_n_6 ,\wait_bypass_count_reg[4]_i_1__0_n_7 }),
        .S(wait_bypass_count_reg[7:4]));
  FDRE \wait_bypass_count_reg[5] 
       (.C(rxuserclk),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1__0_n_6 ),
        .Q(wait_bypass_count_reg[5]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  FDRE \wait_bypass_count_reg[6] 
       (.C(rxuserclk),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1__0_n_5 ),
        .Q(wait_bypass_count_reg[6]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  FDRE \wait_bypass_count_reg[7] 
       (.C(rxuserclk),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1__0_n_4 ),
        .Q(wait_bypass_count_reg[7]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  FDRE \wait_bypass_count_reg[8] 
       (.C(rxuserclk),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1__0_n_7 ),
        .Q(wait_bypass_count_reg[8]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \wait_bypass_count_reg[8]_i_1__0 
       (.CI(\wait_bypass_count_reg[4]_i_1__0_n_0 ),
        .CO({\wait_bypass_count_reg[8]_i_1__0_n_0 ,\wait_bypass_count_reg[8]_i_1__0_n_1 ,\wait_bypass_count_reg[8]_i_1__0_n_2 ,\wait_bypass_count_reg[8]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\wait_bypass_count_reg[8]_i_1__0_n_4 ,\wait_bypass_count_reg[8]_i_1__0_n_5 ,\wait_bypass_count_reg[8]_i_1__0_n_6 ,\wait_bypass_count_reg[8]_i_1__0_n_7 }),
        .S(wait_bypass_count_reg[11:8]));
  FDRE \wait_bypass_count_reg[9] 
       (.C(rxuserclk),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1__0_n_6 ),
        .Q(wait_bypass_count_reg[9]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[0]_i_1__0 
       (.I0(wait_time_cnt_reg[0]),
        .O(wait_time_cnt0__0));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \wait_time_cnt[1]_i_1__0 
       (.I0(wait_time_cnt_reg[0]),
        .I1(wait_time_cnt_reg[1]),
        .O(\wait_time_cnt[1]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'hE1)) 
    \wait_time_cnt[2]_i_1__0 
       (.I0(wait_time_cnt_reg[1]),
        .I1(wait_time_cnt_reg[0]),
        .I2(wait_time_cnt_reg[2]),
        .O(\wait_time_cnt[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT4 #(
    .INIT(16'hFE01)) 
    \wait_time_cnt[3]_i_1__0 
       (.I0(wait_time_cnt_reg[2]),
        .I1(wait_time_cnt_reg[0]),
        .I2(wait_time_cnt_reg[1]),
        .I3(wait_time_cnt_reg[3]),
        .O(\wait_time_cnt[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    \wait_time_cnt[4]_i_1__0 
       (.I0(wait_time_cnt_reg[3]),
        .I1(wait_time_cnt_reg[1]),
        .I2(wait_time_cnt_reg[0]),
        .I3(wait_time_cnt_reg[2]),
        .I4(wait_time_cnt_reg[4]),
        .O(\wait_time_cnt[4]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000001)) 
    \wait_time_cnt[5]_i_1__0 
       (.I0(wait_time_cnt_reg[4]),
        .I1(wait_time_cnt_reg[2]),
        .I2(wait_time_cnt_reg[0]),
        .I3(wait_time_cnt_reg[1]),
        .I4(wait_time_cnt_reg[3]),
        .I5(wait_time_cnt_reg[5]),
        .O(\wait_time_cnt[5]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \wait_time_cnt[6]_i_1 
       (.I0(rx_state[0]),
        .I1(rx_state[1]),
        .I2(rx_state[3]),
        .O(\wait_time_cnt[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \wait_time_cnt[6]_i_2__0 
       (.I0(\wait_time_cnt[6]_i_4__0_n_0 ),
        .I1(wait_time_cnt_reg[6]),
        .O(\wait_time_cnt[6]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \wait_time_cnt[6]_i_3__0 
       (.I0(\wait_time_cnt[6]_i_4__0_n_0 ),
        .I1(wait_time_cnt_reg[6]),
        .O(\wait_time_cnt[6]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \wait_time_cnt[6]_i_4__0 
       (.I0(wait_time_cnt_reg[4]),
        .I1(wait_time_cnt_reg[2]),
        .I2(wait_time_cnt_reg[0]),
        .I3(wait_time_cnt_reg[1]),
        .I4(wait_time_cnt_reg[3]),
        .I5(wait_time_cnt_reg[5]),
        .O(\wait_time_cnt[6]_i_4__0_n_0 ));
  FDRE \wait_time_cnt_reg[0] 
       (.C(independent_clock_bufg),
        .CE(\wait_time_cnt[6]_i_2__0_n_0 ),
        .D(wait_time_cnt0__0),
        .Q(wait_time_cnt_reg[0]),
        .R(\wait_time_cnt[6]_i_1_n_0 ));
  FDRE \wait_time_cnt_reg[1] 
       (.C(independent_clock_bufg),
        .CE(\wait_time_cnt[6]_i_2__0_n_0 ),
        .D(\wait_time_cnt[1]_i_1__0_n_0 ),
        .Q(wait_time_cnt_reg[1]),
        .R(\wait_time_cnt[6]_i_1_n_0 ));
  FDSE \wait_time_cnt_reg[2] 
       (.C(independent_clock_bufg),
        .CE(\wait_time_cnt[6]_i_2__0_n_0 ),
        .D(\wait_time_cnt[2]_i_1__0_n_0 ),
        .Q(wait_time_cnt_reg[2]),
        .S(\wait_time_cnt[6]_i_1_n_0 ));
  FDRE \wait_time_cnt_reg[3] 
       (.C(independent_clock_bufg),
        .CE(\wait_time_cnt[6]_i_2__0_n_0 ),
        .D(\wait_time_cnt[3]_i_1__0_n_0 ),
        .Q(wait_time_cnt_reg[3]),
        .R(\wait_time_cnt[6]_i_1_n_0 ));
  FDRE \wait_time_cnt_reg[4] 
       (.C(independent_clock_bufg),
        .CE(\wait_time_cnt[6]_i_2__0_n_0 ),
        .D(\wait_time_cnt[4]_i_1__0_n_0 ),
        .Q(wait_time_cnt_reg[4]),
        .R(\wait_time_cnt[6]_i_1_n_0 ));
  FDSE \wait_time_cnt_reg[5] 
       (.C(independent_clock_bufg),
        .CE(\wait_time_cnt[6]_i_2__0_n_0 ),
        .D(\wait_time_cnt[5]_i_1__0_n_0 ),
        .Q(wait_time_cnt_reg[5]),
        .S(\wait_time_cnt[6]_i_1_n_0 ));
  FDSE \wait_time_cnt_reg[6] 
       (.C(independent_clock_bufg),
        .CE(\wait_time_cnt[6]_i_2__0_n_0 ),
        .D(\wait_time_cnt[6]_i_3__0_n_0 ),
        .Q(wait_time_cnt_reg[6]),
        .S(\wait_time_cnt[6]_i_1_n_0 ));
endmodule

module gig_ethernet_pcs_pma_1_TX_STARTUP_FSM
   (mmcm_reset,
    gt0_cpllreset_t,
    data_in,
    gt0_txuserrdy_t,
    gt0_gttxreset_in0_out,
    independent_clock_bufg,
    userclk,
    pma_reset,
    gtxe2_i,
    gt0_cpllrefclklost_i,
    data_sync_reg1,
    mmcm_locked,
    cplllock);
  output mmcm_reset;
  output gt0_cpllreset_t;
  output data_in;
  output gt0_txuserrdy_t;
  output gt0_gttxreset_in0_out;
  input independent_clock_bufg;
  input userclk;
  input pma_reset;
  input gtxe2_i;
  input gt0_cpllrefclklost_i;
  input data_sync_reg1;
  input mmcm_locked;
  input cplllock;

  wire CPLL_RESET_i_1_n_0;
  wire CPLL_RESET_i_2_n_0;
  wire \FSM_sequential_tx_state[0]_i_2_n_0 ;
  wire \FSM_sequential_tx_state[0]_i_3_n_0 ;
  wire \FSM_sequential_tx_state[2]_i_2_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_3_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_4_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_6_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_7_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_8_n_0 ;
  wire GTTXRESET;
  wire MMCM_RESET_i_1_n_0;
  wire TXUSERRDY_i_1_n_0;
  wire clear;
  wire cplllock;
  wire data_in;
  wire data_out;
  wire data_sync_reg1;
  wire gt0_cpllrefclklost_i;
  wire gt0_cpllreset_t;
  wire gt0_gttxreset_in0_out;
  wire gt0_txuserrdy_t;
  wire gttxreset_i_i_1_n_0;
  wire gtxe2_i;
  wire independent_clock_bufg;
  wire \init_wait_count[0]_i_1_n_0 ;
  wire \init_wait_count[6]_i_1_n_0 ;
  wire \init_wait_count[6]_i_3_n_0 ;
  wire [6:0]init_wait_count_reg;
  wire init_wait_done_i_1_n_0;
  wire init_wait_done_reg_n_0;
  wire \mmcm_lock_count[2]_i_1_n_0 ;
  wire \mmcm_lock_count[3]_i_1_n_0 ;
  wire \mmcm_lock_count[4]_i_1_n_0 ;
  wire \mmcm_lock_count[5]_i_1_n_0 ;
  wire \mmcm_lock_count[6]_i_1_n_0 ;
  wire \mmcm_lock_count[7]_i_2_n_0 ;
  wire \mmcm_lock_count[7]_i_3_n_0 ;
  wire [7:0]mmcm_lock_count_reg;
  wire mmcm_lock_i;
  wire mmcm_lock_reclocked;
  wire mmcm_lock_reclocked_i_1_n_0;
  wire mmcm_lock_reclocked_i_2_n_0;
  wire mmcm_locked;
  wire mmcm_reset;
  wire [6:1]p_0_in;
  wire [1:0]p_0_in__0;
  wire pll_reset_asserted_i_1_n_0;
  wire pll_reset_asserted_i_2_n_0;
  wire pll_reset_asserted_reg_n_0;
  wire pma_reset;
  wire refclk_stable_count;
  wire \refclk_stable_count[0]_i_3_n_0 ;
  wire \refclk_stable_count[0]_i_4_n_0 ;
  wire \refclk_stable_count[0]_i_5_n_0 ;
  wire \refclk_stable_count[0]_i_6_n_0 ;
  wire \refclk_stable_count[0]_i_7_n_0 ;
  wire \refclk_stable_count[0]_i_8_n_0 ;
  wire \refclk_stable_count[0]_i_9_n_0 ;
  wire [31:0]refclk_stable_count_reg;
  wire \refclk_stable_count_reg[0]_i_2_n_0 ;
  wire \refclk_stable_count_reg[0]_i_2_n_1 ;
  wire \refclk_stable_count_reg[0]_i_2_n_2 ;
  wire \refclk_stable_count_reg[0]_i_2_n_3 ;
  wire \refclk_stable_count_reg[0]_i_2_n_4 ;
  wire \refclk_stable_count_reg[0]_i_2_n_5 ;
  wire \refclk_stable_count_reg[0]_i_2_n_6 ;
  wire \refclk_stable_count_reg[0]_i_2_n_7 ;
  wire \refclk_stable_count_reg[12]_i_1_n_0 ;
  wire \refclk_stable_count_reg[12]_i_1_n_1 ;
  wire \refclk_stable_count_reg[12]_i_1_n_2 ;
  wire \refclk_stable_count_reg[12]_i_1_n_3 ;
  wire \refclk_stable_count_reg[12]_i_1_n_4 ;
  wire \refclk_stable_count_reg[12]_i_1_n_5 ;
  wire \refclk_stable_count_reg[12]_i_1_n_6 ;
  wire \refclk_stable_count_reg[12]_i_1_n_7 ;
  wire \refclk_stable_count_reg[16]_i_1_n_0 ;
  wire \refclk_stable_count_reg[16]_i_1_n_1 ;
  wire \refclk_stable_count_reg[16]_i_1_n_2 ;
  wire \refclk_stable_count_reg[16]_i_1_n_3 ;
  wire \refclk_stable_count_reg[16]_i_1_n_4 ;
  wire \refclk_stable_count_reg[16]_i_1_n_5 ;
  wire \refclk_stable_count_reg[16]_i_1_n_6 ;
  wire \refclk_stable_count_reg[16]_i_1_n_7 ;
  wire \refclk_stable_count_reg[20]_i_1_n_0 ;
  wire \refclk_stable_count_reg[20]_i_1_n_1 ;
  wire \refclk_stable_count_reg[20]_i_1_n_2 ;
  wire \refclk_stable_count_reg[20]_i_1_n_3 ;
  wire \refclk_stable_count_reg[20]_i_1_n_4 ;
  wire \refclk_stable_count_reg[20]_i_1_n_5 ;
  wire \refclk_stable_count_reg[20]_i_1_n_6 ;
  wire \refclk_stable_count_reg[20]_i_1_n_7 ;
  wire \refclk_stable_count_reg[24]_i_1_n_0 ;
  wire \refclk_stable_count_reg[24]_i_1_n_1 ;
  wire \refclk_stable_count_reg[24]_i_1_n_2 ;
  wire \refclk_stable_count_reg[24]_i_1_n_3 ;
  wire \refclk_stable_count_reg[24]_i_1_n_4 ;
  wire \refclk_stable_count_reg[24]_i_1_n_5 ;
  wire \refclk_stable_count_reg[24]_i_1_n_6 ;
  wire \refclk_stable_count_reg[24]_i_1_n_7 ;
  wire \refclk_stable_count_reg[28]_i_1_n_1 ;
  wire \refclk_stable_count_reg[28]_i_1_n_2 ;
  wire \refclk_stable_count_reg[28]_i_1_n_3 ;
  wire \refclk_stable_count_reg[28]_i_1_n_4 ;
  wire \refclk_stable_count_reg[28]_i_1_n_5 ;
  wire \refclk_stable_count_reg[28]_i_1_n_6 ;
  wire \refclk_stable_count_reg[28]_i_1_n_7 ;
  wire \refclk_stable_count_reg[4]_i_1_n_0 ;
  wire \refclk_stable_count_reg[4]_i_1_n_1 ;
  wire \refclk_stable_count_reg[4]_i_1_n_2 ;
  wire \refclk_stable_count_reg[4]_i_1_n_3 ;
  wire \refclk_stable_count_reg[4]_i_1_n_4 ;
  wire \refclk_stable_count_reg[4]_i_1_n_5 ;
  wire \refclk_stable_count_reg[4]_i_1_n_6 ;
  wire \refclk_stable_count_reg[4]_i_1_n_7 ;
  wire \refclk_stable_count_reg[8]_i_1_n_0 ;
  wire \refclk_stable_count_reg[8]_i_1_n_1 ;
  wire \refclk_stable_count_reg[8]_i_1_n_2 ;
  wire \refclk_stable_count_reg[8]_i_1_n_3 ;
  wire \refclk_stable_count_reg[8]_i_1_n_4 ;
  wire \refclk_stable_count_reg[8]_i_1_n_5 ;
  wire \refclk_stable_count_reg[8]_i_1_n_6 ;
  wire \refclk_stable_count_reg[8]_i_1_n_7 ;
  wire refclk_stable_i_1_n_0;
  wire refclk_stable_i_2_n_0;
  wire refclk_stable_i_3_n_0;
  wire refclk_stable_i_4_n_0;
  wire refclk_stable_i_5_n_0;
  wire refclk_stable_i_6_n_0;
  wire refclk_stable_reg_n_0;
  wire reset_time_out;
  wire reset_time_out_i_2__0_n_0;
  wire run_phase_alignment_int_i_1_n_0;
  wire run_phase_alignment_int_reg_n_0;
  wire run_phase_alignment_int_s3;
  wire sel;
  wire sync_cplllock_n_0;
  wire sync_cplllock_n_1;
  wire sync_mmcm_lock_reclocked_n_0;
  wire time_out_2ms_i_1_n_0;
  wire time_out_2ms_i_2__0_n_0;
  wire time_out_2ms_i_3_n_0;
  wire time_out_2ms_i_4__0_n_0;
  wire time_out_2ms_i_5_n_0;
  wire time_out_2ms_reg_n_0;
  wire time_out_500us_i_1_n_0;
  wire time_out_500us_i_2_n_0;
  wire time_out_500us_reg_n_0;
  wire time_out_counter;
  wire \time_out_counter[0]_i_3__0_n_0 ;
  wire \time_out_counter[0]_i_4_n_0 ;
  wire [18:0]time_out_counter_reg;
  wire \time_out_counter_reg[0]_i_2_n_0 ;
  wire \time_out_counter_reg[0]_i_2_n_1 ;
  wire \time_out_counter_reg[0]_i_2_n_2 ;
  wire \time_out_counter_reg[0]_i_2_n_3 ;
  wire \time_out_counter_reg[0]_i_2_n_4 ;
  wire \time_out_counter_reg[0]_i_2_n_5 ;
  wire \time_out_counter_reg[0]_i_2_n_6 ;
  wire \time_out_counter_reg[0]_i_2_n_7 ;
  wire \time_out_counter_reg[12]_i_1_n_0 ;
  wire \time_out_counter_reg[12]_i_1_n_1 ;
  wire \time_out_counter_reg[12]_i_1_n_2 ;
  wire \time_out_counter_reg[12]_i_1_n_3 ;
  wire \time_out_counter_reg[12]_i_1_n_4 ;
  wire \time_out_counter_reg[12]_i_1_n_5 ;
  wire \time_out_counter_reg[12]_i_1_n_6 ;
  wire \time_out_counter_reg[12]_i_1_n_7 ;
  wire \time_out_counter_reg[16]_i_1_n_2 ;
  wire \time_out_counter_reg[16]_i_1_n_3 ;
  wire \time_out_counter_reg[16]_i_1_n_5 ;
  wire \time_out_counter_reg[16]_i_1_n_6 ;
  wire \time_out_counter_reg[16]_i_1_n_7 ;
  wire \time_out_counter_reg[4]_i_1_n_0 ;
  wire \time_out_counter_reg[4]_i_1_n_1 ;
  wire \time_out_counter_reg[4]_i_1_n_2 ;
  wire \time_out_counter_reg[4]_i_1_n_3 ;
  wire \time_out_counter_reg[4]_i_1_n_4 ;
  wire \time_out_counter_reg[4]_i_1_n_5 ;
  wire \time_out_counter_reg[4]_i_1_n_6 ;
  wire \time_out_counter_reg[4]_i_1_n_7 ;
  wire \time_out_counter_reg[8]_i_1_n_0 ;
  wire \time_out_counter_reg[8]_i_1_n_1 ;
  wire \time_out_counter_reg[8]_i_1_n_2 ;
  wire \time_out_counter_reg[8]_i_1_n_3 ;
  wire \time_out_counter_reg[8]_i_1_n_4 ;
  wire \time_out_counter_reg[8]_i_1_n_5 ;
  wire \time_out_counter_reg[8]_i_1_n_6 ;
  wire \time_out_counter_reg[8]_i_1_n_7 ;
  wire time_out_wait_bypass_i_1_n_0;
  wire time_out_wait_bypass_i_2_n_0;
  wire time_out_wait_bypass_i_3_n_0;
  wire time_out_wait_bypass_i_4_n_0;
  wire time_out_wait_bypass_i_5_n_0;
  wire time_out_wait_bypass_i_6_n_0;
  wire time_out_wait_bypass_reg_n_0;
  wire time_out_wait_bypass_s2;
  wire time_out_wait_bypass_s3;
  wire time_tlock_max_i_1_n_0;
  wire time_tlock_max_i_2_n_0;
  wire time_tlock_max_i_3_n_0;
  wire time_tlock_max_i_4_n_0;
  wire time_tlock_max_reg_n_0;
  wire tx_fsm_reset_done_int_i_1_n_0;
  wire tx_fsm_reset_done_int_s2;
  wire tx_fsm_reset_done_int_s3;
  wire [3:0]tx_state;
  wire [3:0]tx_state__0;
  wire txresetdone_s2;
  wire txresetdone_s3;
  wire userclk;
  wire \wait_bypass_count[0]_i_2_n_0 ;
  wire \wait_bypass_count[0]_i_4_n_0 ;
  wire [16:0]wait_bypass_count_reg;
  wire \wait_bypass_count_reg[0]_i_3_n_0 ;
  wire \wait_bypass_count_reg[0]_i_3_n_1 ;
  wire \wait_bypass_count_reg[0]_i_3_n_2 ;
  wire \wait_bypass_count_reg[0]_i_3_n_3 ;
  wire \wait_bypass_count_reg[0]_i_3_n_4 ;
  wire \wait_bypass_count_reg[0]_i_3_n_5 ;
  wire \wait_bypass_count_reg[0]_i_3_n_6 ;
  wire \wait_bypass_count_reg[0]_i_3_n_7 ;
  wire \wait_bypass_count_reg[12]_i_1_n_0 ;
  wire \wait_bypass_count_reg[12]_i_1_n_1 ;
  wire \wait_bypass_count_reg[12]_i_1_n_2 ;
  wire \wait_bypass_count_reg[12]_i_1_n_3 ;
  wire \wait_bypass_count_reg[12]_i_1_n_4 ;
  wire \wait_bypass_count_reg[12]_i_1_n_5 ;
  wire \wait_bypass_count_reg[12]_i_1_n_6 ;
  wire \wait_bypass_count_reg[12]_i_1_n_7 ;
  wire \wait_bypass_count_reg[16]_i_1_n_7 ;
  wire \wait_bypass_count_reg[4]_i_1_n_0 ;
  wire \wait_bypass_count_reg[4]_i_1_n_1 ;
  wire \wait_bypass_count_reg[4]_i_1_n_2 ;
  wire \wait_bypass_count_reg[4]_i_1_n_3 ;
  wire \wait_bypass_count_reg[4]_i_1_n_4 ;
  wire \wait_bypass_count_reg[4]_i_1_n_5 ;
  wire \wait_bypass_count_reg[4]_i_1_n_6 ;
  wire \wait_bypass_count_reg[4]_i_1_n_7 ;
  wire \wait_bypass_count_reg[8]_i_1_n_0 ;
  wire \wait_bypass_count_reg[8]_i_1_n_1 ;
  wire \wait_bypass_count_reg[8]_i_1_n_2 ;
  wire \wait_bypass_count_reg[8]_i_1_n_3 ;
  wire \wait_bypass_count_reg[8]_i_1_n_4 ;
  wire \wait_bypass_count_reg[8]_i_1_n_5 ;
  wire \wait_bypass_count_reg[8]_i_1_n_6 ;
  wire \wait_bypass_count_reg[8]_i_1_n_7 ;
  wire [0:0]wait_time_cnt0;
  wire wait_time_cnt0_0;
  wire \wait_time_cnt[1]_i_1_n_0 ;
  wire \wait_time_cnt[2]_i_1_n_0 ;
  wire \wait_time_cnt[3]_i_1_n_0 ;
  wire \wait_time_cnt[4]_i_1_n_0 ;
  wire \wait_time_cnt[5]_i_1_n_0 ;
  wire \wait_time_cnt[6]_i_3_n_0 ;
  wire \wait_time_cnt[6]_i_4_n_0 ;
  wire [6:0]wait_time_cnt_reg;
  wire [3:3]\NLW_refclk_stable_count_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_time_out_counter_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_time_out_counter_reg[16]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_wait_bypass_count_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_wait_bypass_count_reg[16]_i_1_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hFFFFFF1F0000001F)) 
    CPLL_RESET_i_1
       (.I0(pll_reset_asserted_reg_n_0),
        .I1(gt0_cpllrefclklost_i),
        .I2(refclk_stable_reg_n_0),
        .I3(CPLL_RESET_i_2_n_0),
        .I4(\FSM_sequential_tx_state[0]_i_3_n_0 ),
        .I5(gt0_cpllreset_t),
        .O(CPLL_RESET_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT2 #(
    .INIT(4'hE)) 
    CPLL_RESET_i_2
       (.I0(tx_state[1]),
        .I1(tx_state[2]),
        .O(CPLL_RESET_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    CPLL_RESET_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(CPLL_RESET_i_1_n_0),
        .Q(gt0_cpllreset_t),
        .R(pma_reset));
  LUT6 #(
    .INIT(64'hF3FFF3F0F5F0F5F0)) 
    \FSM_sequential_tx_state[0]_i_1 
       (.I0(\FSM_sequential_tx_state[2]_i_2_n_0 ),
        .I1(\FSM_sequential_tx_state[0]_i_2_n_0 ),
        .I2(\FSM_sequential_tx_state[0]_i_3_n_0 ),
        .I3(tx_state[2]),
        .I4(time_out_2ms_reg_n_0),
        .I5(tx_state[1]),
        .O(tx_state__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_tx_state[0]_i_2 
       (.I0(reset_time_out),
        .I1(time_out_500us_reg_n_0),
        .O(\FSM_sequential_tx_state[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_tx_state[0]_i_3 
       (.I0(tx_state[3]),
        .I1(tx_state[0]),
        .O(\FSM_sequential_tx_state[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT5 #(
    .INIT(32'h005A001A)) 
    \FSM_sequential_tx_state[1]_i_1 
       (.I0(tx_state[1]),
        .I1(tx_state[2]),
        .I2(tx_state[0]),
        .I3(tx_state[3]),
        .I4(\FSM_sequential_tx_state[2]_i_2_n_0 ),
        .O(tx_state__0[1]));
  LUT6 #(
    .INIT(64'h04000C0C06020C0C)) 
    \FSM_sequential_tx_state[2]_i_1 
       (.I0(tx_state[1]),
        .I1(tx_state[2]),
        .I2(tx_state[3]),
        .I3(\FSM_sequential_tx_state[2]_i_2_n_0 ),
        .I4(tx_state[0]),
        .I5(time_out_2ms_reg_n_0),
        .O(tx_state__0[2]));
  LUT3 #(
    .INIT(8'hFD)) 
    \FSM_sequential_tx_state[2]_i_2 
       (.I0(time_tlock_max_reg_n_0),
        .I1(reset_time_out),
        .I2(mmcm_lock_reclocked),
        .O(\FSM_sequential_tx_state[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT5 #(
    .INIT(32'hF4FF4444)) 
    \FSM_sequential_tx_state[3]_i_2 
       (.I0(time_out_wait_bypass_s3),
        .I1(tx_state[3]),
        .I2(reset_time_out),
        .I3(time_out_500us_reg_n_0),
        .I4(\FSM_sequential_tx_state[3]_i_8_n_0 ),
        .O(tx_state__0[3]));
  LUT6 #(
    .INIT(64'h00BA000000000000)) 
    \FSM_sequential_tx_state[3]_i_3 
       (.I0(txresetdone_s3),
        .I1(reset_time_out),
        .I2(time_out_500us_reg_n_0),
        .I3(\FSM_sequential_tx_state[0]_i_3_n_0 ),
        .I4(tx_state[2]),
        .I5(tx_state[1]),
        .O(\FSM_sequential_tx_state[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000300FF00AA)) 
    \FSM_sequential_tx_state[3]_i_4 
       (.I0(init_wait_done_reg_n_0),
        .I1(\wait_time_cnt[6]_i_4_n_0 ),
        .I2(wait_time_cnt_reg[6]),
        .I3(tx_state[0]),
        .I4(tx_state[3]),
        .I5(CPLL_RESET_i_2_n_0),
        .O(\FSM_sequential_tx_state[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0404040400040000)) 
    \FSM_sequential_tx_state[3]_i_6 
       (.I0(tx_state[1]),
        .I1(tx_state[2]),
        .I2(\FSM_sequential_tx_state[0]_i_3_n_0 ),
        .I3(reset_time_out),
        .I4(time_tlock_max_reg_n_0),
        .I5(mmcm_lock_reclocked),
        .O(\FSM_sequential_tx_state[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \FSM_sequential_tx_state[3]_i_7 
       (.I0(tx_state[2]),
        .I1(tx_state[3]),
        .I2(tx_state[0]),
        .I3(tx_state[1]),
        .O(\FSM_sequential_tx_state[3]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \FSM_sequential_tx_state[3]_i_8 
       (.I0(tx_state[3]),
        .I1(tx_state[0]),
        .I2(tx_state[2]),
        .I3(tx_state[1]),
        .O(\FSM_sequential_tx_state[3]_i_8_n_0 ));
  (* FSM_ENCODED_STATES = "wait_for_txoutclk:0100,release_pll_reset:0011,wait_for_pll_lock:0010,assert_all_resets:0001,init:0000,wait_reset_done:0111,reset_fsm_done:1001,wait_for_txusrclk:0110,do_phase_alignment:1000,release_mmcm_reset:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_tx_state_reg[0] 
       (.C(independent_clock_bufg),
        .CE(sync_cplllock_n_1),
        .D(tx_state__0[0]),
        .Q(tx_state[0]),
        .R(pma_reset));
  (* FSM_ENCODED_STATES = "wait_for_txoutclk:0100,release_pll_reset:0011,wait_for_pll_lock:0010,assert_all_resets:0001,init:0000,wait_reset_done:0111,reset_fsm_done:1001,wait_for_txusrclk:0110,do_phase_alignment:1000,release_mmcm_reset:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_tx_state_reg[1] 
       (.C(independent_clock_bufg),
        .CE(sync_cplllock_n_1),
        .D(tx_state__0[1]),
        .Q(tx_state[1]),
        .R(pma_reset));
  (* FSM_ENCODED_STATES = "wait_for_txoutclk:0100,release_pll_reset:0011,wait_for_pll_lock:0010,assert_all_resets:0001,init:0000,wait_reset_done:0111,reset_fsm_done:1001,wait_for_txusrclk:0110,do_phase_alignment:1000,release_mmcm_reset:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_tx_state_reg[2] 
       (.C(independent_clock_bufg),
        .CE(sync_cplllock_n_1),
        .D(tx_state__0[2]),
        .Q(tx_state[2]),
        .R(pma_reset));
  (* FSM_ENCODED_STATES = "wait_for_txoutclk:0100,release_pll_reset:0011,wait_for_pll_lock:0010,assert_all_resets:0001,init:0000,wait_reset_done:0111,reset_fsm_done:1001,wait_for_txusrclk:0110,do_phase_alignment:1000,release_mmcm_reset:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_tx_state_reg[3] 
       (.C(independent_clock_bufg),
        .CE(sync_cplllock_n_1),
        .D(tx_state__0[3]),
        .Q(tx_state[3]),
        .R(pma_reset));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT5 #(
    .INIT(32'hFFF70004)) 
    MMCM_RESET_i_1
       (.I0(tx_state[2]),
        .I1(tx_state[0]),
        .I2(tx_state[3]),
        .I3(tx_state[1]),
        .I4(mmcm_reset),
        .O(MMCM_RESET_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    MMCM_RESET_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(MMCM_RESET_i_1_n_0),
        .Q(mmcm_reset),
        .R(pma_reset));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT5 #(
    .INIT(32'hFFFD2000)) 
    TXUSERRDY_i_1
       (.I0(tx_state[0]),
        .I1(tx_state[3]),
        .I2(tx_state[2]),
        .I3(tx_state[1]),
        .I4(gt0_txuserrdy_t),
        .O(TXUSERRDY_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    TXUSERRDY_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(TXUSERRDY_i_1_n_0),
        .Q(gt0_txuserrdy_t),
        .R(pma_reset));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT5 #(
    .INIT(32'hFFEF0100)) 
    gttxreset_i_i_1
       (.I0(tx_state[3]),
        .I1(tx_state[1]),
        .I2(tx_state[2]),
        .I3(tx_state[0]),
        .I4(GTTXRESET),
        .O(gttxreset_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    gttxreset_i_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gttxreset_i_i_1_n_0),
        .Q(GTTXRESET),
        .R(pma_reset));
  LUT3 #(
    .INIT(8'hEA)) 
    gtxe2_i_i_3
       (.I0(GTTXRESET),
        .I1(data_in),
        .I2(gtxe2_i),
        .O(gt0_gttxreset_in0_out));
  LUT1 #(
    .INIT(2'h1)) 
    \init_wait_count[0]_i_1 
       (.I0(init_wait_count_reg[0]),
        .O(\init_wait_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \init_wait_count[1]_i_1 
       (.I0(init_wait_count_reg[0]),
        .I1(init_wait_count_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \init_wait_count[2]_i_1 
       (.I0(init_wait_count_reg[0]),
        .I1(init_wait_count_reg[1]),
        .I2(init_wait_count_reg[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \init_wait_count[3]_i_1 
       (.I0(init_wait_count_reg[1]),
        .I1(init_wait_count_reg[2]),
        .I2(init_wait_count_reg[0]),
        .I3(init_wait_count_reg[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \init_wait_count[4]_i_1 
       (.I0(init_wait_count_reg[2]),
        .I1(init_wait_count_reg[1]),
        .I2(init_wait_count_reg[3]),
        .I3(init_wait_count_reg[0]),
        .I4(init_wait_count_reg[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \init_wait_count[5]_i_1 
       (.I0(init_wait_count_reg[2]),
        .I1(init_wait_count_reg[1]),
        .I2(init_wait_count_reg[3]),
        .I3(init_wait_count_reg[0]),
        .I4(init_wait_count_reg[4]),
        .I5(init_wait_count_reg[5]),
        .O(p_0_in[5]));
  LUT4 #(
    .INIT(16'hFEFF)) 
    \init_wait_count[6]_i_1 
       (.I0(\init_wait_count[6]_i_3_n_0 ),
        .I1(init_wait_count_reg[0]),
        .I2(init_wait_count_reg[4]),
        .I3(init_wait_count_reg[6]),
        .O(\init_wait_count[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT4 #(
    .INIT(16'hBF40)) 
    \init_wait_count[6]_i_2 
       (.I0(\init_wait_count[6]_i_3_n_0 ),
        .I1(init_wait_count_reg[0]),
        .I2(init_wait_count_reg[4]),
        .I3(init_wait_count_reg[6]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \init_wait_count[6]_i_3 
       (.I0(init_wait_count_reg[3]),
        .I1(init_wait_count_reg[1]),
        .I2(init_wait_count_reg[2]),
        .I3(init_wait_count_reg[5]),
        .O(\init_wait_count[6]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[0] 
       (.C(independent_clock_bufg),
        .CE(\init_wait_count[6]_i_1_n_0 ),
        .CLR(pma_reset),
        .D(\init_wait_count[0]_i_1_n_0 ),
        .Q(init_wait_count_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[1] 
       (.C(independent_clock_bufg),
        .CE(\init_wait_count[6]_i_1_n_0 ),
        .CLR(pma_reset),
        .D(p_0_in[1]),
        .Q(init_wait_count_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[2] 
       (.C(independent_clock_bufg),
        .CE(\init_wait_count[6]_i_1_n_0 ),
        .CLR(pma_reset),
        .D(p_0_in[2]),
        .Q(init_wait_count_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[3] 
       (.C(independent_clock_bufg),
        .CE(\init_wait_count[6]_i_1_n_0 ),
        .CLR(pma_reset),
        .D(p_0_in[3]),
        .Q(init_wait_count_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[4] 
       (.C(independent_clock_bufg),
        .CE(\init_wait_count[6]_i_1_n_0 ),
        .CLR(pma_reset),
        .D(p_0_in[4]),
        .Q(init_wait_count_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[5] 
       (.C(independent_clock_bufg),
        .CE(\init_wait_count[6]_i_1_n_0 ),
        .CLR(pma_reset),
        .D(p_0_in[5]),
        .Q(init_wait_count_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[6] 
       (.C(independent_clock_bufg),
        .CE(\init_wait_count[6]_i_1_n_0 ),
        .CLR(pma_reset),
        .D(p_0_in[6]),
        .Q(init_wait_count_reg[6]));
  LUT5 #(
    .INIT(32'hFFFF0010)) 
    init_wait_done_i_1
       (.I0(\init_wait_count[6]_i_3_n_0 ),
        .I1(init_wait_count_reg[4]),
        .I2(init_wait_count_reg[6]),
        .I3(init_wait_count_reg[0]),
        .I4(init_wait_done_reg_n_0),
        .O(init_wait_done_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    init_wait_done_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .CLR(pma_reset),
        .D(init_wait_done_i_1_n_0),
        .Q(init_wait_done_reg_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \mmcm_lock_count[0]_i_1 
       (.I0(mmcm_lock_count_reg[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \mmcm_lock_count[1]_i_1 
       (.I0(mmcm_lock_count_reg[0]),
        .I1(mmcm_lock_count_reg[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \mmcm_lock_count[2]_i_1 
       (.I0(mmcm_lock_count_reg[1]),
        .I1(mmcm_lock_count_reg[0]),
        .I2(mmcm_lock_count_reg[2]),
        .O(\mmcm_lock_count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \mmcm_lock_count[3]_i_1 
       (.I0(mmcm_lock_count_reg[2]),
        .I1(mmcm_lock_count_reg[0]),
        .I2(mmcm_lock_count_reg[1]),
        .I3(mmcm_lock_count_reg[3]),
        .O(\mmcm_lock_count[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \mmcm_lock_count[4]_i_1 
       (.I0(mmcm_lock_count_reg[3]),
        .I1(mmcm_lock_count_reg[1]),
        .I2(mmcm_lock_count_reg[0]),
        .I3(mmcm_lock_count_reg[2]),
        .I4(mmcm_lock_count_reg[4]),
        .O(\mmcm_lock_count[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \mmcm_lock_count[5]_i_1 
       (.I0(mmcm_lock_count_reg[4]),
        .I1(mmcm_lock_count_reg[2]),
        .I2(mmcm_lock_count_reg[0]),
        .I3(mmcm_lock_count_reg[1]),
        .I4(mmcm_lock_count_reg[3]),
        .I5(mmcm_lock_count_reg[5]),
        .O(\mmcm_lock_count[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \mmcm_lock_count[6]_i_1 
       (.I0(mmcm_lock_reclocked_i_2_n_0),
        .I1(mmcm_lock_count_reg[6]),
        .O(\mmcm_lock_count[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hBF)) 
    \mmcm_lock_count[7]_i_2 
       (.I0(mmcm_lock_reclocked_i_2_n_0),
        .I1(mmcm_lock_count_reg[6]),
        .I2(mmcm_lock_count_reg[7]),
        .O(\mmcm_lock_count[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \mmcm_lock_count[7]_i_3 
       (.I0(mmcm_lock_count_reg[6]),
        .I1(mmcm_lock_reclocked_i_2_n_0),
        .I2(mmcm_lock_count_reg[7]),
        .O(\mmcm_lock_count[7]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[0] 
       (.C(independent_clock_bufg),
        .CE(\mmcm_lock_count[7]_i_2_n_0 ),
        .D(p_0_in__0[0]),
        .Q(mmcm_lock_count_reg[0]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[1] 
       (.C(independent_clock_bufg),
        .CE(\mmcm_lock_count[7]_i_2_n_0 ),
        .D(p_0_in__0[1]),
        .Q(mmcm_lock_count_reg[1]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[2] 
       (.C(independent_clock_bufg),
        .CE(\mmcm_lock_count[7]_i_2_n_0 ),
        .D(\mmcm_lock_count[2]_i_1_n_0 ),
        .Q(mmcm_lock_count_reg[2]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[3] 
       (.C(independent_clock_bufg),
        .CE(\mmcm_lock_count[7]_i_2_n_0 ),
        .D(\mmcm_lock_count[3]_i_1_n_0 ),
        .Q(mmcm_lock_count_reg[3]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[4] 
       (.C(independent_clock_bufg),
        .CE(\mmcm_lock_count[7]_i_2_n_0 ),
        .D(\mmcm_lock_count[4]_i_1_n_0 ),
        .Q(mmcm_lock_count_reg[4]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[5] 
       (.C(independent_clock_bufg),
        .CE(\mmcm_lock_count[7]_i_2_n_0 ),
        .D(\mmcm_lock_count[5]_i_1_n_0 ),
        .Q(mmcm_lock_count_reg[5]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[6] 
       (.C(independent_clock_bufg),
        .CE(\mmcm_lock_count[7]_i_2_n_0 ),
        .D(\mmcm_lock_count[6]_i_1_n_0 ),
        .Q(mmcm_lock_count_reg[6]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[7] 
       (.C(independent_clock_bufg),
        .CE(\mmcm_lock_count[7]_i_2_n_0 ),
        .D(\mmcm_lock_count[7]_i_3_n_0 ),
        .Q(mmcm_lock_count_reg[7]),
        .R(sync_mmcm_lock_reclocked_n_0));
  LUT5 #(
    .INIT(32'hAAEA0000)) 
    mmcm_lock_reclocked_i_1
       (.I0(mmcm_lock_reclocked),
        .I1(mmcm_lock_count_reg[7]),
        .I2(mmcm_lock_count_reg[6]),
        .I3(mmcm_lock_reclocked_i_2_n_0),
        .I4(mmcm_lock_i),
        .O(mmcm_lock_reclocked_i_1_n_0));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    mmcm_lock_reclocked_i_2
       (.I0(mmcm_lock_count_reg[4]),
        .I1(mmcm_lock_count_reg[2]),
        .I2(mmcm_lock_count_reg[0]),
        .I3(mmcm_lock_count_reg[1]),
        .I4(mmcm_lock_count_reg[3]),
        .I5(mmcm_lock_count_reg[5]),
        .O(mmcm_lock_reclocked_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    mmcm_lock_reclocked_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(mmcm_lock_reclocked_i_1_n_0),
        .Q(mmcm_lock_reclocked),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000CD55CCCCCCCC)) 
    pll_reset_asserted_i_1
       (.I0(tx_state[3]),
        .I1(pll_reset_asserted_reg_n_0),
        .I2(gt0_cpllrefclklost_i),
        .I3(refclk_stable_reg_n_0),
        .I4(tx_state[1]),
        .I5(pll_reset_asserted_i_2_n_0),
        .O(pll_reset_asserted_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'h02)) 
    pll_reset_asserted_i_2
       (.I0(tx_state[0]),
        .I1(tx_state[3]),
        .I2(tx_state[2]),
        .O(pll_reset_asserted_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    pll_reset_asserted_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(pll_reset_asserted_i_1_n_0),
        .Q(pll_reset_asserted_reg_n_0),
        .R(pma_reset));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    \refclk_stable_count[0]_i_1 
       (.I0(\refclk_stable_count[0]_i_3_n_0 ),
        .I1(\refclk_stable_count[0]_i_4_n_0 ),
        .I2(\refclk_stable_count[0]_i_5_n_0 ),
        .I3(\refclk_stable_count[0]_i_6_n_0 ),
        .I4(\refclk_stable_count[0]_i_7_n_0 ),
        .I5(\refclk_stable_count[0]_i_8_n_0 ),
        .O(refclk_stable_count));
  LUT6 #(
    .INIT(64'hFFDFFFFFFFFFFFFF)) 
    \refclk_stable_count[0]_i_3 
       (.I0(refclk_stable_count_reg[13]),
        .I1(refclk_stable_count_reg[12]),
        .I2(refclk_stable_count_reg[10]),
        .I3(refclk_stable_count_reg[11]),
        .I4(refclk_stable_count_reg[9]),
        .I5(refclk_stable_count_reg[8]),
        .O(\refclk_stable_count[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFDF)) 
    \refclk_stable_count[0]_i_4 
       (.I0(refclk_stable_count_reg[19]),
        .I1(refclk_stable_count_reg[18]),
        .I2(refclk_stable_count_reg[16]),
        .I3(refclk_stable_count_reg[17]),
        .I4(refclk_stable_count_reg[15]),
        .I5(refclk_stable_count_reg[14]),
        .O(\refclk_stable_count[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \refclk_stable_count[0]_i_5 
       (.I0(refclk_stable_count_reg[30]),
        .I1(refclk_stable_count_reg[31]),
        .I2(refclk_stable_count_reg[28]),
        .I3(refclk_stable_count_reg[29]),
        .I4(refclk_stable_count_reg[27]),
        .I5(refclk_stable_count_reg[26]),
        .O(\refclk_stable_count[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \refclk_stable_count[0]_i_6 
       (.I0(refclk_stable_count_reg[24]),
        .I1(refclk_stable_count_reg[25]),
        .I2(refclk_stable_count_reg[22]),
        .I3(refclk_stable_count_reg[23]),
        .I4(refclk_stable_count_reg[21]),
        .I5(refclk_stable_count_reg[20]),
        .O(\refclk_stable_count[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \refclk_stable_count[0]_i_7 
       (.I0(refclk_stable_count_reg[0]),
        .I1(refclk_stable_count_reg[1]),
        .O(\refclk_stable_count[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF7)) 
    \refclk_stable_count[0]_i_8 
       (.I0(refclk_stable_count_reg[6]),
        .I1(refclk_stable_count_reg[7]),
        .I2(refclk_stable_count_reg[4]),
        .I3(refclk_stable_count_reg[5]),
        .I4(refclk_stable_count_reg[3]),
        .I5(refclk_stable_count_reg[2]),
        .O(\refclk_stable_count[0]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \refclk_stable_count[0]_i_9 
       (.I0(refclk_stable_count_reg[0]),
        .O(\refclk_stable_count[0]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[0] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[0]_i_2_n_7 ),
        .Q(refclk_stable_count_reg[0]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \refclk_stable_count_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\refclk_stable_count_reg[0]_i_2_n_0 ,\refclk_stable_count_reg[0]_i_2_n_1 ,\refclk_stable_count_reg[0]_i_2_n_2 ,\refclk_stable_count_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\refclk_stable_count_reg[0]_i_2_n_4 ,\refclk_stable_count_reg[0]_i_2_n_5 ,\refclk_stable_count_reg[0]_i_2_n_6 ,\refclk_stable_count_reg[0]_i_2_n_7 }),
        .S({refclk_stable_count_reg[3:1],\refclk_stable_count[0]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[10] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[8]_i_1_n_5 ),
        .Q(refclk_stable_count_reg[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[11] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[8]_i_1_n_4 ),
        .Q(refclk_stable_count_reg[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[12] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[12]_i_1_n_7 ),
        .Q(refclk_stable_count_reg[12]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \refclk_stable_count_reg[12]_i_1 
       (.CI(\refclk_stable_count_reg[8]_i_1_n_0 ),
        .CO({\refclk_stable_count_reg[12]_i_1_n_0 ,\refclk_stable_count_reg[12]_i_1_n_1 ,\refclk_stable_count_reg[12]_i_1_n_2 ,\refclk_stable_count_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\refclk_stable_count_reg[12]_i_1_n_4 ,\refclk_stable_count_reg[12]_i_1_n_5 ,\refclk_stable_count_reg[12]_i_1_n_6 ,\refclk_stable_count_reg[12]_i_1_n_7 }),
        .S(refclk_stable_count_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[13] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[12]_i_1_n_6 ),
        .Q(refclk_stable_count_reg[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[14] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[12]_i_1_n_5 ),
        .Q(refclk_stable_count_reg[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[15] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[12]_i_1_n_4 ),
        .Q(refclk_stable_count_reg[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[16] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[16]_i_1_n_7 ),
        .Q(refclk_stable_count_reg[16]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \refclk_stable_count_reg[16]_i_1 
       (.CI(\refclk_stable_count_reg[12]_i_1_n_0 ),
        .CO({\refclk_stable_count_reg[16]_i_1_n_0 ,\refclk_stable_count_reg[16]_i_1_n_1 ,\refclk_stable_count_reg[16]_i_1_n_2 ,\refclk_stable_count_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\refclk_stable_count_reg[16]_i_1_n_4 ,\refclk_stable_count_reg[16]_i_1_n_5 ,\refclk_stable_count_reg[16]_i_1_n_6 ,\refclk_stable_count_reg[16]_i_1_n_7 }),
        .S(refclk_stable_count_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[17] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[16]_i_1_n_6 ),
        .Q(refclk_stable_count_reg[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[18] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[16]_i_1_n_5 ),
        .Q(refclk_stable_count_reg[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[19] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[16]_i_1_n_4 ),
        .Q(refclk_stable_count_reg[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[1] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[0]_i_2_n_6 ),
        .Q(refclk_stable_count_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[20] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[20]_i_1_n_7 ),
        .Q(refclk_stable_count_reg[20]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \refclk_stable_count_reg[20]_i_1 
       (.CI(\refclk_stable_count_reg[16]_i_1_n_0 ),
        .CO({\refclk_stable_count_reg[20]_i_1_n_0 ,\refclk_stable_count_reg[20]_i_1_n_1 ,\refclk_stable_count_reg[20]_i_1_n_2 ,\refclk_stable_count_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\refclk_stable_count_reg[20]_i_1_n_4 ,\refclk_stable_count_reg[20]_i_1_n_5 ,\refclk_stable_count_reg[20]_i_1_n_6 ,\refclk_stable_count_reg[20]_i_1_n_7 }),
        .S(refclk_stable_count_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[21] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[20]_i_1_n_6 ),
        .Q(refclk_stable_count_reg[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[22] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[20]_i_1_n_5 ),
        .Q(refclk_stable_count_reg[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[23] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[20]_i_1_n_4 ),
        .Q(refclk_stable_count_reg[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[24] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[24]_i_1_n_7 ),
        .Q(refclk_stable_count_reg[24]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \refclk_stable_count_reg[24]_i_1 
       (.CI(\refclk_stable_count_reg[20]_i_1_n_0 ),
        .CO({\refclk_stable_count_reg[24]_i_1_n_0 ,\refclk_stable_count_reg[24]_i_1_n_1 ,\refclk_stable_count_reg[24]_i_1_n_2 ,\refclk_stable_count_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\refclk_stable_count_reg[24]_i_1_n_4 ,\refclk_stable_count_reg[24]_i_1_n_5 ,\refclk_stable_count_reg[24]_i_1_n_6 ,\refclk_stable_count_reg[24]_i_1_n_7 }),
        .S(refclk_stable_count_reg[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[25] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[24]_i_1_n_6 ),
        .Q(refclk_stable_count_reg[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[26] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[24]_i_1_n_5 ),
        .Q(refclk_stable_count_reg[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[27] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[24]_i_1_n_4 ),
        .Q(refclk_stable_count_reg[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[28] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[28]_i_1_n_7 ),
        .Q(refclk_stable_count_reg[28]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \refclk_stable_count_reg[28]_i_1 
       (.CI(\refclk_stable_count_reg[24]_i_1_n_0 ),
        .CO({\NLW_refclk_stable_count_reg[28]_i_1_CO_UNCONNECTED [3],\refclk_stable_count_reg[28]_i_1_n_1 ,\refclk_stable_count_reg[28]_i_1_n_2 ,\refclk_stable_count_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\refclk_stable_count_reg[28]_i_1_n_4 ,\refclk_stable_count_reg[28]_i_1_n_5 ,\refclk_stable_count_reg[28]_i_1_n_6 ,\refclk_stable_count_reg[28]_i_1_n_7 }),
        .S(refclk_stable_count_reg[31:28]));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[29] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[28]_i_1_n_6 ),
        .Q(refclk_stable_count_reg[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[2] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[0]_i_2_n_5 ),
        .Q(refclk_stable_count_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[30] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[28]_i_1_n_5 ),
        .Q(refclk_stable_count_reg[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[31] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[28]_i_1_n_4 ),
        .Q(refclk_stable_count_reg[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[3] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[0]_i_2_n_4 ),
        .Q(refclk_stable_count_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[4] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[4]_i_1_n_7 ),
        .Q(refclk_stable_count_reg[4]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \refclk_stable_count_reg[4]_i_1 
       (.CI(\refclk_stable_count_reg[0]_i_2_n_0 ),
        .CO({\refclk_stable_count_reg[4]_i_1_n_0 ,\refclk_stable_count_reg[4]_i_1_n_1 ,\refclk_stable_count_reg[4]_i_1_n_2 ,\refclk_stable_count_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\refclk_stable_count_reg[4]_i_1_n_4 ,\refclk_stable_count_reg[4]_i_1_n_5 ,\refclk_stable_count_reg[4]_i_1_n_6 ,\refclk_stable_count_reg[4]_i_1_n_7 }),
        .S(refclk_stable_count_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[5] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[4]_i_1_n_6 ),
        .Q(refclk_stable_count_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[6] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[4]_i_1_n_5 ),
        .Q(refclk_stable_count_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[7] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[4]_i_1_n_4 ),
        .Q(refclk_stable_count_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[8] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[8]_i_1_n_7 ),
        .Q(refclk_stable_count_reg[8]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \refclk_stable_count_reg[8]_i_1 
       (.CI(\refclk_stable_count_reg[4]_i_1_n_0 ),
        .CO({\refclk_stable_count_reg[8]_i_1_n_0 ,\refclk_stable_count_reg[8]_i_1_n_1 ,\refclk_stable_count_reg[8]_i_1_n_2 ,\refclk_stable_count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\refclk_stable_count_reg[8]_i_1_n_4 ,\refclk_stable_count_reg[8]_i_1_n_5 ,\refclk_stable_count_reg[8]_i_1_n_6 ,\refclk_stable_count_reg[8]_i_1_n_7 }),
        .S(refclk_stable_count_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[9] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[8]_i_1_n_6 ),
        .Q(refclk_stable_count_reg[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    refclk_stable_i_1
       (.I0(\refclk_stable_count[0]_i_7_n_0 ),
        .I1(refclk_stable_i_2_n_0),
        .I2(refclk_stable_i_3_n_0),
        .I3(refclk_stable_i_4_n_0),
        .I4(refclk_stable_i_5_n_0),
        .I5(refclk_stable_i_6_n_0),
        .O(refclk_stable_i_1_n_0));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    refclk_stable_i_2
       (.I0(refclk_stable_count_reg[4]),
        .I1(refclk_stable_count_reg[5]),
        .I2(refclk_stable_count_reg[2]),
        .I3(refclk_stable_count_reg[3]),
        .I4(refclk_stable_count_reg[7]),
        .I5(refclk_stable_count_reg[6]),
        .O(refclk_stable_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000200000000000)) 
    refclk_stable_i_3
       (.I0(refclk_stable_count_reg[10]),
        .I1(refclk_stable_count_reg[11]),
        .I2(refclk_stable_count_reg[8]),
        .I3(refclk_stable_count_reg[9]),
        .I4(refclk_stable_count_reg[12]),
        .I5(refclk_stable_count_reg[13]),
        .O(refclk_stable_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    refclk_stable_i_4
       (.I0(refclk_stable_count_reg[16]),
        .I1(refclk_stable_count_reg[17]),
        .I2(refclk_stable_count_reg[14]),
        .I3(refclk_stable_count_reg[15]),
        .I4(refclk_stable_count_reg[18]),
        .I5(refclk_stable_count_reg[19]),
        .O(refclk_stable_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    refclk_stable_i_5
       (.I0(refclk_stable_count_reg[22]),
        .I1(refclk_stable_count_reg[23]),
        .I2(refclk_stable_count_reg[20]),
        .I3(refclk_stable_count_reg[21]),
        .I4(refclk_stable_count_reg[25]),
        .I5(refclk_stable_count_reg[24]),
        .O(refclk_stable_i_5_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    refclk_stable_i_6
       (.I0(refclk_stable_count_reg[28]),
        .I1(refclk_stable_count_reg[29]),
        .I2(refclk_stable_count_reg[26]),
        .I3(refclk_stable_count_reg[27]),
        .I4(refclk_stable_count_reg[31]),
        .I5(refclk_stable_count_reg[30]),
        .O(refclk_stable_i_6_n_0));
  FDRE #(
    .INIT(1'b0)) 
    refclk_stable_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(refclk_stable_i_1_n_0),
        .Q(refclk_stable_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h440000FF50505050)) 
    reset_time_out_i_2__0
       (.I0(tx_state[3]),
        .I1(txresetdone_s3),
        .I2(init_wait_done_reg_n_0),
        .I3(tx_state[1]),
        .I4(tx_state[2]),
        .I5(tx_state[0]),
        .O(reset_time_out_i_2__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    reset_time_out_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(sync_cplllock_n_0),
        .Q(reset_time_out),
        .R(pma_reset));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT5 #(
    .INIT(32'hFFFB0002)) 
    run_phase_alignment_int_i_1
       (.I0(tx_state[3]),
        .I1(tx_state[0]),
        .I2(tx_state[2]),
        .I3(tx_state[1]),
        .I4(run_phase_alignment_int_reg_n_0),
        .O(run_phase_alignment_int_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    run_phase_alignment_int_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(run_phase_alignment_int_i_1_n_0),
        .Q(run_phase_alignment_int_reg_n_0),
        .R(pma_reset));
  FDRE #(
    .INIT(1'b0)) 
    run_phase_alignment_int_s3_reg
       (.C(userclk),
        .CE(1'b1),
        .D(data_out),
        .Q(run_phase_alignment_int_s3),
        .R(1'b0));
  gig_ethernet_pcs_pma_1_sync_block__parameterized1_17 sync_TXRESETDONE
       (.data_out(txresetdone_s2),
        .data_sync_reg1_0(data_sync_reg1),
        .independent_clock_bufg(independent_clock_bufg));
  gig_ethernet_pcs_pma_1_sync_block__parameterized1_18 sync_cplllock
       (.E(sync_cplllock_n_1),
        .\FSM_sequential_tx_state_reg[0] (\FSM_sequential_tx_state[3]_i_3_n_0 ),
        .\FSM_sequential_tx_state_reg[0]_0 (\FSM_sequential_tx_state[3]_i_4_n_0 ),
        .\FSM_sequential_tx_state_reg[0]_1 (\FSM_sequential_tx_state[3]_i_6_n_0 ),
        .\FSM_sequential_tx_state_reg[0]_2 (time_out_2ms_reg_n_0),
        .\FSM_sequential_tx_state_reg[0]_3 (\FSM_sequential_tx_state[3]_i_7_n_0 ),
        .\FSM_sequential_tx_state_reg[0]_4 (pll_reset_asserted_reg_n_0),
        .\FSM_sequential_tx_state_reg[0]_5 (refclk_stable_reg_n_0),
        .\FSM_sequential_tx_state_reg[0]_6 (\FSM_sequential_tx_state[0]_i_3_n_0 ),
        .Q(tx_state),
        .cplllock(cplllock),
        .independent_clock_bufg(independent_clock_bufg),
        .mmcm_lock_reclocked(mmcm_lock_reclocked),
        .reset_time_out(reset_time_out),
        .reset_time_out_reg(sync_cplllock_n_0),
        .reset_time_out_reg_0(reset_time_out_i_2__0_n_0),
        .reset_time_out_reg_1(init_wait_done_reg_n_0));
  gig_ethernet_pcs_pma_1_sync_block__parameterized1_19 sync_mmcm_lock_reclocked
       (.SR(sync_mmcm_lock_reclocked_n_0),
        .data_out(mmcm_lock_i),
        .independent_clock_bufg(independent_clock_bufg),
        .mmcm_locked(mmcm_locked));
  gig_ethernet_pcs_pma_1_sync_block__parameterized1_20 sync_run_phase_alignment_int
       (.data_in(run_phase_alignment_int_reg_n_0),
        .data_out(data_out),
        .userclk(userclk));
  gig_ethernet_pcs_pma_1_sync_block__parameterized1_21 sync_time_out_wait_bypass
       (.data_in(time_out_wait_bypass_reg_n_0),
        .data_out(time_out_wait_bypass_s2),
        .independent_clock_bufg(independent_clock_bufg));
  gig_ethernet_pcs_pma_1_sync_block__parameterized1_22 sync_tx_fsm_reset_done_int
       (.data_in(data_in),
        .data_out(tx_fsm_reset_done_int_s2),
        .userclk(userclk));
  LUT4 #(
    .INIT(16'h00AE)) 
    time_out_2ms_i_1
       (.I0(time_out_2ms_reg_n_0),
        .I1(time_out_2ms_i_2__0_n_0),
        .I2(time_out_2ms_i_3_n_0),
        .I3(reset_time_out),
        .O(time_out_2ms_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    time_out_2ms_i_2__0
       (.I0(time_out_counter_reg[17]),
        .I1(time_out_counter_reg[18]),
        .I2(time_out_counter_reg[10]),
        .I3(time_out_counter_reg[12]),
        .I4(time_out_counter_reg[5]),
        .I5(time_tlock_max_i_3_n_0),
        .O(time_out_2ms_i_2__0_n_0));
  LUT4 #(
    .INIT(16'hFFFD)) 
    time_out_2ms_i_3
       (.I0(time_out_counter_reg[7]),
        .I1(time_out_counter_reg[14]),
        .I2(time_out_2ms_i_4__0_n_0),
        .I3(time_out_2ms_i_5_n_0),
        .O(time_out_2ms_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    time_out_2ms_i_4__0
       (.I0(time_out_counter_reg[4]),
        .I1(time_out_counter_reg[3]),
        .I2(time_out_counter_reg[8]),
        .I3(time_out_counter_reg[6]),
        .O(time_out_2ms_i_4__0_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    time_out_2ms_i_5
       (.I0(time_out_counter_reg[0]),
        .I1(time_out_counter_reg[13]),
        .I2(time_out_counter_reg[9]),
        .I3(time_out_counter_reg[2]),
        .I4(time_out_counter_reg[1]),
        .O(time_out_2ms_i_5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_2ms_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(time_out_2ms_i_1_n_0),
        .Q(time_out_2ms_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000AAAAEAAA)) 
    time_out_500us_i_1
       (.I0(time_out_500us_reg_n_0),
        .I1(time_out_500us_i_2_n_0),
        .I2(time_out_counter_reg[5]),
        .I3(time_out_counter_reg[10]),
        .I4(time_out_2ms_i_3_n_0),
        .I5(reset_time_out),
        .O(time_out_500us_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    time_out_500us_i_2
       (.I0(time_out_counter_reg[15]),
        .I1(time_out_counter_reg[16]),
        .I2(time_out_counter_reg[11]),
        .I3(time_out_counter_reg[12]),
        .I4(time_out_counter_reg[18]),
        .I5(time_out_counter_reg[17]),
        .O(time_out_500us_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_500us_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(time_out_500us_i_1_n_0),
        .Q(time_out_500us_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFBFFFF)) 
    \time_out_counter[0]_i_1__0 
       (.I0(time_tlock_max_i_3_n_0),
        .I1(\time_out_counter[0]_i_3__0_n_0 ),
        .I2(time_out_2ms_i_3_n_0),
        .I3(time_out_counter_reg[10]),
        .I4(time_out_counter_reg[12]),
        .I5(time_out_counter_reg[5]),
        .O(time_out_counter));
  LUT2 #(
    .INIT(4'h8)) 
    \time_out_counter[0]_i_3__0 
       (.I0(time_out_counter_reg[17]),
        .I1(time_out_counter_reg[18]),
        .O(\time_out_counter[0]_i_3__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \time_out_counter[0]_i_4 
       (.I0(time_out_counter_reg[0]),
        .O(\time_out_counter[0]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[0] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2_n_7 ),
        .Q(time_out_counter_reg[0]),
        .R(reset_time_out));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \time_out_counter_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\time_out_counter_reg[0]_i_2_n_0 ,\time_out_counter_reg[0]_i_2_n_1 ,\time_out_counter_reg[0]_i_2_n_2 ,\time_out_counter_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\time_out_counter_reg[0]_i_2_n_4 ,\time_out_counter_reg[0]_i_2_n_5 ,\time_out_counter_reg[0]_i_2_n_6 ,\time_out_counter_reg[0]_i_2_n_7 }),
        .S({time_out_counter_reg[3:1],\time_out_counter[0]_i_4_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[10] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1_n_5 ),
        .Q(time_out_counter_reg[10]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[11] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1_n_4 ),
        .Q(time_out_counter_reg[11]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[12] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1_n_7 ),
        .Q(time_out_counter_reg[12]),
        .R(reset_time_out));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \time_out_counter_reg[12]_i_1 
       (.CI(\time_out_counter_reg[8]_i_1_n_0 ),
        .CO({\time_out_counter_reg[12]_i_1_n_0 ,\time_out_counter_reg[12]_i_1_n_1 ,\time_out_counter_reg[12]_i_1_n_2 ,\time_out_counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[12]_i_1_n_4 ,\time_out_counter_reg[12]_i_1_n_5 ,\time_out_counter_reg[12]_i_1_n_6 ,\time_out_counter_reg[12]_i_1_n_7 }),
        .S(time_out_counter_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[13] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1_n_6 ),
        .Q(time_out_counter_reg[13]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[14] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1_n_5 ),
        .Q(time_out_counter_reg[14]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[15] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1_n_4 ),
        .Q(time_out_counter_reg[15]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[16] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[16]_i_1_n_7 ),
        .Q(time_out_counter_reg[16]),
        .R(reset_time_out));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \time_out_counter_reg[16]_i_1 
       (.CI(\time_out_counter_reg[12]_i_1_n_0 ),
        .CO({\NLW_time_out_counter_reg[16]_i_1_CO_UNCONNECTED [3:2],\time_out_counter_reg[16]_i_1_n_2 ,\time_out_counter_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_time_out_counter_reg[16]_i_1_O_UNCONNECTED [3],\time_out_counter_reg[16]_i_1_n_5 ,\time_out_counter_reg[16]_i_1_n_6 ,\time_out_counter_reg[16]_i_1_n_7 }),
        .S({1'b0,time_out_counter_reg[18:16]}));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[17] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[16]_i_1_n_6 ),
        .Q(time_out_counter_reg[17]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[18] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[16]_i_1_n_5 ),
        .Q(time_out_counter_reg[18]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[1] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2_n_6 ),
        .Q(time_out_counter_reg[1]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[2] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2_n_5 ),
        .Q(time_out_counter_reg[2]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[3] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2_n_4 ),
        .Q(time_out_counter_reg[3]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[4] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1_n_7 ),
        .Q(time_out_counter_reg[4]),
        .R(reset_time_out));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \time_out_counter_reg[4]_i_1 
       (.CI(\time_out_counter_reg[0]_i_2_n_0 ),
        .CO({\time_out_counter_reg[4]_i_1_n_0 ,\time_out_counter_reg[4]_i_1_n_1 ,\time_out_counter_reg[4]_i_1_n_2 ,\time_out_counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[4]_i_1_n_4 ,\time_out_counter_reg[4]_i_1_n_5 ,\time_out_counter_reg[4]_i_1_n_6 ,\time_out_counter_reg[4]_i_1_n_7 }),
        .S(time_out_counter_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[5] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1_n_6 ),
        .Q(time_out_counter_reg[5]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[6] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1_n_5 ),
        .Q(time_out_counter_reg[6]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[7] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1_n_4 ),
        .Q(time_out_counter_reg[7]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[8] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1_n_7 ),
        .Q(time_out_counter_reg[8]),
        .R(reset_time_out));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \time_out_counter_reg[8]_i_1 
       (.CI(\time_out_counter_reg[4]_i_1_n_0 ),
        .CO({\time_out_counter_reg[8]_i_1_n_0 ,\time_out_counter_reg[8]_i_1_n_1 ,\time_out_counter_reg[8]_i_1_n_2 ,\time_out_counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[8]_i_1_n_4 ,\time_out_counter_reg[8]_i_1_n_5 ,\time_out_counter_reg[8]_i_1_n_6 ,\time_out_counter_reg[8]_i_1_n_7 }),
        .S(time_out_counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[9] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1_n_6 ),
        .Q(time_out_counter_reg[9]),
        .R(reset_time_out));
  LUT4 #(
    .INIT(16'hAB00)) 
    time_out_wait_bypass_i_1
       (.I0(time_out_wait_bypass_reg_n_0),
        .I1(time_out_wait_bypass_i_2_n_0),
        .I2(tx_fsm_reset_done_int_s3),
        .I3(run_phase_alignment_int_s3),
        .O(time_out_wait_bypass_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    time_out_wait_bypass_i_2
       (.I0(time_out_wait_bypass_i_3_n_0),
        .I1(time_out_wait_bypass_i_4_n_0),
        .I2(time_out_wait_bypass_i_5_n_0),
        .I3(time_out_wait_bypass_i_6_n_0),
        .O(time_out_wait_bypass_i_2_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    time_out_wait_bypass_i_3
       (.I0(wait_bypass_count_reg[4]),
        .I1(wait_bypass_count_reg[3]),
        .I2(wait_bypass_count_reg[6]),
        .I3(wait_bypass_count_reg[5]),
        .O(time_out_wait_bypass_i_3_n_0));
  LUT5 #(
    .INIT(32'hDFFFFFFF)) 
    time_out_wait_bypass_i_4
       (.I0(wait_bypass_count_reg[0]),
        .I1(wait_bypass_count_reg[15]),
        .I2(wait_bypass_count_reg[16]),
        .I3(wait_bypass_count_reg[2]),
        .I4(wait_bypass_count_reg[1]),
        .O(time_out_wait_bypass_i_4_n_0));
  LUT4 #(
    .INIT(16'hFFDF)) 
    time_out_wait_bypass_i_5
       (.I0(wait_bypass_count_reg[12]),
        .I1(wait_bypass_count_reg[11]),
        .I2(wait_bypass_count_reg[14]),
        .I3(wait_bypass_count_reg[13]),
        .O(time_out_wait_bypass_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFDF)) 
    time_out_wait_bypass_i_6
       (.I0(wait_bypass_count_reg[7]),
        .I1(wait_bypass_count_reg[8]),
        .I2(wait_bypass_count_reg[9]),
        .I3(wait_bypass_count_reg[10]),
        .O(time_out_wait_bypass_i_6_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_wait_bypass_reg
       (.C(userclk),
        .CE(1'b1),
        .D(time_out_wait_bypass_i_1_n_0),
        .Q(time_out_wait_bypass_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_wait_bypass_s3_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(time_out_wait_bypass_s2),
        .Q(time_out_wait_bypass_s3),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000AAAAAAEA)) 
    time_tlock_max_i_1
       (.I0(time_tlock_max_reg_n_0),
        .I1(time_tlock_max_i_2_n_0),
        .I2(time_out_counter_reg[5]),
        .I3(time_tlock_max_i_3_n_0),
        .I4(time_tlock_max_i_4_n_0),
        .I5(reset_time_out),
        .O(time_tlock_max_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    time_tlock_max_i_2
       (.I0(time_out_counter_reg[14]),
        .I1(time_out_counter_reg[12]),
        .I2(time_out_counter_reg[10]),
        .I3(time_out_counter_reg[7]),
        .I4(time_out_counter_reg[18]),
        .I5(time_out_counter_reg[17]),
        .O(time_tlock_max_i_2_n_0));
  LUT3 #(
    .INIT(8'hEF)) 
    time_tlock_max_i_3
       (.I0(time_out_counter_reg[16]),
        .I1(time_out_counter_reg[15]),
        .I2(time_out_counter_reg[11]),
        .O(time_tlock_max_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    time_tlock_max_i_4
       (.I0(time_out_2ms_i_5_n_0),
        .I1(time_out_counter_reg[6]),
        .I2(time_out_counter_reg[8]),
        .I3(time_out_counter_reg[3]),
        .I4(time_out_counter_reg[4]),
        .O(time_tlock_max_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_tlock_max_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(time_tlock_max_i_1_n_0),
        .Q(time_tlock_max_reg_n_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFF1000)) 
    tx_fsm_reset_done_int_i_1
       (.I0(tx_state[1]),
        .I1(tx_state[2]),
        .I2(tx_state[0]),
        .I3(tx_state[3]),
        .I4(data_in),
        .O(tx_fsm_reset_done_int_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tx_fsm_reset_done_int_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(tx_fsm_reset_done_int_i_1_n_0),
        .Q(data_in),
        .R(pma_reset));
  FDRE #(
    .INIT(1'b0)) 
    tx_fsm_reset_done_int_s3_reg
       (.C(userclk),
        .CE(1'b1),
        .D(tx_fsm_reset_done_int_s2),
        .Q(tx_fsm_reset_done_int_s3),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    txresetdone_s3_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(txresetdone_s2),
        .Q(txresetdone_s3),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_bypass_count[0]_i_1 
       (.I0(run_phase_alignment_int_s3),
        .O(clear));
  LUT2 #(
    .INIT(4'h2)) 
    \wait_bypass_count[0]_i_2 
       (.I0(time_out_wait_bypass_i_2_n_0),
        .I1(tx_fsm_reset_done_int_s3),
        .O(\wait_bypass_count[0]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_bypass_count[0]_i_4 
       (.I0(wait_bypass_count_reg[0]),
        .O(\wait_bypass_count[0]_i_4_n_0 ));
  FDRE \wait_bypass_count_reg[0] 
       (.C(userclk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3_n_7 ),
        .Q(wait_bypass_count_reg[0]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \wait_bypass_count_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\wait_bypass_count_reg[0]_i_3_n_0 ,\wait_bypass_count_reg[0]_i_3_n_1 ,\wait_bypass_count_reg[0]_i_3_n_2 ,\wait_bypass_count_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\wait_bypass_count_reg[0]_i_3_n_4 ,\wait_bypass_count_reg[0]_i_3_n_5 ,\wait_bypass_count_reg[0]_i_3_n_6 ,\wait_bypass_count_reg[0]_i_3_n_7 }),
        .S({wait_bypass_count_reg[3:1],\wait_bypass_count[0]_i_4_n_0 }));
  FDRE \wait_bypass_count_reg[10] 
       (.C(userclk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1_n_5 ),
        .Q(wait_bypass_count_reg[10]),
        .R(clear));
  FDRE \wait_bypass_count_reg[11] 
       (.C(userclk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1_n_4 ),
        .Q(wait_bypass_count_reg[11]),
        .R(clear));
  FDRE \wait_bypass_count_reg[12] 
       (.C(userclk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[12]_i_1_n_7 ),
        .Q(wait_bypass_count_reg[12]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \wait_bypass_count_reg[12]_i_1 
       (.CI(\wait_bypass_count_reg[8]_i_1_n_0 ),
        .CO({\wait_bypass_count_reg[12]_i_1_n_0 ,\wait_bypass_count_reg[12]_i_1_n_1 ,\wait_bypass_count_reg[12]_i_1_n_2 ,\wait_bypass_count_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\wait_bypass_count_reg[12]_i_1_n_4 ,\wait_bypass_count_reg[12]_i_1_n_5 ,\wait_bypass_count_reg[12]_i_1_n_6 ,\wait_bypass_count_reg[12]_i_1_n_7 }),
        .S(wait_bypass_count_reg[15:12]));
  FDRE \wait_bypass_count_reg[13] 
       (.C(userclk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[12]_i_1_n_6 ),
        .Q(wait_bypass_count_reg[13]),
        .R(clear));
  FDRE \wait_bypass_count_reg[14] 
       (.C(userclk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[12]_i_1_n_5 ),
        .Q(wait_bypass_count_reg[14]),
        .R(clear));
  FDRE \wait_bypass_count_reg[15] 
       (.C(userclk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[12]_i_1_n_4 ),
        .Q(wait_bypass_count_reg[15]),
        .R(clear));
  FDRE \wait_bypass_count_reg[16] 
       (.C(userclk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[16]_i_1_n_7 ),
        .Q(wait_bypass_count_reg[16]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \wait_bypass_count_reg[16]_i_1 
       (.CI(\wait_bypass_count_reg[12]_i_1_n_0 ),
        .CO(\NLW_wait_bypass_count_reg[16]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_wait_bypass_count_reg[16]_i_1_O_UNCONNECTED [3:1],\wait_bypass_count_reg[16]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,wait_bypass_count_reg[16]}));
  FDRE \wait_bypass_count_reg[1] 
       (.C(userclk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3_n_6 ),
        .Q(wait_bypass_count_reg[1]),
        .R(clear));
  FDRE \wait_bypass_count_reg[2] 
       (.C(userclk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3_n_5 ),
        .Q(wait_bypass_count_reg[2]),
        .R(clear));
  FDRE \wait_bypass_count_reg[3] 
       (.C(userclk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3_n_4 ),
        .Q(wait_bypass_count_reg[3]),
        .R(clear));
  FDRE \wait_bypass_count_reg[4] 
       (.C(userclk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1_n_7 ),
        .Q(wait_bypass_count_reg[4]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \wait_bypass_count_reg[4]_i_1 
       (.CI(\wait_bypass_count_reg[0]_i_3_n_0 ),
        .CO({\wait_bypass_count_reg[4]_i_1_n_0 ,\wait_bypass_count_reg[4]_i_1_n_1 ,\wait_bypass_count_reg[4]_i_1_n_2 ,\wait_bypass_count_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\wait_bypass_count_reg[4]_i_1_n_4 ,\wait_bypass_count_reg[4]_i_1_n_5 ,\wait_bypass_count_reg[4]_i_1_n_6 ,\wait_bypass_count_reg[4]_i_1_n_7 }),
        .S(wait_bypass_count_reg[7:4]));
  FDRE \wait_bypass_count_reg[5] 
       (.C(userclk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1_n_6 ),
        .Q(wait_bypass_count_reg[5]),
        .R(clear));
  FDRE \wait_bypass_count_reg[6] 
       (.C(userclk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1_n_5 ),
        .Q(wait_bypass_count_reg[6]),
        .R(clear));
  FDRE \wait_bypass_count_reg[7] 
       (.C(userclk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1_n_4 ),
        .Q(wait_bypass_count_reg[7]),
        .R(clear));
  FDRE \wait_bypass_count_reg[8] 
       (.C(userclk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1_n_7 ),
        .Q(wait_bypass_count_reg[8]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \wait_bypass_count_reg[8]_i_1 
       (.CI(\wait_bypass_count_reg[4]_i_1_n_0 ),
        .CO({\wait_bypass_count_reg[8]_i_1_n_0 ,\wait_bypass_count_reg[8]_i_1_n_1 ,\wait_bypass_count_reg[8]_i_1_n_2 ,\wait_bypass_count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\wait_bypass_count_reg[8]_i_1_n_4 ,\wait_bypass_count_reg[8]_i_1_n_5 ,\wait_bypass_count_reg[8]_i_1_n_6 ,\wait_bypass_count_reg[8]_i_1_n_7 }),
        .S(wait_bypass_count_reg[11:8]));
  FDRE \wait_bypass_count_reg[9] 
       (.C(userclk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1_n_6 ),
        .Q(wait_bypass_count_reg[9]),
        .R(clear));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[0]_i_1 
       (.I0(wait_time_cnt_reg[0]),
        .O(wait_time_cnt0));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \wait_time_cnt[1]_i_1 
       (.I0(wait_time_cnt_reg[0]),
        .I1(wait_time_cnt_reg[1]),
        .O(\wait_time_cnt[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE1)) 
    \wait_time_cnt[2]_i_1 
       (.I0(wait_time_cnt_reg[1]),
        .I1(wait_time_cnt_reg[0]),
        .I2(wait_time_cnt_reg[2]),
        .O(\wait_time_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT4 #(
    .INIT(16'hFE01)) 
    \wait_time_cnt[3]_i_1 
       (.I0(wait_time_cnt_reg[2]),
        .I1(wait_time_cnt_reg[0]),
        .I2(wait_time_cnt_reg[1]),
        .I3(wait_time_cnt_reg[3]),
        .O(\wait_time_cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    \wait_time_cnt[4]_i_1 
       (.I0(wait_time_cnt_reg[3]),
        .I1(wait_time_cnt_reg[1]),
        .I2(wait_time_cnt_reg[0]),
        .I3(wait_time_cnt_reg[2]),
        .I4(wait_time_cnt_reg[4]),
        .O(\wait_time_cnt[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000001)) 
    \wait_time_cnt[5]_i_1 
       (.I0(wait_time_cnt_reg[4]),
        .I1(wait_time_cnt_reg[2]),
        .I2(wait_time_cnt_reg[0]),
        .I3(wait_time_cnt_reg[1]),
        .I4(wait_time_cnt_reg[3]),
        .I5(wait_time_cnt_reg[5]),
        .O(\wait_time_cnt[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0700)) 
    \wait_time_cnt[6]_i_1__0 
       (.I0(tx_state[1]),
        .I1(tx_state[2]),
        .I2(tx_state[3]),
        .I3(tx_state[0]),
        .O(wait_time_cnt0_0));
  LUT2 #(
    .INIT(4'hE)) 
    \wait_time_cnt[6]_i_2 
       (.I0(\wait_time_cnt[6]_i_4_n_0 ),
        .I1(wait_time_cnt_reg[6]),
        .O(sel));
  LUT2 #(
    .INIT(4'h9)) 
    \wait_time_cnt[6]_i_3 
       (.I0(\wait_time_cnt[6]_i_4_n_0 ),
        .I1(wait_time_cnt_reg[6]),
        .O(\wait_time_cnt[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \wait_time_cnt[6]_i_4 
       (.I0(wait_time_cnt_reg[4]),
        .I1(wait_time_cnt_reg[2]),
        .I2(wait_time_cnt_reg[0]),
        .I3(wait_time_cnt_reg[1]),
        .I4(wait_time_cnt_reg[3]),
        .I5(wait_time_cnt_reg[5]),
        .O(\wait_time_cnt[6]_i_4_n_0 ));
  FDRE \wait_time_cnt_reg[0] 
       (.C(independent_clock_bufg),
        .CE(sel),
        .D(wait_time_cnt0),
        .Q(wait_time_cnt_reg[0]),
        .R(wait_time_cnt0_0));
  FDRE \wait_time_cnt_reg[1] 
       (.C(independent_clock_bufg),
        .CE(sel),
        .D(\wait_time_cnt[1]_i_1_n_0 ),
        .Q(wait_time_cnt_reg[1]),
        .R(wait_time_cnt0_0));
  FDSE \wait_time_cnt_reg[2] 
       (.C(independent_clock_bufg),
        .CE(sel),
        .D(\wait_time_cnt[2]_i_1_n_0 ),
        .Q(wait_time_cnt_reg[2]),
        .S(wait_time_cnt0_0));
  FDRE \wait_time_cnt_reg[3] 
       (.C(independent_clock_bufg),
        .CE(sel),
        .D(\wait_time_cnt[3]_i_1_n_0 ),
        .Q(wait_time_cnt_reg[3]),
        .R(wait_time_cnt0_0));
  FDRE \wait_time_cnt_reg[4] 
       (.C(independent_clock_bufg),
        .CE(sel),
        .D(\wait_time_cnt[4]_i_1_n_0 ),
        .Q(wait_time_cnt_reg[4]),
        .R(wait_time_cnt0_0));
  FDSE \wait_time_cnt_reg[5] 
       (.C(independent_clock_bufg),
        .CE(sel),
        .D(\wait_time_cnt[5]_i_1_n_0 ),
        .Q(wait_time_cnt_reg[5]),
        .S(wait_time_cnt0_0));
  FDSE \wait_time_cnt_reg[6] 
       (.C(independent_clock_bufg),
        .CE(sel),
        .D(\wait_time_cnt[6]_i_3_n_0 ),
        .Q(wait_time_cnt_reg[6]),
        .S(wait_time_cnt0_0));
endmodule

(* EXAMPLE_SIMULATION = "0" *) (* downgradeipidentifiedwarnings = "yes" *) 
module gig_ethernet_pcs_pma_1_block
   (gtrefclk,
    gtrefclk_bufg,
    txp,
    txn,
    rxp,
    rxn,
    txoutclk,
    rxoutclk,
    resetdone,
    cplllock,
    mmcm_reset,
    mmcm_locked,
    userclk,
    userclk2,
    rxuserclk,
    rxuserclk2,
    independent_clock_bufg,
    pma_reset,
    sgmii_clk_r,
    sgmii_clk_f,
    sgmii_clk_en,
    gmii_txd,
    gmii_tx_en,
    gmii_tx_er,
    gmii_rxd,
    gmii_rx_dv,
    gmii_rx_er,
    gmii_isolate,
    configuration_vector,
    an_interrupt,
    an_adv_config_vector,
    an_restart_config,
    speed_is_10_100,
    speed_is_100,
    status_vector,
    reset,
    signal_detect,
    gt0_qplloutclk_in,
    gt0_qplloutrefclk_in);
  input gtrefclk;
  input gtrefclk_bufg;
  output txp;
  output txn;
  input rxp;
  input rxn;
  output txoutclk;
  output rxoutclk;
  output resetdone;
  output cplllock;
  output mmcm_reset;
  input mmcm_locked;
  input userclk;
  input userclk2;
  input rxuserclk;
  input rxuserclk2;
  input independent_clock_bufg;
  input pma_reset;
  output sgmii_clk_r;
  output sgmii_clk_f;
  output sgmii_clk_en;
  input [7:0]gmii_txd;
  input gmii_tx_en;
  input gmii_tx_er;
  output [7:0]gmii_rxd;
  output gmii_rx_dv;
  output gmii_rx_er;
  output gmii_isolate;
  input [4:0]configuration_vector;
  output an_interrupt;
  input [15:0]an_adv_config_vector;
  input an_restart_config;
  input speed_is_10_100;
  input speed_is_100;
  output [15:0]status_vector;
  input reset;
  input signal_detect;
  input gt0_qplloutclk_in;
  input gt0_qplloutrefclk_in;

  wire \<const0> ;
  wire [15:0]an_adv_config_vector;
  wire an_interrupt;
  wire an_restart_config;
  wire [4:0]configuration_vector;
  wire cplllock;
  wire enablealign;
  wire gmii_isolate;
  wire gmii_rx_dv;
  wire gmii_rx_dv_int;
  wire gmii_rx_er;
  wire gmii_rx_er_int;
  wire [7:0]gmii_rxd;
  wire [7:0]gmii_rxd_int;
  wire gmii_tx_en;
  wire gmii_tx_en_int;
  wire gmii_tx_er;
  wire gmii_tx_er_int;
  wire [7:0]gmii_txd;
  wire [7:0]gmii_txd_int;
  wire gt0_qplloutclk_in;
  wire gt0_qplloutrefclk_in;
  wire gtrefclk;
  wire gtrefclk_bufg;
  wire independent_clock_bufg;
  wire mgt_rx_reset;
  wire mgt_tx_reset;
  wire mmcm_locked;
  wire mmcm_reset;
  wire pma_reset;
  wire powerdown;
  wire reset;
  wire resetdone;
  wire rx_reset_done_i;
  wire rxbuferr;
  wire rxchariscomma;
  wire rxcharisk;
  wire [2:0]rxclkcorcnt;
  wire [7:0]rxdata;
  wire rxdisperr;
  wire rxn;
  wire rxnotintable;
  wire rxoutclk;
  wire rxp;
  wire rxuserclk;
  wire rxuserclk2;
  wire sgmii_clk_en;
  wire sgmii_clk_f;
  wire sgmii_clk_r;
  wire signal_detect;
  wire speed_is_100;
  wire speed_is_10_100;
  wire [13:0]\^status_vector ;
  wire transceiver_inst_n_13;
  wire transceiver_inst_n_14;
  wire txbuferr;
  wire txchardispmode;
  wire txchardispval;
  wire txcharisk;
  wire [7:0]txdata;
  wire txn;
  wire txoutclk;
  wire txp;
  wire userclk;
  wire userclk2;
  wire NLW_gig_ethernet_pcs_pma_1_core_an_enable_UNCONNECTED;
  wire NLW_gig_ethernet_pcs_pma_1_core_drp_den_UNCONNECTED;
  wire NLW_gig_ethernet_pcs_pma_1_core_drp_dwe_UNCONNECTED;
  wire NLW_gig_ethernet_pcs_pma_1_core_drp_req_UNCONNECTED;
  wire NLW_gig_ethernet_pcs_pma_1_core_en_cdet_UNCONNECTED;
  wire NLW_gig_ethernet_pcs_pma_1_core_ewrap_UNCONNECTED;
  wire NLW_gig_ethernet_pcs_pma_1_core_loc_ref_UNCONNECTED;
  wire NLW_gig_ethernet_pcs_pma_1_core_mdio_out_UNCONNECTED;
  wire NLW_gig_ethernet_pcs_pma_1_core_mdio_tri_UNCONNECTED;
  wire NLW_gig_ethernet_pcs_pma_1_core_s_axi_arready_UNCONNECTED;
  wire NLW_gig_ethernet_pcs_pma_1_core_s_axi_awready_UNCONNECTED;
  wire NLW_gig_ethernet_pcs_pma_1_core_s_axi_bvalid_UNCONNECTED;
  wire NLW_gig_ethernet_pcs_pma_1_core_s_axi_rvalid_UNCONNECTED;
  wire NLW_gig_ethernet_pcs_pma_1_core_s_axi_wready_UNCONNECTED;
  wire [9:0]NLW_gig_ethernet_pcs_pma_1_core_drp_daddr_UNCONNECTED;
  wire [15:0]NLW_gig_ethernet_pcs_pma_1_core_drp_di_UNCONNECTED;
  wire [63:0]NLW_gig_ethernet_pcs_pma_1_core_rxphy_correction_timer_UNCONNECTED;
  wire [31:0]NLW_gig_ethernet_pcs_pma_1_core_rxphy_ns_field_UNCONNECTED;
  wire [47:0]NLW_gig_ethernet_pcs_pma_1_core_rxphy_s_field_UNCONNECTED;
  wire [1:0]NLW_gig_ethernet_pcs_pma_1_core_s_axi_bresp_UNCONNECTED;
  wire [31:0]NLW_gig_ethernet_pcs_pma_1_core_s_axi_rdata_UNCONNECTED;
  wire [1:0]NLW_gig_ethernet_pcs_pma_1_core_s_axi_rresp_UNCONNECTED;
  wire [1:0]NLW_gig_ethernet_pcs_pma_1_core_speed_selection_UNCONNECTED;
  wire [15:8]NLW_gig_ethernet_pcs_pma_1_core_status_vector_UNCONNECTED;
  wire [9:0]NLW_gig_ethernet_pcs_pma_1_core_tx_code_group_UNCONNECTED;

  assign status_vector[15] = \<const0> ;
  assign status_vector[14] = \<const0> ;
  assign status_vector[13:9] = \^status_vector [13:9];
  assign status_vector[8] = \<const0> ;
  assign status_vector[7:0] = \^status_vector [7:0];
  GND GND
       (.G(\<const0> ));
  (* B_SHIFTER_ADDR = "10'b0101001110" *) 
  (* C_1588 = "0" *) 
  (* C_2_5G = "FALSE" *) 
  (* C_COMPONENT_NAME = "gig_ethernet_pcs_pma_1" *) 
  (* C_DYNAMIC_SWITCHING = "FALSE" *) 
  (* C_ELABORATION_TRANSIENT_DIR = "BlankString" *) 
  (* C_FAMILY = "virtex7" *) 
  (* C_HAS_AN = "TRUE" *) 
  (* C_HAS_AXIL = "FALSE" *) 
  (* C_HAS_MDIO = "FALSE" *) 
  (* C_HAS_TEMAC = "TRUE" *) 
  (* C_IS_SGMII = "TRUE" *) 
  (* C_RX_GMII_CLK = "TXOUTCLK" *) 
  (* C_SGMII_FABRIC_BUFFER = "TRUE" *) 
  (* C_SGMII_PHY_MODE = "FALSE" *) 
  (* C_USE_LVDS = "FALSE" *) 
  (* C_USE_TBI = "FALSE" *) 
  (* C_USE_TRANSCEIVER = "TRUE" *) 
  (* GT_RX_BYTE_WIDTH = "1" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_v16_2_6 gig_ethernet_pcs_pma_1_core
       (.an_adv_config_val(1'b0),
        .an_adv_config_vector({1'b0,1'b0,1'b0,1'b0,an_adv_config_vector[11],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .an_enable(NLW_gig_ethernet_pcs_pma_1_core_an_enable_UNCONNECTED),
        .an_interrupt(an_interrupt),
        .an_restart_config(an_restart_config),
        .basex_or_sgmii(1'b0),
        .configuration_valid(1'b0),
        .configuration_vector(configuration_vector),
        .correction_timer({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dcm_locked(mmcm_locked),
        .drp_daddr(NLW_gig_ethernet_pcs_pma_1_core_drp_daddr_UNCONNECTED[9:0]),
        .drp_dclk(1'b0),
        .drp_den(NLW_gig_ethernet_pcs_pma_1_core_drp_den_UNCONNECTED),
        .drp_di(NLW_gig_ethernet_pcs_pma_1_core_drp_di_UNCONNECTED[15:0]),
        .drp_do({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .drp_drdy(1'b0),
        .drp_dwe(NLW_gig_ethernet_pcs_pma_1_core_drp_dwe_UNCONNECTED),
        .drp_gnt(1'b0),
        .drp_req(NLW_gig_ethernet_pcs_pma_1_core_drp_req_UNCONNECTED),
        .en_cdet(NLW_gig_ethernet_pcs_pma_1_core_en_cdet_UNCONNECTED),
        .enablealign(enablealign),
        .ewrap(NLW_gig_ethernet_pcs_pma_1_core_ewrap_UNCONNECTED),
        .gmii_isolate(gmii_isolate),
        .gmii_rx_dv(gmii_rx_dv_int),
        .gmii_rx_er(gmii_rx_er_int),
        .gmii_rxd(gmii_rxd_int),
        .gmii_tx_en(gmii_tx_en_int),
        .gmii_tx_er(gmii_tx_er_int),
        .gmii_txd(gmii_txd_int),
        .gtx_clk(1'b0),
        .link_timer_basex({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .link_timer_sgmii({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .link_timer_value({1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b0}),
        .loc_ref(NLW_gig_ethernet_pcs_pma_1_core_loc_ref_UNCONNECTED),
        .mdc(1'b0),
        .mdio_in(1'b0),
        .mdio_out(NLW_gig_ethernet_pcs_pma_1_core_mdio_out_UNCONNECTED),
        .mdio_tri(NLW_gig_ethernet_pcs_pma_1_core_mdio_tri_UNCONNECTED),
        .mgt_rx_reset(mgt_rx_reset),
        .mgt_tx_reset(mgt_tx_reset),
        .phyad({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .pma_rx_clk0(1'b0),
        .pma_rx_clk1(1'b0),
        .powerdown(powerdown),
        .reset(reset),
        .reset_done(resetdone),
        .rx_code_group0({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_code_group1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_gt_nominal_latency({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b0}),
        .rxbufstatus({rxbuferr,1'b0}),
        .rxchariscomma(rxchariscomma),
        .rxcharisk(rxcharisk),
        .rxclkcorcnt({rxclkcorcnt[2],1'b0,rxclkcorcnt[0]}),
        .rxdata(rxdata),
        .rxdisperr(rxdisperr),
        .rxnotintable(rxnotintable),
        .rxphy_correction_timer(NLW_gig_ethernet_pcs_pma_1_core_rxphy_correction_timer_UNCONNECTED[63:0]),
        .rxphy_ns_field(NLW_gig_ethernet_pcs_pma_1_core_rxphy_ns_field_UNCONNECTED[31:0]),
        .rxphy_s_field(NLW_gig_ethernet_pcs_pma_1_core_rxphy_s_field_UNCONNECTED[47:0]),
        .rxrecclk(1'b0),
        .rxrundisp(1'b0),
        .s_axi_aclk(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_gig_ethernet_pcs_pma_1_core_s_axi_arready_UNCONNECTED),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_gig_ethernet_pcs_pma_1_core_s_axi_awready_UNCONNECTED),
        .s_axi_awvalid(1'b0),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_gig_ethernet_pcs_pma_1_core_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_gig_ethernet_pcs_pma_1_core_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_gig_ethernet_pcs_pma_1_core_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_resetn(1'b0),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_gig_ethernet_pcs_pma_1_core_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_gig_ethernet_pcs_pma_1_core_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wready(NLW_gig_ethernet_pcs_pma_1_core_s_axi_wready_UNCONNECTED),
        .s_axi_wvalid(1'b0),
        .signal_detect(signal_detect),
        .speed_is_100(1'b0),
        .speed_is_10_100(1'b0),
        .speed_selection(NLW_gig_ethernet_pcs_pma_1_core_speed_selection_UNCONNECTED[1:0]),
        .status_vector({NLW_gig_ethernet_pcs_pma_1_core_status_vector_UNCONNECTED[15:14],\^status_vector }),
        .systemtimer_ns_field({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .systemtimer_s_field({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tx_code_group(NLW_gig_ethernet_pcs_pma_1_core_tx_code_group_UNCONNECTED[9:0]),
        .txbuferr(txbuferr),
        .txchardispmode(txchardispmode),
        .txchardispval(txchardispval),
        .txcharisk(txcharisk),
        .txdata(txdata),
        .userclk(1'b0),
        .userclk2(userclk2));
  gig_ethernet_pcs_pma_1_sgmii_adapt sgmii_logic
       (.D(gmii_rxd_int),
        .Q(gmii_txd_int),
        .SR(mgt_tx_reset),
        .gmii_rx_dv(gmii_rx_dv_int),
        .gmii_rx_dv_out_reg(gmii_rx_dv),
        .gmii_rx_er(gmii_rx_er_int),
        .gmii_rx_er_out_reg(gmii_rx_er),
        .gmii_rxd(gmii_rxd),
        .gmii_tx_en(gmii_tx_en_int),
        .gmii_tx_en_out_reg(gmii_tx_en),
        .gmii_tx_er(gmii_tx_er_int),
        .gmii_tx_er_out_reg(gmii_tx_er),
        .gmii_txd(gmii_txd),
        .sgmii_clk_en_reg(sgmii_clk_en),
        .sgmii_clk_f(sgmii_clk_f),
        .sgmii_clk_r(sgmii_clk_r),
        .speed_is_100(speed_is_100),
        .speed_is_10_100(speed_is_10_100),
        .userclk2(userclk2));
  gig_ethernet_pcs_pma_1_sync_block__parameterized1 sync_block_rx_reset_done
       (.data_in(transceiver_inst_n_14),
        .data_out(rx_reset_done_i),
        .userclk2(userclk2));
  gig_ethernet_pcs_pma_1_sync_block__parameterized1_0 sync_block_tx_reset_done
       (.data_in(transceiver_inst_n_13),
        .resetdone(resetdone),
        .resetdone_0(rx_reset_done_i),
        .userclk2(userclk2));
  gig_ethernet_pcs_pma_1_transceiver transceiver_inst
       (.D(txchardispmode),
        .Q(rxdata),
        .SR(mgt_tx_reset),
        .cplllock(cplllock),
        .data_in(transceiver_inst_n_13),
        .enablealign(enablealign),
        .gt0_qplloutclk_in(gt0_qplloutclk_in),
        .gt0_qplloutrefclk_in(gt0_qplloutrefclk_in),
        .gtrefclk(gtrefclk),
        .gtrefclk_bufg(gtrefclk_bufg),
        .independent_clock_bufg(independent_clock_bufg),
        .mgt_rx_reset(mgt_rx_reset),
        .mmcm_locked(mmcm_locked),
        .mmcm_reset(mmcm_reset),
        .pma_reset(pma_reset),
        .powerdown(powerdown),
        .rx_fsm_reset_done_int_reg(transceiver_inst_n_14),
        .rxbufstatus(rxbuferr),
        .rxchariscomma(rxchariscomma),
        .rxcharisk(rxcharisk),
        .rxclkcorcnt({rxclkcorcnt[2],rxclkcorcnt[0]}),
        .rxdisperr(rxdisperr),
        .rxn(rxn),
        .rxnotintable(rxnotintable),
        .rxoutclk(rxoutclk),
        .rxp(rxp),
        .rxuserclk(rxuserclk),
        .rxuserclk2(rxuserclk2),
        .status_vector(\^status_vector [1]),
        .txbuferr(txbuferr),
        .txchardispval_reg_reg_0(txchardispval),
        .txcharisk_reg_reg_0(txcharisk),
        .\txdata_reg_reg[7]_0 (txdata),
        .txn(txn),
        .txoutclk(txoutclk),
        .txp(txp),
        .userclk(userclk),
        .userclk2(userclk2));
endmodule

module gig_ethernet_pcs_pma_1_clk_gen
   (sgmii_clk_r,
    sgmii_clk_en_reg_0,
    sgmii_clk_f,
    userclk2,
    reset_out,
    data_out,
    speed_is_10_100_fall_reg_0);
  output sgmii_clk_r;
  output sgmii_clk_en_reg_0;
  output sgmii_clk_f;
  input userclk2;
  input reset_out;
  input data_out;
  input speed_is_10_100_fall_reg_0;

  wire clk12_5;
  wire clk12_5_reg;
  wire clk1_25;
  wire clk1_25_reg;
  wire clk_div_stage1_n_3;
  wire clk_en;
  wire clk_en0;
  wire clk_en_12_5_fall;
  wire clk_en_12_5_fall0;
  wire clk_en_1_25_fall;
  wire clk_en_1_25_fall0;
  wire data_out;
  wire reset_fall;
  wire reset_out;
  wire sgmii_clk_en_i_1_n_0;
  wire sgmii_clk_en_reg_0;
  wire sgmii_clk_f;
  wire sgmii_clk_r;
  wire sgmii_clk_r0_out;
  wire speed_is_100_fall;
  wire speed_is_10_100_fall;
  wire speed_is_10_100_fall_reg_0;
  wire userclk2;

  FDRE clk12_5_reg_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(clk12_5),
        .Q(clk12_5_reg),
        .R(reset_out));
  FDRE clk1_25_reg_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(clk1_25),
        .Q(clk1_25_reg),
        .R(reset_out));
  gig_ethernet_pcs_pma_1_johnson_cntr clk_div_stage1
       (.clk12_5(clk12_5),
        .clk12_5_reg(clk12_5_reg),
        .clk1_25(clk1_25),
        .clk_en0(clk_en0),
        .clk_en_12_5_fall0(clk_en_12_5_fall0),
        .reset_fall(reset_fall),
        .reset_out(reset_out),
        .speed_is_100_fall(speed_is_100_fall),
        .speed_is_10_100_fall(speed_is_10_100_fall),
        .speed_is_10_100_fall_reg(clk_div_stage1_n_3),
        .userclk2(userclk2));
  gig_ethernet_pcs_pma_1_johnson_cntr_33 clk_div_stage2
       (.clk12_5(clk12_5),
        .clk1_25(clk1_25),
        .clk1_25_reg(clk1_25_reg),
        .clk_en(clk_en),
        .clk_en_1_25_fall0(clk_en_1_25_fall0),
        .data_out(data_out),
        .reset_out(reset_out),
        .sgmii_clk_r0_out(sgmii_clk_r0_out),
        .sgmii_clk_r_reg(speed_is_10_100_fall_reg_0),
        .userclk2(userclk2));
  FDRE clk_en_12_5_fall_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(clk_en_12_5_fall0),
        .Q(clk_en_12_5_fall),
        .R(reset_out));
  FDRE clk_en_12_5_rise_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(clk_en0),
        .Q(clk_en),
        .R(reset_out));
  FDRE clk_en_1_25_fall_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(clk_en_1_25_fall0),
        .Q(clk_en_1_25_fall),
        .R(reset_out));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    reset_fall_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(reset_out),
        .Q(reset_fall),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hE2FF)) 
    sgmii_clk_en_i_1
       (.I0(clk_en_1_25_fall),
        .I1(data_out),
        .I2(clk_en_12_5_fall),
        .I3(speed_is_10_100_fall_reg_0),
        .O(sgmii_clk_en_i_1_n_0));
  FDRE sgmii_clk_en_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(sgmii_clk_en_i_1_n_0),
        .Q(sgmii_clk_en_reg_0),
        .R(reset_out));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    sgmii_clk_f_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(clk_div_stage1_n_3),
        .Q(sgmii_clk_f),
        .R(1'b0));
  FDRE sgmii_clk_r_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(sgmii_clk_r0_out),
        .Q(sgmii_clk_r),
        .R(reset_out));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    speed_is_100_fall_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(data_out),
        .Q(speed_is_100_fall),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    speed_is_10_100_fall_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(speed_is_10_100_fall_reg_0),
        .Q(speed_is_10_100_fall),
        .R(1'b0));
endmodule

module gig_ethernet_pcs_pma_1_cpll_railing
   (cpll_pd0_i,
    cpllreset_in,
    gtrefclk_bufg,
    gt0_cpllreset_t);
  output cpll_pd0_i;
  output cpllreset_in;
  input gtrefclk_bufg;
  input gt0_cpllreset_t;

  wire cpll_pd0_i;
  wire cpll_reset_out;
  wire \cpllpd_wait_reg[31]_srl32_n_1 ;
  wire \cpllpd_wait_reg[63]_srl32_n_1 ;
  wire \cpllpd_wait_reg[94]_srl31_n_0 ;
  wire cpllreset_in;
  wire \cpllreset_wait_reg[126]_srl31_n_0 ;
  wire \cpllreset_wait_reg[31]_srl32_n_1 ;
  wire \cpllreset_wait_reg[63]_srl32_n_1 ;
  wire \cpllreset_wait_reg[95]_srl32_n_1 ;
  wire gt0_cpllreset_t;
  wire gtrefclk_bufg;
  wire \NLW_cpllpd_wait_reg[31]_srl32_Q_UNCONNECTED ;
  wire \NLW_cpllpd_wait_reg[63]_srl32_Q_UNCONNECTED ;
  wire \NLW_cpllpd_wait_reg[94]_srl31_Q31_UNCONNECTED ;
  wire \NLW_cpllreset_wait_reg[126]_srl31_Q31_UNCONNECTED ;
  wire \NLW_cpllreset_wait_reg[31]_srl32_Q_UNCONNECTED ;
  wire \NLW_cpllreset_wait_reg[63]_srl32_Q_UNCONNECTED ;
  wire \NLW_cpllreset_wait_reg[95]_srl32_Q_UNCONNECTED ;

  (* srl_bus_name = "U0/\transceiver_inst/gtwizard_inst/U0/gtwizard_i/cpll_railing0_i/cpllpd_wait_reg " *) 
  (* srl_name = "U0/\transceiver_inst/gtwizard_inst/U0/gtwizard_i/cpll_railing0_i/cpllpd_wait_reg[31]_srl32 " *) 
  SRLC32E #(
    .INIT(32'hFFFFFFFF)) 
    \cpllpd_wait_reg[31]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(gtrefclk_bufg),
        .D(1'b0),
        .Q(\NLW_cpllpd_wait_reg[31]_srl32_Q_UNCONNECTED ),
        .Q31(\cpllpd_wait_reg[31]_srl32_n_1 ));
  (* srl_bus_name = "U0/\transceiver_inst/gtwizard_inst/U0/gtwizard_i/cpll_railing0_i/cpllpd_wait_reg " *) 
  (* srl_name = "U0/\transceiver_inst/gtwizard_inst/U0/gtwizard_i/cpll_railing0_i/cpllpd_wait_reg[63]_srl32 " *) 
  SRLC32E #(
    .INIT(32'hFFFFFFFF)) 
    \cpllpd_wait_reg[63]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(gtrefclk_bufg),
        .D(\cpllpd_wait_reg[31]_srl32_n_1 ),
        .Q(\NLW_cpllpd_wait_reg[63]_srl32_Q_UNCONNECTED ),
        .Q31(\cpllpd_wait_reg[63]_srl32_n_1 ));
  (* srl_bus_name = "U0/\transceiver_inst/gtwizard_inst/U0/gtwizard_i/cpll_railing0_i/cpllpd_wait_reg " *) 
  (* srl_name = "U0/\transceiver_inst/gtwizard_inst/U0/gtwizard_i/cpll_railing0_i/cpllpd_wait_reg[94]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h7FFFFFFF)) 
    \cpllpd_wait_reg[94]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(gtrefclk_bufg),
        .D(\cpllpd_wait_reg[63]_srl32_n_1 ),
        .Q(\cpllpd_wait_reg[94]_srl31_n_0 ),
        .Q31(\NLW_cpllpd_wait_reg[94]_srl31_Q31_UNCONNECTED ));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b1)) 
    \cpllpd_wait_reg[95] 
       (.C(gtrefclk_bufg),
        .CE(1'b1),
        .D(\cpllpd_wait_reg[94]_srl31_n_0 ),
        .Q(cpll_pd0_i),
        .R(1'b0));
  (* srl_bus_name = "U0/\transceiver_inst/gtwizard_inst/U0/gtwizard_i/cpll_railing0_i/cpllreset_wait_reg " *) 
  (* srl_name = "U0/\transceiver_inst/gtwizard_inst/U0/gtwizard_i/cpll_railing0_i/cpllreset_wait_reg[126]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \cpllreset_wait_reg[126]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(gtrefclk_bufg),
        .D(\cpllreset_wait_reg[95]_srl32_n_1 ),
        .Q(\cpllreset_wait_reg[126]_srl31_n_0 ),
        .Q31(\NLW_cpllreset_wait_reg[126]_srl31_Q31_UNCONNECTED ));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \cpllreset_wait_reg[127] 
       (.C(gtrefclk_bufg),
        .CE(1'b1),
        .D(\cpllreset_wait_reg[126]_srl31_n_0 ),
        .Q(cpll_reset_out),
        .R(1'b0));
  (* srl_bus_name = "U0/\transceiver_inst/gtwizard_inst/U0/gtwizard_i/cpll_railing0_i/cpllreset_wait_reg " *) 
  (* srl_name = "U0/\transceiver_inst/gtwizard_inst/U0/gtwizard_i/cpll_railing0_i/cpllreset_wait_reg[31]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h000000FF)) 
    \cpllreset_wait_reg[31]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(gtrefclk_bufg),
        .D(1'b0),
        .Q(\NLW_cpllreset_wait_reg[31]_srl32_Q_UNCONNECTED ),
        .Q31(\cpllreset_wait_reg[31]_srl32_n_1 ));
  (* srl_bus_name = "U0/\transceiver_inst/gtwizard_inst/U0/gtwizard_i/cpll_railing0_i/cpllreset_wait_reg " *) 
  (* srl_name = "U0/\transceiver_inst/gtwizard_inst/U0/gtwizard_i/cpll_railing0_i/cpllreset_wait_reg[63]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \cpllreset_wait_reg[63]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(gtrefclk_bufg),
        .D(\cpllreset_wait_reg[31]_srl32_n_1 ),
        .Q(\NLW_cpllreset_wait_reg[63]_srl32_Q_UNCONNECTED ),
        .Q31(\cpllreset_wait_reg[63]_srl32_n_1 ));
  (* srl_bus_name = "U0/\transceiver_inst/gtwizard_inst/U0/gtwizard_i/cpll_railing0_i/cpllreset_wait_reg " *) 
  (* srl_name = "U0/\transceiver_inst/gtwizard_inst/U0/gtwizard_i/cpll_railing0_i/cpllreset_wait_reg[95]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \cpllreset_wait_reg[95]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(gtrefclk_bufg),
        .D(\cpllreset_wait_reg[63]_srl32_n_1 ),
        .Q(\NLW_cpllreset_wait_reg[95]_srl32_Q_UNCONNECTED ),
        .Q31(\cpllreset_wait_reg[95]_srl32_n_1 ));
  LUT2 #(
    .INIT(4'hE)) 
    gtxe2_i_i_1
       (.I0(cpll_reset_out),
        .I1(gt0_cpllreset_t),
        .O(cpllreset_in));
endmodule

module gig_ethernet_pcs_pma_1_johnson_cntr
   (clk12_5,
    clk_en_12_5_fall0,
    clk_en0,
    speed_is_10_100_fall_reg,
    userclk2,
    reset_out,
    clk12_5_reg,
    speed_is_10_100_fall,
    speed_is_100_fall,
    clk1_25,
    reset_fall);
  output clk12_5;
  output clk_en_12_5_fall0;
  output clk_en0;
  output speed_is_10_100_fall_reg;
  input userclk2;
  input reset_out;
  input clk12_5_reg;
  input speed_is_10_100_fall;
  input speed_is_100_fall;
  input clk1_25;
  input reset_fall;

  wire clk12_5;
  wire clk12_5_reg;
  wire clk1_25;
  wire clk_en0;
  wire clk_en_12_5_fall0;
  wire reg1;
  wire reg1_i_1_n_0;
  wire reg2;
  wire reg4;
  wire reg5;
  wire reg5_reg_n_0;
  wire reset_fall;
  wire reset_out;
  wire speed_is_100_fall;
  wire speed_is_10_100_fall;
  wire speed_is_10_100_fall_reg;
  wire userclk2;

  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h2)) 
    clk_en_12_5_fall_i_1
       (.I0(clk12_5_reg),
        .I1(clk12_5),
        .O(clk_en_12_5_fall0));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h2)) 
    clk_en_12_5_rise_i_1
       (.I0(clk12_5),
        .I1(clk12_5_reg),
        .O(clk_en0));
  LUT1 #(
    .INIT(2'h1)) 
    reg1_i_1
       (.I0(reg5_reg_n_0),
        .O(reg1_i_1_n_0));
  FDRE reg1_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(reg1_i_1_n_0),
        .Q(reg1),
        .R(reg5));
  FDRE reg2_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(reg1),
        .Q(reg2),
        .R(reg5));
  FDRE reg3_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(reg2),
        .Q(clk12_5),
        .R(reg5));
  FDRE reg4_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(clk12_5),
        .Q(reg4),
        .R(reg5));
  LUT3 #(
    .INIT(8'hF4)) 
    reg5_i_1
       (.I0(reg4),
        .I1(reg5_reg_n_0),
        .I2(reset_out),
        .O(reg5));
  FDRE reg5_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(reg4),
        .Q(reg5_reg_n_0),
        .R(reg5));
  LUT5 #(
    .INIT(32'h0000DFD5)) 
    sgmii_clk_f_i_1
       (.I0(speed_is_10_100_fall),
        .I1(clk12_5),
        .I2(speed_is_100_fall),
        .I3(clk1_25),
        .I4(reset_fall),
        .O(speed_is_10_100_fall_reg));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_johnson_cntr" *) 
module gig_ethernet_pcs_pma_1_johnson_cntr_33
   (clk1_25,
    sgmii_clk_r0_out,
    clk_en_1_25_fall0,
    clk_en,
    userclk2,
    reset_out,
    sgmii_clk_r_reg,
    data_out,
    clk12_5,
    clk1_25_reg);
  output clk1_25;
  output sgmii_clk_r0_out;
  output clk_en_1_25_fall0;
  input clk_en;
  input userclk2;
  input reset_out;
  input sgmii_clk_r_reg;
  input data_out;
  input clk12_5;
  input clk1_25_reg;

  wire clk12_5;
  wire clk1_25;
  wire clk1_25_reg;
  wire clk_en;
  wire clk_en_1_25_fall0;
  wire data_out;
  wire reg1_i_1__0_n_0;
  wire reg1_reg_n_0;
  wire reg2_reg_n_0;
  wire reg4;
  wire reg5;
  wire reg5_reg_n_0;
  wire reset_out;
  wire sgmii_clk_r0_out;
  wire sgmii_clk_r_reg;
  wire userclk2;

  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h2)) 
    clk_en_1_25_fall_i_1
       (.I0(clk1_25_reg),
        .I1(clk1_25),
        .O(clk_en_1_25_fall0));
  LUT1 #(
    .INIT(2'h1)) 
    reg1_i_1__0
       (.I0(reg5_reg_n_0),
        .O(reg1_i_1__0_n_0));
  FDRE reg1_reg
       (.C(userclk2),
        .CE(clk_en),
        .D(reg1_i_1__0_n_0),
        .Q(reg1_reg_n_0),
        .R(reg5));
  FDRE reg2_reg
       (.C(userclk2),
        .CE(clk_en),
        .D(reg1_reg_n_0),
        .Q(reg2_reg_n_0),
        .R(reg5));
  FDRE reg3_reg
       (.C(userclk2),
        .CE(clk_en),
        .D(reg2_reg_n_0),
        .Q(clk1_25),
        .R(reg5));
  FDRE reg4_reg
       (.C(userclk2),
        .CE(clk_en),
        .D(clk1_25),
        .Q(reg4),
        .R(reg5));
  LUT4 #(
    .INIT(16'hFF40)) 
    reg5_i_1__0
       (.I0(reg4),
        .I1(clk_en),
        .I2(reg5_reg_n_0),
        .I3(reset_out),
        .O(reg5));
  FDRE reg5_reg
       (.C(userclk2),
        .CE(clk_en),
        .D(reg4),
        .Q(reg5_reg_n_0),
        .R(reg5));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    sgmii_clk_r_i_1
       (.I0(sgmii_clk_r_reg),
        .I1(clk1_25),
        .I2(data_out),
        .I3(clk12_5),
        .O(sgmii_clk_r0_out));
endmodule

module gig_ethernet_pcs_pma_1_reset_sync
   (reset_out,
    rxuserclk2,
    enablealign);
  output reset_out;
  input rxuserclk2;
  input enablealign;

  wire enablealign;
  wire reset_out;
  wire reset_sync_reg1;
  wire reset_sync_reg2;
  wire reset_sync_reg3;
  wire reset_sync_reg4;
  wire reset_sync_reg5;
  wire rxuserclk2;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync1
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(1'b0),
        .PRE(enablealign),
        .Q(reset_sync_reg1));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync2
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(reset_sync_reg1),
        .PRE(enablealign),
        .Q(reset_sync_reg2));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync3
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(reset_sync_reg2),
        .PRE(enablealign),
        .Q(reset_sync_reg3));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync4
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(reset_sync_reg3),
        .PRE(enablealign),
        .Q(reset_sync_reg4));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync5
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(reset_sync_reg4),
        .PRE(enablealign),
        .Q(reset_sync_reg5));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync6
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(reset_sync_reg5),
        .PRE(1'b0),
        .Q(reset_out));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_reset_sync" *) 
module gig_ethernet_pcs_pma_1_reset_sync_1
   (SR,
    reset_out,
    reset_sync6_0,
    reset_sync6_1,
    start,
    initialize_ram_complete,
    initialize_ram_complete_pulse,
    rxuserclk2,
    mgt_rx_reset);
  output [0:0]SR;
  output reset_out;
  output [0:0]reset_sync6_0;
  output [0:0]reset_sync6_1;
  input start;
  input initialize_ram_complete;
  input initialize_ram_complete_pulse;
  input rxuserclk2;
  input mgt_rx_reset;

  wire [0:0]SR;
  wire initialize_ram_complete;
  wire initialize_ram_complete_pulse;
  wire mgt_rx_reset;
  wire reset_out;
  wire [0:0]reset_sync6_0;
  wire [0:0]reset_sync6_1;
  wire reset_sync_reg1;
  wire reset_sync_reg2;
  wire reset_sync_reg3;
  wire reset_sync_reg4;
  wire reset_sync_reg5;
  wire rxuserclk2;
  wire start;

  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT2 #(
    .INIT(4'hE)) 
    initialize_ram_complete_i_1
       (.I0(reset_out),
        .I1(start),
        .O(SR));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync1
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(1'b0),
        .PRE(mgt_rx_reset),
        .Q(reset_sync_reg1));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync2
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(reset_sync_reg1),
        .PRE(mgt_rx_reset),
        .Q(reset_sync_reg2));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync3
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(reset_sync_reg2),
        .PRE(mgt_rx_reset),
        .Q(reset_sync_reg3));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync4
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(reset_sync_reg3),
        .PRE(mgt_rx_reset),
        .Q(reset_sync_reg4));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync5
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(reset_sync_reg4),
        .PRE(mgt_rx_reset),
        .Q(reset_sync_reg5));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync6
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(reset_sync_reg5),
        .PRE(1'b0),
        .Q(reset_out));
  LUT2 #(
    .INIT(4'hE)) 
    \wr_addr[4]_i_1 
       (.I0(reset_out),
        .I1(initialize_ram_complete_pulse),
        .O(reset_sync6_1));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \wr_data_reg[28]_i_1 
       (.I0(reset_out),
        .I1(initialize_ram_complete),
        .O(reset_sync6_0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_reset_sync" *) 
module gig_ethernet_pcs_pma_1_reset_sync_2
   (reset_out,
    independent_clock_bufg,
    mgt_rx_reset);
  output reset_out;
  input independent_clock_bufg;
  input mgt_rx_reset;

  wire independent_clock_bufg;
  wire mgt_rx_reset;
  wire reset_out;
  wire reset_sync_reg1;
  wire reset_sync_reg2;
  wire reset_sync_reg3;
  wire reset_sync_reg4;
  wire reset_sync_reg5;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync1
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(1'b0),
        .PRE(mgt_rx_reset),
        .Q(reset_sync_reg1));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync2
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(reset_sync_reg1),
        .PRE(mgt_rx_reset),
        .Q(reset_sync_reg2));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync3
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(reset_sync_reg2),
        .PRE(mgt_rx_reset),
        .Q(reset_sync_reg3));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync4
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(reset_sync_reg3),
        .PRE(mgt_rx_reset),
        .Q(reset_sync_reg4));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync5
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(reset_sync_reg4),
        .PRE(mgt_rx_reset),
        .Q(reset_sync_reg5));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync6
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(reset_sync_reg5),
        .PRE(1'b0),
        .Q(reset_out));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_reset_sync" *) 
module gig_ethernet_pcs_pma_1_reset_sync_3
   (reset_out,
    userclk,
    SR);
  output reset_out;
  input userclk;
  input [0:0]SR;

  wire [0:0]SR;
  wire reset_out;
  wire reset_sync_reg1;
  wire reset_sync_reg2;
  wire reset_sync_reg3;
  wire reset_sync_reg4;
  wire reset_sync_reg5;
  wire userclk;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync1
       (.C(userclk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(SR),
        .Q(reset_sync_reg1));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync2
       (.C(userclk),
        .CE(1'b1),
        .D(reset_sync_reg1),
        .PRE(SR),
        .Q(reset_sync_reg2));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync3
       (.C(userclk),
        .CE(1'b1),
        .D(reset_sync_reg2),
        .PRE(SR),
        .Q(reset_sync_reg3));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync4
       (.C(userclk),
        .CE(1'b1),
        .D(reset_sync_reg3),
        .PRE(SR),
        .Q(reset_sync_reg4));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync5
       (.C(userclk),
        .CE(1'b1),
        .D(reset_sync_reg4),
        .PRE(SR),
        .Q(reset_sync_reg5));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync6
       (.C(userclk),
        .CE(1'b1),
        .D(reset_sync_reg5),
        .PRE(1'b0),
        .Q(reset_out));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_reset_sync" *) 
module gig_ethernet_pcs_pma_1_reset_sync_30
   (reset_out,
    userclk2,
    SR);
  output reset_out;
  input userclk2;
  input [0:0]SR;

  wire [0:0]SR;
  wire reset_out;
  wire reset_sync_reg1;
  wire reset_sync_reg2;
  wire reset_sync_reg3;
  wire reset_sync_reg4;
  wire reset_sync_reg5;
  wire userclk2;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync1
       (.C(userclk2),
        .CE(1'b1),
        .D(1'b0),
        .PRE(SR),
        .Q(reset_sync_reg1));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync2
       (.C(userclk2),
        .CE(1'b1),
        .D(reset_sync_reg1),
        .PRE(SR),
        .Q(reset_sync_reg2));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync3
       (.C(userclk2),
        .CE(1'b1),
        .D(reset_sync_reg2),
        .PRE(SR),
        .Q(reset_sync_reg3));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync4
       (.C(userclk2),
        .CE(1'b1),
        .D(reset_sync_reg3),
        .PRE(SR),
        .Q(reset_sync_reg4));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync5
       (.C(userclk2),
        .CE(1'b1),
        .D(reset_sync_reg4),
        .PRE(SR),
        .Q(reset_sync_reg5));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync6
       (.C(userclk2),
        .CE(1'b1),
        .D(reset_sync_reg5),
        .PRE(1'b0),
        .Q(reset_out));
endmodule

module gig_ethernet_pcs_pma_1_reset_wtd_timer
   (reset,
    independent_clock_bufg,
    data_out);
  output reset;
  input independent_clock_bufg;
  input data_out;

  wire \counter_stg1[5]_i_1_n_0 ;
  wire \counter_stg1[5]_i_3_n_0 ;
  wire [5:5]counter_stg1_reg;
  wire [4:0]counter_stg1_reg__0;
  wire \counter_stg2[0]_i_3_n_0 ;
  wire [11:0]counter_stg2_reg;
  wire \counter_stg2_reg[0]_i_2_n_0 ;
  wire \counter_stg2_reg[0]_i_2_n_1 ;
  wire \counter_stg2_reg[0]_i_2_n_2 ;
  wire \counter_stg2_reg[0]_i_2_n_3 ;
  wire \counter_stg2_reg[0]_i_2_n_4 ;
  wire \counter_stg2_reg[0]_i_2_n_5 ;
  wire \counter_stg2_reg[0]_i_2_n_6 ;
  wire \counter_stg2_reg[0]_i_2_n_7 ;
  wire \counter_stg2_reg[4]_i_1_n_0 ;
  wire \counter_stg2_reg[4]_i_1_n_1 ;
  wire \counter_stg2_reg[4]_i_1_n_2 ;
  wire \counter_stg2_reg[4]_i_1_n_3 ;
  wire \counter_stg2_reg[4]_i_1_n_4 ;
  wire \counter_stg2_reg[4]_i_1_n_5 ;
  wire \counter_stg2_reg[4]_i_1_n_6 ;
  wire \counter_stg2_reg[4]_i_1_n_7 ;
  wire \counter_stg2_reg[8]_i_1_n_1 ;
  wire \counter_stg2_reg[8]_i_1_n_2 ;
  wire \counter_stg2_reg[8]_i_1_n_3 ;
  wire \counter_stg2_reg[8]_i_1_n_4 ;
  wire \counter_stg2_reg[8]_i_1_n_5 ;
  wire \counter_stg2_reg[8]_i_1_n_6 ;
  wire \counter_stg2_reg[8]_i_1_n_7 ;
  wire counter_stg30;
  wire \counter_stg3[0]_i_3_n_0 ;
  wire \counter_stg3[0]_i_4_n_0 ;
  wire \counter_stg3[0]_i_5_n_0 ;
  wire [11:0]counter_stg3_reg;
  wire \counter_stg3_reg[0]_i_2_n_0 ;
  wire \counter_stg3_reg[0]_i_2_n_1 ;
  wire \counter_stg3_reg[0]_i_2_n_2 ;
  wire \counter_stg3_reg[0]_i_2_n_3 ;
  wire \counter_stg3_reg[0]_i_2_n_4 ;
  wire \counter_stg3_reg[0]_i_2_n_5 ;
  wire \counter_stg3_reg[0]_i_2_n_6 ;
  wire \counter_stg3_reg[0]_i_2_n_7 ;
  wire \counter_stg3_reg[4]_i_1_n_0 ;
  wire \counter_stg3_reg[4]_i_1_n_1 ;
  wire \counter_stg3_reg[4]_i_1_n_2 ;
  wire \counter_stg3_reg[4]_i_1_n_3 ;
  wire \counter_stg3_reg[4]_i_1_n_4 ;
  wire \counter_stg3_reg[4]_i_1_n_5 ;
  wire \counter_stg3_reg[4]_i_1_n_6 ;
  wire \counter_stg3_reg[4]_i_1_n_7 ;
  wire \counter_stg3_reg[8]_i_1_n_1 ;
  wire \counter_stg3_reg[8]_i_1_n_2 ;
  wire \counter_stg3_reg[8]_i_1_n_3 ;
  wire \counter_stg3_reg[8]_i_1_n_4 ;
  wire \counter_stg3_reg[8]_i_1_n_5 ;
  wire \counter_stg3_reg[8]_i_1_n_6 ;
  wire \counter_stg3_reg[8]_i_1_n_7 ;
  wire data_out;
  wire eqOp;
  wire independent_clock_bufg;
  wire [5:0]plusOp__0;
  wire reset;
  wire reset0;
  wire reset_i_2_n_0;
  wire reset_i_3_n_0;
  wire reset_i_4_n_0;
  wire reset_i_5_n_0;
  wire reset_i_6_n_0;
  wire [3:3]\NLW_counter_stg2_reg[8]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_counter_stg3_reg[8]_i_1_CO_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \counter_stg1[0]_i_1 
       (.I0(counter_stg1_reg__0[0]),
        .O(plusOp__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter_stg1[1]_i_1 
       (.I0(counter_stg1_reg__0[0]),
        .I1(counter_stg1_reg__0[1]),
        .O(plusOp__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \counter_stg1[2]_i_1 
       (.I0(counter_stg1_reg__0[1]),
        .I1(counter_stg1_reg__0[0]),
        .I2(counter_stg1_reg__0[2]),
        .O(plusOp__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \counter_stg1[3]_i_1 
       (.I0(counter_stg1_reg__0[2]),
        .I1(counter_stg1_reg__0[0]),
        .I2(counter_stg1_reg__0[1]),
        .I3(counter_stg1_reg__0[3]),
        .O(plusOp__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \counter_stg1[4]_i_1 
       (.I0(counter_stg1_reg__0[3]),
        .I1(counter_stg1_reg__0[1]),
        .I2(counter_stg1_reg__0[0]),
        .I3(counter_stg1_reg__0[2]),
        .I4(counter_stg1_reg__0[4]),
        .O(plusOp__0[4]));
  LUT5 #(
    .INIT(32'hFFFF2000)) 
    \counter_stg1[5]_i_1 
       (.I0(reset_i_2_n_0),
        .I1(counter_stg3_reg[0]),
        .I2(reset_i_3_n_0),
        .I3(\counter_stg1[5]_i_3_n_0 ),
        .I4(data_out),
        .O(\counter_stg1[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \counter_stg1[5]_i_2 
       (.I0(counter_stg1_reg__0[4]),
        .I1(counter_stg1_reg__0[2]),
        .I2(counter_stg1_reg__0[0]),
        .I3(counter_stg1_reg__0[1]),
        .I4(counter_stg1_reg__0[3]),
        .I5(counter_stg1_reg),
        .O(plusOp__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \counter_stg1[5]_i_3 
       (.I0(counter_stg1_reg__0[3]),
        .I1(counter_stg1_reg__0[1]),
        .I2(counter_stg1_reg__0[0]),
        .I3(counter_stg1_reg__0[2]),
        .I4(counter_stg1_reg__0[4]),
        .O(\counter_stg1[5]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg1_reg[0] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(plusOp__0[0]),
        .Q(counter_stg1_reg__0[0]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg1_reg[1] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(plusOp__0[1]),
        .Q(counter_stg1_reg__0[1]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg1_reg[2] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(plusOp__0[2]),
        .Q(counter_stg1_reg__0[2]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg1_reg[3] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(plusOp__0[3]),
        .Q(counter_stg1_reg__0[3]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg1_reg[4] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(plusOp__0[4]),
        .Q(counter_stg1_reg__0[4]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg1_reg[5] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(plusOp__0[5]),
        .Q(counter_stg1_reg),
        .R(\counter_stg1[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \counter_stg2[0]_i_1 
       (.I0(counter_stg1_reg__0[4]),
        .I1(counter_stg1_reg__0[2]),
        .I2(counter_stg1_reg__0[0]),
        .I3(counter_stg1_reg__0[1]),
        .I4(counter_stg1_reg__0[3]),
        .I5(counter_stg1_reg),
        .O(eqOp));
  LUT1 #(
    .INIT(2'h1)) 
    \counter_stg2[0]_i_3 
       (.I0(counter_stg2_reg[0]),
        .O(\counter_stg2[0]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg2_reg[0] 
       (.C(independent_clock_bufg),
        .CE(eqOp),
        .D(\counter_stg2_reg[0]_i_2_n_7 ),
        .Q(counter_stg2_reg[0]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_stg2_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\counter_stg2_reg[0]_i_2_n_0 ,\counter_stg2_reg[0]_i_2_n_1 ,\counter_stg2_reg[0]_i_2_n_2 ,\counter_stg2_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\counter_stg2_reg[0]_i_2_n_4 ,\counter_stg2_reg[0]_i_2_n_5 ,\counter_stg2_reg[0]_i_2_n_6 ,\counter_stg2_reg[0]_i_2_n_7 }),
        .S({counter_stg2_reg[3:1],\counter_stg2[0]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg2_reg[10] 
       (.C(independent_clock_bufg),
        .CE(eqOp),
        .D(\counter_stg2_reg[8]_i_1_n_5 ),
        .Q(counter_stg2_reg[10]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg2_reg[11] 
       (.C(independent_clock_bufg),
        .CE(eqOp),
        .D(\counter_stg2_reg[8]_i_1_n_4 ),
        .Q(counter_stg2_reg[11]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg2_reg[1] 
       (.C(independent_clock_bufg),
        .CE(eqOp),
        .D(\counter_stg2_reg[0]_i_2_n_6 ),
        .Q(counter_stg2_reg[1]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg2_reg[2] 
       (.C(independent_clock_bufg),
        .CE(eqOp),
        .D(\counter_stg2_reg[0]_i_2_n_5 ),
        .Q(counter_stg2_reg[2]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg2_reg[3] 
       (.C(independent_clock_bufg),
        .CE(eqOp),
        .D(\counter_stg2_reg[0]_i_2_n_4 ),
        .Q(counter_stg2_reg[3]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg2_reg[4] 
       (.C(independent_clock_bufg),
        .CE(eqOp),
        .D(\counter_stg2_reg[4]_i_1_n_7 ),
        .Q(counter_stg2_reg[4]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_stg2_reg[4]_i_1 
       (.CI(\counter_stg2_reg[0]_i_2_n_0 ),
        .CO({\counter_stg2_reg[4]_i_1_n_0 ,\counter_stg2_reg[4]_i_1_n_1 ,\counter_stg2_reg[4]_i_1_n_2 ,\counter_stg2_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_stg2_reg[4]_i_1_n_4 ,\counter_stg2_reg[4]_i_1_n_5 ,\counter_stg2_reg[4]_i_1_n_6 ,\counter_stg2_reg[4]_i_1_n_7 }),
        .S(counter_stg2_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg2_reg[5] 
       (.C(independent_clock_bufg),
        .CE(eqOp),
        .D(\counter_stg2_reg[4]_i_1_n_6 ),
        .Q(counter_stg2_reg[5]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg2_reg[6] 
       (.C(independent_clock_bufg),
        .CE(eqOp),
        .D(\counter_stg2_reg[4]_i_1_n_5 ),
        .Q(counter_stg2_reg[6]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg2_reg[7] 
       (.C(independent_clock_bufg),
        .CE(eqOp),
        .D(\counter_stg2_reg[4]_i_1_n_4 ),
        .Q(counter_stg2_reg[7]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg2_reg[8] 
       (.C(independent_clock_bufg),
        .CE(eqOp),
        .D(\counter_stg2_reg[8]_i_1_n_7 ),
        .Q(counter_stg2_reg[8]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_stg2_reg[8]_i_1 
       (.CI(\counter_stg2_reg[4]_i_1_n_0 ),
        .CO({\NLW_counter_stg2_reg[8]_i_1_CO_UNCONNECTED [3],\counter_stg2_reg[8]_i_1_n_1 ,\counter_stg2_reg[8]_i_1_n_2 ,\counter_stg2_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_stg2_reg[8]_i_1_n_4 ,\counter_stg2_reg[8]_i_1_n_5 ,\counter_stg2_reg[8]_i_1_n_6 ,\counter_stg2_reg[8]_i_1_n_7 }),
        .S(counter_stg2_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg2_reg[9] 
       (.C(independent_clock_bufg),
        .CE(eqOp),
        .D(\counter_stg2_reg[8]_i_1_n_6 ),
        .Q(counter_stg2_reg[9]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \counter_stg3[0]_i_1 
       (.I0(\counter_stg3[0]_i_3_n_0 ),
        .I1(\counter_stg3[0]_i_4_n_0 ),
        .I2(counter_stg2_reg[0]),
        .I3(\counter_stg1[5]_i_3_n_0 ),
        .O(counter_stg30));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \counter_stg3[0]_i_3 
       (.I0(counter_stg2_reg[3]),
        .I1(counter_stg2_reg[4]),
        .I2(counter_stg2_reg[1]),
        .I3(counter_stg2_reg[2]),
        .I4(counter_stg2_reg[6]),
        .I5(counter_stg2_reg[5]),
        .O(\counter_stg3[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \counter_stg3[0]_i_4 
       (.I0(counter_stg2_reg[9]),
        .I1(counter_stg2_reg[10]),
        .I2(counter_stg2_reg[7]),
        .I3(counter_stg2_reg[8]),
        .I4(counter_stg1_reg),
        .I5(counter_stg2_reg[11]),
        .O(\counter_stg3[0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter_stg3[0]_i_5 
       (.I0(counter_stg3_reg[0]),
        .O(\counter_stg3[0]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg3_reg[0] 
       (.C(independent_clock_bufg),
        .CE(counter_stg30),
        .D(\counter_stg3_reg[0]_i_2_n_7 ),
        .Q(counter_stg3_reg[0]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_stg3_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\counter_stg3_reg[0]_i_2_n_0 ,\counter_stg3_reg[0]_i_2_n_1 ,\counter_stg3_reg[0]_i_2_n_2 ,\counter_stg3_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\counter_stg3_reg[0]_i_2_n_4 ,\counter_stg3_reg[0]_i_2_n_5 ,\counter_stg3_reg[0]_i_2_n_6 ,\counter_stg3_reg[0]_i_2_n_7 }),
        .S({counter_stg3_reg[3:1],\counter_stg3[0]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg3_reg[10] 
       (.C(independent_clock_bufg),
        .CE(counter_stg30),
        .D(\counter_stg3_reg[8]_i_1_n_5 ),
        .Q(counter_stg3_reg[10]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg3_reg[11] 
       (.C(independent_clock_bufg),
        .CE(counter_stg30),
        .D(\counter_stg3_reg[8]_i_1_n_4 ),
        .Q(counter_stg3_reg[11]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg3_reg[1] 
       (.C(independent_clock_bufg),
        .CE(counter_stg30),
        .D(\counter_stg3_reg[0]_i_2_n_6 ),
        .Q(counter_stg3_reg[1]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg3_reg[2] 
       (.C(independent_clock_bufg),
        .CE(counter_stg30),
        .D(\counter_stg3_reg[0]_i_2_n_5 ),
        .Q(counter_stg3_reg[2]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg3_reg[3] 
       (.C(independent_clock_bufg),
        .CE(counter_stg30),
        .D(\counter_stg3_reg[0]_i_2_n_4 ),
        .Q(counter_stg3_reg[3]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg3_reg[4] 
       (.C(independent_clock_bufg),
        .CE(counter_stg30),
        .D(\counter_stg3_reg[4]_i_1_n_7 ),
        .Q(counter_stg3_reg[4]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_stg3_reg[4]_i_1 
       (.CI(\counter_stg3_reg[0]_i_2_n_0 ),
        .CO({\counter_stg3_reg[4]_i_1_n_0 ,\counter_stg3_reg[4]_i_1_n_1 ,\counter_stg3_reg[4]_i_1_n_2 ,\counter_stg3_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_stg3_reg[4]_i_1_n_4 ,\counter_stg3_reg[4]_i_1_n_5 ,\counter_stg3_reg[4]_i_1_n_6 ,\counter_stg3_reg[4]_i_1_n_7 }),
        .S(counter_stg3_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg3_reg[5] 
       (.C(independent_clock_bufg),
        .CE(counter_stg30),
        .D(\counter_stg3_reg[4]_i_1_n_6 ),
        .Q(counter_stg3_reg[5]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg3_reg[6] 
       (.C(independent_clock_bufg),
        .CE(counter_stg30),
        .D(\counter_stg3_reg[4]_i_1_n_5 ),
        .Q(counter_stg3_reg[6]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg3_reg[7] 
       (.C(independent_clock_bufg),
        .CE(counter_stg30),
        .D(\counter_stg3_reg[4]_i_1_n_4 ),
        .Q(counter_stg3_reg[7]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg3_reg[8] 
       (.C(independent_clock_bufg),
        .CE(counter_stg30),
        .D(\counter_stg3_reg[8]_i_1_n_7 ),
        .Q(counter_stg3_reg[8]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_stg3_reg[8]_i_1 
       (.CI(\counter_stg3_reg[4]_i_1_n_0 ),
        .CO({\NLW_counter_stg3_reg[8]_i_1_CO_UNCONNECTED [3],\counter_stg3_reg[8]_i_1_n_1 ,\counter_stg3_reg[8]_i_1_n_2 ,\counter_stg3_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_stg3_reg[8]_i_1_n_4 ,\counter_stg3_reg[8]_i_1_n_5 ,\counter_stg3_reg[8]_i_1_n_6 ,\counter_stg3_reg[8]_i_1_n_7 }),
        .S(counter_stg3_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg3_reg[9] 
       (.C(independent_clock_bufg),
        .CE(counter_stg30),
        .D(\counter_stg3_reg[8]_i_1_n_6 ),
        .Q(counter_stg3_reg[9]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    reset_i_1
       (.I0(reset_i_2_n_0),
        .I1(counter_stg3_reg[0]),
        .I2(reset_i_3_n_0),
        .O(reset0));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    reset_i_2
       (.I0(counter_stg3_reg[9]),
        .I1(counter_stg3_reg[10]),
        .I2(counter_stg3_reg[7]),
        .I3(counter_stg3_reg[8]),
        .I4(counter_stg2_reg[0]),
        .I5(counter_stg3_reg[11]),
        .O(reset_i_2_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    reset_i_3
       (.I0(reset_i_4_n_0),
        .I1(reset_i_5_n_0),
        .I2(reset_i_6_n_0),
        .O(reset_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    reset_i_4
       (.I0(counter_stg2_reg[3]),
        .I1(counter_stg2_reg[4]),
        .I2(counter_stg2_reg[1]),
        .I3(counter_stg2_reg[2]),
        .I4(counter_stg2_reg[6]),
        .I5(counter_stg2_reg[5]),
        .O(reset_i_4_n_0));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    reset_i_5
       (.I0(counter_stg2_reg[10]),
        .I1(counter_stg2_reg[9]),
        .I2(counter_stg2_reg[8]),
        .I3(counter_stg2_reg[7]),
        .I4(counter_stg1_reg),
        .I5(counter_stg2_reg[11]),
        .O(reset_i_5_n_0));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    reset_i_6
       (.I0(counter_stg3_reg[4]),
        .I1(counter_stg3_reg[3]),
        .I2(counter_stg3_reg[1]),
        .I3(counter_stg3_reg[2]),
        .I4(counter_stg3_reg[6]),
        .I5(counter_stg3_reg[5]),
        .O(reset_i_6_n_0));
  FDRE reset_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(reset0),
        .Q(reset),
        .R(1'b0));
endmodule

module gig_ethernet_pcs_pma_1_rx_elastic_buffer
   (start,
    initialize_ram_complete,
    initialize_ram_complete_pulse,
    rxchariscomma,
    rxcharisk,
    rxdisperr,
    rxnotintable,
    rxclkcorcnt,
    rxbufstatus,
    Q,
    userclk2,
    rxuserclk2,
    reset_out,
    SR,
    \wr_addr_plus1_reg[0]_0 ,
    \wr_data_reg_reg[0]_0 ,
    D,
    mgt_rx_reset);
  output start;
  output initialize_ram_complete;
  output initialize_ram_complete_pulse;
  output [0:0]rxchariscomma;
  output [0:0]rxcharisk;
  output [0:0]rxdisperr;
  output [0:0]rxnotintable;
  output [1:0]rxclkcorcnt;
  output [0:0]rxbufstatus;
  output [7:0]Q;
  input userclk2;
  input rxuserclk2;
  input reset_out;
  input [0:0]SR;
  input [0:0]\wr_addr_plus1_reg[0]_0 ;
  input [0:0]\wr_data_reg_reg[0]_0 ;
  input [23:0]D;
  input mgt_rx_reset;

  wire [23:0]D;
  wire [7:0]Q;
  wire [0:0]SR;
  wire [4:1]bin_to_gray;
  wire d16p2_wr_reg;
  wire d16p2_wr_reg_i_2_n_0;
  wire d21p5_wr_reg;
  wire d21p5_wr_reg2;
  wire d21p5_wr_reg_i_2_n_0;
  wire d2p2_wr_reg;
  wire d2p2_wr_reg2;
  wire d2p2_wr_reg_i_2_n_0;
  wire data_in;
  wire data_out;
  wire [28:0]dpo;
  wire even;
  wire even_i_1_n_0;
  wire [4:0]gray_to_bin;
  wire initialize_counter0;
  wire [4:0]initialize_counter_reg;
  wire initialize_ram;
  wire initialize_ram_complete;
  wire initialize_ram_complete_i_2_n_0;
  wire initialize_ram_complete_pulse;
  wire initialize_ram_complete_pulse0;
  wire initialize_ram_complete_reg__0;
  wire initialize_ram_complete_sync;
  wire initialize_ram_complete_sync_reg1;
  wire initialize_ram_complete_sync_ris_edg;
  wire initialize_ram_complete_sync_ris_edg0;
  wire initialize_ram_i_1_n_0;
  wire insert_idle;
  wire insert_idle_i_1_n_0;
  wire insert_idle_reg__0;
  wire k28p5_wr_reg;
  wire k28p5_wr_reg2;
  wire k28p5_wr_reg_i_2_n_0;
  wire mgt_rx_reset;
  wire p_10_in;
  wire p_13_in;
  wire p_14_in;
  wire p_17_in;
  wire p_18_in;
  wire p_1_in;
  wire p_1_in15_in;
  wire p_1_in30_in;
  wire p_1_in4_in;
  wire p_25_in;
  wire p_2_in;
  wire p_2_in18_in;
  wire p_2_in33_in;
  wire p_2_in6_in;
  wire p_3_in;
  wire p_3_in21_in;
  wire p_3_in36_in;
  wire p_3_in8_in;
  wire p_4_in;
  wire p_4_in10_in;
  wire p_4_in_0;
  wire [4:0]plusOp;
  wire [5:0]plusOp__1;
  wire [4:0]plusOp__2;
  wire [5:0]rd_addr;
  wire [5:0]rd_addr_gray;
  wire \rd_addr_gray[0]_i_1_n_0 ;
  wire \rd_addr_gray[1]_i_1_n_0 ;
  wire \rd_addr_gray[2]_i_1_n_0 ;
  wire \rd_addr_gray[3]_i_1_n_0 ;
  wire \rd_addr_gray[4]_i_1_n_0 ;
  wire [5:0]rd_addr_plus1;
  wire \rd_addr_plus2_reg_n_0_[0] ;
  wire \rd_addr_plus2_reg_n_0_[5] ;
  wire [27:0]rd_data;
  wire [28:0]rd_data_reg;
  wire \rd_data_reg_n_0_[28] ;
  wire rd_enable;
  wire rd_enable_i_10_n_0;
  wire rd_enable_i_11_n_0;
  wire rd_enable_i_12_n_0;
  wire rd_enable_i_1_n_0;
  wire rd_enable_i_2_n_0;
  wire rd_enable_i_4_n_0;
  wire rd_enable_i_5_n_0;
  wire rd_enable_i_6_n_0;
  wire rd_enable_i_7_n_0;
  wire rd_enable_i_8_n_0;
  wire rd_enable_i_9_n_0;
  wire [5:0]rd_occupancy;
  wire [5:0]rd_occupancy01_out;
  wire rd_occupancy0_carry__0_n_3;
  wire rd_occupancy0_carry_n_0;
  wire rd_occupancy0_carry_n_1;
  wire rd_occupancy0_carry_n_2;
  wire rd_occupancy0_carry_n_3;
  wire \reclock_rd_addrgray[0].sync_rd_addrgray_n_0 ;
  wire \reclock_rd_addrgray[1].sync_rd_addrgray_n_0 ;
  wire \reclock_rd_addrgray[2].sync_rd_addrgray_n_0 ;
  wire \reclock_rd_addrgray[3].sync_rd_addrgray_n_0 ;
  wire \reclock_rd_addrgray[4].sync_rd_addrgray_n_0 ;
  wire \reclock_rd_addrgray[4].sync_rd_addrgray_n_1 ;
  wire \reclock_rd_addrgray[5].sync_rd_addrgray_n_0 ;
  wire \reclock_rd_addrgray[5].sync_rd_addrgray_n_1 ;
  wire \reclock_wr_addrgray[0].sync_wr_addrgray_n_0 ;
  wire \reclock_wr_addrgray[1].sync_wr_addrgray_n_0 ;
  wire \reclock_wr_addrgray[2].sync_wr_addrgray_n_0 ;
  wire \reclock_wr_addrgray[3].sync_wr_addrgray_n_0 ;
  wire \reclock_wr_addrgray[4].sync_wr_addrgray_n_0 ;
  wire \reclock_wr_addrgray[4].sync_wr_addrgray_n_1 ;
  wire \reclock_wr_addrgray[5].sync_wr_addrgray_n_0 ;
  wire \reclock_wr_addrgray[5].sync_wr_addrgray_n_1 ;
  wire remove_idle;
  wire remove_idle_i_1_n_0;
  wire remove_idle_i_2_n_0;
  wire remove_idle_i_3_n_0;
  wire remove_idle_i_4_n_0;
  wire remove_idle_i_5_n_0;
  wire remove_idle_reg1;
  wire remove_idle_reg2;
  wire reset_modified;
  wire reset_modified_i_1_n_0;
  wire reset_out;
  wire rxbuferr0;
  wire rxbuferr_i_1_n_0;
  wire [0:0]rxbufstatus;
  wire [0:0]rxchariscomma;
  wire rxchariscomma_usr_i_1_n_0;
  wire [0:0]rxcharisk;
  wire rxcharisk_usr_i_1_n_0;
  wire [1:0]rxclkcorcnt;
  wire \rxclkcorcnt[0]_i_1_n_0 ;
  wire \rxclkcorcnt[2]_i_1_n_0 ;
  wire \rxdata_usr[0]_i_1_n_0 ;
  wire \rxdata_usr[1]_i_1_n_0 ;
  wire \rxdata_usr[2]_i_1_n_0 ;
  wire \rxdata_usr[3]_i_1_n_0 ;
  wire \rxdata_usr[4]_i_1_n_0 ;
  wire \rxdata_usr[5]_i_1_n_0 ;
  wire \rxdata_usr[6]_i_1_n_0 ;
  wire \rxdata_usr[7]_i_1_n_0 ;
  wire [0:0]rxdisperr;
  wire rxdisperr_usr_i_1_n_0;
  wire [0:0]rxnotintable;
  wire rxnotintable_usr_i_1_n_0;
  wire rxuserclk2;
  wire start;
  wire userclk2;
  wire [5:0]wr_addr;
  wire \wr_addr[5]_i_1_n_0 ;
  wire \wr_addr_gray_reg_n_0_[0] ;
  wire \wr_addr_gray_reg_n_0_[1] ;
  wire \wr_addr_gray_reg_n_0_[2] ;
  wire \wr_addr_gray_reg_n_0_[3] ;
  wire \wr_addr_gray_reg_n_0_[4] ;
  wire [5:0]wr_addr_plus1;
  wire \wr_addr_plus1[5]_i_1_n_0 ;
  wire [0:0]\wr_addr_plus1_reg[0]_0 ;
  wire \wr_addr_plus2[5]_i_1_n_0 ;
  wire \wr_addr_plus2[5]_i_2_n_0 ;
  wire \wr_addr_plus2_reg_n_0_[0] ;
  wire \wr_addr_plus2_reg_n_0_[5] ;
  wire [28:0]wr_data;
  wire [28:0]wr_data_reg;
  wire [0:0]\wr_data_reg_reg[0]_0 ;
  wire wr_enable;
  wire wr_enable_i_1_n_0;
  wire wr_enable_i_2_n_0;
  wire wr_enable_i_3_n_0;
  wire wr_enable_i_4_n_0;
  wire wr_enable_i_5_n_0;
  wire wr_enable_i_6_n_0;
  wire wr_enable_i_7_n_0;
  wire wr_enable_i_8_n_0;
  wire wr_enable_i_9_n_0;
  wire [5:0]wr_occupancy;
  wire [5:0]wr_occupancy00_out;
  wire wr_occupancy0_carry__0_n_3;
  wire wr_occupancy0_carry_n_0;
  wire wr_occupancy0_carry_n_1;
  wire wr_occupancy0_carry_n_2;
  wire wr_occupancy0_carry_n_3;
  wire NLW_ram_reg_0_63_0_2_DOD_UNCONNECTED;
  wire NLW_ram_reg_0_63_12_14_DOC_UNCONNECTED;
  wire NLW_ram_reg_0_63_12_14_DOD_UNCONNECTED;
  wire NLW_ram_reg_0_63_15_17_DOA_UNCONNECTED;
  wire NLW_ram_reg_0_63_15_17_DOD_UNCONNECTED;
  wire NLW_ram_reg_0_63_18_20_DOD_UNCONNECTED;
  wire NLW_ram_reg_0_63_21_23_DOD_UNCONNECTED;
  wire NLW_ram_reg_0_63_24_26_DOA_UNCONNECTED;
  wire NLW_ram_reg_0_63_24_26_DOD_UNCONNECTED;
  wire NLW_ram_reg_0_63_27_29_DOC_UNCONNECTED;
  wire NLW_ram_reg_0_63_27_29_DOD_UNCONNECTED;
  wire NLW_ram_reg_0_63_3_5_DOD_UNCONNECTED;
  wire NLW_ram_reg_0_63_6_8_DOC_UNCONNECTED;
  wire NLW_ram_reg_0_63_6_8_DOD_UNCONNECTED;
  wire NLW_ram_reg_0_63_9_11_DOD_UNCONNECTED;
  wire [3:1]NLW_rd_occupancy0_carry__0_CO_UNCONNECTED;
  wire [3:2]NLW_rd_occupancy0_carry__0_O_UNCONNECTED;
  wire [3:1]NLW_wr_occupancy0_carry__0_CO_UNCONNECTED;
  wire [3:2]NLW_wr_occupancy0_carry__0_O_UNCONNECTED;

  LUT5 #(
    .INIT(32'h96696996)) 
    \/i_ 
       (.I0(p_3_in21_in),
        .I1(p_1_in15_in),
        .I2(p_14_in),
        .I3(\reclock_rd_addrgray[4].sync_rd_addrgray_n_1 ),
        .I4(p_2_in18_in),
        .O(p_25_in));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    d16p2_wr_reg_i_1
       (.I0(d16p2_wr_reg_i_2_n_0),
        .I1(wr_data[0]),
        .I2(wr_data[1]),
        .I3(wr_data[2]),
        .O(p_17_in));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    d16p2_wr_reg_i_2
       (.I0(wr_data[4]),
        .I1(wr_data[3]),
        .I2(wr_data[6]),
        .I3(wr_data[5]),
        .I4(wr_data[11]),
        .I5(wr_data[7]),
        .O(d16p2_wr_reg_i_2_n_0));
  FDRE d16p2_wr_reg_reg
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(p_17_in),
        .Q(d16p2_wr_reg),
        .R(reset_out));
  FDRE d21p5_wr_reg2_reg
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(d21p5_wr_reg),
        .Q(d21p5_wr_reg2),
        .R(reset_out));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    d21p5_wr_reg_i_1
       (.I0(d21p5_wr_reg_i_2_n_0),
        .I1(wr_data[0]),
        .I2(wr_data[2]),
        .I3(wr_data[1]),
        .O(p_13_in));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    d21p5_wr_reg_i_2
       (.I0(wr_data[4]),
        .I1(wr_data[3]),
        .I2(wr_data[5]),
        .I3(wr_data[6]),
        .I4(wr_data[11]),
        .I5(wr_data[7]),
        .O(d21p5_wr_reg_i_2_n_0));
  FDRE d21p5_wr_reg_reg
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(p_13_in),
        .Q(d21p5_wr_reg),
        .R(reset_out));
  FDRE d2p2_wr_reg2_reg
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(d2p2_wr_reg),
        .Q(d2p2_wr_reg2),
        .R(reset_out));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    d2p2_wr_reg_i_1
       (.I0(d2p2_wr_reg_i_2_n_0),
        .I1(wr_data[0]),
        .I2(wr_data[1]),
        .I3(wr_data[2]),
        .O(p_10_in));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    d2p2_wr_reg_i_2
       (.I0(wr_data[3]),
        .I1(wr_data[4]),
        .I2(wr_data[6]),
        .I3(wr_data[5]),
        .I4(wr_data[11]),
        .I5(wr_data[7]),
        .O(d2p2_wr_reg_i_2_n_0));
  FDRE d2p2_wr_reg_reg
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(p_10_in),
        .Q(d2p2_wr_reg),
        .R(reset_out));
  LUT1 #(
    .INIT(2'h1)) 
    even_i_1
       (.I0(even),
        .O(even_i_1_n_0));
  FDSE even_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(even_i_1_n_0),
        .Q(even),
        .S(reset_modified));
  LUT1 #(
    .INIT(2'h1)) 
    \initialize_counter[0]_i_1 
       (.I0(initialize_counter_reg[0]),
        .O(plusOp__2[0]));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \initialize_counter[1]_i_1 
       (.I0(initialize_counter_reg[0]),
        .I1(initialize_counter_reg[1]),
        .O(plusOp__2[1]));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \initialize_counter[2]_i_1 
       (.I0(initialize_counter_reg[0]),
        .I1(initialize_counter_reg[1]),
        .I2(initialize_counter_reg[2]),
        .O(plusOp__2[2]));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \initialize_counter[3]_i_1 
       (.I0(initialize_counter_reg[1]),
        .I1(initialize_counter_reg[0]),
        .I2(initialize_counter_reg[2]),
        .I3(initialize_counter_reg[3]),
        .O(plusOp__2[3]));
  LUT6 #(
    .INIT(64'h2AAAAAAAAAAAAAAA)) 
    \initialize_counter[4]_i_1 
       (.I0(initialize_ram),
        .I1(initialize_counter_reg[1]),
        .I2(initialize_counter_reg[0]),
        .I3(initialize_counter_reg[4]),
        .I4(initialize_counter_reg[3]),
        .I5(initialize_counter_reg[2]),
        .O(initialize_counter0));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \initialize_counter[4]_i_2 
       (.I0(initialize_counter_reg[2]),
        .I1(initialize_counter_reg[0]),
        .I2(initialize_counter_reg[1]),
        .I3(initialize_counter_reg[3]),
        .I4(initialize_counter_reg[4]),
        .O(plusOp__2[4]));
  FDRE \initialize_counter_reg[0] 
       (.C(rxuserclk2),
        .CE(initialize_counter0),
        .D(plusOp__2[0]),
        .Q(initialize_counter_reg[0]),
        .R(SR));
  FDRE \initialize_counter_reg[1] 
       (.C(rxuserclk2),
        .CE(initialize_counter0),
        .D(plusOp__2[1]),
        .Q(initialize_counter_reg[1]),
        .R(SR));
  FDRE \initialize_counter_reg[2] 
       (.C(rxuserclk2),
        .CE(initialize_counter0),
        .D(plusOp__2[2]),
        .Q(initialize_counter_reg[2]),
        .R(SR));
  FDRE \initialize_counter_reg[3] 
       (.C(rxuserclk2),
        .CE(initialize_counter0),
        .D(plusOp__2[3]),
        .Q(initialize_counter_reg[3]),
        .R(SR));
  FDRE \initialize_counter_reg[4] 
       (.C(rxuserclk2),
        .CE(initialize_counter0),
        .D(plusOp__2[4]),
        .Q(initialize_counter_reg[4]),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFFFFFFF80000000)) 
    initialize_ram_complete_i_2
       (.I0(initialize_counter_reg[1]),
        .I1(initialize_counter_reg[0]),
        .I2(initialize_counter_reg[4]),
        .I3(initialize_counter_reg[3]),
        .I4(initialize_counter_reg[2]),
        .I5(initialize_ram_complete),
        .O(initialize_ram_complete_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    initialize_ram_complete_pulse_i_1
       (.I0(initialize_ram_complete),
        .I1(initialize_ram_complete_reg__0),
        .O(initialize_ram_complete_pulse0));
  FDRE initialize_ram_complete_pulse_reg
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(initialize_ram_complete_pulse0),
        .Q(initialize_ram_complete_pulse),
        .R(SR));
  FDRE initialize_ram_complete_reg
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(initialize_ram_complete_i_2_n_0),
        .Q(initialize_ram_complete),
        .R(SR));
  FDRE initialize_ram_complete_reg_reg
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(initialize_ram_complete),
        .Q(initialize_ram_complete_reg__0),
        .R(SR));
  FDRE initialize_ram_complete_sync_reg1_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(initialize_ram_complete_sync),
        .Q(initialize_ram_complete_sync_reg1),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    initialize_ram_complete_sync_ris_edg_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(initialize_ram_complete_sync_ris_edg0),
        .Q(initialize_ram_complete_sync_ris_edg),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h4)) 
    initialize_ram_i_1
       (.I0(initialize_ram_complete),
        .I1(initialize_ram),
        .O(initialize_ram_i_1_n_0));
  FDSE initialize_ram_reg
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(initialize_ram_i_1_n_0),
        .Q(initialize_ram),
        .S(SR));
  LUT6 #(
    .INIT(64'h4400400040004000)) 
    insert_idle_i_1
       (.I0(reset_modified),
        .I1(even),
        .I2(rd_enable_i_2_n_0),
        .I3(p_4_in),
        .I4(rd_enable_i_4_n_0),
        .I5(rd_enable_i_5_n_0),
        .O(insert_idle_i_1_n_0));
  FDRE insert_idle_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(insert_idle_i_1_n_0),
        .Q(insert_idle),
        .R(1'b0));
  FDRE insert_idle_reg_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(insert_idle),
        .Q(insert_idle_reg__0),
        .R(reset_modified));
  FDRE k28p5_wr_reg2_reg
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(k28p5_wr_reg),
        .Q(k28p5_wr_reg2),
        .R(reset_out));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    k28p5_wr_reg_i_1
       (.I0(k28p5_wr_reg_i_2_n_0),
        .I1(wr_data[16]),
        .I2(wr_data[18]),
        .I3(wr_data[17]),
        .O(p_18_in));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    k28p5_wr_reg_i_2
       (.I0(wr_data[19]),
        .I1(wr_data[20]),
        .I2(wr_data[21]),
        .I3(wr_data[22]),
        .I4(wr_data[27]),
        .I5(wr_data[23]),
        .O(k28p5_wr_reg_i_2_n_0));
  FDRE k28p5_wr_reg_reg
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(p_18_in),
        .Q(k28p5_wr_reg),
        .R(reset_out));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2304" *) 
  (* RTL_RAM_NAME = "transceiver_inst/rx_elastic_buffer_inst/ram" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M ram_reg_0_63_0_2
       (.ADDRA(rd_addr),
        .ADDRB(rd_addr),
        .ADDRC(rd_addr),
        .ADDRD(wr_addr),
        .DIA(wr_data_reg[0]),
        .DIB(wr_data_reg[1]),
        .DIC(wr_data_reg[2]),
        .DID(1'b0),
        .DOA(dpo[0]),
        .DOB(dpo[1]),
        .DOC(dpo[2]),
        .DOD(NLW_ram_reg_0_63_0_2_DOD_UNCONNECTED),
        .WCLK(rxuserclk2),
        .WE(wr_enable));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2304" *) 
  (* RTL_RAM_NAME = "transceiver_inst/rx_elastic_buffer_inst/ram" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "14" *) 
  RAM64M ram_reg_0_63_12_14
       (.ADDRA(rd_addr),
        .ADDRB(rd_addr),
        .ADDRC(rd_addr),
        .ADDRD(wr_addr),
        .DIA(wr_data_reg[12]),
        .DIB(wr_data_reg[13]),
        .DIC(1'b0),
        .DID(1'b0),
        .DOA(dpo[12]),
        .DOB(dpo[13]),
        .DOC(NLW_ram_reg_0_63_12_14_DOC_UNCONNECTED),
        .DOD(NLW_ram_reg_0_63_12_14_DOD_UNCONNECTED),
        .WCLK(rxuserclk2),
        .WE(wr_enable));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2304" *) 
  (* RTL_RAM_NAME = "transceiver_inst/rx_elastic_buffer_inst/ram" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "17" *) 
  RAM64M ram_reg_0_63_15_17
       (.ADDRA(rd_addr),
        .ADDRB(rd_addr),
        .ADDRC(rd_addr),
        .ADDRD(wr_addr),
        .DIA(1'b0),
        .DIB(wr_data_reg[16]),
        .DIC(wr_data_reg[17]),
        .DID(1'b0),
        .DOA(NLW_ram_reg_0_63_15_17_DOA_UNCONNECTED),
        .DOB(dpo[16]),
        .DOC(dpo[17]),
        .DOD(NLW_ram_reg_0_63_15_17_DOD_UNCONNECTED),
        .WCLK(rxuserclk2),
        .WE(wr_enable));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2304" *) 
  (* RTL_RAM_NAME = "transceiver_inst/rx_elastic_buffer_inst/ram" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "20" *) 
  RAM64M ram_reg_0_63_18_20
       (.ADDRA(rd_addr),
        .ADDRB(rd_addr),
        .ADDRC(rd_addr),
        .ADDRD(wr_addr),
        .DIA(wr_data_reg[18]),
        .DIB(wr_data_reg[19]),
        .DIC(wr_data_reg[20]),
        .DID(1'b0),
        .DOA(dpo[18]),
        .DOB(dpo[19]),
        .DOC(dpo[20]),
        .DOD(NLW_ram_reg_0_63_18_20_DOD_UNCONNECTED),
        .WCLK(rxuserclk2),
        .WE(wr_enable));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2304" *) 
  (* RTL_RAM_NAME = "transceiver_inst/rx_elastic_buffer_inst/ram" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "21" *) 
  (* ram_slice_end = "23" *) 
  RAM64M ram_reg_0_63_21_23
       (.ADDRA(rd_addr),
        .ADDRB(rd_addr),
        .ADDRC(rd_addr),
        .ADDRD(wr_addr),
        .DIA(wr_data_reg[21]),
        .DIB(wr_data_reg[22]),
        .DIC(wr_data_reg[23]),
        .DID(1'b0),
        .DOA(dpo[21]),
        .DOB(dpo[22]),
        .DOC(dpo[23]),
        .DOD(NLW_ram_reg_0_63_21_23_DOD_UNCONNECTED),
        .WCLK(rxuserclk2),
        .WE(wr_enable));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2304" *) 
  (* RTL_RAM_NAME = "transceiver_inst/rx_elastic_buffer_inst/ram" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "26" *) 
  RAM64M ram_reg_0_63_24_26
       (.ADDRA(rd_addr),
        .ADDRB(rd_addr),
        .ADDRC(rd_addr),
        .ADDRD(wr_addr),
        .DIA(1'b0),
        .DIB(wr_data_reg[25]),
        .DIC(wr_data_reg[26]),
        .DID(1'b0),
        .DOA(NLW_ram_reg_0_63_24_26_DOA_UNCONNECTED),
        .DOB(dpo[25]),
        .DOC(dpo[26]),
        .DOD(NLW_ram_reg_0_63_24_26_DOD_UNCONNECTED),
        .WCLK(rxuserclk2),
        .WE(wr_enable));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2304" *) 
  (* RTL_RAM_NAME = "transceiver_inst/rx_elastic_buffer_inst/ram" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "27" *) 
  (* ram_slice_end = "29" *) 
  RAM64M ram_reg_0_63_27_29
       (.ADDRA(rd_addr),
        .ADDRB(rd_addr),
        .ADDRC(rd_addr),
        .ADDRD(wr_addr),
        .DIA(wr_data_reg[27]),
        .DIB(wr_data_reg[28]),
        .DIC(1'b0),
        .DID(1'b0),
        .DOA(dpo[27]),
        .DOB(dpo[28]),
        .DOC(NLW_ram_reg_0_63_27_29_DOC_UNCONNECTED),
        .DOD(NLW_ram_reg_0_63_27_29_DOD_UNCONNECTED),
        .WCLK(rxuserclk2),
        .WE(wr_enable));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2304" *) 
  (* RTL_RAM_NAME = "transceiver_inst/rx_elastic_buffer_inst/ram" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M ram_reg_0_63_3_5
       (.ADDRA(rd_addr),
        .ADDRB(rd_addr),
        .ADDRC(rd_addr),
        .ADDRD(wr_addr),
        .DIA(wr_data_reg[3]),
        .DIB(wr_data_reg[4]),
        .DIC(wr_data_reg[5]),
        .DID(1'b0),
        .DOA(dpo[3]),
        .DOB(dpo[4]),
        .DOC(dpo[5]),
        .DOD(NLW_ram_reg_0_63_3_5_DOD_UNCONNECTED),
        .WCLK(rxuserclk2),
        .WE(wr_enable));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2304" *) 
  (* RTL_RAM_NAME = "transceiver_inst/rx_elastic_buffer_inst/ram" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M ram_reg_0_63_6_8
       (.ADDRA(rd_addr),
        .ADDRB(rd_addr),
        .ADDRC(rd_addr),
        .ADDRD(wr_addr),
        .DIA(wr_data_reg[6]),
        .DIB(wr_data_reg[7]),
        .DIC(1'b0),
        .DID(1'b0),
        .DOA(dpo[6]),
        .DOB(dpo[7]),
        .DOC(NLW_ram_reg_0_63_6_8_DOC_UNCONNECTED),
        .DOD(NLW_ram_reg_0_63_6_8_DOD_UNCONNECTED),
        .WCLK(rxuserclk2),
        .WE(wr_enable));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2304" *) 
  (* RTL_RAM_NAME = "transceiver_inst/rx_elastic_buffer_inst/ram" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M ram_reg_0_63_9_11
       (.ADDRA(rd_addr),
        .ADDRB(rd_addr),
        .ADDRC(rd_addr),
        .ADDRD(wr_addr),
        .DIA(wr_data_reg[9]),
        .DIB(wr_data_reg[10]),
        .DIC(wr_data_reg[11]),
        .DID(1'b0),
        .DOA(dpo[9]),
        .DOB(dpo[10]),
        .DOC(dpo[11]),
        .DOD(NLW_ram_reg_0_63_9_11_DOD_UNCONNECTED),
        .WCLK(rxuserclk2),
        .WE(wr_enable));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rd_addr_gray[0]_i_1 
       (.I0(\rd_addr_plus2_reg_n_0_[0] ),
        .I1(p_1_in),
        .O(\rd_addr_gray[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rd_addr_gray[1]_i_1 
       (.I0(p_1_in),
        .I1(p_2_in),
        .O(\rd_addr_gray[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rd_addr_gray[2]_i_1 
       (.I0(p_2_in),
        .I1(p_3_in),
        .O(\rd_addr_gray[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rd_addr_gray[3]_i_1 
       (.I0(p_3_in),
        .I1(p_4_in_0),
        .O(\rd_addr_gray[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rd_addr_gray[4]_i_1 
       (.I0(p_4_in_0),
        .I1(\rd_addr_plus2_reg_n_0_[5] ),
        .O(\rd_addr_gray[4]_i_1_n_0 ));
  FDRE \rd_addr_gray_reg[0] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\rd_addr_gray[0]_i_1_n_0 ),
        .Q(rd_addr_gray[0]),
        .R(reset_modified));
  FDRE \rd_addr_gray_reg[1] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\rd_addr_gray[1]_i_1_n_0 ),
        .Q(rd_addr_gray[1]),
        .R(reset_modified));
  FDRE \rd_addr_gray_reg[2] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\rd_addr_gray[2]_i_1_n_0 ),
        .Q(rd_addr_gray[2]),
        .R(reset_modified));
  FDRE \rd_addr_gray_reg[3] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\rd_addr_gray[3]_i_1_n_0 ),
        .Q(rd_addr_gray[3]),
        .R(reset_modified));
  FDRE \rd_addr_gray_reg[4] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\rd_addr_gray[4]_i_1_n_0 ),
        .Q(rd_addr_gray[4]),
        .R(reset_modified));
  FDRE \rd_addr_gray_reg[5] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\rd_addr_plus2_reg_n_0_[5] ),
        .Q(rd_addr_gray[5]),
        .R(reset_modified));
  FDSE \rd_addr_plus1_reg[0] 
       (.C(userclk2),
        .CE(rd_enable),
        .D(\rd_addr_plus2_reg_n_0_[0] ),
        .Q(rd_addr_plus1[0]),
        .S(reset_modified));
  FDRE \rd_addr_plus1_reg[1] 
       (.C(userclk2),
        .CE(rd_enable),
        .D(p_1_in),
        .Q(rd_addr_plus1[1]),
        .R(reset_modified));
  FDRE \rd_addr_plus1_reg[2] 
       (.C(userclk2),
        .CE(rd_enable),
        .D(p_2_in),
        .Q(rd_addr_plus1[2]),
        .R(reset_modified));
  FDRE \rd_addr_plus1_reg[3] 
       (.C(userclk2),
        .CE(rd_enable),
        .D(p_3_in),
        .Q(rd_addr_plus1[3]),
        .R(reset_modified));
  FDRE \rd_addr_plus1_reg[4] 
       (.C(userclk2),
        .CE(rd_enable),
        .D(p_4_in_0),
        .Q(rd_addr_plus1[4]),
        .R(reset_modified));
  FDRE \rd_addr_plus1_reg[5] 
       (.C(userclk2),
        .CE(rd_enable),
        .D(\rd_addr_plus2_reg_n_0_[5] ),
        .Q(rd_addr_plus1[5]),
        .R(reset_modified));
  LUT1 #(
    .INIT(2'h1)) 
    \rd_addr_plus2[0]_i_1 
       (.I0(\rd_addr_plus2_reg_n_0_[0] ),
        .O(plusOp__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \rd_addr_plus2[2]_i_1 
       (.I0(\rd_addr_plus2_reg_n_0_[0] ),
        .I1(p_1_in),
        .I2(p_2_in),
        .O(plusOp__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \rd_addr_plus2[3]_i_1 
       (.I0(p_1_in),
        .I1(\rd_addr_plus2_reg_n_0_[0] ),
        .I2(p_2_in),
        .I3(p_3_in),
        .O(plusOp__1[3]));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \rd_addr_plus2[4]_i_1 
       (.I0(p_2_in),
        .I1(\rd_addr_plus2_reg_n_0_[0] ),
        .I2(p_1_in),
        .I3(p_3_in),
        .I4(p_4_in_0),
        .O(plusOp__1[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \rd_addr_plus2[5]_i_1 
       (.I0(p_4_in_0),
        .I1(p_3_in),
        .I2(p_1_in),
        .I3(\rd_addr_plus2_reg_n_0_[0] ),
        .I4(p_2_in),
        .I5(\rd_addr_plus2_reg_n_0_[5] ),
        .O(plusOp__1[5]));
  FDRE \rd_addr_plus2_reg[0] 
       (.C(userclk2),
        .CE(rd_enable),
        .D(plusOp__1[0]),
        .Q(\rd_addr_plus2_reg_n_0_[0] ),
        .R(reset_modified));
  FDSE \rd_addr_plus2_reg[1] 
       (.C(userclk2),
        .CE(rd_enable),
        .D(\rd_addr_gray[0]_i_1_n_0 ),
        .Q(p_1_in),
        .S(reset_modified));
  FDRE \rd_addr_plus2_reg[2] 
       (.C(userclk2),
        .CE(rd_enable),
        .D(plusOp__1[2]),
        .Q(p_2_in),
        .R(reset_modified));
  FDRE \rd_addr_plus2_reg[3] 
       (.C(userclk2),
        .CE(rd_enable),
        .D(plusOp__1[3]),
        .Q(p_3_in),
        .R(reset_modified));
  FDRE \rd_addr_plus2_reg[4] 
       (.C(userclk2),
        .CE(rd_enable),
        .D(plusOp__1[4]),
        .Q(p_4_in_0),
        .R(reset_modified));
  FDRE \rd_addr_plus2_reg[5] 
       (.C(userclk2),
        .CE(rd_enable),
        .D(plusOp__1[5]),
        .Q(\rd_addr_plus2_reg_n_0_[5] ),
        .R(reset_modified));
  FDRE \rd_addr_reg[0] 
       (.C(userclk2),
        .CE(rd_enable),
        .D(rd_addr_plus1[0]),
        .Q(rd_addr[0]),
        .R(reset_modified));
  FDRE \rd_addr_reg[1] 
       (.C(userclk2),
        .CE(rd_enable),
        .D(rd_addr_plus1[1]),
        .Q(rd_addr[1]),
        .R(reset_modified));
  FDRE \rd_addr_reg[2] 
       (.C(userclk2),
        .CE(rd_enable),
        .D(rd_addr_plus1[2]),
        .Q(rd_addr[2]),
        .R(reset_modified));
  FDRE \rd_addr_reg[3] 
       (.C(userclk2),
        .CE(rd_enable),
        .D(rd_addr_plus1[3]),
        .Q(rd_addr[3]),
        .R(reset_modified));
  FDRE \rd_addr_reg[4] 
       (.C(userclk2),
        .CE(rd_enable),
        .D(rd_addr_plus1[4]),
        .Q(rd_addr[4]),
        .R(reset_modified));
  FDRE \rd_addr_reg[5] 
       (.C(userclk2),
        .CE(rd_enable),
        .D(rd_addr_plus1[5]),
        .Q(rd_addr[5]),
        .R(reset_modified));
  FDRE \rd_data_reg[0] 
       (.C(userclk2),
        .CE(1'b1),
        .D(dpo[0]),
        .Q(rd_data[0]),
        .R(reset_modified));
  FDRE \rd_data_reg[10] 
       (.C(userclk2),
        .CE(1'b1),
        .D(dpo[10]),
        .Q(rd_data[10]),
        .R(reset_modified));
  FDRE \rd_data_reg[11] 
       (.C(userclk2),
        .CE(1'b1),
        .D(dpo[11]),
        .Q(rd_data[11]),
        .R(reset_modified));
  FDRE \rd_data_reg[12] 
       (.C(userclk2),
        .CE(1'b1),
        .D(dpo[12]),
        .Q(rd_data[12]),
        .R(reset_modified));
  FDRE \rd_data_reg[13] 
       (.C(userclk2),
        .CE(1'b1),
        .D(dpo[13]),
        .Q(rd_data[13]),
        .R(reset_modified));
  FDRE \rd_data_reg[16] 
       (.C(userclk2),
        .CE(1'b1),
        .D(dpo[16]),
        .Q(rd_data[16]),
        .R(reset_modified));
  FDRE \rd_data_reg[17] 
       (.C(userclk2),
        .CE(1'b1),
        .D(dpo[17]),
        .Q(rd_data[17]),
        .R(reset_modified));
  FDRE \rd_data_reg[18] 
       (.C(userclk2),
        .CE(1'b1),
        .D(dpo[18]),
        .Q(rd_data[18]),
        .R(reset_modified));
  FDRE \rd_data_reg[19] 
       (.C(userclk2),
        .CE(1'b1),
        .D(dpo[19]),
        .Q(rd_data[19]),
        .R(reset_modified));
  FDRE \rd_data_reg[1] 
       (.C(userclk2),
        .CE(1'b1),
        .D(dpo[1]),
        .Q(rd_data[1]),
        .R(reset_modified));
  FDRE \rd_data_reg[20] 
       (.C(userclk2),
        .CE(1'b1),
        .D(dpo[20]),
        .Q(rd_data[20]),
        .R(reset_modified));
  FDRE \rd_data_reg[21] 
       (.C(userclk2),
        .CE(1'b1),
        .D(dpo[21]),
        .Q(rd_data[21]),
        .R(reset_modified));
  FDRE \rd_data_reg[22] 
       (.C(userclk2),
        .CE(1'b1),
        .D(dpo[22]),
        .Q(rd_data[22]),
        .R(reset_modified));
  FDRE \rd_data_reg[23] 
       (.C(userclk2),
        .CE(1'b1),
        .D(dpo[23]),
        .Q(rd_data[23]),
        .R(reset_modified));
  FDRE \rd_data_reg[25] 
       (.C(userclk2),
        .CE(1'b1),
        .D(dpo[25]),
        .Q(rd_data[25]),
        .R(reset_modified));
  FDRE \rd_data_reg[26] 
       (.C(userclk2),
        .CE(1'b1),
        .D(dpo[26]),
        .Q(rd_data[26]),
        .R(reset_modified));
  FDRE \rd_data_reg[27] 
       (.C(userclk2),
        .CE(1'b1),
        .D(dpo[27]),
        .Q(rd_data[27]),
        .R(reset_modified));
  FDRE \rd_data_reg[28] 
       (.C(userclk2),
        .CE(1'b1),
        .D(dpo[28]),
        .Q(\rd_data_reg_n_0_[28] ),
        .R(reset_modified));
  FDRE \rd_data_reg[2] 
       (.C(userclk2),
        .CE(1'b1),
        .D(dpo[2]),
        .Q(rd_data[2]),
        .R(reset_modified));
  FDRE \rd_data_reg[3] 
       (.C(userclk2),
        .CE(1'b1),
        .D(dpo[3]),
        .Q(rd_data[3]),
        .R(reset_modified));
  FDRE \rd_data_reg[4] 
       (.C(userclk2),
        .CE(1'b1),
        .D(dpo[4]),
        .Q(rd_data[4]),
        .R(reset_modified));
  FDRE \rd_data_reg[5] 
       (.C(userclk2),
        .CE(1'b1),
        .D(dpo[5]),
        .Q(rd_data[5]),
        .R(reset_modified));
  FDRE \rd_data_reg[6] 
       (.C(userclk2),
        .CE(1'b1),
        .D(dpo[6]),
        .Q(rd_data[6]),
        .R(reset_modified));
  FDRE \rd_data_reg[7] 
       (.C(userclk2),
        .CE(1'b1),
        .D(dpo[7]),
        .Q(rd_data[7]),
        .R(reset_modified));
  FDRE \rd_data_reg[9] 
       (.C(userclk2),
        .CE(1'b1),
        .D(dpo[9]),
        .Q(rd_data[9]),
        .R(reset_modified));
  FDRE \rd_data_reg_reg[0] 
       (.C(userclk2),
        .CE(rd_enable),
        .D(rd_data[0]),
        .Q(rd_data_reg[0]),
        .R(reset_modified));
  FDRE \rd_data_reg_reg[10] 
       (.C(userclk2),
        .CE(rd_enable),
        .D(rd_data[10]),
        .Q(rd_data_reg[10]),
        .R(reset_modified));
  FDRE \rd_data_reg_reg[11] 
       (.C(userclk2),
        .CE(rd_enable),
        .D(rd_data[11]),
        .Q(rd_data_reg[11]),
        .R(reset_modified));
  FDRE \rd_data_reg_reg[12] 
       (.C(userclk2),
        .CE(rd_enable),
        .D(rd_data[12]),
        .Q(rd_data_reg[12]),
        .R(reset_modified));
  FDRE \rd_data_reg_reg[13] 
       (.C(userclk2),
        .CE(rd_enable),
        .D(rd_data[13]),
        .Q(rd_data_reg[13]),
        .R(reset_modified));
  FDRE \rd_data_reg_reg[16] 
       (.C(userclk2),
        .CE(rd_enable),
        .D(rd_data[16]),
        .Q(rd_data_reg[16]),
        .R(reset_modified));
  FDRE \rd_data_reg_reg[17] 
       (.C(userclk2),
        .CE(rd_enable),
        .D(rd_data[17]),
        .Q(rd_data_reg[17]),
        .R(reset_modified));
  FDRE \rd_data_reg_reg[18] 
       (.C(userclk2),
        .CE(rd_enable),
        .D(rd_data[18]),
        .Q(rd_data_reg[18]),
        .R(reset_modified));
  FDRE \rd_data_reg_reg[19] 
       (.C(userclk2),
        .CE(rd_enable),
        .D(rd_data[19]),
        .Q(rd_data_reg[19]),
        .R(reset_modified));
  FDRE \rd_data_reg_reg[1] 
       (.C(userclk2),
        .CE(rd_enable),
        .D(rd_data[1]),
        .Q(rd_data_reg[1]),
        .R(reset_modified));
  FDRE \rd_data_reg_reg[20] 
       (.C(userclk2),
        .CE(rd_enable),
        .D(rd_data[20]),
        .Q(rd_data_reg[20]),
        .R(reset_modified));
  FDRE \rd_data_reg_reg[21] 
       (.C(userclk2),
        .CE(rd_enable),
        .D(rd_data[21]),
        .Q(rd_data_reg[21]),
        .R(reset_modified));
  FDRE \rd_data_reg_reg[22] 
       (.C(userclk2),
        .CE(rd_enable),
        .D(rd_data[22]),
        .Q(rd_data_reg[22]),
        .R(reset_modified));
  FDRE \rd_data_reg_reg[23] 
       (.C(userclk2),
        .CE(rd_enable),
        .D(rd_data[23]),
        .Q(rd_data_reg[23]),
        .R(reset_modified));
  FDRE \rd_data_reg_reg[25] 
       (.C(userclk2),
        .CE(rd_enable),
        .D(rd_data[25]),
        .Q(rd_data_reg[25]),
        .R(reset_modified));
  FDRE \rd_data_reg_reg[26] 
       (.C(userclk2),
        .CE(rd_enable),
        .D(rd_data[26]),
        .Q(rd_data_reg[26]),
        .R(reset_modified));
  FDRE \rd_data_reg_reg[27] 
       (.C(userclk2),
        .CE(rd_enable),
        .D(rd_data[27]),
        .Q(rd_data_reg[27]),
        .R(reset_modified));
  FDRE \rd_data_reg_reg[28] 
       (.C(userclk2),
        .CE(rd_enable),
        .D(\rd_data_reg_n_0_[28] ),
        .Q(rd_data_reg[28]),
        .R(reset_modified));
  FDRE \rd_data_reg_reg[2] 
       (.C(userclk2),
        .CE(rd_enable),
        .D(rd_data[2]),
        .Q(rd_data_reg[2]),
        .R(reset_modified));
  FDRE \rd_data_reg_reg[3] 
       (.C(userclk2),
        .CE(rd_enable),
        .D(rd_data[3]),
        .Q(rd_data_reg[3]),
        .R(reset_modified));
  FDRE \rd_data_reg_reg[4] 
       (.C(userclk2),
        .CE(rd_enable),
        .D(rd_data[4]),
        .Q(rd_data_reg[4]),
        .R(reset_modified));
  FDRE \rd_data_reg_reg[5] 
       (.C(userclk2),
        .CE(rd_enable),
        .D(rd_data[5]),
        .Q(rd_data_reg[5]),
        .R(reset_modified));
  FDRE \rd_data_reg_reg[6] 
       (.C(userclk2),
        .CE(rd_enable),
        .D(rd_data[6]),
        .Q(rd_data_reg[6]),
        .R(reset_modified));
  FDRE \rd_data_reg_reg[7] 
       (.C(userclk2),
        .CE(rd_enable),
        .D(rd_data[7]),
        .Q(rd_data_reg[7]),
        .R(reset_modified));
  FDRE \rd_data_reg_reg[9] 
       (.C(userclk2),
        .CE(rd_enable),
        .D(rd_data[9]),
        .Q(rd_data_reg[9]),
        .R(reset_modified));
  LUT6 #(
    .INIT(64'h0044044404440444)) 
    rd_enable_i_1
       (.I0(reset_modified),
        .I1(even),
        .I2(rd_enable_i_2_n_0),
        .I3(p_4_in),
        .I4(rd_enable_i_4_n_0),
        .I5(rd_enable_i_5_n_0),
        .O(rd_enable_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT2 #(
    .INIT(4'h7)) 
    rd_enable_i_10
       (.I0(rd_occupancy[2]),
        .I1(rd_occupancy[3]),
        .O(rd_enable_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    rd_enable_i_11
       (.I0(rd_data[6]),
        .I1(rd_data[7]),
        .I2(rd_data[5]),
        .I3(rd_data[4]),
        .O(rd_enable_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    rd_enable_i_12
       (.I0(rd_data[7]),
        .I1(rd_data[6]),
        .I2(rd_data[5]),
        .I3(rd_data[4]),
        .O(rd_enable_i_12_n_0));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    rd_enable_i_2
       (.I0(rd_data[1]),
        .I1(rd_data[0]),
        .I2(rd_data[3]),
        .I3(rd_data[2]),
        .I4(rd_enable_i_6_n_0),
        .I5(rd_enable_i_7_n_0),
        .O(rd_enable_i_2_n_0));
  LUT4 #(
    .INIT(16'h0020)) 
    rd_enable_i_3
       (.I0(rd_enable_i_8_n_0),
        .I1(rd_data[16]),
        .I2(rd_data[18]),
        .I3(rd_data[17]),
        .O(p_4_in));
  LUT6 #(
    .INIT(64'h0001000100010000)) 
    rd_enable_i_4
       (.I0(rd_occupancy[4]),
        .I1(rd_occupancy[5]),
        .I2(rd_data[3]),
        .I3(rd_data[11]),
        .I4(rd_enable_i_9_n_0),
        .I5(rd_enable_i_10_n_0),
        .O(rd_enable_i_4_n_0));
  LUT5 #(
    .INIT(32'h08300800)) 
    rd_enable_i_5
       (.I0(rd_enable_i_11_n_0),
        .I1(rd_data[2]),
        .I2(rd_data[1]),
        .I3(rd_data[0]),
        .I4(rd_enable_i_12_n_0),
        .O(rd_enable_i_5_n_0));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    rd_enable_i_6
       (.I0(rd_data[4]),
        .I1(rd_data[5]),
        .I2(rd_data[6]),
        .I3(rd_data[7]),
        .I4(rd_occupancy[5]),
        .I5(rd_data[11]),
        .O(rd_enable_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    rd_enable_i_7
       (.I0(rd_occupancy[2]),
        .I1(rd_occupancy[3]),
        .I2(rd_occupancy[0]),
        .I3(rd_occupancy[1]),
        .I4(rd_occupancy[4]),
        .O(rd_enable_i_7_n_0));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    rd_enable_i_8
       (.I0(rd_data[19]),
        .I1(rd_data[20]),
        .I2(rd_data[21]),
        .I3(rd_data[22]),
        .I4(rd_data[27]),
        .I5(rd_data[23]),
        .O(rd_enable_i_8_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    rd_enable_i_9
       (.I0(rd_occupancy[0]),
        .I1(rd_occupancy[1]),
        .O(rd_enable_i_9_n_0));
  FDRE rd_enable_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(rd_enable_i_1_n_0),
        .Q(rd_enable),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rd_occupancy0_carry
       (.CI(1'b0),
        .CO({rd_occupancy0_carry_n_0,rd_occupancy0_carry_n_1,rd_occupancy0_carry_n_2,rd_occupancy0_carry_n_3}),
        .CYINIT(1'b1),
        .DI(gray_to_bin[3:0]),
        .O(rd_occupancy01_out[3:0]),
        .S({\reclock_wr_addrgray[4].sync_wr_addrgray_n_0 ,\reclock_wr_addrgray[3].sync_wr_addrgray_n_0 ,\reclock_wr_addrgray[2].sync_wr_addrgray_n_0 ,\reclock_wr_addrgray[1].sync_wr_addrgray_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rd_occupancy0_carry__0
       (.CI(rd_occupancy0_carry_n_0),
        .CO({NLW_rd_occupancy0_carry__0_CO_UNCONNECTED[3:1],rd_occupancy0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,gray_to_bin[4]}),
        .O({NLW_rd_occupancy0_carry__0_O_UNCONNECTED[3:2],rd_occupancy01_out[5:4]}),
        .S({1'b0,1'b0,\reclock_wr_addrgray[5].sync_wr_addrgray_n_0 ,\reclock_wr_addrgray[5].sync_wr_addrgray_n_1 }));
  LUT2 #(
    .INIT(4'h6)) 
    rd_occupancy0_carry__0_i_1
       (.I0(\reclock_wr_addrgray[4].sync_wr_addrgray_n_1 ),
        .I1(data_out),
        .O(gray_to_bin[4]));
  LUT3 #(
    .INIT(8'h96)) 
    rd_occupancy0_carry_i_1
       (.I0(p_1_in30_in),
        .I1(data_out),
        .I2(\reclock_wr_addrgray[4].sync_wr_addrgray_n_1 ),
        .O(gray_to_bin[3]));
  LUT4 #(
    .INIT(16'h6996)) 
    rd_occupancy0_carry_i_2
       (.I0(p_2_in33_in),
        .I1(\reclock_wr_addrgray[4].sync_wr_addrgray_n_1 ),
        .I2(data_out),
        .I3(p_1_in30_in),
        .O(gray_to_bin[2]));
  LUT5 #(
    .INIT(32'h96696996)) 
    rd_occupancy0_carry_i_3
       (.I0(p_3_in36_in),
        .I1(p_1_in30_in),
        .I2(data_out),
        .I3(\reclock_wr_addrgray[4].sync_wr_addrgray_n_1 ),
        .I4(p_2_in33_in),
        .O(gray_to_bin[1]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    rd_occupancy0_carry_i_4
       (.I0(\reclock_wr_addrgray[0].sync_wr_addrgray_n_0 ),
        .I1(p_2_in33_in),
        .I2(\reclock_wr_addrgray[4].sync_wr_addrgray_n_1 ),
        .I3(data_out),
        .I4(p_1_in30_in),
        .I5(p_3_in36_in),
        .O(gray_to_bin[0]));
  FDRE \rd_occupancy_reg[0] 
       (.C(userclk2),
        .CE(1'b1),
        .D(rd_occupancy01_out[0]),
        .Q(rd_occupancy[0]),
        .R(reset_modified));
  FDRE \rd_occupancy_reg[1] 
       (.C(userclk2),
        .CE(1'b1),
        .D(rd_occupancy01_out[1]),
        .Q(rd_occupancy[1]),
        .R(reset_modified));
  FDRE \rd_occupancy_reg[2] 
       (.C(userclk2),
        .CE(1'b1),
        .D(rd_occupancy01_out[2]),
        .Q(rd_occupancy[2]),
        .R(reset_modified));
  FDRE \rd_occupancy_reg[3] 
       (.C(userclk2),
        .CE(1'b1),
        .D(rd_occupancy01_out[3]),
        .Q(rd_occupancy[3]),
        .R(reset_modified));
  FDRE \rd_occupancy_reg[4] 
       (.C(userclk2),
        .CE(1'b1),
        .D(rd_occupancy01_out[4]),
        .Q(rd_occupancy[4]),
        .R(reset_modified));
  FDSE \rd_occupancy_reg[5] 
       (.C(userclk2),
        .CE(1'b1),
        .D(rd_occupancy01_out[5]),
        .Q(rd_occupancy[5]),
        .S(reset_modified));
  gig_ethernet_pcs_pma_1_sync_block \reclock_rd_addrgray[0].sync_rd_addrgray 
       (.Q(rd_addr_gray[0]),
        .data_out(\reclock_rd_addrgray[0].sync_rd_addrgray_n_0 ),
        .rxuserclk2(rxuserclk2));
  gig_ethernet_pcs_pma_1_sync_block_5 \reclock_rd_addrgray[1].sync_rd_addrgray 
       (.Q(wr_addr[0]),
        .S(\reclock_rd_addrgray[1].sync_rd_addrgray_n_0 ),
        .data_out(\reclock_rd_addrgray[0].sync_rd_addrgray_n_0 ),
        .data_sync_reg1_0(rd_addr_gray[1]),
        .data_sync_reg6_0(p_3_in21_in),
        .p_25_in(p_25_in),
        .rxuserclk2(rxuserclk2));
  gig_ethernet_pcs_pma_1_sync_block_6 \reclock_rd_addrgray[2].sync_rd_addrgray 
       (.Q(wr_addr[1]),
        .S(\reclock_rd_addrgray[2].sync_rd_addrgray_n_0 ),
        .data_out(p_2_in18_in),
        .data_sync_reg1_0(rd_addr_gray[2]),
        .rxuserclk2(rxuserclk2),
        .\wr_occupancy_reg[3] (\reclock_rd_addrgray[4].sync_rd_addrgray_n_1 ),
        .\wr_occupancy_reg[3]_0 (p_14_in),
        .\wr_occupancy_reg[3]_1 (p_1_in15_in),
        .\wr_occupancy_reg[3]_2 (p_3_in21_in));
  gig_ethernet_pcs_pma_1_sync_block_7 \reclock_rd_addrgray[3].sync_rd_addrgray 
       (.Q(wr_addr[2]),
        .S(\reclock_rd_addrgray[3].sync_rd_addrgray_n_0 ),
        .data_out(p_1_in15_in),
        .data_sync_reg1_0(rd_addr_gray[3]),
        .rxuserclk2(rxuserclk2),
        .\wr_occupancy_reg[3] (p_14_in),
        .\wr_occupancy_reg[3]_0 (\reclock_rd_addrgray[4].sync_rd_addrgray_n_1 ),
        .\wr_occupancy_reg[3]_1 (p_2_in18_in));
  gig_ethernet_pcs_pma_1_sync_block_8 \reclock_rd_addrgray[4].sync_rd_addrgray 
       (.Q(wr_addr[3]),
        .S(\reclock_rd_addrgray[4].sync_rd_addrgray_n_0 ),
        .data_out(\reclock_rd_addrgray[4].sync_rd_addrgray_n_1 ),
        .data_sync_reg1_0(rd_addr_gray[4]),
        .rxuserclk2(rxuserclk2),
        .\wr_occupancy_reg[3] (p_14_in),
        .\wr_occupancy_reg[3]_0 (p_1_in15_in));
  gig_ethernet_pcs_pma_1_sync_block_9 \reclock_rd_addrgray[5].sync_rd_addrgray 
       (.ADDRD(wr_addr[5:4]),
        .Q(rd_addr_gray[5]),
        .S({\reclock_rd_addrgray[5].sync_rd_addrgray_n_0 ,\reclock_rd_addrgray[5].sync_rd_addrgray_n_1 }),
        .data_out(p_14_in),
        .rxuserclk2(rxuserclk2),
        .\wr_occupancy_reg[5] (\reclock_rd_addrgray[4].sync_rd_addrgray_n_1 ));
  gig_ethernet_pcs_pma_1_sync_block_10 \reclock_wr_addrgray[0].sync_wr_addrgray 
       (.Q(\wr_addr_gray_reg_n_0_[0] ),
        .data_out(\reclock_wr_addrgray[0].sync_wr_addrgray_n_0 ),
        .userclk2(userclk2));
  gig_ethernet_pcs_pma_1_sync_block_11 \reclock_wr_addrgray[1].sync_wr_addrgray 
       (.DI(gray_to_bin[1]),
        .Q(rd_addr[0]),
        .S(\reclock_wr_addrgray[1].sync_wr_addrgray_n_0 ),
        .data_out(\reclock_wr_addrgray[0].sync_wr_addrgray_n_0 ),
        .data_sync_reg1_0(\wr_addr_gray_reg_n_0_[1] ),
        .data_sync_reg6_0(p_3_in36_in),
        .userclk2(userclk2));
  gig_ethernet_pcs_pma_1_sync_block_12 \reclock_wr_addrgray[2].sync_wr_addrgray 
       (.Q(rd_addr[1]),
        .S(\reclock_wr_addrgray[2].sync_wr_addrgray_n_0 ),
        .data_out(p_2_in33_in),
        .data_sync_reg1_0(\wr_addr_gray_reg_n_0_[2] ),
        .\rd_occupancy_reg[3] (\reclock_wr_addrgray[4].sync_wr_addrgray_n_1 ),
        .\rd_occupancy_reg[3]_0 (data_out),
        .\rd_occupancy_reg[3]_1 (p_1_in30_in),
        .\rd_occupancy_reg[3]_2 (p_3_in36_in),
        .userclk2(userclk2));
  gig_ethernet_pcs_pma_1_sync_block_13 \reclock_wr_addrgray[3].sync_wr_addrgray 
       (.Q(rd_addr[2]),
        .S(\reclock_wr_addrgray[3].sync_wr_addrgray_n_0 ),
        .data_out(p_1_in30_in),
        .data_sync_reg1_0(\wr_addr_gray_reg_n_0_[3] ),
        .\rd_occupancy_reg[3] (data_out),
        .\rd_occupancy_reg[3]_0 (\reclock_wr_addrgray[4].sync_wr_addrgray_n_1 ),
        .\rd_occupancy_reg[3]_1 (p_2_in33_in),
        .userclk2(userclk2));
  gig_ethernet_pcs_pma_1_sync_block_14 \reclock_wr_addrgray[4].sync_wr_addrgray 
       (.Q(rd_addr[3]),
        .S(\reclock_wr_addrgray[4].sync_wr_addrgray_n_0 ),
        .data_out(\reclock_wr_addrgray[4].sync_wr_addrgray_n_1 ),
        .data_sync_reg1_0(\wr_addr_gray_reg_n_0_[4] ),
        .\rd_occupancy_reg[3] (data_out),
        .\rd_occupancy_reg[3]_0 (p_1_in30_in),
        .userclk2(userclk2));
  gig_ethernet_pcs_pma_1_sync_block_15 \reclock_wr_addrgray[5].sync_wr_addrgray 
       (.Q(rd_addr[5:4]),
        .S({\reclock_wr_addrgray[5].sync_wr_addrgray_n_0 ,\reclock_wr_addrgray[5].sync_wr_addrgray_n_1 }),
        .data_out(data_out),
        .data_sync_reg1_0(data_in),
        .\rd_occupancy_reg[5] (\reclock_wr_addrgray[4].sync_wr_addrgray_n_1 ),
        .userclk2(userclk2));
  LUT6 #(
    .INIT(64'hABAAFFFFABAA0000)) 
    remove_idle_i_1
       (.I0(remove_idle_i_2_n_0),
        .I1(wr_enable_i_4_n_0),
        .I2(remove_idle_i_3_n_0),
        .I3(wr_enable_i_2_n_0),
        .I4(initialize_ram_complete),
        .I5(remove_idle),
        .O(remove_idle_i_1_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    remove_idle_i_2
       (.I0(d16p2_wr_reg_i_2_n_0),
        .I1(remove_idle_i_4_n_0),
        .I2(wr_enable_i_9_n_0),
        .I3(wr_enable_i_8_n_0),
        .I4(remove_idle_i_5_n_0),
        .I5(k28p5_wr_reg_i_2_n_0),
        .O(remove_idle_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFF1FFFFFFFFFF)) 
    remove_idle_i_3
       (.I0(d2p2_wr_reg2),
        .I1(d21p5_wr_reg2),
        .I2(wr_data[17]),
        .I3(wr_data[18]),
        .I4(wr_data[16]),
        .I5(k28p5_wr_reg_i_2_n_0),
        .O(remove_idle_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT3 #(
    .INIT(8'h01)) 
    remove_idle_i_4
       (.I0(wr_data[2]),
        .I1(wr_data[1]),
        .I2(wr_data[0]),
        .O(remove_idle_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'h04)) 
    remove_idle_i_5
       (.I0(wr_data[17]),
        .I1(wr_data[18]),
        .I2(wr_data[16]),
        .O(remove_idle_i_5_n_0));
  FDRE remove_idle_reg
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(remove_idle_i_1_n_0),
        .Q(remove_idle),
        .R(reset_out));
  FDRE remove_idle_reg1_reg
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(remove_idle),
        .Q(remove_idle_reg1),
        .R(reset_out));
  FDRE remove_idle_reg2_reg
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(remove_idle_reg1),
        .Q(remove_idle_reg2),
        .R(reset_out));
  LUT3 #(
    .INIT(8'h3A)) 
    reset_modified_i_1
       (.I0(mgt_rx_reset),
        .I1(initialize_ram_complete_sync_ris_edg),
        .I2(reset_modified),
        .O(reset_modified_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    reset_modified_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(reset_modified_i_1_n_0),
        .Q(reset_modified),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    rxbuferr_i_1
       (.I0(rxbuferr0),
        .I1(rxbufstatus),
        .O(rxbuferr_i_1_n_0));
  LUT6 #(
    .INIT(64'hE000000000000007)) 
    rxbuferr_i_2
       (.I0(rd_occupancy[0]),
        .I1(rd_occupancy[1]),
        .I2(rd_occupancy[5]),
        .I3(rd_occupancy[4]),
        .I4(rd_occupancy[3]),
        .I5(rd_occupancy[2]),
        .O(rxbuferr0));
  FDRE rxbuferr_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(rxbuferr_i_1_n_0),
        .Q(rxbufstatus),
        .R(reset_modified));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    rxchariscomma_usr_i_1
       (.I0(rd_data_reg[28]),
        .I1(even),
        .I2(rd_data_reg[12]),
        .O(rxchariscomma_usr_i_1_n_0));
  FDRE rxchariscomma_usr_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(rxchariscomma_usr_i_1_n_0),
        .Q(rxchariscomma),
        .R(reset_modified));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    rxcharisk_usr_i_1
       (.I0(rd_data_reg[27]),
        .I1(even),
        .I2(rd_data_reg[11]),
        .O(rxcharisk_usr_i_1_n_0));
  FDRE rxcharisk_usr_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(rxcharisk_usr_i_1_n_0),
        .Q(rxcharisk),
        .R(reset_modified));
  LUT3 #(
    .INIT(8'hAE)) 
    \rxclkcorcnt[0]_i_1 
       (.I0(insert_idle_reg__0),
        .I1(rd_data_reg[13]),
        .I2(rxclkcorcnt[0]),
        .O(\rxclkcorcnt[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4404)) 
    \rxclkcorcnt[2]_i_1 
       (.I0(reset_modified),
        .I1(insert_idle_reg__0),
        .I2(rd_data_reg[13]),
        .I3(rxclkcorcnt[0]),
        .O(\rxclkcorcnt[2]_i_1_n_0 ));
  FDRE \rxclkcorcnt_reg[0] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\rxclkcorcnt[0]_i_1_n_0 ),
        .Q(rxclkcorcnt[0]),
        .R(reset_modified));
  FDRE \rxclkcorcnt_reg[2] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\rxclkcorcnt[2]_i_1_n_0 ),
        .Q(rxclkcorcnt[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rxdata_usr[0]_i_1 
       (.I0(rd_data_reg[16]),
        .I1(even),
        .I2(rd_data_reg[0]),
        .O(\rxdata_usr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rxdata_usr[1]_i_1 
       (.I0(rd_data_reg[17]),
        .I1(even),
        .I2(rd_data_reg[1]),
        .O(\rxdata_usr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rxdata_usr[2]_i_1 
       (.I0(rd_data_reg[18]),
        .I1(even),
        .I2(rd_data_reg[2]),
        .O(\rxdata_usr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rxdata_usr[3]_i_1 
       (.I0(rd_data_reg[19]),
        .I1(even),
        .I2(rd_data_reg[3]),
        .O(\rxdata_usr[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rxdata_usr[4]_i_1 
       (.I0(rd_data_reg[20]),
        .I1(even),
        .I2(rd_data_reg[4]),
        .O(\rxdata_usr[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rxdata_usr[5]_i_1 
       (.I0(rd_data_reg[21]),
        .I1(even),
        .I2(rd_data_reg[5]),
        .O(\rxdata_usr[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rxdata_usr[6]_i_1 
       (.I0(rd_data_reg[22]),
        .I1(even),
        .I2(rd_data_reg[6]),
        .O(\rxdata_usr[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rxdata_usr[7]_i_1 
       (.I0(rd_data_reg[23]),
        .I1(even),
        .I2(rd_data_reg[7]),
        .O(\rxdata_usr[7]_i_1_n_0 ));
  FDRE \rxdata_usr_reg[0] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\rxdata_usr[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(reset_modified));
  FDRE \rxdata_usr_reg[1] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\rxdata_usr[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(reset_modified));
  FDRE \rxdata_usr_reg[2] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\rxdata_usr[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(reset_modified));
  FDRE \rxdata_usr_reg[3] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\rxdata_usr[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(reset_modified));
  FDRE \rxdata_usr_reg[4] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\rxdata_usr[4]_i_1_n_0 ),
        .Q(Q[4]),
        .R(reset_modified));
  FDRE \rxdata_usr_reg[5] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\rxdata_usr[5]_i_1_n_0 ),
        .Q(Q[5]),
        .R(reset_modified));
  FDRE \rxdata_usr_reg[6] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\rxdata_usr[6]_i_1_n_0 ),
        .Q(Q[6]),
        .R(reset_modified));
  FDRE \rxdata_usr_reg[7] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\rxdata_usr[7]_i_1_n_0 ),
        .Q(Q[7]),
        .R(reset_modified));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    rxdisperr_usr_i_1
       (.I0(rd_data_reg[26]),
        .I1(even),
        .I2(rd_data_reg[10]),
        .O(rxdisperr_usr_i_1_n_0));
  FDRE rxdisperr_usr_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(rxdisperr_usr_i_1_n_0),
        .Q(rxdisperr),
        .R(reset_modified));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    rxnotintable_usr_i_1
       (.I0(rd_data_reg[25]),
        .I1(even),
        .I2(rd_data_reg[9]),
        .O(rxnotintable_usr_i_1_n_0));
  FDRE rxnotintable_usr_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(rxnotintable_usr_i_1_n_0),
        .Q(rxnotintable),
        .R(reset_modified));
  FDRE #(
    .INIT(1'b1)) 
    start_reg
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(1'b0),
        .Q(start),
        .R(1'b0));
  gig_ethernet_pcs_pma_1_sync_block_16 sync_initialize_ram_comp
       (.data_in(initialize_ram_complete),
        .data_out(initialize_ram_complete_sync),
        .initialize_ram_complete_sync_reg1(initialize_ram_complete_sync_reg1),
        .initialize_ram_complete_sync_ris_edg0(initialize_ram_complete_sync_ris_edg0),
        .userclk2(userclk2));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT4 #(
    .INIT(16'hFBF8)) 
    \wr_addr[5]_i_1 
       (.I0(wr_addr_plus1[5]),
        .I1(wr_enable),
        .I2(initialize_ram_complete_pulse),
        .I3(wr_addr[5]),
        .O(\wr_addr[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wr_addr_gray[1]_i_1 
       (.I0(p_1_in4_in),
        .I1(p_2_in6_in),
        .O(bin_to_gray[1]));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wr_addr_gray[2]_i_1 
       (.I0(p_2_in6_in),
        .I1(p_3_in8_in),
        .O(bin_to_gray[2]));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wr_addr_gray[3]_i_1 
       (.I0(p_3_in8_in),
        .I1(p_4_in10_in),
        .O(bin_to_gray[3]));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_addr_gray[4]_i_1 
       (.I0(p_4_in10_in),
        .I1(\wr_addr_plus2_reg_n_0_[5] ),
        .O(bin_to_gray[4]));
  FDSE \wr_addr_gray_reg[0] 
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(plusOp[1]),
        .Q(\wr_addr_gray_reg_n_0_[0] ),
        .S(reset_out));
  FDRE \wr_addr_gray_reg[1] 
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(bin_to_gray[1]),
        .Q(\wr_addr_gray_reg_n_0_[1] ),
        .R(reset_out));
  FDRE \wr_addr_gray_reg[2] 
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(bin_to_gray[2]),
        .Q(\wr_addr_gray_reg_n_0_[2] ),
        .R(reset_out));
  FDRE \wr_addr_gray_reg[3] 
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(bin_to_gray[3]),
        .Q(\wr_addr_gray_reg_n_0_[3] ),
        .R(reset_out));
  FDSE \wr_addr_gray_reg[4] 
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(bin_to_gray[4]),
        .Q(\wr_addr_gray_reg_n_0_[4] ),
        .S(reset_out));
  FDSE \wr_addr_gray_reg[5] 
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(\wr_addr_plus2_reg_n_0_[5] ),
        .Q(data_in),
        .S(reset_out));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT4 #(
    .INIT(16'hFBF8)) 
    \wr_addr_plus1[5]_i_1 
       (.I0(\wr_addr_plus2_reg_n_0_[5] ),
        .I1(wr_enable),
        .I2(initialize_ram_complete_pulse),
        .I3(wr_addr_plus1[5]),
        .O(\wr_addr_plus1[5]_i_1_n_0 ));
  FDSE \wr_addr_plus1_reg[0] 
       (.C(rxuserclk2),
        .CE(wr_enable),
        .D(\wr_addr_plus2_reg_n_0_[0] ),
        .Q(wr_addr_plus1[0]),
        .S(\wr_addr_plus1_reg[0]_0 ));
  FDRE \wr_addr_plus1_reg[1] 
       (.C(rxuserclk2),
        .CE(wr_enable),
        .D(p_1_in4_in),
        .Q(wr_addr_plus1[1]),
        .R(\wr_addr_plus1_reg[0]_0 ));
  FDRE \wr_addr_plus1_reg[2] 
       (.C(rxuserclk2),
        .CE(wr_enable),
        .D(p_2_in6_in),
        .Q(wr_addr_plus1[2]),
        .R(\wr_addr_plus1_reg[0]_0 ));
  FDRE \wr_addr_plus1_reg[3] 
       (.C(rxuserclk2),
        .CE(wr_enable),
        .D(p_3_in8_in),
        .Q(wr_addr_plus1[3]),
        .R(\wr_addr_plus1_reg[0]_0 ));
  FDRE \wr_addr_plus1_reg[4] 
       (.C(rxuserclk2),
        .CE(wr_enable),
        .D(p_4_in10_in),
        .Q(wr_addr_plus1[4]),
        .R(\wr_addr_plus1_reg[0]_0 ));
  FDRE \wr_addr_plus1_reg[5] 
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(\wr_addr_plus1[5]_i_1_n_0 ),
        .Q(wr_addr_plus1[5]),
        .R(reset_out));
  LUT1 #(
    .INIT(2'h1)) 
    \wr_addr_plus2[0]_i_1 
       (.I0(\wr_addr_plus2_reg_n_0_[0] ),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wr_addr_plus2[1]_i_1 
       (.I0(\wr_addr_plus2_reg_n_0_[0] ),
        .I1(p_1_in4_in),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \wr_addr_plus2[2]_i_1 
       (.I0(\wr_addr_plus2_reg_n_0_[0] ),
        .I1(p_1_in4_in),
        .I2(p_2_in6_in),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \wr_addr_plus2[3]_i_1 
       (.I0(p_1_in4_in),
        .I1(\wr_addr_plus2_reg_n_0_[0] ),
        .I2(p_2_in6_in),
        .I3(p_3_in8_in),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \wr_addr_plus2[4]_i_1 
       (.I0(p_2_in6_in),
        .I1(\wr_addr_plus2_reg_n_0_[0] ),
        .I2(p_1_in4_in),
        .I3(p_3_in8_in),
        .I4(p_4_in10_in),
        .O(plusOp[4]));
  LUT5 #(
    .INIT(32'hFF7FFF80)) 
    \wr_addr_plus2[5]_i_1 
       (.I0(p_4_in10_in),
        .I1(\wr_addr_plus2[5]_i_2_n_0 ),
        .I2(wr_enable),
        .I3(initialize_ram_complete_pulse),
        .I4(\wr_addr_plus2_reg_n_0_[5] ),
        .O(\wr_addr_plus2[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \wr_addr_plus2[5]_i_2 
       (.I0(p_3_in8_in),
        .I1(p_1_in4_in),
        .I2(\wr_addr_plus2_reg_n_0_[0] ),
        .I3(p_2_in6_in),
        .O(\wr_addr_plus2[5]_i_2_n_0 ));
  FDRE \wr_addr_plus2_reg[0] 
       (.C(rxuserclk2),
        .CE(wr_enable),
        .D(plusOp[0]),
        .Q(\wr_addr_plus2_reg_n_0_[0] ),
        .R(\wr_addr_plus1_reg[0]_0 ));
  FDSE \wr_addr_plus2_reg[1] 
       (.C(rxuserclk2),
        .CE(wr_enable),
        .D(plusOp[1]),
        .Q(p_1_in4_in),
        .S(\wr_addr_plus1_reg[0]_0 ));
  FDRE \wr_addr_plus2_reg[2] 
       (.C(rxuserclk2),
        .CE(wr_enable),
        .D(plusOp[2]),
        .Q(p_2_in6_in),
        .R(\wr_addr_plus1_reg[0]_0 ));
  FDRE \wr_addr_plus2_reg[3] 
       (.C(rxuserclk2),
        .CE(wr_enable),
        .D(plusOp[3]),
        .Q(p_3_in8_in),
        .R(\wr_addr_plus1_reg[0]_0 ));
  FDRE \wr_addr_plus2_reg[4] 
       (.C(rxuserclk2),
        .CE(wr_enable),
        .D(plusOp[4]),
        .Q(p_4_in10_in),
        .R(\wr_addr_plus1_reg[0]_0 ));
  FDRE \wr_addr_plus2_reg[5] 
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(\wr_addr_plus2[5]_i_1_n_0 ),
        .Q(\wr_addr_plus2_reg_n_0_[5] ),
        .R(reset_out));
  FDRE \wr_addr_reg[0] 
       (.C(rxuserclk2),
        .CE(wr_enable),
        .D(wr_addr_plus1[0]),
        .Q(wr_addr[0]),
        .R(\wr_addr_plus1_reg[0]_0 ));
  FDRE \wr_addr_reg[1] 
       (.C(rxuserclk2),
        .CE(wr_enable),
        .D(wr_addr_plus1[1]),
        .Q(wr_addr[1]),
        .R(\wr_addr_plus1_reg[0]_0 ));
  FDRE \wr_addr_reg[2] 
       (.C(rxuserclk2),
        .CE(wr_enable),
        .D(wr_addr_plus1[2]),
        .Q(wr_addr[2]),
        .R(\wr_addr_plus1_reg[0]_0 ));
  FDRE \wr_addr_reg[3] 
       (.C(rxuserclk2),
        .CE(wr_enable),
        .D(wr_addr_plus1[3]),
        .Q(wr_addr[3]),
        .R(\wr_addr_plus1_reg[0]_0 ));
  FDRE \wr_addr_reg[4] 
       (.C(rxuserclk2),
        .CE(wr_enable),
        .D(wr_addr_plus1[4]),
        .Q(wr_addr[4]),
        .R(\wr_addr_plus1_reg[0]_0 ));
  FDRE \wr_addr_reg[5] 
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(\wr_addr[5]_i_1_n_0 ),
        .Q(wr_addr[5]),
        .R(reset_out));
  FDRE \wr_data_reg[0] 
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(D[0]),
        .Q(wr_data[0]),
        .R(\wr_data_reg_reg[0]_0 ));
  FDRE \wr_data_reg[10] 
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(D[9]),
        .Q(wr_data[10]),
        .R(\wr_data_reg_reg[0]_0 ));
  FDRE \wr_data_reg[11] 
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(D[10]),
        .Q(wr_data[11]),
        .R(\wr_data_reg_reg[0]_0 ));
  FDRE \wr_data_reg[12] 
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(D[11]),
        .Q(wr_data[12]),
        .R(\wr_data_reg_reg[0]_0 ));
  FDRE \wr_data_reg[16] 
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(D[12]),
        .Q(wr_data[16]),
        .R(\wr_data_reg_reg[0]_0 ));
  FDRE \wr_data_reg[17] 
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(D[13]),
        .Q(wr_data[17]),
        .R(\wr_data_reg_reg[0]_0 ));
  FDRE \wr_data_reg[18] 
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(D[14]),
        .Q(wr_data[18]),
        .R(\wr_data_reg_reg[0]_0 ));
  FDRE \wr_data_reg[19] 
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(D[15]),
        .Q(wr_data[19]),
        .R(\wr_data_reg_reg[0]_0 ));
  FDRE \wr_data_reg[1] 
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(D[1]),
        .Q(wr_data[1]),
        .R(\wr_data_reg_reg[0]_0 ));
  FDRE \wr_data_reg[20] 
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(D[16]),
        .Q(wr_data[20]),
        .R(\wr_data_reg_reg[0]_0 ));
  FDRE \wr_data_reg[21] 
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(D[17]),
        .Q(wr_data[21]),
        .R(\wr_data_reg_reg[0]_0 ));
  FDRE \wr_data_reg[22] 
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(D[18]),
        .Q(wr_data[22]),
        .R(\wr_data_reg_reg[0]_0 ));
  FDRE \wr_data_reg[23] 
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(D[19]),
        .Q(wr_data[23]),
        .R(\wr_data_reg_reg[0]_0 ));
  FDRE \wr_data_reg[25] 
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(D[20]),
        .Q(wr_data[25]),
        .R(\wr_data_reg_reg[0]_0 ));
  FDRE \wr_data_reg[26] 
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(D[21]),
        .Q(wr_data[26]),
        .R(\wr_data_reg_reg[0]_0 ));
  FDRE \wr_data_reg[27] 
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(D[22]),
        .Q(wr_data[27]),
        .R(\wr_data_reg_reg[0]_0 ));
  FDRE \wr_data_reg[28] 
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(D[23]),
        .Q(wr_data[28]),
        .R(\wr_data_reg_reg[0]_0 ));
  FDRE \wr_data_reg[2] 
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(D[2]),
        .Q(wr_data[2]),
        .R(\wr_data_reg_reg[0]_0 ));
  FDRE \wr_data_reg[3] 
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(D[3]),
        .Q(wr_data[3]),
        .R(\wr_data_reg_reg[0]_0 ));
  FDRE \wr_data_reg[4] 
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(D[4]),
        .Q(wr_data[4]),
        .R(\wr_data_reg_reg[0]_0 ));
  FDRE \wr_data_reg[5] 
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(D[5]),
        .Q(wr_data[5]),
        .R(\wr_data_reg_reg[0]_0 ));
  FDRE \wr_data_reg[6] 
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(D[6]),
        .Q(wr_data[6]),
        .R(\wr_data_reg_reg[0]_0 ));
  FDRE \wr_data_reg[7] 
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(D[7]),
        .Q(wr_data[7]),
        .R(\wr_data_reg_reg[0]_0 ));
  FDRE \wr_data_reg[9] 
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(D[8]),
        .Q(wr_data[9]),
        .R(\wr_data_reg_reg[0]_0 ));
  FDRE \wr_data_reg_reg[0] 
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(wr_data[0]),
        .Q(wr_data_reg[0]),
        .R(\wr_data_reg_reg[0]_0 ));
  FDRE \wr_data_reg_reg[10] 
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(wr_data[10]),
        .Q(wr_data_reg[10]),
        .R(\wr_data_reg_reg[0]_0 ));
  FDRE \wr_data_reg_reg[11] 
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(wr_data[11]),
        .Q(wr_data_reg[11]),
        .R(\wr_data_reg_reg[0]_0 ));
  FDRE \wr_data_reg_reg[12] 
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(wr_data[12]),
        .Q(wr_data_reg[12]),
        .R(\wr_data_reg_reg[0]_0 ));
  FDRE \wr_data_reg_reg[13] 
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(remove_idle),
        .Q(wr_data_reg[13]),
        .R(\wr_data_reg_reg[0]_0 ));
  FDRE \wr_data_reg_reg[16] 
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(wr_data[16]),
        .Q(wr_data_reg[16]),
        .R(\wr_data_reg_reg[0]_0 ));
  FDRE \wr_data_reg_reg[17] 
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(wr_data[17]),
        .Q(wr_data_reg[17]),
        .R(\wr_data_reg_reg[0]_0 ));
  FDRE \wr_data_reg_reg[18] 
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(wr_data[18]),
        .Q(wr_data_reg[18]),
        .R(\wr_data_reg_reg[0]_0 ));
  FDRE \wr_data_reg_reg[19] 
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(wr_data[19]),
        .Q(wr_data_reg[19]),
        .R(\wr_data_reg_reg[0]_0 ));
  FDRE \wr_data_reg_reg[1] 
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(wr_data[1]),
        .Q(wr_data_reg[1]),
        .R(\wr_data_reg_reg[0]_0 ));
  FDRE \wr_data_reg_reg[20] 
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(wr_data[20]),
        .Q(wr_data_reg[20]),
        .R(\wr_data_reg_reg[0]_0 ));
  FDRE \wr_data_reg_reg[21] 
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(wr_data[21]),
        .Q(wr_data_reg[21]),
        .R(\wr_data_reg_reg[0]_0 ));
  FDRE \wr_data_reg_reg[22] 
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(wr_data[22]),
        .Q(wr_data_reg[22]),
        .R(\wr_data_reg_reg[0]_0 ));
  FDRE \wr_data_reg_reg[23] 
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(wr_data[23]),
        .Q(wr_data_reg[23]),
        .R(\wr_data_reg_reg[0]_0 ));
  FDRE \wr_data_reg_reg[25] 
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(wr_data[25]),
        .Q(wr_data_reg[25]),
        .R(\wr_data_reg_reg[0]_0 ));
  FDRE \wr_data_reg_reg[26] 
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(wr_data[26]),
        .Q(wr_data_reg[26]),
        .R(\wr_data_reg_reg[0]_0 ));
  FDRE \wr_data_reg_reg[27] 
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(wr_data[27]),
        .Q(wr_data_reg[27]),
        .R(\wr_data_reg_reg[0]_0 ));
  FDRE \wr_data_reg_reg[28] 
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(wr_data[28]),
        .Q(wr_data_reg[28]),
        .R(\wr_data_reg_reg[0]_0 ));
  FDRE \wr_data_reg_reg[2] 
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(wr_data[2]),
        .Q(wr_data_reg[2]),
        .R(\wr_data_reg_reg[0]_0 ));
  FDRE \wr_data_reg_reg[3] 
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(wr_data[3]),
        .Q(wr_data_reg[3]),
        .R(\wr_data_reg_reg[0]_0 ));
  FDRE \wr_data_reg_reg[4] 
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(wr_data[4]),
        .Q(wr_data_reg[4]),
        .R(\wr_data_reg_reg[0]_0 ));
  FDRE \wr_data_reg_reg[5] 
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(wr_data[5]),
        .Q(wr_data_reg[5]),
        .R(\wr_data_reg_reg[0]_0 ));
  FDRE \wr_data_reg_reg[6] 
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(wr_data[6]),
        .Q(wr_data_reg[6]),
        .R(\wr_data_reg_reg[0]_0 ));
  FDRE \wr_data_reg_reg[7] 
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(wr_data[7]),
        .Q(wr_data_reg[7]),
        .R(\wr_data_reg_reg[0]_0 ));
  FDRE \wr_data_reg_reg[9] 
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(wr_data[9]),
        .Q(wr_data_reg[9]),
        .R(\wr_data_reg_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h0F0FFFDFFFFFFFFF)) 
    wr_enable_i_1
       (.I0(wr_enable_i_2_n_0),
        .I1(wr_enable_i_3_n_0),
        .I2(p_18_in),
        .I3(wr_enable_i_4_n_0),
        .I4(wr_enable_i_5_n_0),
        .I5(initialize_ram_complete),
        .O(wr_enable_i_1_n_0));
  LUT5 #(
    .INIT(32'h00200000)) 
    wr_enable_i_2
       (.I0(wr_occupancy[4]),
        .I1(remove_idle_reg2),
        .I2(wr_occupancy[5]),
        .I3(remove_idle_reg1),
        .I4(wr_enable_i_6_n_0),
        .O(wr_enable_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    wr_enable_i_3
       (.I0(d21p5_wr_reg2),
        .I1(d2p2_wr_reg2),
        .O(wr_enable_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFABFFFFFFFBFFF)) 
    wr_enable_i_4
       (.I0(wr_enable_i_7_n_0),
        .I1(d21p5_wr_reg_i_2_n_0),
        .I2(wr_data[0]),
        .I3(wr_data[2]),
        .I4(wr_data[1]),
        .I5(d2p2_wr_reg_i_2_n_0),
        .O(wr_enable_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    wr_enable_i_5
       (.I0(wr_enable_i_8_n_0),
        .I1(wr_enable_i_9_n_0),
        .I2(wr_data[2]),
        .I3(wr_data[1]),
        .I4(wr_data[0]),
        .I5(d16p2_wr_reg_i_2_n_0),
        .O(wr_enable_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    wr_enable_i_6
       (.I0(wr_occupancy[0]),
        .I1(wr_occupancy[3]),
        .I2(wr_occupancy[2]),
        .I3(wr_occupancy[1]),
        .O(wr_enable_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT2 #(
    .INIT(4'hB)) 
    wr_enable_i_7
       (.I0(remove_idle),
        .I1(k28p5_wr_reg2),
        .O(wr_enable_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    wr_enable_i_8
       (.I0(wr_occupancy[2]),
        .I1(wr_occupancy[1]),
        .I2(wr_occupancy[4]),
        .I3(wr_occupancy[3]),
        .O(wr_enable_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    wr_enable_i_9
       (.I0(d16p2_wr_reg),
        .I1(wr_occupancy[5]),
        .I2(remove_idle),
        .I3(k28p5_wr_reg),
        .O(wr_enable_i_9_n_0));
  FDRE wr_enable_reg
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(wr_enable_i_1_n_0),
        .Q(wr_enable),
        .R(reset_out));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 wr_occupancy0_carry
       (.CI(1'b0),
        .CO({wr_occupancy0_carry_n_0,wr_occupancy0_carry_n_1,wr_occupancy0_carry_n_2,wr_occupancy0_carry_n_3}),
        .CYINIT(1'b1),
        .DI(wr_addr[3:0]),
        .O(wr_occupancy00_out[3:0]),
        .S({\reclock_rd_addrgray[4].sync_rd_addrgray_n_0 ,\reclock_rd_addrgray[3].sync_rd_addrgray_n_0 ,\reclock_rd_addrgray[2].sync_rd_addrgray_n_0 ,\reclock_rd_addrgray[1].sync_rd_addrgray_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 wr_occupancy0_carry__0
       (.CI(wr_occupancy0_carry_n_0),
        .CO({NLW_wr_occupancy0_carry__0_CO_UNCONNECTED[3:1],wr_occupancy0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,wr_addr[4]}),
        .O({NLW_wr_occupancy0_carry__0_O_UNCONNECTED[3:2],wr_occupancy00_out[5:4]}),
        .S({1'b0,1'b0,\reclock_rd_addrgray[5].sync_rd_addrgray_n_0 ,\reclock_rd_addrgray[5].sync_rd_addrgray_n_1 }));
  FDRE \wr_occupancy_reg[0] 
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(wr_occupancy00_out[0]),
        .Q(wr_occupancy[0]),
        .R(\wr_data_reg_reg[0]_0 ));
  FDRE \wr_occupancy_reg[1] 
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(wr_occupancy00_out[1]),
        .Q(wr_occupancy[1]),
        .R(\wr_data_reg_reg[0]_0 ));
  FDRE \wr_occupancy_reg[2] 
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(wr_occupancy00_out[2]),
        .Q(wr_occupancy[2]),
        .R(\wr_data_reg_reg[0]_0 ));
  FDRE \wr_occupancy_reg[3] 
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(wr_occupancy00_out[3]),
        .Q(wr_occupancy[3]),
        .R(\wr_data_reg_reg[0]_0 ));
  FDRE \wr_occupancy_reg[4] 
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(wr_occupancy00_out[4]),
        .Q(wr_occupancy[4]),
        .R(\wr_data_reg_reg[0]_0 ));
  FDSE \wr_occupancy_reg[5] 
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(wr_occupancy00_out[5]),
        .Q(wr_occupancy[5]),
        .S(\wr_data_reg_reg[0]_0 ));
endmodule

module gig_ethernet_pcs_pma_1_rx_rate_adapt
   (gmii_rx_dv_out_reg_0,
    gmii_rx_er_out_reg_0,
    gmii_rxd,
    reset_out,
    rx_er_aligned_reg_0,
    gmii_rx_dv,
    userclk2,
    gmii_rx_er,
    D);
  output gmii_rx_dv_out_reg_0;
  output gmii_rx_er_out_reg_0;
  output [7:0]gmii_rxd;
  input reset_out;
  input rx_er_aligned_reg_0;
  input gmii_rx_dv;
  input userclk2;
  input gmii_rx_er;
  input [7:0]D;

  wire [7:0]D;
  wire gmii_rx_dv;
  wire gmii_rx_dv_out_reg_0;
  wire gmii_rx_er;
  wire gmii_rx_er_out_reg_0;
  wire [7:0]gmii_rxd;
  wire muxsel;
  wire muxsel_i_1_n_0;
  wire [3:0]p_0_in;
  wire reset_out;
  wire rx_dv_aligned;
  wire rx_dv_aligned_i_1_n_0;
  wire rx_dv_reg1;
  wire rx_dv_reg2;
  wire rx_er_aligned;
  wire rx_er_aligned_0;
  wire rx_er_aligned_reg_0;
  wire rx_er_reg1;
  wire rx_er_reg2;
  wire [7:0]rxd_aligned;
  wire \rxd_aligned[0]_i_1_n_0 ;
  wire \rxd_aligned[1]_i_1_n_0 ;
  wire \rxd_aligned[2]_i_1_n_0 ;
  wire \rxd_aligned[3]_i_1_n_0 ;
  wire \rxd_aligned[4]_i_1_n_0 ;
  wire \rxd_aligned[5]_i_1_n_0 ;
  wire \rxd_aligned[6]_i_1_n_0 ;
  wire \rxd_aligned[7]_i_1_n_0 ;
  wire \rxd_reg1_reg_n_0_[0] ;
  wire \rxd_reg1_reg_n_0_[1] ;
  wire \rxd_reg1_reg_n_0_[2] ;
  wire \rxd_reg1_reg_n_0_[3] ;
  wire [7:0]rxd_reg2;
  wire sfd_enable;
  wire sfd_enable0;
  wire sfd_enable_i_1_n_0;
  wire sfd_enable_i_2_n_0;
  wire sfd_enable_i_4_n_0;
  wire sfd_enable_i_5_n_0;
  wire userclk2;

  FDRE #(
    .INIT(1'b0)) 
    gmii_rx_dv_out_reg
       (.C(userclk2),
        .CE(rx_er_aligned_reg_0),
        .D(rx_dv_aligned),
        .Q(gmii_rx_dv_out_reg_0),
        .R(reset_out));
  FDRE #(
    .INIT(1'b0)) 
    gmii_rx_er_out_reg
       (.C(userclk2),
        .CE(rx_er_aligned_reg_0),
        .D(rx_er_aligned),
        .Q(gmii_rx_er_out_reg_0),
        .R(reset_out));
  FDRE #(
    .INIT(1'b0)) 
    \gmii_rxd_out_reg[0] 
       (.C(userclk2),
        .CE(rx_er_aligned_reg_0),
        .D(rxd_aligned[0]),
        .Q(gmii_rxd[0]),
        .R(reset_out));
  FDRE #(
    .INIT(1'b0)) 
    \gmii_rxd_out_reg[1] 
       (.C(userclk2),
        .CE(rx_er_aligned_reg_0),
        .D(rxd_aligned[1]),
        .Q(gmii_rxd[1]),
        .R(reset_out));
  FDRE #(
    .INIT(1'b0)) 
    \gmii_rxd_out_reg[2] 
       (.C(userclk2),
        .CE(rx_er_aligned_reg_0),
        .D(rxd_aligned[2]),
        .Q(gmii_rxd[2]),
        .R(reset_out));
  FDRE #(
    .INIT(1'b0)) 
    \gmii_rxd_out_reg[3] 
       (.C(userclk2),
        .CE(rx_er_aligned_reg_0),
        .D(rxd_aligned[3]),
        .Q(gmii_rxd[3]),
        .R(reset_out));
  FDRE #(
    .INIT(1'b0)) 
    \gmii_rxd_out_reg[4] 
       (.C(userclk2),
        .CE(rx_er_aligned_reg_0),
        .D(rxd_aligned[4]),
        .Q(gmii_rxd[4]),
        .R(reset_out));
  FDRE #(
    .INIT(1'b0)) 
    \gmii_rxd_out_reg[5] 
       (.C(userclk2),
        .CE(rx_er_aligned_reg_0),
        .D(rxd_aligned[5]),
        .Q(gmii_rxd[5]),
        .R(reset_out));
  FDRE #(
    .INIT(1'b0)) 
    \gmii_rxd_out_reg[6] 
       (.C(userclk2),
        .CE(rx_er_aligned_reg_0),
        .D(rxd_aligned[6]),
        .Q(gmii_rxd[6]),
        .R(reset_out));
  FDRE #(
    .INIT(1'b0)) 
    \gmii_rxd_out_reg[7] 
       (.C(userclk2),
        .CE(rx_er_aligned_reg_0),
        .D(rxd_aligned[7]),
        .Q(gmii_rxd[7]),
        .R(reset_out));
  LUT6 #(
    .INIT(64'h00000000CCCCA8CC)) 
    muxsel_i_1
       (.I0(sfd_enable_i_5_n_0),
        .I1(muxsel),
        .I2(sfd_enable_i_2_n_0),
        .I3(sfd_enable),
        .I4(sfd_enable_i_4_n_0),
        .I5(reset_out),
        .O(muxsel_i_1_n_0));
  FDRE muxsel_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(muxsel_i_1_n_0),
        .Q(muxsel),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hB0)) 
    rx_dv_aligned_i_1
       (.I0(rx_dv_reg1),
        .I1(muxsel),
        .I2(rx_dv_reg2),
        .O(rx_dv_aligned_i_1_n_0));
  FDRE rx_dv_aligned_reg
       (.C(userclk2),
        .CE(rx_er_aligned_reg_0),
        .D(rx_dv_aligned_i_1_n_0),
        .Q(rx_dv_aligned),
        .R(reset_out));
  FDRE rx_dv_reg1_reg
       (.C(userclk2),
        .CE(rx_er_aligned_reg_0),
        .D(gmii_rx_dv),
        .Q(rx_dv_reg1),
        .R(reset_out));
  FDRE rx_dv_reg2_reg
       (.C(userclk2),
        .CE(rx_er_aligned_reg_0),
        .D(rx_dv_reg1),
        .Q(rx_dv_reg2),
        .R(reset_out));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    rx_er_aligned_i_1
       (.I0(muxsel),
        .I1(rx_er_reg1),
        .I2(rx_er_reg2),
        .O(rx_er_aligned_0));
  FDRE rx_er_aligned_reg
       (.C(userclk2),
        .CE(rx_er_aligned_reg_0),
        .D(rx_er_aligned_0),
        .Q(rx_er_aligned),
        .R(reset_out));
  FDRE rx_er_reg1_reg
       (.C(userclk2),
        .CE(rx_er_aligned_reg_0),
        .D(gmii_rx_er),
        .Q(rx_er_reg1),
        .R(reset_out));
  FDRE rx_er_reg2_reg
       (.C(userclk2),
        .CE(rx_er_aligned_reg_0),
        .D(rx_er_reg1),
        .Q(rx_er_reg2),
        .R(reset_out));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rxd_aligned[0]_i_1 
       (.I0(rxd_reg2[4]),
        .I1(muxsel),
        .I2(rxd_reg2[0]),
        .O(\rxd_aligned[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rxd_aligned[1]_i_1 
       (.I0(rxd_reg2[5]),
        .I1(muxsel),
        .I2(rxd_reg2[1]),
        .O(\rxd_aligned[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rxd_aligned[2]_i_1 
       (.I0(rxd_reg2[6]),
        .I1(muxsel),
        .I2(rxd_reg2[2]),
        .O(\rxd_aligned[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \rxd_aligned[3]_i_1 
       (.I0(rxd_reg2[7]),
        .I1(muxsel),
        .I2(rxd_reg2[3]),
        .O(\rxd_aligned[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rxd_aligned[4]_i_1 
       (.I0(\rxd_reg1_reg_n_0_[0] ),
        .I1(muxsel),
        .I2(rxd_reg2[4]),
        .O(\rxd_aligned[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rxd_aligned[5]_i_1 
       (.I0(\rxd_reg1_reg_n_0_[1] ),
        .I1(muxsel),
        .I2(rxd_reg2[5]),
        .O(\rxd_aligned[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rxd_aligned[6]_i_1 
       (.I0(\rxd_reg1_reg_n_0_[2] ),
        .I1(muxsel),
        .I2(rxd_reg2[6]),
        .O(\rxd_aligned[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rxd_aligned[7]_i_1 
       (.I0(\rxd_reg1_reg_n_0_[3] ),
        .I1(muxsel),
        .I2(rxd_reg2[7]),
        .O(\rxd_aligned[7]_i_1_n_0 ));
  FDRE \rxd_aligned_reg[0] 
       (.C(userclk2),
        .CE(rx_er_aligned_reg_0),
        .D(\rxd_aligned[0]_i_1_n_0 ),
        .Q(rxd_aligned[0]),
        .R(reset_out));
  FDRE \rxd_aligned_reg[1] 
       (.C(userclk2),
        .CE(rx_er_aligned_reg_0),
        .D(\rxd_aligned[1]_i_1_n_0 ),
        .Q(rxd_aligned[1]),
        .R(reset_out));
  FDRE \rxd_aligned_reg[2] 
       (.C(userclk2),
        .CE(rx_er_aligned_reg_0),
        .D(\rxd_aligned[2]_i_1_n_0 ),
        .Q(rxd_aligned[2]),
        .R(reset_out));
  FDRE \rxd_aligned_reg[3] 
       (.C(userclk2),
        .CE(rx_er_aligned_reg_0),
        .D(\rxd_aligned[3]_i_1_n_0 ),
        .Q(rxd_aligned[3]),
        .R(reset_out));
  FDRE \rxd_aligned_reg[4] 
       (.C(userclk2),
        .CE(rx_er_aligned_reg_0),
        .D(\rxd_aligned[4]_i_1_n_0 ),
        .Q(rxd_aligned[4]),
        .R(reset_out));
  FDRE \rxd_aligned_reg[5] 
       (.C(userclk2),
        .CE(rx_er_aligned_reg_0),
        .D(\rxd_aligned[5]_i_1_n_0 ),
        .Q(rxd_aligned[5]),
        .R(reset_out));
  FDRE \rxd_aligned_reg[6] 
       (.C(userclk2),
        .CE(rx_er_aligned_reg_0),
        .D(\rxd_aligned[6]_i_1_n_0 ),
        .Q(rxd_aligned[6]),
        .R(reset_out));
  FDRE \rxd_aligned_reg[7] 
       (.C(userclk2),
        .CE(rx_er_aligned_reg_0),
        .D(\rxd_aligned[7]_i_1_n_0 ),
        .Q(rxd_aligned[7]),
        .R(reset_out));
  FDRE \rxd_reg1_reg[0] 
       (.C(userclk2),
        .CE(rx_er_aligned_reg_0),
        .D(D[0]),
        .Q(\rxd_reg1_reg_n_0_[0] ),
        .R(reset_out));
  FDRE \rxd_reg1_reg[1] 
       (.C(userclk2),
        .CE(rx_er_aligned_reg_0),
        .D(D[1]),
        .Q(\rxd_reg1_reg_n_0_[1] ),
        .R(reset_out));
  FDRE \rxd_reg1_reg[2] 
       (.C(userclk2),
        .CE(rx_er_aligned_reg_0),
        .D(D[2]),
        .Q(\rxd_reg1_reg_n_0_[2] ),
        .R(reset_out));
  FDRE \rxd_reg1_reg[3] 
       (.C(userclk2),
        .CE(rx_er_aligned_reg_0),
        .D(D[3]),
        .Q(\rxd_reg1_reg_n_0_[3] ),
        .R(reset_out));
  FDRE \rxd_reg1_reg[4] 
       (.C(userclk2),
        .CE(rx_er_aligned_reg_0),
        .D(D[4]),
        .Q(p_0_in[0]),
        .R(reset_out));
  FDRE \rxd_reg1_reg[5] 
       (.C(userclk2),
        .CE(rx_er_aligned_reg_0),
        .D(D[5]),
        .Q(p_0_in[1]),
        .R(reset_out));
  FDRE \rxd_reg1_reg[6] 
       (.C(userclk2),
        .CE(rx_er_aligned_reg_0),
        .D(D[6]),
        .Q(p_0_in[2]),
        .R(reset_out));
  FDRE \rxd_reg1_reg[7] 
       (.C(userclk2),
        .CE(rx_er_aligned_reg_0),
        .D(D[7]),
        .Q(p_0_in[3]),
        .R(reset_out));
  FDRE \rxd_reg2_reg[0] 
       (.C(userclk2),
        .CE(rx_er_aligned_reg_0),
        .D(\rxd_reg1_reg_n_0_[0] ),
        .Q(rxd_reg2[0]),
        .R(reset_out));
  FDRE \rxd_reg2_reg[1] 
       (.C(userclk2),
        .CE(rx_er_aligned_reg_0),
        .D(\rxd_reg1_reg_n_0_[1] ),
        .Q(rxd_reg2[1]),
        .R(reset_out));
  FDRE \rxd_reg2_reg[2] 
       (.C(userclk2),
        .CE(rx_er_aligned_reg_0),
        .D(\rxd_reg1_reg_n_0_[2] ),
        .Q(rxd_reg2[2]),
        .R(reset_out));
  FDRE \rxd_reg2_reg[3] 
       (.C(userclk2),
        .CE(rx_er_aligned_reg_0),
        .D(\rxd_reg1_reg_n_0_[3] ),
        .Q(rxd_reg2[3]),
        .R(reset_out));
  FDRE \rxd_reg2_reg[4] 
       (.C(userclk2),
        .CE(rx_er_aligned_reg_0),
        .D(p_0_in[0]),
        .Q(rxd_reg2[4]),
        .R(reset_out));
  FDRE \rxd_reg2_reg[5] 
       (.C(userclk2),
        .CE(rx_er_aligned_reg_0),
        .D(p_0_in[1]),
        .Q(rxd_reg2[5]),
        .R(reset_out));
  FDRE \rxd_reg2_reg[6] 
       (.C(userclk2),
        .CE(rx_er_aligned_reg_0),
        .D(p_0_in[2]),
        .Q(rxd_reg2[6]),
        .R(reset_out));
  FDRE \rxd_reg2_reg[7] 
       (.C(userclk2),
        .CE(rx_er_aligned_reg_0),
        .D(p_0_in[3]),
        .Q(rxd_reg2[7]),
        .R(reset_out));
  LUT6 #(
    .INIT(64'hFFDDFFCCC0C8C0CC)) 
    sfd_enable_i_1
       (.I0(sfd_enable_i_2_n_0),
        .I1(sfd_enable0),
        .I2(rx_er_aligned_reg_0),
        .I3(sfd_enable_i_4_n_0),
        .I4(sfd_enable_i_5_n_0),
        .I5(sfd_enable),
        .O(sfd_enable_i_1_n_0));
  LUT5 #(
    .INIT(32'h04000000)) 
    sfd_enable_i_2
       (.I0(p_0_in[3]),
        .I1(D[0]),
        .I2(D[1]),
        .I3(D[3]),
        .I4(D[2]),
        .O(sfd_enable_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'h2)) 
    sfd_enable_i_3
       (.I0(gmii_rx_dv),
        .I1(rx_dv_reg1),
        .O(sfd_enable0));
  LUT4 #(
    .INIT(16'hDFFF)) 
    sfd_enable_i_4
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(rx_er_aligned_reg_0),
        .I3(p_0_in[2]),
        .O(sfd_enable_i_4_n_0));
  LUT5 #(
    .INIT(32'hFFFFDFFF)) 
    sfd_enable_i_5
       (.I0(\rxd_reg1_reg_n_0_[0] ),
        .I1(\rxd_reg1_reg_n_0_[3] ),
        .I2(p_0_in[3]),
        .I3(\rxd_reg1_reg_n_0_[2] ),
        .I4(\rxd_reg1_reg_n_0_[1] ),
        .O(sfd_enable_i_5_n_0));
  FDRE sfd_enable_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(sfd_enable_i_1_n_0),
        .Q(sfd_enable),
        .R(reset_out));
endmodule

module gig_ethernet_pcs_pma_1_sgmii_adapt
   (sgmii_clk_r,
    sgmii_clk_en_reg,
    gmii_rx_dv_out_reg,
    gmii_rx_er_out_reg,
    gmii_tx_en,
    gmii_tx_er,
    sgmii_clk_f,
    gmii_rxd,
    Q,
    userclk2,
    gmii_rx_dv,
    gmii_rx_er,
    gmii_tx_en_out_reg,
    gmii_tx_er_out_reg,
    SR,
    speed_is_10_100,
    speed_is_100,
    D,
    gmii_txd);
  output sgmii_clk_r;
  output sgmii_clk_en_reg;
  output gmii_rx_dv_out_reg;
  output gmii_rx_er_out_reg;
  output gmii_tx_en;
  output gmii_tx_er;
  output sgmii_clk_f;
  output [7:0]gmii_rxd;
  output [7:0]Q;
  input userclk2;
  input gmii_rx_dv;
  input gmii_rx_er;
  input gmii_tx_en_out_reg;
  input gmii_tx_er_out_reg;
  input [0:0]SR;
  input speed_is_10_100;
  input speed_is_100;
  input [7:0]D;
  input [7:0]gmii_txd;

  wire [7:0]D;
  wire [7:0]Q;
  wire [0:0]SR;
  wire gmii_rx_dv;
  wire gmii_rx_dv_out_reg;
  wire gmii_rx_er;
  wire gmii_rx_er_out_reg;
  wire [7:0]gmii_rxd;
  wire gmii_tx_en;
  wire gmii_tx_en_out_reg;
  wire gmii_tx_er;
  wire gmii_tx_er_out_reg;
  wire [7:0]gmii_txd;
  wire sgmii_clk_en_reg;
  wire sgmii_clk_f;
  wire sgmii_clk_r;
  wire speed_is_100;
  wire speed_is_100_resync;
  wire speed_is_10_100;
  wire speed_is_10_100_resync;
  wire sync_reset;
  wire userclk2;

  gig_ethernet_pcs_pma_1_clk_gen clock_generation
       (.data_out(speed_is_100_resync),
        .reset_out(sync_reset),
        .sgmii_clk_en_reg_0(sgmii_clk_en_reg),
        .sgmii_clk_f(sgmii_clk_f),
        .sgmii_clk_r(sgmii_clk_r),
        .speed_is_10_100_fall_reg_0(speed_is_10_100_resync),
        .userclk2(userclk2));
  gig_ethernet_pcs_pma_1_reset_sync_30 gen_sync_reset
       (.SR(SR),
        .reset_out(sync_reset),
        .userclk2(userclk2));
  gig_ethernet_pcs_pma_1_rx_rate_adapt receiver
       (.D(D),
        .gmii_rx_dv(gmii_rx_dv),
        .gmii_rx_dv_out_reg_0(gmii_rx_dv_out_reg),
        .gmii_rx_er(gmii_rx_er),
        .gmii_rx_er_out_reg_0(gmii_rx_er_out_reg),
        .gmii_rxd(gmii_rxd),
        .reset_out(sync_reset),
        .rx_er_aligned_reg_0(sgmii_clk_en_reg),
        .userclk2(userclk2));
  gig_ethernet_pcs_pma_1_sync_block_31 resync_speed_100
       (.data_out(speed_is_100_resync),
        .speed_is_100(speed_is_100),
        .userclk2(userclk2));
  gig_ethernet_pcs_pma_1_sync_block_32 resync_speed_10_100
       (.data_out(speed_is_10_100_resync),
        .speed_is_10_100(speed_is_10_100),
        .userclk2(userclk2));
  gig_ethernet_pcs_pma_1_tx_rate_adapt transmitter
       (.E(sgmii_clk_en_reg),
        .Q(Q),
        .gmii_tx_en(gmii_tx_en),
        .gmii_tx_en_out_reg_0(gmii_tx_en_out_reg),
        .gmii_tx_er(gmii_tx_er),
        .gmii_tx_er_out_reg_0(gmii_tx_er_out_reg),
        .gmii_txd(gmii_txd),
        .reset_out(sync_reset),
        .userclk2(userclk2));
endmodule

module gig_ethernet_pcs_pma_1_sync_block
   (data_out,
    Q,
    rxuserclk2);
  output data_out;
  input [0:0]Q;
  input rxuserclk2;

  wire [0:0]Q;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire rxuserclk2;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(Q),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_sync_block" *) 
module gig_ethernet_pcs_pma_1_sync_block_10
   (data_out,
    Q,
    userclk2);
  output data_out;
  input [0:0]Q;
  input userclk2;

  wire [0:0]Q;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire userclk2;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(userclk2),
        .CE(1'b1),
        .D(Q),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_sync_block" *) 
module gig_ethernet_pcs_pma_1_sync_block_11
   (S,
    data_sync_reg6_0,
    DI,
    data_out,
    Q,
    data_sync_reg1_0,
    userclk2);
  output [0:0]S;
  output data_sync_reg6_0;
  input [0:0]DI;
  input data_out;
  input [0:0]Q;
  input [0:0]data_sync_reg1_0;
  input userclk2;

  wire [0:0]DI;
  wire [0:0]Q;
  wire [0:0]S;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire [0:0]data_sync_reg1_0;
  wire data_sync_reg6_0;
  wire userclk2;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync_reg1_0),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_sync_reg6_0),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h69)) 
    rd_occupancy0_carry_i_8
       (.I0(DI),
        .I1(data_out),
        .I2(Q),
        .O(S));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_sync_block" *) 
module gig_ethernet_pcs_pma_1_sync_block_12
   (S,
    data_out,
    \rd_occupancy_reg[3] ,
    \rd_occupancy_reg[3]_0 ,
    \rd_occupancy_reg[3]_1 ,
    \rd_occupancy_reg[3]_2 ,
    Q,
    data_sync_reg1_0,
    userclk2);
  output [0:0]S;
  output data_out;
  input \rd_occupancy_reg[3] ;
  input \rd_occupancy_reg[3]_0 ;
  input \rd_occupancy_reg[3]_1 ;
  input \rd_occupancy_reg[3]_2 ;
  input [0:0]Q;
  input [0:0]data_sync_reg1_0;
  input userclk2;

  wire [0:0]Q;
  wire [0:0]S;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire [0:0]data_sync_reg1_0;
  wire \rd_occupancy_reg[3] ;
  wire \rd_occupancy_reg[3]_0 ;
  wire \rd_occupancy_reg[3]_1 ;
  wire \rd_occupancy_reg[3]_2 ;
  wire userclk2;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync_reg1_0),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    rd_occupancy0_carry_i_7
       (.I0(data_out),
        .I1(\rd_occupancy_reg[3] ),
        .I2(\rd_occupancy_reg[3]_0 ),
        .I3(\rd_occupancy_reg[3]_1 ),
        .I4(\rd_occupancy_reg[3]_2 ),
        .I5(Q),
        .O(S));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_sync_block" *) 
module gig_ethernet_pcs_pma_1_sync_block_13
   (S,
    data_out,
    \rd_occupancy_reg[3] ,
    \rd_occupancy_reg[3]_0 ,
    \rd_occupancy_reg[3]_1 ,
    Q,
    data_sync_reg1_0,
    userclk2);
  output [0:0]S;
  output data_out;
  input \rd_occupancy_reg[3] ;
  input \rd_occupancy_reg[3]_0 ;
  input \rd_occupancy_reg[3]_1 ;
  input [0:0]Q;
  input [0:0]data_sync_reg1_0;
  input userclk2;

  wire [0:0]Q;
  wire [0:0]S;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire [0:0]data_sync_reg1_0;
  wire \rd_occupancy_reg[3] ;
  wire \rd_occupancy_reg[3]_0 ;
  wire \rd_occupancy_reg[3]_1 ;
  wire userclk2;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync_reg1_0),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h69969669)) 
    rd_occupancy0_carry_i_6
       (.I0(data_out),
        .I1(\rd_occupancy_reg[3] ),
        .I2(\rd_occupancy_reg[3]_0 ),
        .I3(\rd_occupancy_reg[3]_1 ),
        .I4(Q),
        .O(S));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_sync_block" *) 
module gig_ethernet_pcs_pma_1_sync_block_14
   (S,
    data_out,
    \rd_occupancy_reg[3] ,
    \rd_occupancy_reg[3]_0 ,
    Q,
    data_sync_reg1_0,
    userclk2);
  output [0:0]S;
  output data_out;
  input \rd_occupancy_reg[3] ;
  input \rd_occupancy_reg[3]_0 ;
  input [0:0]Q;
  input [0:0]data_sync_reg1_0;
  input userclk2;

  wire [0:0]Q;
  wire [0:0]S;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire [0:0]data_sync_reg1_0;
  wire \rd_occupancy_reg[3] ;
  wire \rd_occupancy_reg[3]_0 ;
  wire userclk2;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync_reg1_0),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h9669)) 
    rd_occupancy0_carry_i_5
       (.I0(data_out),
        .I1(\rd_occupancy_reg[3] ),
        .I2(\rd_occupancy_reg[3]_0 ),
        .I3(Q),
        .O(S));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_sync_block" *) 
module gig_ethernet_pcs_pma_1_sync_block_15
   (S,
    data_out,
    \rd_occupancy_reg[5] ,
    Q,
    data_sync_reg1_0,
    userclk2);
  output [1:0]S;
  output data_out;
  input \rd_occupancy_reg[5] ;
  input [1:0]Q;
  input [0:0]data_sync_reg1_0;
  input userclk2;

  wire [1:0]Q;
  wire [1:0]S;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire [0:0]data_sync_reg1_0;
  wire \rd_occupancy_reg[5] ;
  wire userclk2;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync_reg1_0),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h9)) 
    rd_occupancy0_carry__0_i_2
       (.I0(data_out),
        .I1(Q[1]),
        .O(S[1]));
  LUT3 #(
    .INIT(8'h69)) 
    rd_occupancy0_carry__0_i_3
       (.I0(data_out),
        .I1(\rd_occupancy_reg[5] ),
        .I2(Q[0]),
        .O(S[0]));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_sync_block" *) 
module gig_ethernet_pcs_pma_1_sync_block_16
   (initialize_ram_complete_sync_ris_edg0,
    data_out,
    initialize_ram_complete_sync_reg1,
    data_in,
    userclk2);
  output initialize_ram_complete_sync_ris_edg0;
  output data_out;
  input initialize_ram_complete_sync_reg1;
  input data_in;
  input userclk2;

  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire initialize_ram_complete_sync_reg1;
  wire initialize_ram_complete_sync_ris_edg0;
  wire userclk2;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(userclk2),
        .CE(1'b1),
        .D(data_in),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    initialize_ram_complete_sync_ris_edg_i_1
       (.I0(data_out),
        .I1(initialize_ram_complete_sync_reg1),
        .O(initialize_ram_complete_sync_ris_edg0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_sync_block" *) 
module gig_ethernet_pcs_pma_1_sync_block_31
   (data_out,
    speed_is_100,
    userclk2);
  output data_out;
  input speed_is_100;
  input userclk2;

  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire speed_is_100;
  wire userclk2;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(userclk2),
        .CE(1'b1),
        .D(speed_is_100),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_sync_block" *) 
module gig_ethernet_pcs_pma_1_sync_block_32
   (data_out,
    speed_is_10_100,
    userclk2);
  output data_out;
  input speed_is_10_100;
  input userclk2;

  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire speed_is_10_100;
  wire userclk2;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(userclk2),
        .CE(1'b1),
        .D(speed_is_10_100),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_sync_block" *) 
module gig_ethernet_pcs_pma_1_sync_block_5
   (S,
    data_sync_reg6_0,
    Q,
    p_25_in,
    data_out,
    data_sync_reg1_0,
    rxuserclk2);
  output [0:0]S;
  output data_sync_reg6_0;
  input [0:0]Q;
  input p_25_in;
  input data_out;
  input [0:0]data_sync_reg1_0;
  input rxuserclk2;

  wire [0:0]Q;
  wire [0:0]S;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire [0:0]data_sync_reg1_0;
  wire data_sync_reg6_0;
  wire p_25_in;
  wire rxuserclk2;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(data_sync_reg1_0),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_sync_reg6_0),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h69)) 
    wr_occupancy0_carry_i_4
       (.I0(Q),
        .I1(p_25_in),
        .I2(data_out),
        .O(S));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_sync_block" *) 
module gig_ethernet_pcs_pma_1_sync_block_6
   (S,
    data_out,
    Q,
    \wr_occupancy_reg[3] ,
    \wr_occupancy_reg[3]_0 ,
    \wr_occupancy_reg[3]_1 ,
    \wr_occupancy_reg[3]_2 ,
    data_sync_reg1_0,
    rxuserclk2);
  output [0:0]S;
  output data_out;
  input [0:0]Q;
  input \wr_occupancy_reg[3] ;
  input \wr_occupancy_reg[3]_0 ;
  input \wr_occupancy_reg[3]_1 ;
  input \wr_occupancy_reg[3]_2 ;
  input [0:0]data_sync_reg1_0;
  input rxuserclk2;

  wire [0:0]Q;
  wire [0:0]S;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire [0:0]data_sync_reg1_0;
  wire rxuserclk2;
  wire \wr_occupancy_reg[3] ;
  wire \wr_occupancy_reg[3]_0 ;
  wire \wr_occupancy_reg[3]_1 ;
  wire \wr_occupancy_reg[3]_2 ;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(data_sync_reg1_0),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    wr_occupancy0_carry_i_3
       (.I0(Q),
        .I1(data_out),
        .I2(\wr_occupancy_reg[3] ),
        .I3(\wr_occupancy_reg[3]_0 ),
        .I4(\wr_occupancy_reg[3]_1 ),
        .I5(\wr_occupancy_reg[3]_2 ),
        .O(S));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_sync_block" *) 
module gig_ethernet_pcs_pma_1_sync_block_7
   (S,
    data_out,
    Q,
    \wr_occupancy_reg[3] ,
    \wr_occupancy_reg[3]_0 ,
    \wr_occupancy_reg[3]_1 ,
    data_sync_reg1_0,
    rxuserclk2);
  output [0:0]S;
  output data_out;
  input [0:0]Q;
  input \wr_occupancy_reg[3] ;
  input \wr_occupancy_reg[3]_0 ;
  input \wr_occupancy_reg[3]_1 ;
  input [0:0]data_sync_reg1_0;
  input rxuserclk2;

  wire [0:0]Q;
  wire [0:0]S;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire [0:0]data_sync_reg1_0;
  wire rxuserclk2;
  wire \wr_occupancy_reg[3] ;
  wire \wr_occupancy_reg[3]_0 ;
  wire \wr_occupancy_reg[3]_1 ;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(data_sync_reg1_0),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h69969669)) 
    wr_occupancy0_carry_i_2
       (.I0(Q),
        .I1(data_out),
        .I2(\wr_occupancy_reg[3] ),
        .I3(\wr_occupancy_reg[3]_0 ),
        .I4(\wr_occupancy_reg[3]_1 ),
        .O(S));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_sync_block" *) 
module gig_ethernet_pcs_pma_1_sync_block_8
   (S,
    data_out,
    Q,
    \wr_occupancy_reg[3] ,
    \wr_occupancy_reg[3]_0 ,
    data_sync_reg1_0,
    rxuserclk2);
  output [0:0]S;
  output data_out;
  input [0:0]Q;
  input \wr_occupancy_reg[3] ;
  input \wr_occupancy_reg[3]_0 ;
  input [0:0]data_sync_reg1_0;
  input rxuserclk2;

  wire [0:0]Q;
  wire [0:0]S;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire [0:0]data_sync_reg1_0;
  wire rxuserclk2;
  wire \wr_occupancy_reg[3] ;
  wire \wr_occupancy_reg[3]_0 ;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(data_sync_reg1_0),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h9669)) 
    wr_occupancy0_carry_i_1
       (.I0(Q),
        .I1(data_out),
        .I2(\wr_occupancy_reg[3] ),
        .I3(\wr_occupancy_reg[3]_0 ),
        .O(S));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_sync_block" *) 
module gig_ethernet_pcs_pma_1_sync_block_9
   (S,
    data_out,
    ADDRD,
    \wr_occupancy_reg[5] ,
    Q,
    rxuserclk2);
  output [1:0]S;
  output data_out;
  input [1:0]ADDRD;
  input \wr_occupancy_reg[5] ;
  input [0:0]Q;
  input rxuserclk2;

  wire [1:0]ADDRD;
  wire [0:0]Q;
  wire [1:0]S;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire rxuserclk2;
  wire \wr_occupancy_reg[5] ;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(Q),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h9)) 
    wr_occupancy0_carry__0_i_1
       (.I0(ADDRD[1]),
        .I1(data_out),
        .O(S[1]));
  LUT3 #(
    .INIT(8'h69)) 
    wr_occupancy0_carry__0_i_2
       (.I0(ADDRD[0]),
        .I1(data_out),
        .I2(\wr_occupancy_reg[5] ),
        .O(S[0]));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_sync_block" *) 
module gig_ethernet_pcs_pma_1_sync_block__parameterized1
   (data_out,
    data_in,
    userclk2);
  output data_out;
  input data_in;
  input userclk2;

  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire userclk2;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(userclk2),
        .CE(1'b1),
        .D(data_in),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_sync_block" *) 
module gig_ethernet_pcs_pma_1_sync_block__parameterized1_0
   (resetdone,
    resetdone_0,
    data_in,
    userclk2);
  output resetdone;
  input resetdone_0;
  input data_in;
  input userclk2;

  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire resetdone;
  wire resetdone_0;
  wire userclk2;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(userclk2),
        .CE(1'b1),
        .D(data_in),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    resetdone_INST_0
       (.I0(data_out),
        .I1(resetdone_0),
        .O(resetdone));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_sync_block" *) 
module gig_ethernet_pcs_pma_1_sync_block__parameterized1_17
   (data_out,
    data_sync_reg1_0,
    independent_clock_bufg);
  output data_out;
  input data_sync_reg1_0;
  input independent_clock_bufg;

  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire data_sync_reg1_0;
  wire independent_clock_bufg;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync_reg1_0),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_sync_block" *) 
module gig_ethernet_pcs_pma_1_sync_block__parameterized1_18
   (reset_time_out_reg,
    E,
    reset_time_out_reg_0,
    reset_time_out,
    \FSM_sequential_tx_state_reg[0] ,
    \FSM_sequential_tx_state_reg[0]_0 ,
    \FSM_sequential_tx_state_reg[0]_1 ,
    \FSM_sequential_tx_state_reg[0]_2 ,
    \FSM_sequential_tx_state_reg[0]_3 ,
    Q,
    reset_time_out_reg_1,
    mmcm_lock_reclocked,
    \FSM_sequential_tx_state_reg[0]_4 ,
    \FSM_sequential_tx_state_reg[0]_5 ,
    \FSM_sequential_tx_state_reg[0]_6 ,
    cplllock,
    independent_clock_bufg);
  output reset_time_out_reg;
  output [0:0]E;
  input reset_time_out_reg_0;
  input reset_time_out;
  input \FSM_sequential_tx_state_reg[0] ;
  input \FSM_sequential_tx_state_reg[0]_0 ;
  input \FSM_sequential_tx_state_reg[0]_1 ;
  input \FSM_sequential_tx_state_reg[0]_2 ;
  input \FSM_sequential_tx_state_reg[0]_3 ;
  input [3:0]Q;
  input reset_time_out_reg_1;
  input mmcm_lock_reclocked;
  input \FSM_sequential_tx_state_reg[0]_4 ;
  input \FSM_sequential_tx_state_reg[0]_5 ;
  input \FSM_sequential_tx_state_reg[0]_6 ;
  input cplllock;
  input independent_clock_bufg;

  wire [0:0]E;
  wire \FSM_sequential_tx_state[3]_i_5_n_0 ;
  wire \FSM_sequential_tx_state_reg[0] ;
  wire \FSM_sequential_tx_state_reg[0]_0 ;
  wire \FSM_sequential_tx_state_reg[0]_1 ;
  wire \FSM_sequential_tx_state_reg[0]_2 ;
  wire \FSM_sequential_tx_state_reg[0]_3 ;
  wire \FSM_sequential_tx_state_reg[0]_4 ;
  wire \FSM_sequential_tx_state_reg[0]_5 ;
  wire \FSM_sequential_tx_state_reg[0]_6 ;
  wire [3:0]Q;
  wire cplllock;
  wire cplllock_sync;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire independent_clock_bufg;
  wire mmcm_lock_reclocked;
  wire reset_time_out;
  wire reset_time_out_i_3__0_n_0;
  wire reset_time_out_i_4__0_n_0;
  wire reset_time_out_reg;
  wire reset_time_out_reg_0;
  wire reset_time_out_reg_1;

  LUT6 #(
    .INIT(64'hFFFFFFFEFFFEFFFE)) 
    \FSM_sequential_tx_state[3]_i_1 
       (.I0(\FSM_sequential_tx_state_reg[0] ),
        .I1(\FSM_sequential_tx_state_reg[0]_0 ),
        .I2(\FSM_sequential_tx_state[3]_i_5_n_0 ),
        .I3(\FSM_sequential_tx_state_reg[0]_1 ),
        .I4(\FSM_sequential_tx_state_reg[0]_2 ),
        .I5(\FSM_sequential_tx_state_reg[0]_3 ),
        .O(E));
  LUT6 #(
    .INIT(64'h0000000000F00008)) 
    \FSM_sequential_tx_state[3]_i_5 
       (.I0(\FSM_sequential_tx_state_reg[0]_4 ),
        .I1(\FSM_sequential_tx_state_reg[0]_5 ),
        .I2(cplllock_sync),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(\FSM_sequential_tx_state_reg[0]_6 ),
        .O(\FSM_sequential_tx_state[3]_i_5_n_0 ));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(cplllock),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync5),
        .Q(cplllock_sync),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hEFE0)) 
    reset_time_out_i_1
       (.I0(reset_time_out_reg_0),
        .I1(reset_time_out_i_3__0_n_0),
        .I2(reset_time_out_i_4__0_n_0),
        .I3(reset_time_out),
        .O(reset_time_out_reg));
  LUT6 #(
    .INIT(64'h020002000F000200)) 
    reset_time_out_i_3__0
       (.I0(cplllock_sync),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[0]),
        .I4(mmcm_lock_reclocked),
        .I5(Q[1]),
        .O(reset_time_out_i_3__0_n_0));
  LUT6 #(
    .INIT(64'h0505FF040505F504)) 
    reset_time_out_i_4__0
       (.I0(Q[1]),
        .I1(reset_time_out_reg_1),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[3]),
        .I5(cplllock_sync),
        .O(reset_time_out_i_4__0_n_0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_sync_block" *) 
module gig_ethernet_pcs_pma_1_sync_block__parameterized1_19
   (SR,
    data_out,
    mmcm_locked,
    independent_clock_bufg);
  output [0:0]SR;
  output data_out;
  input mmcm_locked;
  input independent_clock_bufg;

  wire [0:0]SR;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire independent_clock_bufg;
  wire mmcm_locked;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(mmcm_locked),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \mmcm_lock_count[7]_i_1 
       (.I0(data_out),
        .O(SR));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_sync_block" *) 
module gig_ethernet_pcs_pma_1_sync_block__parameterized1_20
   (data_out,
    data_in,
    userclk);
  output data_out;
  input data_in;
  input userclk;

  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire userclk;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(userclk),
        .CE(1'b1),
        .D(data_in),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(userclk),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(userclk),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(userclk),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(userclk),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(userclk),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_sync_block" *) 
module gig_ethernet_pcs_pma_1_sync_block__parameterized1_21
   (data_out,
    data_in,
    independent_clock_bufg);
  output data_out;
  input data_in;
  input independent_clock_bufg;

  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire independent_clock_bufg;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_in),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_sync_block" *) 
module gig_ethernet_pcs_pma_1_sync_block__parameterized1_22
   (data_out,
    data_in,
    userclk);
  output data_out;
  input data_in;
  input userclk;

  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire userclk;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(userclk),
        .CE(1'b1),
        .D(data_in),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(userclk),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(userclk),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(userclk),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(userclk),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(userclk),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_sync_block" *) 
module gig_ethernet_pcs_pma_1_sync_block__parameterized1_23
   (data_out,
    data_sync_reg1_0,
    independent_clock_bufg);
  output data_out;
  input data_sync_reg1_0;
  input independent_clock_bufg;

  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire data_sync_reg1_0;
  wire independent_clock_bufg;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync_reg1_0),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_sync_block" *) 
module gig_ethernet_pcs_pma_1_sync_block__parameterized1_24
   (\FSM_sequential_rx_state_reg[1] ,
    Q,
    rxresetdone_s3,
    cplllock,
    independent_clock_bufg);
  output \FSM_sequential_rx_state_reg[1] ;
  input [2:0]Q;
  input rxresetdone_s3;
  input cplllock;
  input independent_clock_bufg;

  wire \FSM_sequential_rx_state_reg[1] ;
  wire [2:0]Q;
  wire cplllock;
  wire cplllock_sync;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire independent_clock_bufg;
  wire rxresetdone_s3;

  LUT5 #(
    .INIT(32'h008F0080)) 
    \FSM_sequential_rx_state[3]_i_5 
       (.I0(Q[0]),
        .I1(rxresetdone_s3),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(cplllock_sync),
        .O(\FSM_sequential_rx_state_reg[1] ));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(cplllock),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync5),
        .Q(cplllock_sync),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_sync_block" *) 
module gig_ethernet_pcs_pma_1_sync_block__parameterized1_25
   (\FSM_sequential_rx_state_reg[1] ,
    rx_fsm_reset_done_int_reg,
    D,
    E,
    reset_time_out_reg,
    reset_time_out_reg_0,
    Q,
    reset_time_out_reg_1,
    reset_time_out_reg_2,
    data_in,
    \FSM_sequential_rx_state_reg[1]_0 ,
    rx_fsm_reset_done_int_reg_0,
    rx_fsm_reset_done_int_reg_1,
    \FSM_sequential_rx_state_reg[0] ,
    \FSM_sequential_rx_state_reg[0]_0 ,
    \FSM_sequential_rx_state_reg[0]_1 ,
    mmcm_lock_reclocked,
    \FSM_sequential_rx_state_reg[0]_2 ,
    time_out_wait_bypass_s3,
    \FSM_sequential_rx_state_reg[3] ,
    \FSM_sequential_rx_state_reg[0]_3 ,
    rx_fsm_reset_done_int_reg_2,
    rx_fsm_reset_done_int_reg_3,
    data_out,
    independent_clock_bufg);
  output \FSM_sequential_rx_state_reg[1] ;
  output rx_fsm_reset_done_int_reg;
  output [2:0]D;
  output [0:0]E;
  input reset_time_out_reg;
  input reset_time_out_reg_0;
  input [3:0]Q;
  input reset_time_out_reg_1;
  input reset_time_out_reg_2;
  input data_in;
  input \FSM_sequential_rx_state_reg[1]_0 ;
  input rx_fsm_reset_done_int_reg_0;
  input rx_fsm_reset_done_int_reg_1;
  input \FSM_sequential_rx_state_reg[0] ;
  input \FSM_sequential_rx_state_reg[0]_0 ;
  input \FSM_sequential_rx_state_reg[0]_1 ;
  input mmcm_lock_reclocked;
  input \FSM_sequential_rx_state_reg[0]_2 ;
  input time_out_wait_bypass_s3;
  input \FSM_sequential_rx_state_reg[3] ;
  input \FSM_sequential_rx_state_reg[0]_3 ;
  input rx_fsm_reset_done_int_reg_2;
  input rx_fsm_reset_done_int_reg_3;
  input data_out;
  input independent_clock_bufg;

  wire [2:0]D;
  wire [0:0]E;
  wire \FSM_sequential_rx_state[0]_i_3_n_0 ;
  wire \FSM_sequential_rx_state[1]_i_2_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_4_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_6_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_8_n_0 ;
  wire \FSM_sequential_rx_state_reg[0] ;
  wire \FSM_sequential_rx_state_reg[0]_0 ;
  wire \FSM_sequential_rx_state_reg[0]_1 ;
  wire \FSM_sequential_rx_state_reg[0]_2 ;
  wire \FSM_sequential_rx_state_reg[0]_3 ;
  wire \FSM_sequential_rx_state_reg[1] ;
  wire \FSM_sequential_rx_state_reg[1]_0 ;
  wire \FSM_sequential_rx_state_reg[3] ;
  wire [3:0]Q;
  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire data_valid_sync;
  wire independent_clock_bufg;
  wire mmcm_lock_reclocked;
  wire reset_time_out_i_2_n_0;
  wire reset_time_out_reg;
  wire reset_time_out_reg_0;
  wire reset_time_out_reg_1;
  wire reset_time_out_reg_2;
  wire rx_fsm_reset_done_int;
  wire rx_fsm_reset_done_int_i_3_n_0;
  wire rx_fsm_reset_done_int_i_4_n_0;
  wire rx_fsm_reset_done_int_reg;
  wire rx_fsm_reset_done_int_reg_0;
  wire rx_fsm_reset_done_int_reg_1;
  wire rx_fsm_reset_done_int_reg_2;
  wire rx_fsm_reset_done_int_reg_3;
  wire time_out_wait_bypass_s3;

  LUT5 #(
    .INIT(32'hFFEFEFEF)) 
    \FSM_sequential_rx_state[0]_i_1 
       (.I0(\FSM_sequential_rx_state_reg[0]_2 ),
        .I1(\FSM_sequential_rx_state[0]_i_3_n_0 ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \FSM_sequential_rx_state[0]_i_3 
       (.I0(Q[3]),
        .I1(reset_time_out_reg_2),
        .I2(data_valid_sync),
        .I3(rx_fsm_reset_done_int_reg_1),
        .O(\FSM_sequential_rx_state[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF24200400)) 
    \FSM_sequential_rx_state[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(\FSM_sequential_rx_state[1]_i_2_n_0 ),
        .I5(\FSM_sequential_rx_state_reg[1]_0 ),
        .O(D[1]));
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_rx_state[1]_i_2 
       (.I0(data_valid_sync),
        .I1(rx_fsm_reset_done_int_reg_1),
        .O(\FSM_sequential_rx_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \FSM_sequential_rx_state[3]_i_1 
       (.I0(\FSM_sequential_rx_state_reg[0] ),
        .I1(\FSM_sequential_rx_state[3]_i_4_n_0 ),
        .I2(Q[0]),
        .I3(reset_time_out_reg),
        .I4(\FSM_sequential_rx_state[3]_i_6_n_0 ),
        .I5(\FSM_sequential_rx_state_reg[0]_0 ),
        .O(E));
  LUT6 #(
    .INIT(64'hFFFFFFFFCCC0C4C4)) 
    \FSM_sequential_rx_state[3]_i_2 
       (.I0(time_out_wait_bypass_s3),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(\FSM_sequential_rx_state[3]_i_8_n_0 ),
        .I4(Q[0]),
        .I5(\FSM_sequential_rx_state_reg[3] ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAEFEA)) 
    \FSM_sequential_rx_state[3]_i_4 
       (.I0(\FSM_sequential_rx_state[0]_i_3_n_0 ),
        .I1(\FSM_sequential_rx_state_reg[0]_1 ),
        .I2(Q[2]),
        .I3(\FSM_sequential_rx_state_reg[0]_3 ),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\FSM_sequential_rx_state[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h0CE20CCC)) 
    \FSM_sequential_rx_state[3]_i_6 
       (.I0(mmcm_lock_reclocked),
        .I1(Q[3]),
        .I2(data_valid_sync),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(\FSM_sequential_rx_state[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \FSM_sequential_rx_state[3]_i_8 
       (.I0(rx_fsm_reset_done_int_reg_1),
        .I1(data_valid_sync),
        .I2(reset_time_out_reg_2),
        .O(\FSM_sequential_rx_state[3]_i_8_n_0 ));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_out),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_valid_sync),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hEEEFFFFFEEEF0000)) 
    reset_time_out_i_1__0
       (.I0(reset_time_out_i_2_n_0),
        .I1(reset_time_out_reg),
        .I2(reset_time_out_reg_0),
        .I3(Q[1]),
        .I4(reset_time_out_reg_1),
        .I5(reset_time_out_reg_2),
        .O(\FSM_sequential_rx_state_reg[1] ));
  LUT6 #(
    .INIT(64'h0FF30E0E0FF30202)) 
    reset_time_out_i_2
       (.I0(\FSM_sequential_rx_state_reg[0]_1 ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(data_valid_sync),
        .I4(Q[3]),
        .I5(mmcm_lock_reclocked),
        .O(reset_time_out_i_2_n_0));
  LUT4 #(
    .INIT(16'hABA8)) 
    rx_fsm_reset_done_int_i_1
       (.I0(rx_fsm_reset_done_int),
        .I1(rx_fsm_reset_done_int_i_3_n_0),
        .I2(rx_fsm_reset_done_int_i_4_n_0),
        .I3(data_in),
        .O(rx_fsm_reset_done_int_reg));
  LUT5 #(
    .INIT(32'h00040000)) 
    rx_fsm_reset_done_int_i_2
       (.I0(Q[0]),
        .I1(data_valid_sync),
        .I2(Q[2]),
        .I3(reset_time_out_reg_2),
        .I4(rx_fsm_reset_done_int_reg_2),
        .O(rx_fsm_reset_done_int));
  LUT6 #(
    .INIT(64'h0400040004040400)) 
    rx_fsm_reset_done_int_i_3
       (.I0(rx_fsm_reset_done_int_reg_0),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(data_valid_sync),
        .I4(rx_fsm_reset_done_int_reg_1),
        .I5(reset_time_out_reg_2),
        .O(rx_fsm_reset_done_int_i_3_n_0));
  LUT6 #(
    .INIT(64'h0008000808080008)) 
    rx_fsm_reset_done_int_i_4
       (.I0(rx_fsm_reset_done_int_reg_3),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(data_valid_sync),
        .I4(rx_fsm_reset_done_int_reg_2),
        .I5(reset_time_out_reg_2),
        .O(rx_fsm_reset_done_int_i_4_n_0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_sync_block" *) 
module gig_ethernet_pcs_pma_1_sync_block__parameterized1_26
   (SR,
    data_out,
    mmcm_locked,
    independent_clock_bufg);
  output [0:0]SR;
  output data_out;
  input mmcm_locked;
  input independent_clock_bufg;

  wire [0:0]SR;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire independent_clock_bufg;
  wire mmcm_locked;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(mmcm_locked),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \mmcm_lock_count[7]_i_1__0 
       (.I0(data_out),
        .O(SR));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_sync_block" *) 
module gig_ethernet_pcs_pma_1_sync_block__parameterized1_27
   (data_out,
    data_in,
    rxuserclk);
  output data_out;
  input data_in;
  input rxuserclk;

  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire rxuserclk;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(rxuserclk),
        .CE(1'b1),
        .D(data_in),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(rxuserclk),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(rxuserclk),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(rxuserclk),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(rxuserclk),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(rxuserclk),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_sync_block" *) 
module gig_ethernet_pcs_pma_1_sync_block__parameterized1_28
   (data_out,
    data_in,
    independent_clock_bufg);
  output data_out;
  input data_in;
  input independent_clock_bufg;

  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire independent_clock_bufg;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_in),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_sync_block" *) 
module gig_ethernet_pcs_pma_1_sync_block__parameterized1_29
   (data_out,
    data_in,
    rxuserclk);
  output data_out;
  input data_in;
  input rxuserclk;

  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire rxuserclk;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(rxuserclk),
        .CE(1'b1),
        .D(data_in),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(rxuserclk),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(rxuserclk),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(rxuserclk),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(rxuserclk),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(rxuserclk),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_sync_block" *) 
module gig_ethernet_pcs_pma_1_sync_block__parameterized1_4
   (data_out,
    status_vector,
    independent_clock_bufg);
  output data_out;
  input [0:0]status_vector;
  input independent_clock_bufg;

  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire independent_clock_bufg;
  wire [0:0]status_vector;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(status_vector),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

module gig_ethernet_pcs_pma_1_transceiver
   (cplllock,
    txn,
    txp,
    rxoutclk,
    txoutclk,
    rxchariscomma,
    rxcharisk,
    rxdisperr,
    rxnotintable,
    rxclkcorcnt,
    txbuferr,
    mmcm_reset,
    data_in,
    rx_fsm_reset_done_int_reg,
    rxbufstatus,
    Q,
    independent_clock_bufg,
    gtrefclk_bufg,
    gtrefclk,
    rxn,
    rxp,
    gt0_qplloutclk_in,
    gt0_qplloutrefclk_in,
    rxuserclk,
    userclk,
    userclk2,
    rxuserclk2,
    SR,
    powerdown,
    D,
    txchardispval_reg_reg_0,
    txcharisk_reg_reg_0,
    pma_reset,
    status_vector,
    enablealign,
    mgt_rx_reset,
    mmcm_locked,
    \txdata_reg_reg[7]_0 );
  output cplllock;
  output txn;
  output txp;
  output rxoutclk;
  output txoutclk;
  output [0:0]rxchariscomma;
  output [0:0]rxcharisk;
  output [0:0]rxdisperr;
  output [0:0]rxnotintable;
  output [1:0]rxclkcorcnt;
  output txbuferr;
  output mmcm_reset;
  output data_in;
  output rx_fsm_reset_done_int_reg;
  output [0:0]rxbufstatus;
  output [7:0]Q;
  input independent_clock_bufg;
  input gtrefclk_bufg;
  input gtrefclk;
  input rxn;
  input rxp;
  input gt0_qplloutclk_in;
  input gt0_qplloutrefclk_in;
  input rxuserclk;
  input userclk;
  input userclk2;
  input rxuserclk2;
  input [0:0]SR;
  input powerdown;
  input [0:0]D;
  input [0:0]txchardispval_reg_reg_0;
  input [0:0]txcharisk_reg_reg_0;
  input pma_reset;
  input [0:0]status_vector;
  input enablealign;
  input mgt_rx_reset;
  input mmcm_locked;
  input [7:0]\txdata_reg_reg[7]_0 ;

  wire [0:0]D;
  wire [7:0]Q;
  wire [0:0]SR;
  wire cplllock;
  wire data_in;
  wire data_valid_reg2;
  wire enablealign;
  wire encommaalign_rec;
  wire gt0_qplloutclk_in;
  wire gt0_qplloutrefclk_in;
  wire gtrefclk;
  wire gtrefclk_bufg;
  wire gtwizard_inst_n_5;
  wire independent_clock_bufg;
  wire initialize_ram0;
  wire initialize_ram_complete;
  wire initialize_ram_complete_pulse;
  wire mgt_rx_reset;
  wire mmcm_locked;
  wire mmcm_reset;
  wire pma_reset;
  wire powerdown;
  wire reclock_rxreset_n_3;
  wire reset;
  wire rx_fsm_reset_done_int_reg;
  wire [0:0]rxbufstatus;
  wire [0:0]rxchariscomma;
  wire [1:0]rxchariscomma_rec;
  wire [0:0]rxcharisk;
  wire [1:0]rxcharisk_rec;
  wire [1:0]rxclkcorcnt;
  wire [15:0]rxdata_rec;
  wire [0:0]rxdisperr;
  wire [1:0]rxdisperr_rec;
  wire rxn;
  wire [0:0]rxnotintable;
  wire [1:0]rxnotintable_rec;
  wire rxoutclk;
  wire rxp;
  wire rxreset_int;
  wire rxreset_rec;
  wire rxuserclk;
  wire rxuserclk2;
  wire start;
  wire [0:0]status_vector;
  wire toggle;
  wire toggle_i_1_n_0;
  wire txbuferr;
  wire [1:1]txbufstatus_reg;
  wire [1:0]txchardispmode_double;
  wire [1:0]txchardispmode_int;
  wire txchardispmode_reg;
  wire [1:0]txchardispval_double;
  wire [1:0]txchardispval_int;
  wire txchardispval_reg;
  wire [0:0]txchardispval_reg_reg_0;
  wire [1:0]txcharisk_double;
  wire [1:0]txcharisk_int;
  wire txcharisk_reg;
  wire [0:0]txcharisk_reg_reg_0;
  wire [15:0]txdata_double;
  wire [15:0]txdata_int;
  wire [7:0]txdata_reg;
  wire [7:0]\txdata_reg_reg[7]_0 ;
  wire txn;
  wire txoutclk;
  wire txp;
  wire txpowerdown;
  wire txpowerdown_double;
  wire txpowerdown_reg__0;
  wire txreset_int;
  wire userclk;
  wire userclk2;
  wire wr_data1;

  gig_ethernet_pcs_pma_1_GTWIZARD gtwizard_inst
       (.D({rxchariscomma_rec[0],rxcharisk_rec[0],rxdisperr_rec[0],rxnotintable_rec[0],rxdata_rec[7:0],rxchariscomma_rec[1],rxcharisk_rec[1],rxdisperr_rec[1],rxnotintable_rec[1],rxdata_rec[15:8]}),
        .Q(txdata_int),
        .RXPD(txpowerdown_reg__0),
        .TXBUFSTATUS(gtwizard_inst_n_5),
        .TXPD(txpowerdown),
        .cplllock(cplllock),
        .data_in(data_in),
        .data_out(data_valid_reg2),
        .gt0_qplloutclk_in(gt0_qplloutclk_in),
        .gt0_qplloutrefclk_in(gt0_qplloutrefclk_in),
        .gtrefclk(gtrefclk),
        .gtrefclk_bufg(gtrefclk_bufg),
        .gtxe2_i(txchardispmode_int),
        .gtxe2_i_0(txchardispval_int),
        .gtxe2_i_1(txcharisk_int),
        .gtxe2_i_2(txreset_int),
        .gtxe2_i_3(rxreset_int),
        .independent_clock_bufg(independent_clock_bufg),
        .mmcm_locked(mmcm_locked),
        .mmcm_reset(mmcm_reset),
        .pma_reset(pma_reset),
        .reset(reset),
        .reset_out(encommaalign_rec),
        .rx_fsm_reset_done_int_reg(rx_fsm_reset_done_int_reg),
        .rxn(rxn),
        .rxoutclk(rxoutclk),
        .rxp(rxp),
        .rxuserclk(rxuserclk),
        .txn(txn),
        .txoutclk(txoutclk),
        .txp(txp),
        .userclk(userclk));
  gig_ethernet_pcs_pma_1_reset_sync reclock_encommaalign
       (.enablealign(enablealign),
        .reset_out(encommaalign_rec),
        .rxuserclk2(rxuserclk2));
  gig_ethernet_pcs_pma_1_reset_sync_1 reclock_rxreset
       (.SR(initialize_ram0),
        .initialize_ram_complete(initialize_ram_complete),
        .initialize_ram_complete_pulse(initialize_ram_complete_pulse),
        .mgt_rx_reset(mgt_rx_reset),
        .reset_out(rxreset_rec),
        .reset_sync6_0(wr_data1),
        .reset_sync6_1(reclock_rxreset_n_3),
        .rxuserclk2(rxuserclk2),
        .start(start));
  gig_ethernet_pcs_pma_1_reset_sync_2 reclock_rxreset_ind_clk
       (.independent_clock_bufg(independent_clock_bufg),
        .mgt_rx_reset(mgt_rx_reset),
        .reset_out(rxreset_int));
  gig_ethernet_pcs_pma_1_reset_sync_3 reclock_txreset
       (.SR(SR),
        .reset_out(txreset_int),
        .userclk(userclk));
  gig_ethernet_pcs_pma_1_reset_wtd_timer reset_wtd_timer
       (.data_out(data_valid_reg2),
        .independent_clock_bufg(independent_clock_bufg),
        .reset(reset));
  gig_ethernet_pcs_pma_1_rx_elastic_buffer rx_elastic_buffer_inst
       (.D({rxchariscomma_rec[0],rxcharisk_rec[0],rxdisperr_rec[0],rxnotintable_rec[0],rxdata_rec[7:0],rxchariscomma_rec[1],rxcharisk_rec[1],rxdisperr_rec[1],rxnotintable_rec[1],rxdata_rec[15:8]}),
        .Q(Q),
        .SR(initialize_ram0),
        .initialize_ram_complete(initialize_ram_complete),
        .initialize_ram_complete_pulse(initialize_ram_complete_pulse),
        .mgt_rx_reset(mgt_rx_reset),
        .reset_out(rxreset_rec),
        .rxbufstatus(rxbufstatus),
        .rxchariscomma(rxchariscomma),
        .rxcharisk(rxcharisk),
        .rxclkcorcnt(rxclkcorcnt),
        .rxdisperr(rxdisperr),
        .rxnotintable(rxnotintable),
        .rxuserclk2(rxuserclk2),
        .start(start),
        .userclk2(userclk2),
        .\wr_addr_plus1_reg[0]_0 (reclock_rxreset_n_3),
        .\wr_data_reg_reg[0]_0 (wr_data1));
  gig_ethernet_pcs_pma_1_sync_block__parameterized1_4 sync_block_data_valid
       (.data_out(data_valid_reg2),
        .independent_clock_bufg(independent_clock_bufg),
        .status_vector(status_vector));
  LUT1 #(
    .INIT(2'h1)) 
    toggle_i_1
       (.I0(toggle),
        .O(toggle_i_1_n_0));
  FDRE toggle_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(toggle_i_1_n_0),
        .Q(toggle),
        .R(SR));
  FDRE txbuferr_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(txbufstatus_reg),
        .Q(txbuferr),
        .R(1'b0));
  FDRE \txbufstatus_reg_reg[1] 
       (.C(userclk),
        .CE(1'b1),
        .D(gtwizard_inst_n_5),
        .Q(txbufstatus_reg),
        .R(1'b0));
  FDRE \txchardispmode_double_reg[0] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(txchardispmode_reg),
        .Q(txchardispmode_double[0]),
        .R(SR));
  FDRE \txchardispmode_double_reg[1] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(D),
        .Q(txchardispmode_double[1]),
        .R(SR));
  FDRE \txchardispmode_int_reg[0] 
       (.C(userclk),
        .CE(1'b1),
        .D(txchardispmode_double[0]),
        .Q(txchardispmode_int[0]),
        .R(1'b0));
  FDRE \txchardispmode_int_reg[1] 
       (.C(userclk),
        .CE(1'b1),
        .D(txchardispmode_double[1]),
        .Q(txchardispmode_int[1]),
        .R(1'b0));
  FDRE txchardispmode_reg_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(D),
        .Q(txchardispmode_reg),
        .R(SR));
  FDRE \txchardispval_double_reg[0] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(txchardispval_reg),
        .Q(txchardispval_double[0]),
        .R(SR));
  FDRE \txchardispval_double_reg[1] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(txchardispval_reg_reg_0),
        .Q(txchardispval_double[1]),
        .R(SR));
  FDRE \txchardispval_int_reg[0] 
       (.C(userclk),
        .CE(1'b1),
        .D(txchardispval_double[0]),
        .Q(txchardispval_int[0]),
        .R(1'b0));
  FDRE \txchardispval_int_reg[1] 
       (.C(userclk),
        .CE(1'b1),
        .D(txchardispval_double[1]),
        .Q(txchardispval_int[1]),
        .R(1'b0));
  FDRE txchardispval_reg_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(txchardispval_reg_reg_0),
        .Q(txchardispval_reg),
        .R(SR));
  FDRE \txcharisk_double_reg[0] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(txcharisk_reg),
        .Q(txcharisk_double[0]),
        .R(SR));
  FDRE \txcharisk_double_reg[1] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(txcharisk_reg_reg_0),
        .Q(txcharisk_double[1]),
        .R(SR));
  FDRE \txcharisk_int_reg[0] 
       (.C(userclk),
        .CE(1'b1),
        .D(txcharisk_double[0]),
        .Q(txcharisk_int[0]),
        .R(1'b0));
  FDRE \txcharisk_int_reg[1] 
       (.C(userclk),
        .CE(1'b1),
        .D(txcharisk_double[1]),
        .Q(txcharisk_int[1]),
        .R(1'b0));
  FDRE txcharisk_reg_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(txcharisk_reg_reg_0),
        .Q(txcharisk_reg),
        .R(SR));
  FDRE \txdata_double_reg[0] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(txdata_reg[0]),
        .Q(txdata_double[0]),
        .R(SR));
  FDRE \txdata_double_reg[10] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(\txdata_reg_reg[7]_0 [2]),
        .Q(txdata_double[10]),
        .R(SR));
  FDRE \txdata_double_reg[11] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(\txdata_reg_reg[7]_0 [3]),
        .Q(txdata_double[11]),
        .R(SR));
  FDRE \txdata_double_reg[12] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(\txdata_reg_reg[7]_0 [4]),
        .Q(txdata_double[12]),
        .R(SR));
  FDRE \txdata_double_reg[13] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(\txdata_reg_reg[7]_0 [5]),
        .Q(txdata_double[13]),
        .R(SR));
  FDRE \txdata_double_reg[14] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(\txdata_reg_reg[7]_0 [6]),
        .Q(txdata_double[14]),
        .R(SR));
  FDRE \txdata_double_reg[15] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(\txdata_reg_reg[7]_0 [7]),
        .Q(txdata_double[15]),
        .R(SR));
  FDRE \txdata_double_reg[1] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(txdata_reg[1]),
        .Q(txdata_double[1]),
        .R(SR));
  FDRE \txdata_double_reg[2] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(txdata_reg[2]),
        .Q(txdata_double[2]),
        .R(SR));
  FDRE \txdata_double_reg[3] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(txdata_reg[3]),
        .Q(txdata_double[3]),
        .R(SR));
  FDRE \txdata_double_reg[4] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(txdata_reg[4]),
        .Q(txdata_double[4]),
        .R(SR));
  FDRE \txdata_double_reg[5] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(txdata_reg[5]),
        .Q(txdata_double[5]),
        .R(SR));
  FDRE \txdata_double_reg[6] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(txdata_reg[6]),
        .Q(txdata_double[6]),
        .R(SR));
  FDRE \txdata_double_reg[7] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(txdata_reg[7]),
        .Q(txdata_double[7]),
        .R(SR));
  FDRE \txdata_double_reg[8] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(\txdata_reg_reg[7]_0 [0]),
        .Q(txdata_double[8]),
        .R(SR));
  FDRE \txdata_double_reg[9] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(\txdata_reg_reg[7]_0 [1]),
        .Q(txdata_double[9]),
        .R(SR));
  FDRE \txdata_int_reg[0] 
       (.C(userclk),
        .CE(1'b1),
        .D(txdata_double[0]),
        .Q(txdata_int[0]),
        .R(1'b0));
  FDRE \txdata_int_reg[10] 
       (.C(userclk),
        .CE(1'b1),
        .D(txdata_double[10]),
        .Q(txdata_int[10]),
        .R(1'b0));
  FDRE \txdata_int_reg[11] 
       (.C(userclk),
        .CE(1'b1),
        .D(txdata_double[11]),
        .Q(txdata_int[11]),
        .R(1'b0));
  FDRE \txdata_int_reg[12] 
       (.C(userclk),
        .CE(1'b1),
        .D(txdata_double[12]),
        .Q(txdata_int[12]),
        .R(1'b0));
  FDRE \txdata_int_reg[13] 
       (.C(userclk),
        .CE(1'b1),
        .D(txdata_double[13]),
        .Q(txdata_int[13]),
        .R(1'b0));
  FDRE \txdata_int_reg[14] 
       (.C(userclk),
        .CE(1'b1),
        .D(txdata_double[14]),
        .Q(txdata_int[14]),
        .R(1'b0));
  FDRE \txdata_int_reg[15] 
       (.C(userclk),
        .CE(1'b1),
        .D(txdata_double[15]),
        .Q(txdata_int[15]),
        .R(1'b0));
  FDRE \txdata_int_reg[1] 
       (.C(userclk),
        .CE(1'b1),
        .D(txdata_double[1]),
        .Q(txdata_int[1]),
        .R(1'b0));
  FDRE \txdata_int_reg[2] 
       (.C(userclk),
        .CE(1'b1),
        .D(txdata_double[2]),
        .Q(txdata_int[2]),
        .R(1'b0));
  FDRE \txdata_int_reg[3] 
       (.C(userclk),
        .CE(1'b1),
        .D(txdata_double[3]),
        .Q(txdata_int[3]),
        .R(1'b0));
  FDRE \txdata_int_reg[4] 
       (.C(userclk),
        .CE(1'b1),
        .D(txdata_double[4]),
        .Q(txdata_int[4]),
        .R(1'b0));
  FDRE \txdata_int_reg[5] 
       (.C(userclk),
        .CE(1'b1),
        .D(txdata_double[5]),
        .Q(txdata_int[5]),
        .R(1'b0));
  FDRE \txdata_int_reg[6] 
       (.C(userclk),
        .CE(1'b1),
        .D(txdata_double[6]),
        .Q(txdata_int[6]),
        .R(1'b0));
  FDRE \txdata_int_reg[7] 
       (.C(userclk),
        .CE(1'b1),
        .D(txdata_double[7]),
        .Q(txdata_int[7]),
        .R(1'b0));
  FDRE \txdata_int_reg[8] 
       (.C(userclk),
        .CE(1'b1),
        .D(txdata_double[8]),
        .Q(txdata_int[8]),
        .R(1'b0));
  FDRE \txdata_int_reg[9] 
       (.C(userclk),
        .CE(1'b1),
        .D(txdata_double[9]),
        .Q(txdata_int[9]),
        .R(1'b0));
  FDRE \txdata_reg_reg[0] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\txdata_reg_reg[7]_0 [0]),
        .Q(txdata_reg[0]),
        .R(SR));
  FDRE \txdata_reg_reg[1] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\txdata_reg_reg[7]_0 [1]),
        .Q(txdata_reg[1]),
        .R(SR));
  FDRE \txdata_reg_reg[2] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\txdata_reg_reg[7]_0 [2]),
        .Q(txdata_reg[2]),
        .R(SR));
  FDRE \txdata_reg_reg[3] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\txdata_reg_reg[7]_0 [3]),
        .Q(txdata_reg[3]),
        .R(SR));
  FDRE \txdata_reg_reg[4] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\txdata_reg_reg[7]_0 [4]),
        .Q(txdata_reg[4]),
        .R(SR));
  FDRE \txdata_reg_reg[5] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\txdata_reg_reg[7]_0 [5]),
        .Q(txdata_reg[5]),
        .R(SR));
  FDRE \txdata_reg_reg[6] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\txdata_reg_reg[7]_0 [6]),
        .Q(txdata_reg[6]),
        .R(SR));
  FDRE \txdata_reg_reg[7] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\txdata_reg_reg[7]_0 [7]),
        .Q(txdata_reg[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    txpowerdown_double_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(txpowerdown_reg__0),
        .Q(txpowerdown_double),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    txpowerdown_reg
       (.C(userclk),
        .CE(1'b1),
        .D(txpowerdown_double),
        .Q(txpowerdown),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    txpowerdown_reg_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(powerdown),
        .Q(txpowerdown_reg__0),
        .R(SR));
endmodule

module gig_ethernet_pcs_pma_1_tx_rate_adapt
   (gmii_tx_en,
    gmii_tx_er,
    Q,
    reset_out,
    E,
    gmii_tx_en_out_reg_0,
    userclk2,
    gmii_tx_er_out_reg_0,
    gmii_txd);
  output gmii_tx_en;
  output gmii_tx_er;
  output [7:0]Q;
  input reset_out;
  input [0:0]E;
  input gmii_tx_en_out_reg_0;
  input userclk2;
  input gmii_tx_er_out_reg_0;
  input [7:0]gmii_txd;

  wire [0:0]E;
  wire [7:0]Q;
  wire gmii_tx_en;
  wire gmii_tx_en_out_reg_0;
  wire gmii_tx_er;
  wire gmii_tx_er_out_reg_0;
  wire [7:0]gmii_txd;
  wire reset_out;
  wire userclk2;

  FDRE #(
    .INIT(1'b0)) 
    gmii_tx_en_out_reg
       (.C(userclk2),
        .CE(E),
        .D(gmii_tx_en_out_reg_0),
        .Q(gmii_tx_en),
        .R(reset_out));
  FDRE #(
    .INIT(1'b0)) 
    gmii_tx_er_out_reg
       (.C(userclk2),
        .CE(E),
        .D(gmii_tx_er_out_reg_0),
        .Q(gmii_tx_er),
        .R(reset_out));
  FDRE #(
    .INIT(1'b0)) 
    \gmii_txd_out_reg[0] 
       (.C(userclk2),
        .CE(E),
        .D(gmii_txd[0]),
        .Q(Q[0]),
        .R(reset_out));
  FDRE #(
    .INIT(1'b0)) 
    \gmii_txd_out_reg[1] 
       (.C(userclk2),
        .CE(E),
        .D(gmii_txd[1]),
        .Q(Q[1]),
        .R(reset_out));
  FDRE #(
    .INIT(1'b0)) 
    \gmii_txd_out_reg[2] 
       (.C(userclk2),
        .CE(E),
        .D(gmii_txd[2]),
        .Q(Q[2]),
        .R(reset_out));
  FDRE #(
    .INIT(1'b0)) 
    \gmii_txd_out_reg[3] 
       (.C(userclk2),
        .CE(E),
        .D(gmii_txd[3]),
        .Q(Q[3]),
        .R(reset_out));
  FDRE #(
    .INIT(1'b0)) 
    \gmii_txd_out_reg[4] 
       (.C(userclk2),
        .CE(E),
        .D(gmii_txd[4]),
        .Q(Q[4]),
        .R(reset_out));
  FDRE #(
    .INIT(1'b0)) 
    \gmii_txd_out_reg[5] 
       (.C(userclk2),
        .CE(E),
        .D(gmii_txd[5]),
        .Q(Q[5]),
        .R(reset_out));
  FDRE #(
    .INIT(1'b0)) 
    \gmii_txd_out_reg[6] 
       (.C(userclk2),
        .CE(E),
        .D(gmii_txd[6]),
        .Q(Q[6]),
        .R(reset_out));
  FDRE #(
    .INIT(1'b0)) 
    \gmii_txd_out_reg[7] 
       (.C(userclk2),
        .CE(E),
        .D(gmii_txd[7]),
        .Q(Q[7]),
        .R(reset_out));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2021.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
JxZW79a+1dkW0qGTC4J4k6zcwv4nuXc0kO2WXhw7AuUlaKtuzg37aQwJnE9h5pX8k2hGi7Qvprir
3GYS4JRFvvlYqkQ+j/qBsfCSxawKHbwAYO/pNfD7A0jTaAGUks2lgK0Uti0SoAnfVzT1EPzGGBOW
fuMoV6X7zHZT8q0zQto=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
G4idh8B6//k+RYHvTO61vdaHOwMo1maG3NmRdu0py5KnF0o3Th1DCF3B1/ANOncjZrNRk9oA4DAe
gEK6ryr2OUOP1iyUCl2DW0CdJ8GnX+gMPwYsUv8q9QV3wSMyuY4ThVBybwX5wuPFp52CMkHvGej+
wSTbFDbU0Z04XqrUpi8vL123VLpDgP4tHOoeV1XbICHPjWvj/p3E36+4mrzMYtRv1A55AEZnS+8m
/aEvBgiyxYoEbZu0ryP0Cgxj0Xutbq74VqZ6XqKC+Lo4sW0NRsLXJ8W4F0PjbAVatYAEtEJMPydw
hT/cRiXN0g+G/3qOyhVxaIXmvMdoZDblx8HPXw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Huw8aOCaW7iSZG69HEWmyvFNJvBUWnAERD26KdkWIfm0nq96TxR/D9hBnKvP/6IUMM/CayB8eo0e
Fu3KgEPF68xVBA1uQ0AjpXkCMnEFZdCZFVxlryfaVTpIM6Ymw+dBtct7wR16Gp7Q5qHvx2juWSlT
RhBtQd2hXAeC6LftkNU=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
EBIXO6UZav9DhR9H5M3wktjahDa8pbKNrg/NqcieIGKdaFyehlxAzC/KjYw1fBmEXeFe3fycDjCo
EOIMc6EeMZ+PZ/lbSwd2DRrhlLhGF6cgCrsD0xaAyMlr1mxoU47ywng8JTHxqWe84hONRpZubbit
2eplBfzSxchIyWhNLfBCWXo3ZIUqeJx1FDtixt6nZOasZUB2f1ianrefGIRU9XL7beiT8jU5K273
Vk5zkgC3WjouJo+JpIuZEXmwASZLCrtDMl48pOJlz3rXr9RLR83XqnY3Uza8803/0J9C0rntIwvL
aV8Dvx7D2iD8JBIHAc3L1awh5kcMKfNsRmJ3Mg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QzfaCOZgDL2MNVtPzMljg6Fn0vnHabqnfk91lUbUPiQKLBvv/FZeq9K9OngS1fURBK3c2BzHIjw/
UjOPiL6+IbPLHvcZtvAWHNKCIqMswiffPN6MSlxkDtGQJnsdTHkVN1wfNdO0c2HtRtUjPNfRrieB
YM7C8UX1r3S3Znv6i05CQ92US1cACfblCh0ZsF3qQ8xOEGAD+AHzEkz313UxlfRjPHjV1J0E7Eab
hDhURIisY3mdC7SSEFW7auXaPYyT3x/Th89ld484mhEsNNmQlt6lL7W8U4tMMFygM5+Dr9ImAjIW
ZBp0ca3Hl1YI7N604eia6flvpYRVhLg7Dd8Tiw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_01", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
A2Ibv3+wfHHqZHKdncCkfbKQhoLICK4EMBMqj8jArPqpMG9WGDotMhVpLU+24OVs+YQectLMt4cS
Hdsm9C/BgFHD/D/PZ9K99PPGrvRGU90Um2b568/kYD1wndmmrSuROH3jiyBxXE76wrr3iebbMBmm
Lh8Ge3PsydmeEApngPVx9DXjgmdJvPZH0BO5oDet7zk2bDlYfVWsqo0tdP9Sx5LvE9OCAuWn+ngL
AGylwDmGFPdEeYRadFnbRBuMYyrV4ZMwtdmyffTM5gwaGuz6f6bcu958Gz5KwK+8WOU0vBrxYN20
Hn3OSE3SEMScIunBAGzZVcxkRyQov5pGue8rwg==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YyIRqgrCwUyWcybWSLxdexXkajPmvpOwIiGuzJgGbf76zkp1yoR9+Mt7N9I5lJNCJ3+JxGPDnbcq
TSXiUvL5qskkbAZvnzG/hWuOwdz7mwr+UnZa7j/qcFiW4ycflo9KUTqAlW11La8VVAqBeOQOJGbo
pF01ZIJgCVaG2DE5HO+fBdZIUgxrKq+3u6N/hpvaC0s4tEoO8R7G2HnEhrM06SsBUyxJgAgnC//0
Wyp5wpqBz+wYbnX1DPc77dmQoU4AP8Q2qJlcK9AkmWOk68/5EXIJtVuwR1e+P+PmYP/lkTs2S8r5
A5PodZsgZcGxgQjsSxyESD+Rw77STHscmZGthA==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
uehk6NpeHGF0sZesAMxNv4IQmI7M0WTZMns7IAv9lmq/W2WiqCIPXnCeyZ959iVqcjGXLUQ6ifru
NVOEwhZrxFj8e9o2Xm3Aje7+u9r7h9FRgI0xCJ0QIT3pSavkcEsPvspA5ONHa873A/okINcW7fFq
HN4jsz3/fLH+p2BcvJcfn+LgL/K+vXvItE8XVKXJmgzuN+7UPlmE/GfTREqv06pkLXtzhxIlU/yy
6L3e2J5Yf8IJ1QwcJZxDNG+PZ7/12mpz1qUumti8mUa1bdimunR6LkfVwbGxdHqGGUF0ucb6c4Z3
OkUu3JL91SOZfpnkc7PVAiakNayaaBkBsAI2WDAZHKCnlBtb8vHU4YtW2GyNDNKN/nHULLZcnM74
aepTAcudXh65TvOZwYU8kVKoxf4LxKRh0MmNuzltwMszIv3531/FvMToczxnUzVG8ofy6HS9ndzd
VnNXZ21pZzAOsxyFiBtM7FpRhza6FvSskOYx4it7mQkcM7zLvBldf7dJ

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Y7gRwj9TP5ZoSmGqdgFVI9zaQ/L/yp6LgngCSq8Z2WH2eyR1mWVOasP6sXWadVlG3JIzpd3C7Itw
RKYz7zOI1nu/XYwe6vM/bCXCB1MmHtm9r2lciz3npMtse4U53vmFKjEjZPChNmB93kG70uzNd2Xl
qQB60vAj19Pb8o7zioRZ0Ii6URemEHlPuAqOloQK6Qt4Wz+OdYvgSZy463+D0fpKuP1FZr2bKSQp
ShPVrD7EHf+zULoWpbNPzZyFm/IL7312un4XVVEFSMkWOK6py438j4Fm5mGnqjAPipkJIOB5FKxN
OM6PXAuHwNU7agATb+ELwg5TH3VoXO4SmXft9A==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 246352)
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
