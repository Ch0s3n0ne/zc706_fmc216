// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Wed Oct 18 17:43:22 2023
// Host        : DESKTOP-A0RH3KH running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/4dsp_test/zc706_fmc216/output/vc707_fmc216_vivado/vivado/vc707_fmc216_vivado.gen/sources_1/ip/pll0_1/pll0_stub.v
// Design      : pll0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z045ffg900-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module pll0(clk_out1, reset, locked, clk_in1_p, clk_in1_n)
/* synthesis syn_black_box black_box_pad_pin="clk_out1,reset,locked,clk_in1_p,clk_in1_n" */;
  output clk_out1;
  input reset;
  output locked;
  input clk_in1_p;
  input clk_in1_n;
endmodule
