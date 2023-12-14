--Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
--Date        : Sun Dec 10 18:47:49 2023
--Host        : DESKTOP-A0RH3KH running 64-bit major release  (build 9200)
--Command     : generate_target processing_system_wrapper.bd
--Design      : processing_system_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity processing_system_wrapper is
  port (
    CLK_IN1_D_0_clk_n : in STD_LOGIC;
    CLK_IN1_D_0_clk_p : in STD_LOGIC;
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    clk_out1_0 : out STD_LOGIC;
    dac_write_end_tri_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    dac_write_start_tri_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    gpio_2_pins_tri_io : inout STD_LOGIC_VECTOR ( 1 downto 0 );
    gpio_2_pins_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    i_slv_reg2_0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_slv_reg3_0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    locked_0 : out STD_LOGIC;
    mac_engine_rack_0 : in STD_LOGIC;
    mac_engine_wack_0 : in STD_LOGIC;
    mac_engine_wstart_0 : in STD_LOGIC;
    o_read_complete_reg2_0 : out STD_LOGIC;
    o_read_complete_reg3_0 : out STD_LOGIC;
    o_slv_reg0_0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_slv_reg1_0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_slv_reg4_0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_write_complete_reg0_0 : out STD_LOGIC;
    o_write_complete_reg1_0 : out STD_LOGIC;
    reset_0 : in STD_LOGIC;
    user_wdone_interrupt_0 : out STD_LOGIC
  );
end processing_system_wrapper;

architecture STRUCTURE of processing_system_wrapper is
  component processing_system is
  port (
    clk_out1_0 : out STD_LOGIC;
    locked_0 : out STD_LOGIC;
    reset_0 : in STD_LOGIC;
    i_slv_reg2_0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_slv_reg3_0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    mac_engine_rack_0 : in STD_LOGIC;
    mac_engine_wack_0 : in STD_LOGIC;
    mac_engine_wstart_0 : in STD_LOGIC;
    o_read_complete_reg2_0 : out STD_LOGIC;
    o_read_complete_reg3_0 : out STD_LOGIC;
    o_slv_reg0_0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_slv_reg1_0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_slv_reg4_0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_write_complete_reg0_0 : out STD_LOGIC;
    o_write_complete_reg1_0 : out STD_LOGIC;
    user_wdone_interrupt_0 : out STD_LOGIC;
    CLK_IN1_D_0_clk_n : in STD_LOGIC;
    CLK_IN1_D_0_clk_p : in STD_LOGIC;
    gpio_2_pins_tri_i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gpio_2_pins_tri_o : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gpio_2_pins_tri_t : out STD_LOGIC_VECTOR ( 1 downto 0 );
    dac_write_end_tri_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    dac_write_start_tri_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC
  );
  end component processing_system;
  component IOBUF is
  port (
    I : in STD_LOGIC;
    O : out STD_LOGIC;
    T : in STD_LOGIC;
    IO : inout STD_LOGIC
  );
  end component IOBUF;
  signal gpio_2_pins_tri_i_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal gpio_2_pins_tri_i_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal gpio_2_pins_tri_io_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal gpio_2_pins_tri_io_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal gpio_2_pins_tri_o_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal gpio_2_pins_tri_o_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal gpio_2_pins_tri_t_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal gpio_2_pins_tri_t_1 : STD_LOGIC_VECTOR ( 1 to 1 );
begin
gpio_2_pins_tri_iobuf_0: component IOBUF
     port map (
      I => gpio_2_pins_tri_o_0(0),
      IO => gpio_2_pins_tri_io(0),
      O => gpio_2_pins_tri_i_0(0),
      T => gpio_2_pins_tri_t_0(0)
    );
gpio_2_pins_tri_iobuf_1: component IOBUF
     port map (
      I => gpio_2_pins_tri_o_1(1),
      IO => gpio_2_pins_tri_io(1),
      O => gpio_2_pins_tri_i_1(1),
      T => gpio_2_pins_tri_t_1(1)
    );
processing_system_i: component processing_system
     port map (
      CLK_IN1_D_0_clk_n => CLK_IN1_D_0_clk_n,
      CLK_IN1_D_0_clk_p => CLK_IN1_D_0_clk_p,
      DDR_addr(14 downto 0) => DDR_addr(14 downto 0),
      DDR_ba(2 downto 0) => DDR_ba(2 downto 0),
      DDR_cas_n => DDR_cas_n,
      DDR_ck_n => DDR_ck_n,
      DDR_ck_p => DDR_ck_p,
      DDR_cke => DDR_cke,
      DDR_cs_n => DDR_cs_n,
      DDR_dm(3 downto 0) => DDR_dm(3 downto 0),
      DDR_dq(31 downto 0) => DDR_dq(31 downto 0),
      DDR_dqs_n(3 downto 0) => DDR_dqs_n(3 downto 0),
      DDR_dqs_p(3 downto 0) => DDR_dqs_p(3 downto 0),
      DDR_odt => DDR_odt,
      DDR_ras_n => DDR_ras_n,
      DDR_reset_n => DDR_reset_n,
      DDR_we_n => DDR_we_n,
      FIXED_IO_ddr_vrn => FIXED_IO_ddr_vrn,
      FIXED_IO_ddr_vrp => FIXED_IO_ddr_vrp,
      FIXED_IO_mio(53 downto 0) => FIXED_IO_mio(53 downto 0),
      FIXED_IO_ps_clk => FIXED_IO_ps_clk,
      FIXED_IO_ps_porb => FIXED_IO_ps_porb,
      FIXED_IO_ps_srstb => FIXED_IO_ps_srstb,
      clk_out1_0 => clk_out1_0,
      dac_write_end_tri_i(0) => dac_write_end_tri_i(0),
      dac_write_start_tri_o(0) => dac_write_start_tri_o(0),
      gpio_2_pins_tri_i(1) => gpio_2_pins_tri_i_1(1),
      gpio_2_pins_tri_i(0) => gpio_2_pins_tri_i_0(0),
      gpio_2_pins_tri_o(1) => gpio_2_pins_tri_o_1(1),
      gpio_2_pins_tri_o(0) => gpio_2_pins_tri_o_0(0),
      gpio_2_pins_tri_t(1) => gpio_2_pins_tri_t_1(1),
      gpio_2_pins_tri_t(0) => gpio_2_pins_tri_t_0(0),
      i_slv_reg2_0(31 downto 0) => i_slv_reg2_0(31 downto 0),
      i_slv_reg3_0(31 downto 0) => i_slv_reg3_0(31 downto 0),
      locked_0 => locked_0,
      mac_engine_rack_0 => mac_engine_rack_0,
      mac_engine_wack_0 => mac_engine_wack_0,
      mac_engine_wstart_0 => mac_engine_wstart_0,
      o_read_complete_reg2_0 => o_read_complete_reg2_0,
      o_read_complete_reg3_0 => o_read_complete_reg3_0,
      o_slv_reg0_0(31 downto 0) => o_slv_reg0_0(31 downto 0),
      o_slv_reg1_0(31 downto 0) => o_slv_reg1_0(31 downto 0),
      o_slv_reg4_0(31 downto 0) => o_slv_reg4_0(31 downto 0),
      o_write_complete_reg0_0 => o_write_complete_reg0_0,
      o_write_complete_reg1_0 => o_write_complete_reg1_0,
      reset_0 => reset_0,
      user_wdone_interrupt_0 => user_wdone_interrupt_0
    );
    gpio_2_pins_out(0) <= gpio_2_pins_tri_o_0(0);
    gpio_2_pins_out(1) <= gpio_2_pins_tri_o_1(1);
end STRUCTURE;
