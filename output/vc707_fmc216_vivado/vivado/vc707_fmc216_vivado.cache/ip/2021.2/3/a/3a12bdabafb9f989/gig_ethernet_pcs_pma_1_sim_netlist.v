// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Tue Jul 18 17:26:30 2023
// Host        : DESKTOP-A0RH3KH running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ gig_ethernet_pcs_pma_1_sim_netlist.v
// Design      : gig_ethernet_pcs_pma_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx485tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* EXAMPLE_SIMULATION = "0" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "gig_ethernet_pcs_pma_v16_2_6,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_block U0
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_GTWIZARD
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

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_GTWIZARD_init U0
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_GTWIZARD_GT
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_GTWIZARD_init
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_RX_STARTUP_FSM gt0_rxresetfsm_i
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_TX_STARTUP_FSM gt0_txresetfsm_i
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_GTWIZARD_multi_gt gtwizard_i
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_GTWIZARD_multi_gt
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

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_cpll_railing cpll_railing0_i
       (.cpll_pd0_i(cpll_pd0_i),
        .cpllreset_in(cpllreset_in),
        .gt0_cpllreset_t(gt0_cpllreset_t),
        .gtrefclk_bufg(gtrefclk_bufg));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_GTWIZARD_GT gt0_GTWIZARD_i
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_RX_STARTUP_FSM
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block__parameterized1_23 sync_RXRESETDONE
       (.data_out(rxresetdone_s2),
        .data_sync_reg1_0(data_sync_reg1),
        .independent_clock_bufg(independent_clock_bufg));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block__parameterized1_24 sync_cplllock
       (.\FSM_sequential_rx_state_reg[1] (sync_cplllock_n_0),
        .Q(rx_state[3:1]),
        .cplllock(cplllock),
        .independent_clock_bufg(independent_clock_bufg),
        .rxresetdone_s3(rxresetdone_s3));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block__parameterized1_25 sync_data_valid
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block__parameterized1_26 sync_mmcm_lock_reclocked
       (.SR(sync_mmcm_lock_reclocked_n_0),
        .data_out(mmcm_lock_i),
        .independent_clock_bufg(independent_clock_bufg),
        .mmcm_locked(mmcm_locked));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block__parameterized1_27 sync_run_phase_alignment_int
       (.data_in(run_phase_alignment_int_reg_n_0),
        .data_out(data_out_0),
        .rxuserclk(rxuserclk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block__parameterized1_28 sync_time_out_wait_bypass
       (.data_in(time_out_wait_bypass_reg_n_0),
        .data_out(time_out_wait_bypass_s2),
        .independent_clock_bufg(independent_clock_bufg));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block__parameterized1_29 sync_tx_fsm_reset_done_int
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_TX_STARTUP_FSM
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block__parameterized1_17 sync_TXRESETDONE
       (.data_out(txresetdone_s2),
        .data_sync_reg1_0(data_sync_reg1),
        .independent_clock_bufg(independent_clock_bufg));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block__parameterized1_18 sync_cplllock
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block__parameterized1_19 sync_mmcm_lock_reclocked
       (.SR(sync_mmcm_lock_reclocked_n_0),
        .data_out(mmcm_lock_i),
        .independent_clock_bufg(independent_clock_bufg),
        .mmcm_locked(mmcm_locked));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block__parameterized1_20 sync_run_phase_alignment_int
       (.data_in(run_phase_alignment_int_reg_n_0),
        .data_out(data_out),
        .userclk(userclk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block__parameterized1_21 sync_time_out_wait_bypass
       (.data_in(time_out_wait_bypass_reg_n_0),
        .data_out(time_out_wait_bypass_s2),
        .independent_clock_bufg(independent_clock_bufg));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block__parameterized1_22 sync_tx_fsm_reset_done_int
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_block
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_v16_2_6 gig_ethernet_pcs_pma_1_core
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sgmii_adapt sgmii_logic
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block__parameterized1 sync_block_rx_reset_done
       (.data_in(transceiver_inst_n_14),
        .data_out(rx_reset_done_i),
        .userclk2(userclk2));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block__parameterized1_0 sync_block_tx_reset_done
       (.data_in(transceiver_inst_n_13),
        .resetdone(resetdone),
        .resetdone_0(rx_reset_done_i),
        .userclk2(userclk2));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_transceiver transceiver_inst
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_clk_gen
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_johnson_cntr clk_div_stage1
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_johnson_cntr_33 clk_div_stage2
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_cpll_railing
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_johnson_cntr
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_johnson_cntr_33
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_reset_sync
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_reset_sync_1
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_reset_sync_2
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_reset_sync_3
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_reset_sync_30
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_reset_wtd_timer
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_rx_elastic_buffer
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block \reclock_rd_addrgray[0].sync_rd_addrgray 
       (.Q(rd_addr_gray[0]),
        .data_out(\reclock_rd_addrgray[0].sync_rd_addrgray_n_0 ),
        .rxuserclk2(rxuserclk2));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_5 \reclock_rd_addrgray[1].sync_rd_addrgray 
       (.Q(wr_addr[0]),
        .S(\reclock_rd_addrgray[1].sync_rd_addrgray_n_0 ),
        .data_out(\reclock_rd_addrgray[0].sync_rd_addrgray_n_0 ),
        .data_sync_reg1_0(rd_addr_gray[1]),
        .data_sync_reg6_0(p_3_in21_in),
        .p_25_in(p_25_in),
        .rxuserclk2(rxuserclk2));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_6 \reclock_rd_addrgray[2].sync_rd_addrgray 
       (.Q(wr_addr[1]),
        .S(\reclock_rd_addrgray[2].sync_rd_addrgray_n_0 ),
        .data_out(p_2_in18_in),
        .data_sync_reg1_0(rd_addr_gray[2]),
        .rxuserclk2(rxuserclk2),
        .\wr_occupancy_reg[3] (\reclock_rd_addrgray[4].sync_rd_addrgray_n_1 ),
        .\wr_occupancy_reg[3]_0 (p_14_in),
        .\wr_occupancy_reg[3]_1 (p_1_in15_in),
        .\wr_occupancy_reg[3]_2 (p_3_in21_in));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_7 \reclock_rd_addrgray[3].sync_rd_addrgray 
       (.Q(wr_addr[2]),
        .S(\reclock_rd_addrgray[3].sync_rd_addrgray_n_0 ),
        .data_out(p_1_in15_in),
        .data_sync_reg1_0(rd_addr_gray[3]),
        .rxuserclk2(rxuserclk2),
        .\wr_occupancy_reg[3] (p_14_in),
        .\wr_occupancy_reg[3]_0 (\reclock_rd_addrgray[4].sync_rd_addrgray_n_1 ),
        .\wr_occupancy_reg[3]_1 (p_2_in18_in));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_8 \reclock_rd_addrgray[4].sync_rd_addrgray 
       (.Q(wr_addr[3]),
        .S(\reclock_rd_addrgray[4].sync_rd_addrgray_n_0 ),
        .data_out(\reclock_rd_addrgray[4].sync_rd_addrgray_n_1 ),
        .data_sync_reg1_0(rd_addr_gray[4]),
        .rxuserclk2(rxuserclk2),
        .\wr_occupancy_reg[3] (p_14_in),
        .\wr_occupancy_reg[3]_0 (p_1_in15_in));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_9 \reclock_rd_addrgray[5].sync_rd_addrgray 
       (.ADDRD(wr_addr[5:4]),
        .Q(rd_addr_gray[5]),
        .S({\reclock_rd_addrgray[5].sync_rd_addrgray_n_0 ,\reclock_rd_addrgray[5].sync_rd_addrgray_n_1 }),
        .data_out(p_14_in),
        .rxuserclk2(rxuserclk2),
        .\wr_occupancy_reg[5] (\reclock_rd_addrgray[4].sync_rd_addrgray_n_1 ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_10 \reclock_wr_addrgray[0].sync_wr_addrgray 
       (.Q(\wr_addr_gray_reg_n_0_[0] ),
        .data_out(\reclock_wr_addrgray[0].sync_wr_addrgray_n_0 ),
        .userclk2(userclk2));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_11 \reclock_wr_addrgray[1].sync_wr_addrgray 
       (.DI(gray_to_bin[1]),
        .Q(rd_addr[0]),
        .S(\reclock_wr_addrgray[1].sync_wr_addrgray_n_0 ),
        .data_out(\reclock_wr_addrgray[0].sync_wr_addrgray_n_0 ),
        .data_sync_reg1_0(\wr_addr_gray_reg_n_0_[1] ),
        .data_sync_reg6_0(p_3_in36_in),
        .userclk2(userclk2));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_12 \reclock_wr_addrgray[2].sync_wr_addrgray 
       (.Q(rd_addr[1]),
        .S(\reclock_wr_addrgray[2].sync_wr_addrgray_n_0 ),
        .data_out(p_2_in33_in),
        .data_sync_reg1_0(\wr_addr_gray_reg_n_0_[2] ),
        .\rd_occupancy_reg[3] (\reclock_wr_addrgray[4].sync_wr_addrgray_n_1 ),
        .\rd_occupancy_reg[3]_0 (data_out),
        .\rd_occupancy_reg[3]_1 (p_1_in30_in),
        .\rd_occupancy_reg[3]_2 (p_3_in36_in),
        .userclk2(userclk2));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_13 \reclock_wr_addrgray[3].sync_wr_addrgray 
       (.Q(rd_addr[2]),
        .S(\reclock_wr_addrgray[3].sync_wr_addrgray_n_0 ),
        .data_out(p_1_in30_in),
        .data_sync_reg1_0(\wr_addr_gray_reg_n_0_[3] ),
        .\rd_occupancy_reg[3] (data_out),
        .\rd_occupancy_reg[3]_0 (\reclock_wr_addrgray[4].sync_wr_addrgray_n_1 ),
        .\rd_occupancy_reg[3]_1 (p_2_in33_in),
        .userclk2(userclk2));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_14 \reclock_wr_addrgray[4].sync_wr_addrgray 
       (.Q(rd_addr[3]),
        .S(\reclock_wr_addrgray[4].sync_wr_addrgray_n_0 ),
        .data_out(\reclock_wr_addrgray[4].sync_wr_addrgray_n_1 ),
        .data_sync_reg1_0(\wr_addr_gray_reg_n_0_[4] ),
        .\rd_occupancy_reg[3] (data_out),
        .\rd_occupancy_reg[3]_0 (p_1_in30_in),
        .userclk2(userclk2));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_15 \reclock_wr_addrgray[5].sync_wr_addrgray 
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_16 sync_initialize_ram_comp
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_rx_rate_adapt
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sgmii_adapt
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

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_clk_gen clock_generation
       (.data_out(speed_is_100_resync),
        .reset_out(sync_reset),
        .sgmii_clk_en_reg_0(sgmii_clk_en_reg),
        .sgmii_clk_f(sgmii_clk_f),
        .sgmii_clk_r(sgmii_clk_r),
        .speed_is_10_100_fall_reg_0(speed_is_10_100_resync),
        .userclk2(userclk2));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_reset_sync_30 gen_sync_reset
       (.SR(SR),
        .reset_out(sync_reset),
        .userclk2(userclk2));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_rx_rate_adapt receiver
       (.D(D),
        .gmii_rx_dv(gmii_rx_dv),
        .gmii_rx_dv_out_reg_0(gmii_rx_dv_out_reg),
        .gmii_rx_er(gmii_rx_er),
        .gmii_rx_er_out_reg_0(gmii_rx_er_out_reg),
        .gmii_rxd(gmii_rxd),
        .reset_out(sync_reset),
        .rx_er_aligned_reg_0(sgmii_clk_en_reg),
        .userclk2(userclk2));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_31 resync_speed_100
       (.data_out(speed_is_100_resync),
        .speed_is_100(speed_is_100),
        .userclk2(userclk2));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_32 resync_speed_10_100
       (.data_out(speed_is_10_100_resync),
        .speed_is_10_100(speed_is_10_100),
        .userclk2(userclk2));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_tx_rate_adapt transmitter
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_10
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_11
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_12
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_13
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_14
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_15
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_16
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_31
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_32
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_5
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_6
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_7
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_8
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_9
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block__parameterized1
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block__parameterized1_0
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block__parameterized1_17
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block__parameterized1_18
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block__parameterized1_19
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block__parameterized1_20
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block__parameterized1_21
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block__parameterized1_22
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block__parameterized1_23
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block__parameterized1_24
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block__parameterized1_25
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block__parameterized1_26
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block__parameterized1_27
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block__parameterized1_28
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block__parameterized1_29
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block__parameterized1_4
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_transceiver
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

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_GTWIZARD gtwizard_inst
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_reset_sync reclock_encommaalign
       (.enablealign(enablealign),
        .reset_out(encommaalign_rec),
        .rxuserclk2(rxuserclk2));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_reset_sync_1 reclock_rxreset
       (.SR(initialize_ram0),
        .initialize_ram_complete(initialize_ram_complete),
        .initialize_ram_complete_pulse(initialize_ram_complete_pulse),
        .mgt_rx_reset(mgt_rx_reset),
        .reset_out(rxreset_rec),
        .reset_sync6_0(wr_data1),
        .reset_sync6_1(reclock_rxreset_n_3),
        .rxuserclk2(rxuserclk2),
        .start(start));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_reset_sync_2 reclock_rxreset_ind_clk
       (.independent_clock_bufg(independent_clock_bufg),
        .mgt_rx_reset(mgt_rx_reset),
        .reset_out(rxreset_int));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_reset_sync_3 reclock_txreset
       (.SR(SR),
        .reset_out(txreset_int),
        .userclk(userclk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_reset_wtd_timer reset_wtd_timer
       (.data_out(data_valid_reg2),
        .independent_clock_bufg(independent_clock_bufg),
        .reset(reset));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_rx_elastic_buffer rx_elastic_buffer_inst
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block__parameterized1_4 sync_block_data_valid
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_tx_rate_adapt
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 246416)
`pragma protect data_block
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
uqZ62/U=
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
