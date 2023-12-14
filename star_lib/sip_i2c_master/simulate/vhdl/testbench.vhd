--------------------------------------------------------------------------------
-- file name : testbench.vhd
--
-- author    : p. kortekaas
--
-- company   : 4dsp
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
-- Specify libraries
--------------------------------------------------------------------------------
library ieee;
  use ieee.std_logic_unsigned.all;
  use ieee.std_logic_misc.all;
  use ieee.std_logic_arith.all;
  use ieee.std_logic_1164.all;

--------------------------------------------------------------------------------
-- Entity declaration
--------------------------------------------------------------------------------
entity testbench is
end entity testbench;

-----------------------------------------------------------------------------------
-- Architecture declaration
-----------------------------------------------------------------------------------
architecture testbench_beh of testbench is

-----------------------------------------------------------------------------------
-- Signal declarations
-----------------------------------------------------------------------------------
signal rst            : std_logic := '1';
signal rst_in_rstin   : std_logic_vector(31 downto 0);

signal clk_cmd        : std_logic := '0';
signal out_cmd        : std_logic_vector(63 downto 0);
signal out_cmd_val    : std_logic;
signal in_cmd         : std_logic_vector(63 downto 0);
signal in_cmd_val     : std_logic;

signal i2c_scl        : std_logic;
signal i2c_sda        : std_logic;


-----------------------------------------------------------------------------------
-- Component declarations
-----------------------------------------------------------------------------------
component cmd_generate
port (
  clk         : in  std_logic;
  reset       : in  std_logic;
  out_cmd     : out std_logic_vector(63 downto 0);
  out_cmd_val : out std_logic;
  in_cmd      : in  std_logic_vector(63 downto 0);
  in_cmd_val  : in  std_logic;
  -- input data
  in0_data    : in  std_logic_vector(63 downto 0);
  in0_stop    : out std_logic;
  in0_dval    : in  std_logic;
  -- output data
  out0_data   : out std_logic_vector(63 downto 0);
  out0_stop   : in  std_logic;
  out0_dval   : out std_logic
);

end component;

component sip_i2c_master is
generic (
  GLOBAL_START_ADDR_GEN  : std_logic_vector(27 downto 0);
  GLOBAL_STOP_ADDR_GEN   : std_logic_vector(27 downto 0);
  PRIVATE_START_ADDR_GEN : std_logic_vector(27 downto 0);
  PRIVATE_STOP_ADDR_GEN  : std_logic_vector(27 downto 0)
);
port (
  --Wormhole 'clk' of type 'clkin':
  clk_clkin            : in std_logic_vector(31 downto 0);
  --Wormhole 'rst' of type 'rst_in':
  rst_rstin            : in std_logic_vector(31 downto 0);
  --Wormhole 'cmdclk_in' or type 'cmdclk_in':
  cmdclk_in_cmdclk       : in    std_logic;
  --Wormhole 'cmd_in' of type 'cmd_in':
  cmd_in_cmdin           : in    std_logic_vector(63 downto 0);
  cmd_in_cmdin_val       : in    std_logic;
  --Wormhole 'cmd_out' of type 'cmd_out':
  cmd_out_cmdout         : out   std_logic_vector(63 downto 0);
  cmd_out_cmdout_val     : out   std_logic;
  --Wormhole 'ext_i2c':
  i2c_scl                : inout std_logic;
  i2c_sda                : inout std_logic
);
end component;

component i2c_slave_model is
generic (
  I2C_ADR : std_logic_vector(6 downto 0) := "1001010"
);
port (
  scl : in std_logic;
  sda : inout std_logic
);
end component;


begin

-----------------------------------------------------------------------------------
-- Component instantiations
-----------------------------------------------------------------------------------
cmd_generate_inst : cmd_generate
port map (
  clk         => clk_cmd,
  reset       => rst,
  out_cmd     => in_cmd,
  out_cmd_val => in_cmd_val,
  in_cmd      => out_cmd,
  in_cmd_val  => out_cmd_val,
  in0_data    => (others => '0'),
  in0_stop    => open,
  in0_dval    => '0',
  out0_data   => open,
  out0_stop   => '1',
  out0_dval   => open
);

--------------------------------------------------------------------------------
-- Monitoring
--------------------------------------------------------------------------------
adt7411: i2c_slave_model
generic map (
  I2C_ADR => "1010111"
)
port map (
  scl => i2c_scl,
  sda => i2c_sda
);

i2c_scl  <= 'H';
i2c_sda  <= 'H';

--------------------------------------------------------------------------------
-- Star
--------------------------------------------------------------------------------
sip_i2c_master_inst : sip_i2c_master
generic map (
  GLOBAL_START_ADDR_GEN  => x"1000000",
  GLOBAL_STOP_ADDR_GEN   => x"1000000",
  PRIVATE_START_ADDR_GEN => x"0000000",
  PRIVATE_STOP_ADDR_GEN  => x"000FFFF"
)
port map (
  clk_clkin          => (others => '0'),
  rst_rstin          => rst_in_rstin,
  cmdclk_in_cmdclk   => clk_cmd,
  cmd_in_cmdin       => in_cmd,
  cmd_in_cmdin_val   => in_cmd_val,
  cmd_out_cmdout     => out_cmd,
  cmd_out_cmdout_val => out_cmd_val,
  i2c_scl            => i2c_scl,
  i2c_sda            => i2c_sda
);
-----------------------------------------------------------------------------------
-- Asynchronous mapping
-----------------------------------------------------------------------------------
clk_cmd <= not clk_cmd after 4 ns;

rst                        <= '0' after 1 us;
rst_in_rstin(0)            <=rst;
rst_in_rstin(1)            <=rst;
rst_in_rstin(2)            <=rst;
rst_in_rstin(31 downto 3)  <=(others=>'0');

-----------------------------------------------------------------------------------
-- End
-----------------------------------------------------------------------------------
end architecture testbench_beh;
