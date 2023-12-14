// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Tue Jul 18 17:25:48 2023
// Host        : DESKTOP-A0RH3KH running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/4dsp_test/527_vc707_fmc216/output/vc707_fmc216_vivado/vivado/vc707_fmc216_vivado.gen/sources_1/ip/fifo_64_to_8/fifo_64_to_8_stub.v
// Design      : fifo_64_to_8
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7vx485tffg1761-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "fifo_generator_v13_2_6,Vivado 2021.2" *)
module fifo_64_to_8(rst, wr_clk, rd_clk, din, wr_en, rd_en, dout, full, 
  empty, valid, rd_data_count, wr_data_count)
/* synthesis syn_black_box black_box_pad_pin="rst,wr_clk,rd_clk,din[63:0],wr_en,rd_en,dout[7:0],full,empty,valid,rd_data_count[10:0],wr_data_count[7:0]" */;
  input rst;
  input wr_clk;
  input rd_clk;
  input [63:0]din;
  input wr_en;
  input rd_en;
  output [7:0]dout;
  output full;
  output empty;
  output valid;
  output [10:0]rd_data_count;
  output [7:0]wr_data_count;
endmodule
