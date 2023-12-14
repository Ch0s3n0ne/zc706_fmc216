
-------------------------------------------------------------------------------------
-- FILE NAME : sip_router_s1d16.vhd
--
-- AUTHOR    : StellarIP (c) 4DSP
--
-- COMPANY   : 4DSP
--
-- ITEM      : 1
--
-- UNITS     : Entity       - sip_router_s1d16
--             architecture - arch_sip_router_s1d16
--
-- LANGUAGE  : VHDL
--
-------------------------------------------------------------------------------------
--
-------------------------------------------------------------------------------------
-- DESCRIPTION
-- ===========
--
-- sip_router_s1d16
-- Notes: sip_router_s1d16
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
entity sip_router_s1d16  is
generic (
   global_start_addr_gen                   : std_logic_vector(27 downto 0);
   global_stop_addr_gen                    : std_logic_vector(27 downto 0);
   private_start_addr_gen                  : std_logic_vector(27 downto 0);
   private_stop_addr_gen                   : std_logic_vector(27 downto 0)
);
port (
--Wormhole 'cmdclk_in':
   cmdclk_in_cmdclk                        : in    std_logic;

--Wormhole 'cmd_in':
   cmd_in_cmdin                            : in    std_logic_vector(63 downto 0);
   cmd_in_cmdin_val                          : in    std_logic;

--Wormhole 'cmd_out':
   cmd_out_cmdout                          : out   std_logic_vector(63 downto 0);
   cmd_out_cmdout_val                      : out   std_logic;

--Wormhole 'clk':
   clk_clkin                               : in    std_logic_vector(31 downto 0);

--Wormhole 'rst':
   rst_rstin                               : in    std_logic_vector(31 downto 0);

--Wormhole 'in0':
   out0_out_stop                             : in    std_logic;
   out0_out_dval                             : out   std_logic;
   out0_out_data                             : out   std_logic_vector(63 downto 0);
--Wormhole 'in1':
   out1_out_stop                             : in    std_logic;
   out1_out_dval                             : out   std_logic;
   out1_out_data                             : out   std_logic_vector(63 downto 0);
--Wormhole 'in2':
   out2_out_stop                             : in    std_logic;
   out2_out_dval                             : out   std_logic;
   out2_out_data                             : out   std_logic_vector(63 downto 0);
--Wormhole 'in3':
   out3_out_stop                             : in    std_logic;
   out3_out_dval                             : out   std_logic;
   out3_out_data                             : out   std_logic_vector(63 downto 0);
--Wormhole 'in4':
   out4_out_stop                             : in    std_logic;
   out4_out_dval                             : out   std_logic;
   out4_out_data                             : out   std_logic_vector(63 downto 0);
--Wormhole 'in5':
   out5_out_stop                             : in    std_logic;
   out5_out_dval                             : out   std_logic;
   out5_out_data                             : out   std_logic_vector(63 downto 0);
--Wormhole 'in6':
   out6_out_stop                             : in    std_logic;
   out6_out_dval                             : out   std_logic;
   out6_out_data                             : out   std_logic_vector(63 downto 0);
--Wormhole 'in7':
   out7_out_stop                             : in   std_logic;
   out7_out_dval                             : out  std_logic;
   out7_out_data                             : out  std_logic_vector(63 downto 0);
--Wormhole 'in8':
   out8_out_stop                             : in   std_logic;
   out8_out_dval                             : out  std_logic;
   out8_out_data                             : out  std_logic_vector(63 downto 0);
--Wormhole 'in9':
   out9_out_stop                             : in   std_logic;
   out9_out_dval                             : out  std_logic;
   out9_out_data                             : out  std_logic_vector(63 downto 0);
--Wormhole 'in10':
   out10_out_stop                             :in    std_logic;
   out10_out_dval                             :out   std_logic;
   out10_out_data                             :out   std_logic_vector(63 downto 0);
--Wormhole 'in11':
   out11_out_stop                             :in    std_logic;
   out11_out_dval                             :out   std_logic;
   out11_out_data                             :out   std_logic_vector(63 downto 0);
--Wormhole 'in12':
   out12_out_stop                             : in    std_logic;
   out12_out_dval                             : out   std_logic;
   out12_out_data                             : out   std_logic_vector(63 downto 0);
--Wormhole 'in13':
   out13_out_stop                             : in    std_logic;
   out13_out_dval                             : out   std_logic;
   out13_out_data                             : out   std_logic_vector(63 downto 0);
--Wormhole 'in14':
   out14_out_stop                             : in    std_logic;
   out14_out_dval                             : out   std_logic;
   out14_out_data                             : out   std_logic_vector(63 downto 0);
--Wormhole 'in15':
   out15_out_stop                             : in   std_logic;
   out15_out_dval                             : out    std_logic;
   out15_out_data                             : out    std_logic_vector(63 downto 0);

--Wormhole 'in0':
   in0_in_stop                             : out   std_logic;
   in0_in_dval                             : in    std_logic;
   in0_in_data                             : in    std_logic_vector(63 downto 0)
   );
end entity sip_router_s1d16;

-------------------------------------------------------------------------------------
--Architecture declaration
-------------------------------------------------------------------------------------
architecture arch_sip_router_s1d16   of sip_router_s1d16  is

-------------------------------------------------------------------------------------
--Constants declaration
-------------------------------------------------------------------------------------

-------------------------------------------------------------------------------------
--Signal declaration
-------------------------------------------------------------------------------------

-------------------------------------------------------------------------------------
--components declarations
-------------------------------------------------------------------------------------
component router_s1d16
generic
(
   start_addr                    :std_logic_vector(27 downto 0):=x"0000000";
   stop_addr                     :std_logic_vector(27 downto 0):=x"0000001"
   );
port
   (
      clk               :in std_logic;
      reset             :in std_logic;

      --command if
      clk_cmd           :in  std_logic;
      out_cmd           :out std_logic_vector(63 downto 0);
      out_cmd_val       :out std_logic;
      in_cmd            :in  std_logic_vector(63 downto 0);
      in_cmd_val        :in  std_logic;



     --output ports
    out0_data       :out    std_logic_vector(63 downto 0);
    out0_stop       :in     std_logic;
    out0_dval       :out    std_logic;
    out0_sync       :out    std_logic;

    out1_data       :out    std_logic_vector(63 downto 0);
    out1_stop       :in     std_logic;
    out1_dval       :out    std_logic;
    out1_sync       :out    std_logic;

    out2_data       :out    std_logic_vector(63 downto 0);
    out2_stop       :in     std_logic;
    out2_dval       :out    std_logic;
    out2_sync       :out    std_logic;

    out3_data       :out    std_logic_vector(63 downto 0);
    out3_stop       :in     std_logic;
    out3_dval       :out    std_logic;
    out3_sync       :out    std_logic;

    out4_data       :out    std_logic_vector(63 downto 0);
    out4_stop       :in     std_logic;
    out4_dval       :out    std_logic;
    out4_sync       :out    std_logic;

    out5_data       :out    std_logic_vector(63 downto 0);
    out5_stop       :in     std_logic;
    out5_dval       :out    std_logic;
    out5_sync       :out    std_logic;

    out6_data       :out    std_logic_vector(63 downto 0);
    out6_stop       :in     std_logic;
    out6_dval       :out    std_logic;
    out6_sync       :out    std_logic;

    out7_data       :out    std_logic_vector(63 downto 0);
    out7_stop       :in     std_logic;
    out7_dval       :out    std_logic;
    out7_sync       :out    std_logic;

    out8_data      :out    std_logic_vector(63 downto 0);
    out8_stop      :in     std_logic;
    out8_dval      :out    std_logic;
    out8_sync      :out    std_logic;

    out9_data       :out    std_logic_vector(63 downto 0);
    out9_stop       :in     std_logic;
    out9_dval       :out    std_logic;
    out9_sync       :out    std_logic;

    out10_data      :out    std_logic_vector(63 downto 0);
    out10_stop      :in     std_logic;
    out10_dval      :out    std_logic;
    out10_sync      :out    std_logic;

    out11_data      :out    std_logic_vector(63 downto 0);
    out11_stop      :in     std_logic;
    out11_dval      :out    std_logic;
    out11_sync      :out    std_logic;

    out12_data      :out    std_logic_vector(63 downto 0);
    out12_stop      :in     std_logic;
    out12_dval      :out    std_logic;
    out12_sync      :out    std_logic;

    out13_data      :out    std_logic_vector(63 downto 0);
    out13_stop      :in     std_logic;
    out13_dval      :out    std_logic;
    out13_sync      :out    std_logic;

    out14_data      :out    std_logic_vector(63 downto 0);
    out14_stop      :in     std_logic;
    out14_dval      :out    std_logic;
    out14_sync      :out    std_logic;

    out15_data      :out    std_logic_vector(63 downto 0);
    out15_stop      :in     std_logic;
    out15_dval      :out    std_logic;
    out15_sync      :out    std_logic;

      --input ports
      in0_data      :in    std_logic_vector(63 downto 0);
      in0_stop      :out     std_logic;
      in0_dval      :in    std_logic;
      in0_sync      :in    std_logic
   );
end component;

begin


-------------------------------------------------------------------------------------
--components instantiations
-------------------------------------------------------------------------------------
i_router_s1d5:router_s1d16
generic map
(
   start_addr           =>private_start_addr_gen,
   stop_addr            =>private_stop_addr_gen
   )
port map
   (
      clk                =>cmdclk_in_cmdclk,
      reset              =>rst_rstin(2),

      --command interface
      clk_cmd                    =>cmdclk_in_cmdclk,
      out_cmd                    =>cmd_out_cmdout,
      out_cmd_val                =>cmd_out_cmdout_val,
      in_cmd                     =>cmd_in_cmdin,
      in_cmd_val                 =>cmd_in_cmdin_val,



     --input ports
      in0_data       =>in0_in_data,
      in0_stop       =>in0_in_stop,
      in0_dval       =>in0_in_dval,
      in0_sync       => '0',



      --output ports
      out0_data      =>out0_out_data,
      out0_stop      =>out0_out_stop,
      out0_dval      =>out0_out_dval,
      out0_sync      => open,
       --output_port
      out1_data      =>out1_out_data,
      out1_stop      =>out1_out_stop,
      out1_dval      =>out1_out_dval,
      out1_sync      => open,
  --output_port
      out2_data      =>out2_out_data,
      out2_stop      =>out2_out_stop,
      out2_dval      =>out2_out_dval,
      out2_sync      => open,

      out3_data      =>out3_out_data,
      out3_stop      =>out3_out_stop,
      out3_dval      =>out3_out_dval,
      out3_sync      => open,

      out4_data      =>out4_out_data,
      out4_stop      =>out4_out_stop,
      out4_dval      =>out4_out_dval,
      out4_sync      => open,

      out5_data      =>out5_out_data,
      out5_stop      =>out5_out_stop,
      out5_dval      =>out5_out_dval,
      out5_sync      => open,

      out6_data      =>out6_out_data,
      out6_stop      =>out6_out_stop,
      out6_dval      =>out6_out_dval,
      out6_sync      => open,

      out7_data      =>out7_out_data,
      out7_stop      =>out7_out_stop,
      out7_dval      =>out7_out_dval,
      out7_sync      => open,
--output ports
      out8_data      =>out8_out_data,
      out8_stop      =>out8_out_stop,
      out8_dval      =>out8_out_dval,
      out8_sync      => open,
       --output_port
      out9_data      =>out9_out_data,
      out9_stop      =>out9_out_stop,
      out9_dval      =>out9_out_dval,
      out9_sync      => open,
  --output_port
      out10_data      =>out10_out_data,
      out10_stop      =>out10_out_stop,
      out10_dval      =>out10_out_dval,
      out10_sync      => open,

      out11_data      =>out11_out_data,
      out11_stop      =>out11_out_stop,
      out11_dval      =>out11_out_dval,
      out11_sync      => open,

      out12_data      =>out12_out_data,
      out12_stop      =>out12_out_stop,
      out12_dval      =>out12_out_dval,
      out12_sync      => open,

      out13_data      =>out13_out_data,
      out13_stop      =>out13_out_stop,
      out13_dval      =>out13_out_dval,
      out13_sync      => open,

      out14_data      =>out14_out_data,
      out14_stop      =>out14_out_stop,
      out14_dval      =>out14_out_dval,
      out14_sync      => open,

      out15_data      =>out15_out_data,
      out15_stop      =>out15_out_stop,
      out15_dval      =>out15_out_dval,
      out15_sync      => open

   );

-------------------------------------------------------------------------------------
--synchronous processes
-------------------------------------------------------------------------------------


-------------------------------------------------------------------------------------
--asynchronous processes
-------------------------------------------------------------------------------------


-------------------------------------------------------------------------------------
--asynchronous mapping
-------------------------------------------------------------------------------------


end architecture arch_sip_router_s1d16   ; -- of sip_router_s1d16
