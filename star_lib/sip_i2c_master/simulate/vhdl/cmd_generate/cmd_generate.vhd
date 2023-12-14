--------------------------------------------------------------------------------
-- file name : cmd_generate.vhd
--
-- author    : e. barhorst
--
-- company   : 4dsp
--
-- item      : number
--
-- units     : entity       -cmd_generate
--             arch_itecture - arch_cmd_generate
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
-- 0.0    0        15-01-2009        new version
--
----------------------------------------------
--
--------------------------------------------------------------------------------


--------------------------------------------------------------------------------
-- specify libraries.
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
-- entity declaration
--------------------------------------------------------------------------------
entity cmd_generate is
port (
  clk         : in  std_logic;
  reset       : in  std_logic;
  out_cmd     : out std_logic_vector(63 downto 0) := (others => '0');
  out_cmd_val : out std_logic := '0';
  in_cmd      : in  std_logic_vector(63 downto 0);
  in_cmd_val  : in  std_logic;
  -- input data
  in0_data    : in  std_logic_vector(63 downto 0) := (others => '0');
  in0_stop    : out std_logic := '1';
  in0_dval    : in  std_logic := '0';
  -- output data
  out0_data   : out std_logic_vector(63 downto 0) := (others => '0');
  out0_stop   : in  std_logic := '1';
  out0_dval   : out std_logic := '0'
);
end entity cmd_generate;

--------------------------------------------------------------------------------
-- arch_itecture declaration
--------------------------------------------------------------------------------
architecture arch_cmd_generate of cmd_generate is

-----------------------------------------------------------------------------------
--constant declarations
-----------------------------------------------------------------------------------

-----------------------------------------------------------------------------------
--signal declarations
-----------------------------------------------------------------------------------

-----------------------------------------------------------------------------------
--Component declarations
-----------------------------------------------------------------------------------


BEGIN

-----------------------------------------------------------------------------------
--Component instantiations
-----------------------------------------------------------------------------------


-----------------------------------------------------------------------------------
--Synchronous Processes
-----------------------------------------------------------------------------------

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

    wait until clk = '0';
    out_cmd_val <= '1';
    out_cmd     <= x"1" & addr(27 downto 0) & data;
    wait until clk = '1';
    wait until clk = '0';
    out_cmd_val <= '0';

    REPORT "CMD Write: ADDR 0x" & hstr(addr) & " DATA " & str(conv_integer(data));

  end procedure cmd_write;

  -- Procedure for reading a register
  procedure cmd_read(addr : in std_logic_vector(31 downto 0); data : inout std_logic_vector(31 downto 0)) is
  begin

    wait until clk = '0';
    out_cmd_val <= '1';
    out_cmd     <= x"2" & addr(27 downto 0) & conv_std_logic_vector(0, 32);
    wait until clk = '1';
    wait until clk = '0';
    out_cmd_val <= '0';

    wait until in_cmd_val = '1';
    data := in_cmd(31 downto 0);

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
      wait until clk = '0';
      if (out0_stop = '0') then
        readline(INPUT_FILE, textline);
        hread(textline, dma_data);
        out0_dval <= '1';
        out0_data <= dma_data;
        wait until clk = '1';
        wait until clk = '0';
        out0_dval <= '0';
        size := size - 8;
      end if;
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
      wait until clk = '1';
      in0_stop <= '0';
      if (in0_dval = '1') then
        size := size - 8;
      end if;
      wait until clk = '0';
    end loop;

    -- Read the last words slowly
    while (size > 0) loop
      wait until clk = '1';
      in0_stop <= '0';
      if (in0_dval = '1') then
        size := size - 8;
      end if;
      wait until clk = '0';
      wait until clk = '1';
      in0_stop <= '1';
      if (in0_dval = '1') then
        size := size - 8;
      end if;
      wait until clk = '0';
      wait until clk = '1';
      if (in0_dval = '1') then
        size := size - 8;
      end if;
      wait until clk = '0';
    end loop;
    in0_stop <= '1';

    REPORT "DMA Pull, Size " & str(conv_integer(dma_size)) & " bytes";

  end procedure dma_pull;

begin

  wait for 2 us;

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

  file_open(OUTPUT_FILE, "output.txt", write_mode);
  file_close(OUTPUT_FILE);

  while true loop

    wait until clk = '1';
    if (in0_dval = '1') then
      file_open(OUTPUT_FILE, "output.txt", append_mode);
      hwrite(textline, in0_data);
      writeline(OUTPUT_FILE, textline);
      file_close(OUTPUT_FILE);
    end if;
    wait until clk = '0';

  end loop;

  wait;

end process;

-----------------------------------------------------------------------------------
--Asynchronous Processes
-----------------------------------------------------------------------------------


-----------------------------------------------------------------------------------
--Asynchronous Mapping
-----------------------------------------------------------------------------------



-------------------
-------------------
end architecture arch_cmd_generate ;
