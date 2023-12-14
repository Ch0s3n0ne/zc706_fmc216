--------------------------------------------------------------------------------
-- This is the top level MAC Engine
-- Its the glue logic between the MAC and StellarIP Stars
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
-- Specify Libraries
--------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;  -- Standard logic types
use ieee.numeric_std.all;     -- Standard arithmetic operations

library unisim;
use unisim.vcomponents.all;   -- Vendor-specific components (if needed)


--------------------------------------------------------------------------------
-- Specify Entity
--------------------------------------------------------------------------------

entity mac_engine is
port (
  -- Master reset input
  cpu_reset         : in  std_logic;

  -- Master clock input
  -- sysclk_p          : in  std_logic;
  -- sysclk_n          : in  std_logic;
  gpio_led          : out std_logic_vector(3 downto 0);

  -- Ethernet control interface
  phy_reset_l       : out std_logic ;
  phy_mdc           : out std_logic;
  phy_mdio          : inout std_logic;

  -- --SGM2 interface
  gtrefclk_p				: in std_logic;                        
  gtrefclk_n				: in std_logic;                        
  phy_txp           : out std_logic :='0';                    
  phy_txn           : out std_logic :='0';                    
  phy_rxp           : in std_logic;                     
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
  auto_start        : in  std_logic :='0';
  auto_channel      : in  std_logic_vector(7 downto 0):=(others => '0');
  auto_size         : in  std_logic_vector(31 downto 0):= (others => '0');
  auto_data_val     : in  std_logic :='0';
  auto_data         : in  std_logic_vector(63 downto 0):= (others => '0');
  auto_data_stop    : out std_logic;
  auto_busy         : out std_logic;

  -- Block write interface (data push, non-stop)
  write_start       : out std_logic;
  write_channel     : out std_logic_vector(7 downto 0);
  write_start_addr  : out std_logic_vector(31 downto 0);
  write_size        : out std_logic_vector(31 downto 0) ;
  write_data_val    : out std_logic :='0';
  
  write_data        : out std_logic_vector(63 downto 0);

  -- Block read interface (data push, with stop)
  read_start        : out std_logic;
  read_channel      : out std_logic_vector(7 downto 0);
  read_start_addr   : out std_logic_vector(31 downto 0);
  read_size         : out std_logic_vector(31 downto 0);
  read_data_val     : in  std_logic;
  read_data         : in  std_logic_vector(63 downto 0);
  read_data_stop    : out std_logic;

  setup_end         : in    std_logic :='0';
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
  user_wdone_interrupt_0  : in  STD_LOGIC;

  write_DAC_start         : in std_logic;
  write_DAC_end           : out std_logic

);
end mac_engine;

--------------------------------------------------------------------------------
-- Specify Architecture
--------------------------------------------------------------------------------

architecture mac_engine_syn of mac_engine is

--------------------------------------------------------------------------------
-- Component declaration
--------------------------------------------------------------------------------

-- component brd_clocks is
-- port (
--   rst             : in  std_logic;
--   sysclk_p        : in  std_logic;
--   sysclk_n        : in  std_logic;
--   locked_pll_wizz        : out std_logic;
--   clk125          : out std_logic
-- );
-- end component brd_clocks;



--------------------------------------------------------------------------------
-- Constant declaration
-- --------------------------------------------------------------------------------
-- type ROM_action_format is array(0 to 8) of std_logic_vector(3 downto 0);

-- type ROM_address_format is array(0 to 8) of std_logic_vector(27 downto 0);

-- type ROM_value_format is array(0 to 8) of std_logic_vector(31 downto 0);
constant ARRAY_SIZE : integer := 189;
type ROM_DAC_format is array(0 to ARRAY_SIZE) of std_logic_vector(63 downto 0);


-- constant ROM_action_data : ROM_action_format := (
-- x"1",
-- x"1",
-- x"1",
-- x"1",
-- x"1",
-- x"1",
-- x"1",
-- x"1",
-- x"1"
-- );

-- constant ROM_address_data : ROM_address_format := (
-- x"0012402",
-- x"0012403",
-- x"0012401",
-- x"0012400",
-- x"00143ff",
-- x"0014400",
-- x"0014401",
-- x"0014402",
-- x"0012400"
-- );

-- constant ROM_value_data : ROM_value_format := (
-- x"00000001",
-- x"00000800",
-- x"0000ffff",
-- x"00000008",
-- x"ffffff00",
-- x"ffffffff",
-- x"ffffffff",
-- x"ffffffff",
-- x"00000001"
-- );

constant ROM_DAC_data : ROM_DAC_format := (
  x"000000000FFF0FFF",
  x"0000000000000000",
  x"0000000000000000",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0000000000000000",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0000000000000000",
  x"0000000000000000",
  x"0000000000000000",
  x"0000000000000000",
  x"0000000000000000",
  x"0000000000000000",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0FFF0FFF0FFF0FFF",
  x"0000000000000000",
  x"0000000000000000",
  x"0000000000000000",
  x"0000000000000000",
  x"0000000000000000",
  x"0000000000000000",
  x"0000000000000000",
  x"0000000000000000",
  x"0000000000000000",
  x"0000000000000000",
  x"0000000000000000",
  x"0000000000000000",
  x"0000000000000000",
  x"0000000000000000",
  x"0000000000000000",
  x"0000000000000000",
  x"0000000000000000",
  x"0000000000000000",
  x"0000000000000000",
  x"0000000000000000",
  x"0000000000000000",
  x"0000000000000000",
  x"0000000000000000",
  x"0000000000000000",
  x"0000000000000000",
  x"0000000000000000",
  x"0000000000000000",
  x"0000000000000000",
  x"0000000000000000",
  x"0000000000000000",
  x"0000000000000000",
  x"0000000000000000",
  x"0000000000000000",
  x"0000000000000000",
  x"0000000000000000",
  x"0000000000000000",
  x"0000000000000000",
  x"0000000000000000",
  x"0000000000000000",
  x"0000000000000000",
  x"0000000000000000",
  x"0000000000000000",
  x"0000000000000000",
  x"0000000000000000",
  x"0000000000000000",
  x"0000000000000000",
  x"0000000000000000",
  x"0000000000000000",
  x"0000000000000000",
  x"0000000000000000",
  x"0000000000000000",
  x"0000000000000000",
  x"0000000000000000",
  x"0000000000000000",
  x"0000000000000000",
  x"0000000000000000",
  x"0000000000000000",
  x"0000000000000000",
  x"0000000000000000",
  x"0000000000000000",
  x"0FFF0FFF0FFF0FFF"
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF",
  -- x"0FFF0FFF0FFF0FFF"
    );


--------------------------------------------------------------------------------
-- Signal declaration
--------------------------------------------------------------------------------


-- signal cmd_action_data : ROM_action_format := ROM_action_data;
-- signal cmd_address_data : ROM_address_format := ROM_address_data;
-- signal cmd_value_data : ROM_value_format := ROM_value_data;

signal dac_data : ROM_DAC_format := ROM_DAC_data;

-- signal cmd_index_counter : integer range 0 to 8 :=0;
signal data_index_counter : integer range 0 to ARRAY_SIZE :=0;
signal delay_counter : integer range 0 to 2 :=0;
-- signal send_cmd : std_logic :='1';
-- signal end_com : std_logic :='0';
signal in_cmd_val_delay : std_logic :='0';


signal rst               : std_logic;



signal out_cmd_val_i     : std_logic;
signal out_cmd_i         : std_logic_vector(63 downto 0);

signal write_data_val_i     : std_logic :='0';

-- signal write_data_i         : std_logic_vector(63 downto 0);
signal mac_engine_wstart_0_i : std_logic;

signal reset1_o           :std_logic;
-- signal reset2_o           :std_logic


-- signal userclk2              : std_logic;      
signal mac_engine_wack_0_i : std_logic;       
signal mac_engine_rack_0_i : std_logic;     

signal  start_data_burst : std_logic := '0';
signal  write_DAC_end_i : std_logic :='0';

signal byte_burst_size :  integer range 0 to 255 := 128;
signal data_sample : std_logic_vector(15 downto 0);


signal write_data_i : std_logic_vector(63 downto 0);
attribute KEEP : string;
attribute KEEP of write_data_i : signal is "TRUE";
--------------------------------------------------------------------------------
-- Begin
--------------------------------------------------------------------------------
begin

--------------------------------------------------------------------------------
-- Clock generation
--------------------------------------------------------------------------------



-- brd_clocks_inst : brd_clocks
-- port map (
--   rst             => '0',
--   sysclk_p        => sysclk_p,
--   sysclk_n        => sysclk_n,
--   locked_pll_wizz        => locked_pll_wizz,
--   clk125          => clk_out_wizz_125 -- clk125
-- );

process (clk_out_wizz_125)
  begin
    if(rising_edge(clk_out_wizz_125)) then

      if setup_end='1' then

        data_sample <= o_slv_reg4_0(15 downto 0);
        byte_burst_size <= to_integer(unsigned(o_slv_reg4_0(23 downto 16)));

        if(o_write_complete_reg0_0='1' and o_write_complete_reg1_0='1') then
          out_cmd_i <= o_slv_reg0_0 & o_slv_reg1_0;
          mac_engine_wack_0_i <= '1';
          out_cmd_val_i <= '1';
        elsif( mac_engine_wack_0_i='1' and out_cmd_val_i='1') then
          mac_engine_wack_0_i <= '0';
          out_cmd_val_i <= '0';   
        end if;
      
        if(in_cmd_val='1') then
          in_cmd_val_delay <= '1';
          i_slv_reg2_0 <= in_cmd(63 downto 32);
          i_slv_reg3_0 <= in_cmd(31 downto 0);
        end if;

        if o_read_complete_reg2_0='1' and o_read_complete_reg3_0='1' and in_cmd_val_delay='1' then
          mac_engine_wstart_0_i <= '1';
          mac_engine_rack_0_i <= '1';
        end if ;

        if mac_engine_wstart_0_i='1' then

            in_cmd_val_delay <= '0';
            mac_engine_wstart_0_i <='0';
            mac_engine_rack_0_i <= '0';
        end if ;
        
        if write_DAC_start='1' and start_data_burst = '0' then
          start_data_burst <= '1';
        elsif write_DAC_start='0' then
          write_DAC_end_i<='0';
          start_data_burst <= '0';
        end if ;


        if start_data_burst='1' and  write_DAC_end_i = '0' then
          write_data_i <=  data_sample & data_sample & data_sample & data_sample;

          if write_data_val_i = '0' then
            write_data_val_i <= '1';

          else

            if data_index_counter = byte_burst_size then
              data_index_counter <= 0;
              write_DAC_end_i <= '1';

            else
              data_index_counter <= data_index_counter +1;
            end if ;

            write_data_val_i <= '0';

          end if ;

        end if;


        





      end if;

    end if;
    
end process;



--------------------------------------------------------------------------------
-- Connect entity
--------------------------------------------------------------------------------
clk_out     <= clk_out_wizz_125;
rst_out     <= not locked_pll_wizz;
cmd_clk     <= clk_out_wizz_125;


out_cmd_val <= out_cmd_val_i;
out_cmd     <= out_cmd_i ;

write_data_val <= write_data_val_i;
write_data     <= write_data_i ;


mac_engine_wack_0 <= mac_engine_wack_0_i;
mac_engine_rack_0 <= mac_engine_rack_0_i;
mac_engine_wstart_0 <= mac_engine_wstart_0_i;

write_DAC_end <= write_DAC_end_i;

-- Assign default values for ports not used

gpio_led          <= (others => '0');

phy_reset_l       <= '0';
phy_mdc           <= '0';
phy_mdio          <= '0';

                     
phy_txp           <='0';                    
phy_txn           <='0';                    


auto_data_stop    <= '0';
auto_busy         <= '0';

write_start       <='0';
write_channel     <= (others => '0');
write_start_addr  <= (others => '0');
write_size        <= (others => '0');

read_start        <='0';
read_channel      <= (others => '0');
read_start_addr   <= (others => '0');
read_size         <= (others => '0');
read_data_stop    <='1';

-- gpio_led(0) <= locked_pll_wizz;
-- gpio_led(1) <= not locked_pll_wizz;
-- gpio_led(2) <= not mmcm_locked;
-- gpio_led(3) <= reset2_o;

--------------------------------------------------------------------------------
-- End
--------------------------------------------------------------------------------

end mac_engine_syn;


