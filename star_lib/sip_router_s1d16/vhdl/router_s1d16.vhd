--------------------------------------------------------------------------------
-- file name : router_s1d16.vhd
--
-- author    : e. barhorst
--
-- company   : 4dsp
--
-- item      : number
--
-- units     : entity       -router_s1d16
--             arch_itecture - arch_router_s1d16
--
-- language  : vhdl
--
--------------------------------------------------------------------------------
-- description
-- ===========
--
--
-- notes:
--------------------------------------------------------------------------------
--
--  disclaimer: limited warranty and disclaimer. these designs are
--              provided to you as is.  4dsp specifically disclaims any
--              implied warranties of merchantability, non-infringement, or
--              fitness for a particular purpose. 4dsp does not warrant that
--              the functions contained in these designs will meet your
--              requirements, or that the operation of these designs will be
--              uninterrupted or error free, or that defects in the designs
--              will be corrected. furthermore, 4dsp does not warrant or
--              make any representations regarding use or the results of the
--              use of the designs in terms of correctness, accuracy,
--              reliability, or otherwise.
--
--              limitation of liability. in no event will 4dsp or its
--              licensors be liable for any loss of data, lost profits, cost
--              or procurement of substitute goods or services, or for any
--              special, incidental, consequential, or indirect damages
--              arising from the use or operation of the designs or
--              accompanying documentation, however caused and on any theory
--              of liability. this limitation will apply even if 4dsp
--              has been advised of the possibility of such damage. this
--              limitation shall apply not-withstanding the failure of the
--              essential purpose of any limited remedies herein.
--
--      from
-- ver  pcb mod    date      changes
-- ===  =======    ========  =======
--
-- 0.0    0        19-01-2009        new version
--
----------------------------------------------
--
--------------------------------------------------------------------------------


--------------------------------------------------------------------------------
-- specify libraries.
--------------------------------------------------------------------------------

library  ieee ;
use ieee.std_logic_unsigned.all ;
use ieee.std_logic_misc.all ;
use ieee.std_logic_arith.all ;
use ieee.std_logic_1164.all ;

--------------------------------------------------------------------------------
-- entity declaration
--------------------------------------------------------------------------------
entity router_s1d16  is
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
end entity router_s1d16  ;

--------------------------------------------------------------------------------
-- arch_itecture declaration
--------------------------------------------------------------------------------
architecture arch_router_s1d16   of router_s1d16  is

-----------------------------------------------------------------------------------
--constant declarations
-----------------------------------------------------------------------------------
constant nb_in_ports  :integer := 1;
constant nb_out_ports :integer := 16;
constant data_w       :integer :=64;

type  std2d_data_w   is array(natural range <>) of std_logic_vector(data_w -1  downto 0);
type  std2d_6b       is array(natural range <>) of std_logic_vector(5 downto 0);
type  std2d_outports  is array(natural range <>) of std_logic_vector(nb_out_ports - 1 downto 0);
type  std2d_inports  is array(natural range <>) of std_logic_vector(nb_in_ports - 1 downto 0);
-----------------------------------------------------------------------------------
--signal declarations
-----------------------------------------------------------------------------------

signal data_mux_in         :std2d_data_w(nb_in_ports -1  downto 0);
signal data_mux_out        :std2d_data_w(nb_out_ports -1  downto 0);
signal dval_mux_in         :std_logic_vector(nb_in_ports -1  downto 0);
signal sync_mux_in         :std_logic_vector(nb_in_ports -1  downto 0);
signal dval_mux_out        :std_logic_vector(nb_out_ports -1  downto 0);
signal sync_mux_out        :std_logic_vector(nb_out_ports -1  downto 0);
signal stop_mux_in         :std2d_inports(nb_out_ports -1  downto 0);
signal stop_mux_out        :std_logic_vector(nb_in_ports -1  downto 0);
signal data_mux_out_sel    :std2d_6b(nb_out_ports -1  downto 0);
signal stop_out            :std_logic_vector(nb_out_ports -1 downto 0);
-----------------------------------------------------------------------------------
--component declarations
-----------------------------------------------------------------------------------
component router_s1d16_regs
generic
(
   start_addr                    :std_logic_vector(27 downto 0):=x"0000000";
   stop_addr                     :std_logic_vector(27 downto 0):=x"0000001"
   );

port
   (
      reset                         :in std_logic;
      --command if
      clk_cmd                       :in  std_logic; --cmd_in and cmd_out are synchronous to this clock;
      out_cmd                       :out std_logic_vector(63 downto 0);
      out_cmd_val                   :out std_logic;
      in_cmd                        :in  std_logic_vector(63 downto 0);
      in_cmd_val                    :in  std_logic;

      --register interface
      clk_reg                       :in  std_logic;
      ou0_sel                       :out std_logic_vector(5 downto 0);
      ou1_sel                       :out std_logic_vector(5 downto 0);
      ou2_sel                       :out std_logic_vector(5 downto 0);
      ou3_sel                       :out std_logic_vector(5 downto 0);
      ou4_sel                       :out std_logic_vector(5 downto 0);
      ou5_sel                       :out std_logic_vector(5 downto 0);
      ou6_sel                       :out std_logic_vector(5 downto 0);
      ou7_sel                       :out std_logic_vector(5 downto 0);
      ou8_sel                       :out std_logic_vector(5 downto 0);
      ou9_sel                       :out std_logic_vector(5 downto 0);
      ou10_sel                      :out std_logic_vector(5 downto 0);
      ou11_sel                      :out std_logic_vector(5 downto 0);
      ou12_sel                      :out std_logic_vector(5 downto 0);
      ou13_sel                      :out std_logic_vector(5 downto 0);
      ou14_sel                      :out std_logic_vector(5 downto 0);
      ou15_sel                      :out std_logic_vector(5 downto 0)

   );
end component;

begin

-----------------------------------------------------------------------------------
--component instantiations
-----------------------------------------------------------------------------------
i_router_s1d16_regs:router_s1d16_regs
generic map
(
   start_addr                   =>start_addr,
   stop_addr                    =>stop_addr
   )
port map
   (
      reset                         =>reset,
      clk_cmd                       =>clk_cmd,
      out_cmd                       =>out_cmd,
      out_cmd_val                   =>out_cmd_val,
      in_cmd                        =>in_cmd,
      in_cmd_val                    =>in_cmd_val,


      clk_reg                       =>clk,
      ou0_sel                       =>data_mux_out_sel(0),
      ou1_sel                       =>data_mux_out_sel(1),
      ou2_sel                       =>data_mux_out_sel(2),
      ou3_sel                       =>data_mux_out_sel(3),
      ou4_sel                       =>data_mux_out_sel(4),
      ou5_sel                       =>data_mux_out_sel(5),
      ou6_sel                       =>data_mux_out_sel(6),
      ou7_sel                       =>data_mux_out_sel(7),
      ou8_sel                       =>data_mux_out_sel(8),
      ou9_sel                       =>data_mux_out_sel(9),
      ou10_sel                       =>data_mux_out_sel(10),
      ou11_sel                       =>data_mux_out_sel(11),
      ou12_sel                       =>data_mux_out_sel(12),
      ou13_sel                       =>data_mux_out_sel(13),
      ou14_sel                       =>data_mux_out_sel(14),
      ou15_sel                       =>data_mux_out_sel(15)
   );


-----------------------------------------------------------------------------------
--synchronous processes
-----------------------------------------------------------------------------------

mux_gen:for i in 0 to nb_out_ports -1 generate
   mux_proc : process (clk)
   begin
      if (clk'event and clk = '1') then
         --choose the right input source for each output
         if (conv_integer(data_mux_out_sel(i))>=nb_in_ports) then
            data_mux_out(i) <= (others=>'0');
            dval_mux_out(i) <= '0';
         else
            data_mux_out(i) <= data_mux_in(conv_integer(data_mux_out_sel(i)));
            dval_mux_out(i) <= dval_mux_in(conv_integer(data_mux_out_sel(i)));
            sync_mux_out(i) <= sync_mux_in(conv_integer(data_mux_out_sel(i)));
         end if;

         --the stop signal is routed backwards to the inputs. it is forbidden
         --to route one input to two outputs (at least then the stop signal routing
         --wil not be correct
         --each output will enablet the stop signal only to the channel it is
         --taking its data from. The input will then or the stop signals from all the
         --possible outputs. Normally only one can toggle the otehrs should stay zero
         for j in 0 to nb_in_ports -1 loop
            if (j = conv_integer(data_mux_out_sel(i))) then
               stop_mux_in(i)(j) <= stop_out(i);
            else
               stop_mux_in(i)(j) <= '0';
            end if;
         end loop;
      end if;
   end process;
end generate;

stop_gen:for i in 0 to nb_in_ports -1 generate

   stop_proc : process (clk)
   variable stop_mux_vect         :std_logic_vector(nb_out_ports -1  downto 0);
   begin
      if (clk'event and clk = '1') then

         --the stop signal is routed backwards to the inputs. it is forbidden
         --to route one input to two outputs (at least then the stop signal routing
         --wil not be correct
         --each output will enablet the stop signal only to the channel it is
         --taking its data from. The input will then or the stop signals from all the
         --possible outputs. Normally only one can toggle the otehrs should stay zero
         --recreate the stop vectors
          for j in 0 to nb_out_ports -1 loop
               stop_mux_vect(j) := stop_mux_in(j)(i);
         end loop;
         stop_mux_out(i) <= or_reduce(stop_mux_vect);
      end if;
   end process;
end generate;


-----------------------------------------------------------------------------------
--asynchronous processes
-----------------------------------------------------------------------------------






-----------------------------------------------------------------------------------
--asynchronous mapping
-----------------------------------------------------------------------------------
--map the inputs
data_mux_in(0)          <=             in0_data;
dval_mux_in(0)          <=             in0_dval;
sync_mux_in(0)          <=             in0_sync;
          in0_stop      <=  stop_mux_out(0);




--map the outputs
      out0_data         <= data_mux_out(0);
      out0_dval         <= dval_mux_out(0);
      out0_sync         <= sync_mux_out(0);
stop_out(0)             <=           out0_stop;

      out1_data         <= data_mux_out(1);
      out1_dval         <= dval_mux_out(1);
      out1_sync         <= sync_mux_out(1);
stop_out(1)             <=           out1_stop;

      out2_data         <= data_mux_out(2);
      out2_dval         <= dval_mux_out(2);
      out2_sync         <= sync_mux_out(2);
stop_out(2)             <=           out2_stop;

      out3_data         <= data_mux_out(3);
      out3_dval         <= dval_mux_out(3);
      out3_sync         <= sync_mux_out(3);
stop_out(3)             <=           out3_stop;

      out4_data         <= data_mux_out(4);
      out4_dval         <= dval_mux_out(4);
      out4_sync         <= sync_mux_out(4);
stop_out(4)             <=           out4_stop;

      out5_data         <= data_mux_out(5);
      out5_dval         <= dval_mux_out(5);
      out5_sync         <= sync_mux_out(5);
stop_out(5)             <=           out5_stop;

      out6_data         <= data_mux_out(6);
      out6_dval         <= dval_mux_out(6);
      out6_sync         <= sync_mux_out(6);
stop_out(6)             <=           out6_stop;

      out7_data         <= data_mux_out(7);
      out7_dval         <= dval_mux_out(7);
      out7_sync         <= sync_mux_out(7);
stop_out(7)             <=           out7_stop;


      out8_data         <= data_mux_out(8);
      out8_dval         <= dval_mux_out(8);
      out8_sync         <= sync_mux_out(8);
stop_out(8)             <=           out8_stop;

      out9_data         <= data_mux_out(9);
      out9_dval         <= dval_mux_out(9);
      out9_sync         <= sync_mux_out(9);
stop_out(9)             <=           out9_stop;

      out10_data         <= data_mux_out(10);
      out10_dval         <= dval_mux_out(10);
      out10_sync         <= sync_mux_out(10);
stop_out(10)             <=           out10_stop;

      out11_data         <= data_mux_out(11);
      out11_dval         <= dval_mux_out(11);
      out11_sync         <= sync_mux_out(11);
stop_out(11)             <=           out11_stop;

      out12_data         <= data_mux_out(12);
      out12_dval         <= dval_mux_out(12);
      out12_sync         <= sync_mux_out(12);
stop_out(12)             <=           out12_stop;

      out13_data         <= data_mux_out(13);
      out13_dval         <= dval_mux_out(13);
      out13_sync         <= sync_mux_out(13);
stop_out(13)             <=           out13_stop;

      out14_data         <= data_mux_out(14);
      out14_dval         <= dval_mux_out(14);
      out14_sync         <= sync_mux_out(14);
stop_out(14)             <=           out14_stop;

      out15_data         <= data_mux_out(15);
      out15_dval         <= dval_mux_out(15);
      out15_sync         <= sync_mux_out(15);
stop_out(15)             <=           out15_stop;

end architecture arch_router_s1d16   ; -- of router_s1d16

