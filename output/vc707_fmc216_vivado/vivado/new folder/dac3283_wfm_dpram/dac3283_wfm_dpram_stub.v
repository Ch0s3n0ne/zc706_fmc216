// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Tue Jul 18 14:46:28 2023
// Host        : DESKTOP-A0RH3KH running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/4dsp_test/527_vc707_fmc216/output/vc707_fmc216_vivado/vivado/vc707_fmc216_vivado.runs/dac3283_wfm_dpram_synth_1/dac3283_wfm_dpram_stub.v
// Design      : dac3283_wfm_dpram
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7vx485tffg1761-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2021.2" *)
module dac3283_wfm_dpram(clka, wea, addra, dina, clkb, rstb, addrb, doutb)
/* synthesis syn_black_box black_box_pad_pin="clka,wea[0:0],addra[11:0],dina[63:0],clkb,rstb,addrb[11:0],doutb[63:0]" */;
  input clka;
  input [0:0]wea;
  input [11:0]addra;
  input [63:0]dina;
  input clkb;
  input rstb;
  input [11:0]addrb;
  output [63:0]doutb;
endmodule
