// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Sun Dec 10 18:40:15 2023
// Host        : DESKTOP-A0RH3KH running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/4dsp_test/zc706_fmc216/output/vc707_fmc216_vivado/vivado/vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ip/processing_system_AXI_ZC706_FMC216_0_2/processing_system_AXI_ZC706_FMC216_0_2_stub.v
// Design      : processing_system_AXI_ZC706_FMC216_0_2
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z045ffg900-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "AXI_ZC706_FMC216_v1_0,Vivado 2021.2" *)
module processing_system_AXI_ZC706_FMC216_0_2(i_slv_reg2, i_slv_reg3, 
  o_write_complete_reg0, o_write_complete_reg1, o_read_complete_reg2, 
  o_read_complete_reg3, o_slv_reg0, o_slv_reg1, o_slv_reg4, mac_engine_wstart, 
  user_wdone_interrupt, mac_engine_wack, mac_engine_rack, s00_axi_aclk, s00_axi_aresetn, 
  s00_axi_awaddr, s00_axi_awprot, s00_axi_awvalid, s00_axi_awready, s00_axi_wdata, 
  s00_axi_wstrb, s00_axi_wvalid, s00_axi_wready, s00_axi_bresp, s00_axi_bvalid, 
  s00_axi_bready, s00_axi_araddr, s00_axi_arprot, s00_axi_arvalid, s00_axi_arready, 
  s00_axi_rdata, s00_axi_rresp, s00_axi_rvalid, s00_axi_rready)
/* synthesis syn_black_box black_box_pad_pin="i_slv_reg2[31:0],i_slv_reg3[31:0],o_write_complete_reg0,o_write_complete_reg1,o_read_complete_reg2,o_read_complete_reg3,o_slv_reg0[31:0],o_slv_reg1[31:0],o_slv_reg4[31:0],mac_engine_wstart,user_wdone_interrupt,mac_engine_wack,mac_engine_rack,s00_axi_aclk,s00_axi_aresetn,s00_axi_awaddr[4:0],s00_axi_awprot[2:0],s00_axi_awvalid,s00_axi_awready,s00_axi_wdata[31:0],s00_axi_wstrb[3:0],s00_axi_wvalid,s00_axi_wready,s00_axi_bresp[1:0],s00_axi_bvalid,s00_axi_bready,s00_axi_araddr[4:0],s00_axi_arprot[2:0],s00_axi_arvalid,s00_axi_arready,s00_axi_rdata[31:0],s00_axi_rresp[1:0],s00_axi_rvalid,s00_axi_rready" */;
  input [31:0]i_slv_reg2;
  input [31:0]i_slv_reg3;
  output o_write_complete_reg0;
  output o_write_complete_reg1;
  output o_read_complete_reg2;
  output o_read_complete_reg3;
  output [31:0]o_slv_reg0;
  output [31:0]o_slv_reg1;
  output [31:0]o_slv_reg4;
  input mac_engine_wstart;
  output user_wdone_interrupt;
  input mac_engine_wack;
  input mac_engine_rack;
  input s00_axi_aclk;
  input s00_axi_aresetn;
  input [4:0]s00_axi_awaddr;
  input [2:0]s00_axi_awprot;
  input s00_axi_awvalid;
  output s00_axi_awready;
  input [31:0]s00_axi_wdata;
  input [3:0]s00_axi_wstrb;
  input s00_axi_wvalid;
  output s00_axi_wready;
  output [1:0]s00_axi_bresp;
  output s00_axi_bvalid;
  input s00_axi_bready;
  input [4:0]s00_axi_araddr;
  input [2:0]s00_axi_arprot;
  input s00_axi_arvalid;
  output s00_axi_arready;
  output [31:0]s00_axi_rdata;
  output [1:0]s00_axi_rresp;
  output s00_axi_rvalid;
  input s00_axi_rready;
endmodule
