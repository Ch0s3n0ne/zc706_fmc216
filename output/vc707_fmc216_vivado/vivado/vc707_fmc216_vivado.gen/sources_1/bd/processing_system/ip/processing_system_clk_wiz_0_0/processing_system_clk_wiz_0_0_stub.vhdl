-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
-- Date        : Tue Oct 31 08:41:49 2023
-- Host        : DESKTOP-A0RH3KH running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/4dsp_test/zc706_fmc216/output/vc707_fmc216_vivado/vivado/vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ip/processing_system_clk_wiz_0_0/processing_system_clk_wiz_0_0_stub.vhdl
-- Design      : processing_system_clk_wiz_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z045ffg900-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity processing_system_clk_wiz_0_0 is
  Port ( 
    clk_out1 : out STD_LOGIC;
    reset : in STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1_p : in STD_LOGIC;
    clk_in1_n : in STD_LOGIC
  );

end processing_system_clk_wiz_0_0;

architecture stub of processing_system_clk_wiz_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_out1,reset,locked,clk_in1_p,clk_in1_n";
begin
end;
