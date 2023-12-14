-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
-- Date        : Sun Dec 10 18:40:15 2023
-- Host        : DESKTOP-A0RH3KH running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/4dsp_test/zc706_fmc216/output/vc707_fmc216_vivado/vivado/vc707_fmc216_vivado.gen/sources_1/bd/processing_system/ip/processing_system_AXI_ZC706_FMC216_0_2/processing_system_AXI_ZC706_FMC216_0_2_stub.vhdl
-- Design      : processing_system_AXI_ZC706_FMC216_0_2
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z045ffg900-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity processing_system_AXI_ZC706_FMC216_0_2 is
  Port ( 
    i_slv_reg2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_slv_reg3 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_write_complete_reg0 : out STD_LOGIC;
    o_write_complete_reg1 : out STD_LOGIC;
    o_read_complete_reg2 : out STD_LOGIC;
    o_read_complete_reg3 : out STD_LOGIC;
    o_slv_reg0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_slv_reg1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_slv_reg4 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    mac_engine_wstart : in STD_LOGIC;
    user_wdone_interrupt : out STD_LOGIC;
    mac_engine_wack : in STD_LOGIC;
    mac_engine_rack : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );

end processing_system_AXI_ZC706_FMC216_0_2;

architecture stub of processing_system_AXI_ZC706_FMC216_0_2 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "i_slv_reg2[31:0],i_slv_reg3[31:0],o_write_complete_reg0,o_write_complete_reg1,o_read_complete_reg2,o_read_complete_reg3,o_slv_reg0[31:0],o_slv_reg1[31:0],o_slv_reg4[31:0],mac_engine_wstart,user_wdone_interrupt,mac_engine_wack,mac_engine_rack,s00_axi_aclk,s00_axi_aresetn,s00_axi_awaddr[4:0],s00_axi_awprot[2:0],s00_axi_awvalid,s00_axi_awready,s00_axi_wdata[31:0],s00_axi_wstrb[3:0],s00_axi_wvalid,s00_axi_wready,s00_axi_bresp[1:0],s00_axi_bvalid,s00_axi_bready,s00_axi_araddr[4:0],s00_axi_arprot[2:0],s00_axi_arvalid,s00_axi_arready,s00_axi_rdata[31:0],s00_axi_rresp[1:0],s00_axi_rvalid,s00_axi_rready";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "AXI_ZC706_FMC216_v1_0,Vivado 2021.2";
begin
end;
