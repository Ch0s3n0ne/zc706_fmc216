// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Fri Sep 15 16:12:44 2023
// Host        : DESKTOP-A0RH3KH running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ gig_ethernet_pcs_pma_1_sim_netlist.v
// Design      : gig_ethernet_pcs_pma_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z045ffg900-2
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
  (* C_FAMILY = "zynq" *) 
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
bACIqyY=
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
