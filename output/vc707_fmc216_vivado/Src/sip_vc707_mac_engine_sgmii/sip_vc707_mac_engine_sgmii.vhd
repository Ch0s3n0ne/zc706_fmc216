
-------------------------------------------------------------------------------------
-- FILE NAME : sip_mac_engine.vhd
--
-- AUTHOR    : StellarIP (c) 4DSP
--
-- COMPANY   : 4DSP
--
-- ITEM      : 1
--
-- UNITS     : Entity       - sip_mac_engine
--             architecture - arch_sip_mac_engine
--
-- LANGUAGE  : VHDL
--
-------------------------------------------------------------------------------------
--
-------------------------------------------------------------------------------------
-- DESCRIPTION
-- ===========
--
-- sip_mac_engine_sgmii
-- Notes: sip_mac_engine_sgmii
-------------------------------------------------------------------------------------
--  Disclaimer: LIMITED WARRANTY AND DISCLAIMER. These designs are
--              provided to you as is.  4DSP specifically disclaims any
--              implied warranties of merchantability, non-infringement, or
--              fitness for a particular purpose. 4DSP does not warrant that
--              the functions contained in these designs will meet your
--              requirements, or that the operation of these designs will be
--              uninterrupted or error free, or that defects in the Designs
--              will be corrected. Furthermore, 4DSP does not warrant or
--              make any representations regarding use or the results of the
--              use of the designs in terms of correctness, accuracy,
--              reliability, or otherwise.
--
--              LIMITATION OF LIABILITY. In no event will 4DSP or its
--              licensors be liable for any loss of data, lost profits, cost
--              or procurement of substitute goods or services, or for any
--              special, incidental, consequential, or indirect damages
--              arising from the use or operation of the designs or
--              accompanying documentation, however caused and on any theory
--              of liability. This limitation will apply even if 4DSP
--              has been advised of the possibility of such damage. This
--              limitation shall apply not-withstanding the failure of the
--              essential purpose of any limited remedies herein.
--
----------------------------------------------
--
-------------------------------------------------------------------------------------
--
-------------------------------------------------------------------------------------
--library declaration
-------------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all ;
use ieee.std_logic_arith.all ;
use ieee.std_logic_unsigned.all ;
use ieee.std_logic_misc.all ;

-------------------------------------------------------------------------------------
--Entity Declaration
-------------------------------------------------------------------------------------
entity sip_vc707_mac_engine_sgmii  is
port (
--Wormhole 'cmdclk_out' of type 'cmdclk_out':
   cmdclk_out_cmdclk                       : out   std_logic;

--Wormhole 'cmd_out' of type 'cmd_out':
   cmd_out_cmdout                          : out   std_logic_vector(63 downto 0);
   cmd_out_cmdout_val                      : out   std_logic;

--Wormhole 'cmd_in' of type 'cmd_in':
   cmd_in_cmdin                            : in    std_logic_vector(63 downto 0);
   cmd_in_cmdin_val                        : in    std_logic;

--Wormhole 'clkout'of type 'clkout':
   clkout_clkout                           : out   std_logic_vector(31 downto 0);

--Wormhole 'rst_out'of type 'rst_out':
   rst_out_rstout                          : out   std_logic_vector(31 downto 0);

--Wormhole 'ext_mac_engine_sgmii' of type 'ext_mac_engine_sgmii':
   cpu_reset                               : in    std_logic;
   -- sysclk_p                                : in    std_logic;
   -- sysclk_n                                : in    std_logic;
   gpio_led                                : out   std_logic_vector(3 downto 0);
   phy_reset_l                             : out   std_logic;
   phy_mdc                                 : out   std_logic;
   phy_mdio                                : inout std_logic;

   sgmii_refclk_p									 : in std_logic;  -- Differential +ve of reference clock for tranceiver: 125MHz, very high quality
   sgmii_refclk_n									 : in std_logic;  -- Differential -ve of reference clock for tranceiver: 125MHz, very high quality
   sgmii_tx_p                              : out   std_logic;
   sgmii_tx_n                              : out   std_logic;
   sgmii_rx_p                              : in    std_logic;
   sgmii_rx_n                              : in    std_logic;

--Wormhole 'in_data' of type 'wh_in':
   in_data_in_stop                         : out   std_logic;
   in_data_in_dval                         : in    std_logic;
   in_data_in_data                         : in    std_logic_vector(63 downto 0);

--Wormhole 'out_data' of type 'wh_out':
   out_data_out_stop                       : in    std_logic;
   out_data_out_dval                       : out   std_logic;
   out_data_out_data                       : out   std_logic_vector(63 downto 0);

   write_DAC_start         : in std_logic;
   write_DAC_end           : out std_logic;

   setup_end                               : in    std_logic;
   clk_out_wizz_125       : in std_logic;
   locked_pll_wizz        : in std_logic;

   i_slv_reg2_0            : out STD_LOGIC_VECTOR (31 downto 0);
   i_slv_reg3_0            : out STD_LOGIC_VECTOR (31 downto 0);
   mac_engine_rack_0       : out STD_LOGIC;
   mac_engine_wack_0       : out STD_LOGIC;
   mac_engine_wstart_0     : out STD_LOGIC;
   o_read_complete_reg2_0  : in  STD_LOGIC;
   o_read_complete_reg3_0  : in  STD_LOGIC;
   o_slv_reg0_0            : in  STD_LOGIC_VECTOR (31 downto 0);
   o_slv_reg1_0            : in  STD_LOGIC_VECTOR (31 downto 0);
   o_slv_reg4_0            : in  STD_LOGIC_VECTOR (31 downto 0);

   o_write_complete_reg0_0 : in  STD_LOGIC;
   o_write_complete_reg1_0 : in  STD_LOGIC;
   user_wdone_interrupt_0  : in  STD_LOGIC
   );
end entity sip_vc707_mac_engine_sgmii;

-------------------------------------------------------------------------------------
--Architecture declaration
-------------------------------------------------------------------------------------
architecture arch_sip_mac_engine_sgmii   of sip_vc707_mac_engine_sgmii  is

-------------------------------------------------------------------------------------
-- Components Declarations
-------------------------------------------------------------------------------------
component mac_engine is
port (
  -- Master reset input
  cpu_reset         : in  std_logic;

  -- Master clock input
--   sysclk_p          : in  std_logic;
--   sysclk_n          : in  std_logic;
  gpio_led          : out std_logic_vector(3 downto 0);

  -- Ethernet control interface
  phy_reset_l       : out std_logic;
  phy_mdc           : out std_logic;
  phy_mdio          : inout std_logic;

  --SGM2 interface
  gtrefclk_p				: in std_logic;                     -- Differential +ve of reference clock for tranceiver: 125MHz, very high quality
  gtrefclk_n				: in std_logic;                     -- Differential -ve of reference clock for tranceiver: 125MHz, very high quality
  phy_txp           : out std_logic;                    -- Differential +ve of serial transmission from PMA to PMD.
  phy_txn           : out std_logic;                    -- Differential -ve of serial transmission from PMA to PMD.
  phy_rxp           : in std_logic;                     -- Differential +ve for serial reception from PMD to PMA.
  phy_rxn           : in std_logic;

  -- Command interface (register read/write)
  clk_out           : out std_logic;
  rst_out           : out std_logic;

  -- Command interface (register read/write)
  cmd_clk           : out std_logic;
  out_cmd_val       : out std_logic;
  out_cmd           : out std_logic_vector(63 downto 0);
  in_cmd_val        : in  std_logic;
  in_cmd            : in  std_logic_vector(63 downto 0);

  -- Auto offload interface (data push, with stop)
  auto_start        : in  std_logic;
  auto_channel      : in  std_logic_vector(7 downto 0);
  auto_size         : in  std_logic_vector(31 downto 0);
  auto_data_val     : in  std_logic;
  auto_data         : in  std_logic_vector(63 downto 0);
  auto_data_stop    : out std_logic;
  auto_busy         : out std_logic;

  -- Block write interface (data push, non-stop)
  write_start       : out std_logic;
  write_channel     : out std_logic_vector(7 downto 0);
  write_start_addr  : out std_logic_vector(31 downto 0);
  write_size        : out std_logic_vector(31 downto 0);
  write_data_val    : out std_logic;
  write_data        : out std_logic_vector(63 downto 0);

  -- Block read interface (data push, with stop)
  read_start        : out std_logic;
  read_channel      : out std_logic_vector(7 downto 0);
  read_start_addr   : out std_logic_vector(31 downto 0);
  read_size         : out std_logic_vector(31 downto 0);
  read_data_val     : in  std_logic;
  read_data         : in  std_logic_vector(63 downto 0);
  read_data_stop    : out std_logic;

  write_DAC_start         : in std_logic;
  write_DAC_end           : out std_logic;

  setup_end                               : in    std_logic;
  clk_out_wizz_125       : in std_logic;
  locked_pll_wizz        : in std_logic;


  i_slv_reg2_0            : out STD_LOGIC_VECTOR (31 downto 0);
  i_slv_reg3_0            : out STD_LOGIC_VECTOR (31 downto 0);

  mac_engine_rack_0       : out STD_LOGIC;
  mac_engine_wack_0       : out STD_LOGIC;
  mac_engine_wstart_0     : out STD_LOGIC;

  o_read_complete_reg2_0  : in  STD_LOGIC;
  o_read_complete_reg3_0  : in  STD_LOGIC;
  o_slv_reg0_0            : in  STD_LOGIC_VECTOR (31 downto 0);
  o_slv_reg1_0            : in  STD_LOGIC_VECTOR (31 downto 0);
  o_slv_reg4_0            : in  STD_LOGIC_VECTOR (31 downto 0);
  o_write_complete_reg0_0 : in  STD_LOGIC;
  o_write_complete_reg1_0 : in  STD_LOGIC;
  user_wdone_interrupt_0  : in  STD_LOGIC

);
end component mac_engine;

signal clk_out : std_logic;
signal rst_out : std_logic := '0'; -- AVITERI 18-03-2015 : I gave a default value '0'

begin

clkout_clkout  <= (others => clk_out);
rst_out_rstout <= (others => rst_out);

-------------------------------------------------------------------------------------
-- Component instantiation
-------------------------------------------------------------------------------------
mac_engine_inst : mac_engine
port map (
  cpu_reset         => cpu_reset,		-- : in  std_logic;


--   sysclk_p          => sysclk_p,		-- : in  std_logic;
--   sysclk_n          => sysclk_n,		-- : in  std_logic;
  gpio_led          => open,		-- : out std_logic_vector(3 downto 0);


  phy_reset_l       => open, 	--: out std_logic;
  phy_mdc           => open,  		-- : out std_logic;
  phy_mdio          => open, 		-- : inout std_logic;


  gtrefclk_p		=> '0',	--	: in std_logic;
  gtrefclk_n		=> '1',	--	: in std_logic;
  phy_txp           => open,  	-- : out std_logic;
  phy_txn           => open,  	-- : out std_logic;
  phy_rxp           => '0',  	-- : in std_logic;
  phy_rxn           => '1',  	-- : in std_logic;


  clk_out           => clk_out,  		-- : out std_logic;
  rst_out           => rst_out,  		-- : out std_logic;


  cmd_clk           => cmdclk_out_cmdclk,  -- : out std_logic;
  out_cmd_val       => cmd_out_cmdout_val, -- : out std_logic;
  out_cmd           => cmd_out_cmdout,   -- : out std_logic_vector(63 downto 0);
  in_cmd_val        => cmd_in_cmdin_val, -- : in  std_logic;
  in_cmd            => cmd_in_cmdin, 	-- : in  std_logic_vector(63 downto 0);


  auto_start        => '0', 			-- : in  std_logic;
  auto_channel      => (others => '0'), -- : in  std_logic_vector(7 downto 0);
  auto_size         => (others => '0'), -- : in  std_logic_vector(31 downto 0);
  auto_data_val     => '0', 			-- : in  std_logic;
  auto_data         => (others => '0'), -- : in  std_logic_vector(63 downto 0);
  auto_data_stop    => open, 			-- : out std_logic;
  auto_busy         => open, 			-- : out std_logic;


  write_start       => open, 			-- : out std_logic;
  write_channel     => open, 			-- : out std_logic_vector(7 downto 0);
  write_start_addr  => open, 			-- : out std_logic_vector(31 downto 0);
  write_size        => open, 			-- : out std_logic_vector(31 downto 0);
  write_data_val    => out_data_out_dval, -- : out std_logic;
  write_data        => out_data_out_data, -- : out std_logic_vector(63 downto 0);


  read_start        => open, 			-- : out std_logic;
  read_channel      => open, 			-- : out std_logic_vector(7 downto 0);
  read_start_addr   => open, 			-- : out std_logic_vector(31 downto 0);
  read_size         => open, 			-- : out std_logic_vector(31 downto 0);
  read_data_val     => in_data_in_dval, -- : in  std_logic;
  read_data         => in_data_in_data, -- : in  std_logic_vector(63 downto 0);
  read_data_stop    => in_data_in_stop, 	-- : out std_logic

  write_DAC_end => write_DAC_end,
  write_DAC_start => write_DAC_start,

  setup_end => setup_end,
  clk_out_wizz_125   =>   clk_out_wizz_125,  
  locked_pll_wizz   =>   locked_pll_wizz ,

  i_slv_reg2_0            => i_slv_reg2_0            ,
  i_slv_reg3_0            => i_slv_reg3_0            ,
  mac_engine_rack_0       => mac_engine_rack_0       ,
  mac_engine_wack_0       => mac_engine_wack_0       ,
  mac_engine_wstart_0     => mac_engine_wstart_0     ,
  o_read_complete_reg2_0  => o_read_complete_reg2_0  ,
  o_read_complete_reg3_0  => o_read_complete_reg3_0  ,
  o_slv_reg0_0            => o_slv_reg0_0            ,
  o_slv_reg1_0            => o_slv_reg1_0            ,
  o_slv_reg4_0            => o_slv_reg4_0            ,
  o_write_complete_reg0_0 => o_write_complete_reg0_0 ,
  o_write_complete_reg1_0 => o_write_complete_reg1_0 ,
  user_wdone_interrupt_0  => user_wdone_interrupt_0  

);

-------------------------------------------------------------------------------------
-- End
-------------------------------------------------------------------------------------

end architecture arch_sip_mac_engine_sgmii;
