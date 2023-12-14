
library ieee;
  use ieee.std_logic_1164.all ;
  use ieee.std_logic_arith.all ;
  use ieee.std_logic_unsigned.all ;
  use ieee.std_logic_misc.all ;
library unisim;
  use unisim.vcomponents.all;

entity sip_i2c_master is
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
end sip_i2c_master;

architecture sip_i2c_master_syn of sip_i2c_master is

-----------------------------------------------------------------------------------
-- Component declarations
-----------------------------------------------------------------------------------
component i2c_master is
generic (
  START_ADDR      : std_logic_vector(27 downto 0) := x"0000000";
  STOP_ADDR       : std_logic_vector(27 downto 0) := x"00000FF"
);
port (
  rst             : in  std_logic;
  -- Command Interface
  clk_cmd         : in  std_logic;
  in_cmd_val      : in  std_logic;
  in_cmd          : in  std_logic_vector(63 downto 0);
  out_cmd_val     : out std_logic;
  out_cmd         : out std_logic_vector(63 downto 0);
  in_cmd_busy     : out std_logic;
  -- SPI control
  scl_i           : in  std_logic;
  scl_o           : out std_logic;
  scl_oe          : out std_logic;
  sda_i           : in  std_logic;
  sda_o           : out std_logic;
  sda_oe          : out std_logic
);
end component i2c_master;

-----------------------------------------------------------------------------------
-- Signal declarations
-----------------------------------------------------------------------------------
signal scl_i  : std_logic;
signal scl_o  : std_logic;
signal scl_oe : std_logic;
signal sda_i  : std_logic;
signal sda_o  : std_logic;
signal sda_oe : std_logic;


begin

--------------------------------------------------------------------------------
-- Synchronise reset input
--------------------------------------------------------------------------------
i2c_master_inst : i2c_master
generic map (
  START_ADDR      => PRIVATE_START_ADDR_GEN,
  STOP_ADDR       => PRIVATE_STOP_ADDR_GEN
)
port map (
  -- Globals
  rst             => rst_rstin(2),
  -- Command Interface
  clk_cmd         => cmdclk_in_cmdclk,
  in_cmd_val      => cmd_in_cmdin_val,
  in_cmd          => cmd_in_cmdin,
  out_cmd_val     => cmd_out_cmdout_val,
  out_cmd         => cmd_out_cmdout,
  in_cmd_busy     => open,

  scl_i           => scl_i,
  scl_o           => scl_o,
  scl_oe          => scl_oe,
  sda_i           => sda_i,
  sda_o           => sda_o,
  sda_oe          => sda_oe

);

--------------------------------------------------------------------------------
-- Output buffer
--------------------------------------------------------------------------------
iobuf_scl : iobuf
port map (
  I  => '0',
  O  => scl_i,
  IO => i2c_scl,
  T  => scl_oe
);

iobuf_sda : iobuf
port map (
  I  => '0',
  O  => sda_i,
  IO => i2c_sda,
  T  => sda_oe
);

--------------------------------------------------------------------------------
-- End
--------------------------------------------------------------------------------
end sip_i2c_master_syn;