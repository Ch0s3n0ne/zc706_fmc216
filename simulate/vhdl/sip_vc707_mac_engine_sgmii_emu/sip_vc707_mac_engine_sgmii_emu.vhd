--------------------------------------------------------------------------------
-- file name : mac_engine.vhd
--
-- author    : P. Kortekaas
--
-- company   : 4dsp
--
-- item      : number
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
-- 0.0    0        05-12-2006        new version
--
----------------------------------------------
--
--------------------------------------------------------------------------------


--------------------------------------------------------------------------------
-- Specify libraries
--------------------------------------------------------------------------------
library ieee;
  use ieee.std_logic_unsigned.all;
  use ieee.std_logic_misc.all;
  use ieee.std_logic_arith.all;
  use ieee.std_logic_1164.all;
library std;
  use std.textio.all;
library work;
  use work.txt_util.all;
  use work.std_logic_textio.all;

--------------------------------------------------------------------------------
-- Entity declaration
--------------------------------------------------------------------------------
entity sip_vc707_mac_engine_sgmii is
port (
  -- Master reset input
  cpu_reset         : in  std_logic;

  -- Master clock input
  sysclk_p          : in  std_logic;
  sysclk_n          : in  std_logic;
  gpio_led          : out std_logic_vector(3 downto 0);

  -- Ethernet control interface
  phy_reset_l       : out std_logic := '0';
  phy_mdc           : out std_logic := '0';
  phy_mdio          : inout std_logic := '0';

  -- Interface to gigabit phy

  sgmii_refclk_p	 : in std_logic;                     -- Differential +ve of reference clock for tranceiver: 125MHz, very high quality
  sgmii_refclk_n	 : in std_logic;                     -- Differential -ve of reference clock for tranceiver: 125MHz, very high quality
  sgmii_tx_p       : out   std_logic := '0';
  sgmii_tx_n       : out   std_logic := '0';
  sgmii_rx_p       : in    std_logic;
  sgmii_rx_n       : in    std_logic;

  -- Command interface (register read/write)
  clkout_clkout    : out   std_logic_vector(31 downto 0);
  rst_out_rstout   : out   std_logic_vector(31 downto 0);

  -- Command interface (register read/write)
  cmdclk_out_cmdclk       : out std_logic;
  cmd_out_cmdout_val      : out std_logic := '0';
  cmd_out_cmdout          : out std_logic_vector(63 downto 0) := (others => '0');
  cmd_in_cmdin_val        : in  std_logic;
  cmd_in_cmdin            : in  std_logic_vector(63 downto 0);

  -- Auto offload interface (data push, with stop)
  auto_start        : in  std_logic :='0';
  auto_channel      : in  std_logic_vector(7 downto 0):=(others => '0');
  auto_size         : in  std_logic_vector(31 downto 0):= (others => '0');
  auto_data_val     : in  std_logic :='0';
  auto_data         : in  std_logic_vector(63 downto 0):= (others => '0');
  auto_data_stop    : out std_logic := '0';
  auto_busy         : out std_logic := '0';

  -- Block write interface (data push, non-stop)
  out_data_out_stop : in  std_logic;
  out_data_out_dval : out std_logic := '0';
  out_data_out_data : out std_logic_vector(63 downto 0) := (others => '0');

  -- Block read interface (data push, with stop)
  in_data_in_dval        : in  std_logic;
  in_data_in_data        : in  std_logic_vector(63 downto 0);
  in_data_in_stop        : out std_logic := '1'

);
end entity sip_vc707_mac_engine_sgmii;

--------------------------------------------------------------------------------
-- Architecture declaration
--------------------------------------------------------------------------------
architecture mac_engine_beh of sip_vc707_mac_engine_sgmii is

--------------------------------------------------------------------------------
-- Constant declarations
--------------------------------------------------------------------------------


-----------------------------------------------------------------------------------
-- Signal declarations
-----------------------------------------------------------------------------------
signal clk_cmd : std_logic := '0';
signal clk125m : std_logic := '0';

-----------------------------------------------------------------------------------
-- Component declarations
-----------------------------------------------------------------------------------

begin

--------------------------------------------------------------------------------
-- Clock generation
--------------------------------------------------------------------------------
clk_cmd <= sysclk_p;
clk125m <= sysclk_p;

--------------------------------------------------------------------------------
-- Perform SIP register read and writes
--------------------------------------------------------------------------------
process

  file CMD_SCRIPT          : text;
  file INPUT_FILE          : text;
  variable textline        : line;
  variable sip_command     : string(1 to 80);
  variable char1           : string(1 to 1);
  variable WaitDelay       : integer := 0;
  variable sip_addr        : std_logic_vector(31 downto 0);
  variable sip_data        : std_logic_vector(31 downto 0);
  variable dmapush_size    : std_logic_vector(31 downto 0);
  variable dmapull_size    : std_logic_vector(31 downto 0);

  -- Procedure for writing a register
  procedure cmd_write(addr : in std_logic_vector(31 downto 0); data : in std_logic_vector(31 downto 0)) is
  begin

    wait until clk_cmd = '0';
    cmd_out_cmdout_val <= '1';
    cmd_out_cmdout     <= x"1" & addr(27 downto 0) & data;
    wait until clk_cmd = '1';
    wait until clk_cmd = '0';
    cmd_out_cmdout_val <= '0';

    REPORT "CMD Write: ADDR 0x" & hstr(addr) & " DATA " & str(conv_integer(data));

  end procedure cmd_write;

  -- Procedure for reading a register
  procedure cmd_read(addr : in std_logic_vector(31 downto 0); data : inout std_logic_vector(31 downto 0)) is
  begin

    wait until clk_cmd = '0';
    cmd_out_cmdout_val <= '1';
    cmd_out_cmdout     <= x"2" & addr(27 downto 0) & conv_std_logic_vector(0, 32);
    wait until clk_cmd = '1';
    wait until clk_cmd = '0';
    cmd_out_cmdout_val <= '0';

    wait until cmd_in_cmdin_val = '1';
    data := cmd_in_cmdin(31 downto 0);

    REPORT "CMD Read: ADDR 0x" & hstr(addr) & " DATA " & str(conv_integer(data));

  end procedure cmd_read;

  -- Procedure for pushing DMA to FPGA B
  procedure dma_push(dma_size : in std_logic_vector(31 downto 0)) is
    variable textline  : line;
    variable size      : integer;
    variable dma_data  : std_logic_vector(63 downto 0);
  begin

    size := conv_integer(dma_size);

    while (size > 0) loop
      wait until clk125m = '0';
      --if (in0_stop = '0') then
        readline(INPUT_FILE, textline);
        hread(textline, dma_data);
        out_data_out_dval <= '1';
        out_data_out_data <= dma_data;
        wait until clk125m = '1';
        wait until clk125m = '0';
        out_data_out_dval <= '0';
        size := size - 8;
      --end if;
    end loop;

    REPORT "DMA Push, Size " & str(conv_integer(dma_size)) & " bytes";

  end procedure dma_push;

  -- Procedure for pulling DMA from FPGA B
  procedure dma_pull(dma_size : in std_logic_vector(31 downto 0)) is
    variable size      : integer;
  begin

    -- This precedure only pulls down the stop signal for the right amount of time
    -- data that comes available is written to file by the "Write data to file"
    -- process elsewhere in this file.

    size := conv_integer(dma_size);

    -- Start reading fast, untill 8 words (64 bytes) left
    while (size > 64) loop
      wait until clk125m = '1';
      in_data_in_stop <= '0';
      if (in_data_in_dval = '1') then
        size := size - 8;
      end if;
      wait until clk125m = '0';
    end loop;

    -- Read the last words slowly
    while (size > 0) loop
      wait until clk125m = '1';
      in_data_in_stop <= '0';
      if (in_data_in_dval = '1') then
        size := size - 8;
      end if;
      wait until clk125m = '0';
      wait until clk125m = '1';
      in_data_in_stop <= '1';
      if (in_data_in_dval = '1') then
        size := size - 8;
      end if;
      wait until clk125m = '0';
      wait until clk125m = '1';
      if (in_data_in_dval = '1') then
        size := size - 8;
      end if;
      wait until clk125m = '0';
    end loop;
    in_data_in_stop <= '1';

    REPORT "DMA Pull, Size " & str(conv_integer(dma_size)) & " bytes";

  end procedure dma_pull;

begin

  wait for 10 us;

  file_open(CMD_SCRIPT, "sip_cmd.sip", read_mode);
  file_open(INPUT_FILE, "input.txt", read_mode);

  while not endfile(CMD_SCRIPT) loop

    readline(CMD_SCRIPT, textline);
    next when textline'length = 0;  -- Skip empty lines

    -- Reset command
    for i in 1 to sip_command'length loop
      sip_command(i to i) := " ";
    end loop;

    -- Read command
    for i in 1 to sip_command'length loop
      -- Exit when exeeding the number of characters on the line
      exit when i > textline'length;
      read(textline, sip_command(i to i));

      -- Comment
      if (sip_command(1 to 1) = ";") then
        read(textline, sip_command(1 to textline'length));
        REPORT(sip_command) SEVERITY warning;
        exit;
      end if;

      -- Write access
      if (sip_command(1 to 7) = "REG_SET") then
        -- Collect address
        char1 := " ";
        while (char1 /= "x") loop
          read(textline, char1);
        end loop;
        hread(textline, sip_addr);
        -- Collect data
        char1 := " ";
        while (char1 /= "x") loop
          read(textline, char1);
        end loop;
        hread(textline, sip_data);
        -- Write
        cmd_write(sip_addr, sip_data);
        exit;
      end if;

      -- Read access
      if (sip_command(1 to 7) = "REG_GET") then
        -- Collect address
        char1 := " ";
        while (char1 /= "x") loop
          read(textline, char1);
        end loop;
        hread(textline, sip_addr);
        -- Read
        cmd_read(sip_addr, sip_data);
        exit;
      end if;

      -- DMA Push access (from host to card)
      if (sip_command(1 to 7) = "DMAPUSH") then
        -- Collect size
        char1 := " ";
        while (char1 /= "x") loop
          read(textline, char1);
        end loop;
        hread(textline, dmapush_size);
        -- DMA to FPGA B
        dma_push(dmapush_size);
        exit;
      end if;

      -- DMA Pull access (from card to host)
      if (sip_command(1 to 7) = "DMAPULL") then
        -- Collect size
        char1 := " ";
        while (char1 /= "x") loop
          read(textline, char1);
        end loop;
        hread(textline, dmapull_size);
        -- DMA from FPGA B
        dma_pull(dmapull_size);
        exit;
      end if;

      -- Wait
      if (sip_command(1 to 4) = "WAIT") then
        char1 := " ";
        while (char1 /= "=") loop
          read(textline, char1);
        end loop;
        read(textline, WaitDelay);
        REPORT("Wait for " & str(WaitDelay) & " us");
        for i in 1 to WaitDelay loop
          wait for 1 us;
        end loop;
        exit;
      end if;

    end loop;

    wait for 1 us;

  end loop;

  file_close(CMD_SCRIPT);
  file_close(INPUT_FILE);

  REPORT("Ready with reading SIP CMD script!");

  wait for 10 us;

  REPORT "Testbench ended" severity warning;
  wait;

end process;

--------------------------------------------------------------------------------
-- Write data to file
--------------------------------------------------------------------------------
process

  file OUTPUT_FILE  : text;
  variable textline : line;

begin 

  -- wait for 1 us;

  REPORT "Starting to write to output file" severity warning;

  file_open(OUTPUT_FILE, "output.txt", write_mode);
  file_close(OUTPUT_FILE);

  while true loop

    wait until clk125m = '1';
    if (in_data_in_dval = '1') then
      file_open(OUTPUT_FILE, "output.txt", append_mode);
      hwrite(textline, in_data_in_data);
      writeline(OUTPUT_FILE, textline);
      file_close(OUTPUT_FILE);
    end if;
    wait until clk125m = '0';

  end loop;

  wait;

end process;

--------------------------------------------------------------------------------
-- Connect entity
--------------------------------------------------------------------------------
cmdclk_out_cmdclk <= clk_cmd;
clkout_clkout  <= (others => clk125m);
rst_out_rstout <= (others => cpu_reset);

auto_data_stop <= '1';
auto_busy      <= '1';

--------------------------------------------------------------------------------
-- End
--------------------------------------------------------------------------------
end architecture mac_engine_beh;

