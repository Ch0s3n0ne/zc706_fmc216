
-------------------------------------------------------------------------------------
-- FILE NAME : sip_fmc216_8lane.vhd
--
-- AUTHOR    : StellarIP (c) 4DSP
--
-- COMPANY   : 4DSP
--
-- ITEM      : 1
--
-- UNITS     : Entity       - sip_fmc216_8lane
--             architecture - arch_sip_fmc216_8lane
--
-- LANGUAGE  : VHDL
--
-------------------------------------------------------------------------------------
--
-------------------------------------------------------------------------------------
-- DESCRIPTION
-- ===========
--
-- sip_fmc216_8lane
-- Notes: sip_fmc216_8lane
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

library xil_defaultlib;
   use xil_defaultlib.types.all; 

-------------------------------------------------------------------------------------
--Entity Declaration
-------------------------------------------------------------------------------------
entity sip_fmc216_8lane  is
generic (
   global_start_addr_gen                   : std_logic_vector(27 downto 0);
   global_stop_addr_gen                    : std_logic_vector(27 downto 0);
   private_start_addr_gen                  : std_logic_vector(27 downto 0);
   private_stop_addr_gen                   : std_logic_vector(27 downto 0)
);
port (
--Wormhole 'clk' of type 'clkin':
   clk_clkin                               : in    std_logic_vector(31 downto 0);

--Wormhole 'rst' of type 'rst_in':
   rst_rstin                               : in    std_logic_vector(31 downto 0);

--Wormhole 'cmdclk_in' of type 'cmdclk_in':
   cmdclk_in_cmdclk                        : in    std_logic;

--Wormhole 'cmd_in' of type 'cmd_in':
   cmd_in_cmdin                            : in    std_logic_vector(63 downto 0);
   cmd_in_cmdin_val                        : in    std_logic;

--Wormhole 'cmd_out' of type 'cmd_out':
   cmd_out_cmdout                          : out   std_logic_vector(63 downto 0);
   cmd_out_cmdout_val                      : out   std_logic;

--Wormhole 'dac0' of type 'wh_in':
   dac0_in_stop                            : out   std_logic;
   dac0_in_dval                            : in    std_logic;
   dac0_in_data                            : in    std_logic_vector(63 downto 0);

--Wormhole 'dac1' of type 'wh_in':
   dac1_in_stop                            : out   std_logic;
   dac1_in_dval                            : in    std_logic;
   dac1_in_data                            : in    std_logic_vector(63 downto 0);

--Wormhole 'dac2' of type 'wh_in':
   dac2_in_stop                            : out   std_logic;
   dac2_in_dval                            : in    std_logic;
   dac2_in_data                            : in    std_logic_vector(63 downto 0);

--Wormhole 'dac3' of type 'wh_in':
   dac3_in_stop                            : out   std_logic;
   dac3_in_dval                            : in    std_logic;
   dac3_in_data                            : in    std_logic_vector(63 downto 0);

--Wormhole 'ext_fmc216_8lane' of type 'ext_fmc216_8lane':
   trigger_out                            : out std_logic;
   dac_syncb_n                             : in    std_logic_vector(3 downto 0);
   dac_syncb_p                             : in    std_logic_vector(3 downto 0);
   ext_trigger_n                           : in    std_logic;
   ext_trigger_p                           : in    std_logic;
   lmk_sync                                : out   std_logic;
   lmkclk_n                                : in    std_logic;
   lmkclk_p                                : in    std_logic;
   lmk_sysref_n                         : in    std_logic;
   lmk_sysref_p                         : in    std_logic;
   pg_m2c                                  : in    std_logic;
   prsnt_m2c_l                             : in    std_logic;
   refclk_n                                : in    std_logic_vector(1 downto 0);
   refclk_p                                : in    std_logic_vector(1 downto 0);
   serdin_n                                : in    std_logic_vector(7 downto 0);
   serdin_p                                : in    std_logic_vector(7 downto 0);
   serdout_n                               : out   std_logic_vector(7 downto 0);
   serdout_p                               : out   std_logic_vector(7 downto 0);

--Wormhole 'dac4' of type 'wh_in':
   dac4_in_stop                            : out   std_logic;
   dac4_in_dval                            : in    std_logic;
   dac4_in_data                            : in    std_logic_vector(63 downto 0);

--Wormhole 'dac5' of type 'wh_in':
   dac5_in_stop                            : out   std_logic;
   dac5_in_dval                            : in    std_logic;
   dac5_in_data                            : in    std_logic_vector(63 downto 0);

--Wormhole 'dac6' of type 'wh_in':
   dac6_in_stop                            : out   std_logic;
   dac6_in_dval                            : in    std_logic;
   dac6_in_data                            : in    std_logic_vector(63 downto 0);

--Wormhole 'dac7' of type 'wh_in':
   dac7_in_stop                            : out   std_logic;
   dac7_in_dval                            : in    std_logic;
   dac7_in_data                            : in    std_logic_vector(63 downto 0);

--Wormhole 'dac8' of type 'wh_in':
   dac8_in_stop                            : out   std_logic;
   dac8_in_dval                            : in    std_logic;
   dac8_in_data                            : in    std_logic_vector(63 downto 0);

--Wormhole 'dac9' of type 'wh_in':
   dac9_in_stop                            : out   std_logic;
   dac9_in_dval                            : in    std_logic;
   dac9_in_data                            : in    std_logic_vector(63 downto 0);

--Wormhole 'dac10' of type 'wh_in':
   dac10_in_stop                           : out   std_logic;
   dac10_in_dval                           : in    std_logic;
   dac10_in_data                           : in    std_logic_vector(63 downto 0);

--Wormhole 'dac11' of type 'wh_in':
   dac11_in_stop                           : out   std_logic;
   dac11_in_dval                           : in    std_logic;
   dac11_in_data                           : in    std_logic_vector(63 downto 0);

--Wormhole 'dac12' of type 'wh_in':
   dac12_in_stop                           : out   std_logic;
   dac12_in_dval                           : in    std_logic;
   dac12_in_data                           : in    std_logic_vector(63 downto 0);

--Wormhole 'dac13' of type 'wh_in':
   dac13_in_stop                           : out   std_logic;
   dac13_in_dval                           : in    std_logic;
   dac13_in_data                           : in    std_logic_vector(63 downto 0);

--Wormhole 'dac14' of type 'wh_in':
   dac14_in_stop                           : out   std_logic;
   dac14_in_dval                           : in    std_logic;
   dac14_in_data                           : in    std_logic_vector(63 downto 0);

--Wormhole 'dac15' of type 'wh_in':
   dac15_in_stop                           : out   std_logic;
   dac15_in_dval                           : in    std_logic;
   dac15_in_data                           : in    std_logic_vector(63 downto 0)
   );
end entity sip_fmc216_8lane;

-------------------------------------------------------------------------------------
--Architecture declaration
-------------------------------------------------------------------------------------
architecture arch_sip_fmc216_8lane   of sip_fmc216_8lane  is

-------------------------------------------------------------------------------------
--Signal declaration
-------------------------------------------------------------------------------------
signal dac_in_data  : bus064(15 downto 0);
signal dac_in_dval  : std_logic_vector(15 downto 0);
signal dac_in_stop  : std_logic_vector(15 downto 0);

--***********************************************************************************
begin
--***********************************************************************************

dac_in_dval(0)  <= dac0_in_dval;
dac_in_dval(1)  <= dac1_in_dval;
dac_in_dval(2)  <= dac2_in_dval;
dac_in_dval(3)  <= dac3_in_dval;
dac_in_dval(4)  <= dac4_in_dval;
dac_in_dval(5)  <= dac5_in_dval;
dac_in_dval(6)  <= dac6_in_dval;
dac_in_dval(7)  <= dac7_in_dval;
dac_in_dval(8)  <= dac8_in_dval;
dac_in_dval(9)  <= dac9_in_dval;
dac_in_dval(10)  <= dac10_in_dval;
dac_in_dval(11)  <= dac11_in_dval;
dac_in_dval(12)  <= dac12_in_dval;
dac_in_dval(13)  <= dac13_in_dval;
dac_in_dval(14)  <= dac14_in_dval;
dac_in_dval(15)  <= dac15_in_dval;
dac0_in_stop    <= dac_in_stop(0);
dac1_in_stop    <= dac_in_stop(1);
dac2_in_stop    <= dac_in_stop(2);
dac3_in_stop    <= dac_in_stop(3);
dac4_in_stop    <= dac_in_stop(4);
dac5_in_stop    <= dac_in_stop(5);
dac6_in_stop    <= dac_in_stop(6);
dac7_in_stop    <= dac_in_stop(7);
dac8_in_stop    <= dac_in_stop(8);
dac9_in_stop    <= dac_in_stop(9);
dac10_in_stop    <= dac_in_stop(10);
dac11_in_stop    <= dac_in_stop(11);
dac12_in_stop    <= dac_in_stop(12);
dac13_in_stop    <= dac_in_stop(13);
dac14_in_stop    <= dac_in_stop(14);
dac15_in_stop    <= dac_in_stop(15);
dac_in_data(0)  <= dac0_in_data;
dac_in_data(1)  <= dac1_in_data;
dac_in_data(2)  <= dac2_in_data;
dac_in_data(3)  <= dac3_in_data;
dac_in_data(4)  <= dac4_in_data;
dac_in_data(5)  <= dac5_in_data;
dac_in_data(6)  <= dac6_in_data;
dac_in_data(7)  <= dac7_in_data;
dac_in_data(8)  <= dac8_in_data;
dac_in_data(9)  <= dac9_in_data;
dac_in_data(10)  <= dac10_in_data;
dac_in_data(11)  <= dac11_in_data;
dac_in_data(12)  <= dac12_in_data;
dac_in_data(13)  <= dac13_in_data;
dac_in_data(14)  <= dac14_in_data;
dac_in_data(15)  <= dac15_in_data;

fmc216_0 : entity work.fmc216
generic map (
   global_start_addr_gen     =>  GLOBAL_START_ADDR_GEN,
   global_stop_addr_gen      =>  GLOBAL_STOP_ADDR_GEN,
   private_start_addr_gen    =>  PRIVATE_START_ADDR_GEN,
   private_stop_addr_gen     =>  PRIVATE_STOP_ADDR_GEN
)
port map (
   clk_clkin                 =>   clk_clkin,
   rst_rstin                 =>   rst_rstin,
   cmdclk_in_cmdclk          =>   cmdclk_in_cmdclk,
   cmd_in_cmdin              =>   cmd_in_cmdin,
   cmd_in_cmdin_val          =>   cmd_in_cmdin_val,
   cmd_out_cmdout            =>   cmd_out_cmdout,
   cmd_out_cmdout_val        =>   cmd_out_cmdout_val,

   dac_in_stop              => dac_in_stop, 
   dac_in_dval              => dac_in_dval,  
   dac_in_data              => dac_in_data, 

   trigger_out               => trigger_out, 
   dac_syncb_n               =>   dac_syncb_n,
   dac_syncb_p               =>   dac_syncb_p,
   ext_trigger_n             =>   ext_trigger_n,
   ext_trigger_p             =>   ext_trigger_p,
   lmk_sync                  =>   lmk_sync,
   lmkclk_n                  =>   lmkclk_n,
   lmkclk_p                  =>   lmkclk_p,
   lmkclk_sysref_n           =>   lmk_sysref_n,
   lmkclk_sysref_p           =>   lmk_sysref_p,
   pg_m2c                    =>   pg_m2c,
   prsnt_m2c_l               =>   prsnt_m2c_l,
   refclk_n                  =>   refclk_n,
   refclk_p                  =>   refclk_p,
   serdin_n                  =>   serdin_n,
   serdin_p                  =>   serdin_p,
   serdout_n                 =>   serdout_n,
   serdout_p                 =>   serdout_p
);

--***********************************************************************************
end architecture arch_sip_fmc216_8lane   ; -- of sip_fmc216_8lane
--***********************************************************************************
