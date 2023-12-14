-------------------------------------------------------------------------------------
-- FILE NAME : fmc176_ctrl.vhd
--
-- AUTHOR    : Peter Kortekaas
--
-- COMPANY   : 4DSP
--
-- ITEM      : 1
--
-- UNITS     : Entity       - fmc176_ctrl
--             architecture - fmc176_ctrl_syn
--
-- LANGUAGE  : VHDL
--
-------------------------------------------------------------------------------------
--
-------------------------------------------------------------------------------------
-- DESCRIPTION
-- ===========
--
-- fmc176_ctrl
-- Notes: fmc176_ctrl
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

-- Library declarations
library ieee;
  use ieee.std_logic_unsigned.all;
  use ieee.std_logic_misc.all;
  use ieee.std_logic_arith.all;
  use ieee.std_logic_1164.all;
library unisim;
  use unisim.vcomponents.all;
library xil_defaultlib;
   use xil_defaultlib.types.all;

----------------------------------------------------------------------------------------------------
-- Entities
----------------------------------------------------------------------------------------------------
entity fmc216_ctrl is
generic (
  START_ADDR             : std_logic_vector(27 downto 0) := x"0000000";
  STOP_ADDR              : std_logic_vector(27 downto 0) := x"000003F";
  NB_CONVERTERS          : integer := 4
);
port (
  rst                    : in  std_logic;
  -- Command Interface
  clk_cmd                : in    std_logic;
  in_cmd_val             : in    std_logic;
  in_cmd                 : in    std_logic_vector(63 downto 0);
  out_cmd_val            : out   std_logic;
  out_cmd                : out   std_logic_vector(63 downto 0);
  cmd_busy               : out   std_logic;
  --External trigger
  ext_trigger_p          : in  std_logic;
  ext_trigger_n          : in  std_logic;
  ext_trigger_buf        : out std_logic;
  --DAC0 WFM Control
  dac_clk               : in std_logic;
  wfm_load_size         : out bus032(NB_CONVERTERS-1 downto 0);
  wfm_load_start        : out std_logic_vector(NB_CONVERTERS-1 downto 0);
  wfm_offload_size      : out bus032(NB_CONVERTERS-1 downto 0);
  wfm_offload_start     : out std_logic_vector(NB_CONVERTERS-1 downto 0);
  wfm_offload_stop      : out std_logic_vector(NB_CONVERTERS-1 downto 0);
  wfm_rst               : out std_logic_vector(NB_CONVERTERS-1 downto 0);
 
  o_xcvr_ctrl           : out std_logic_vector(31 downto 0); 
  o_fmc_ctrl            : out std_logic_vector(31 downto 0);
  o_dac_ctrl            : out std_logic_vector(31 downto 0);
  i_status              : in  std_logic_vector(31 downto 0);

  pg_m2c                 : in  std_logic;
  prsnt_m2c_l            : in  std_logic

);
end fmc216_ctrl;

architecture Behavioral of fmc216_ctrl is

----------------------------------------------------------------------------------------------------
-- Components
----------------------------------------------------------------------------------------------------
component pulse2pulse is
port (
  in_clk   : in  std_logic;
  out_clk  : in  std_logic;
  rst      : in  std_logic;
  pulsein  : in  std_logic;
  inbusy   : out std_logic;
  pulseout : out std_logic
);
end component pulse2pulse;

----------------------------------------------------------------------------------------------------
-- Constants
----------------------------------------------------------------------------------------------------
constant ADDR_COMMAND         : std_logic_vector(31 downto 0) := x"00000000";
constant ADDR_CONTROL         : std_logic_vector(31 downto 0) := x"00000001";
constant ADDR_NB_BURSTS       : std_logic_vector(31 downto 0) := x"00000002";
constant ADDR_BURST_SIZE      : std_logic_vector(31 downto 0) := x"00000003";
constant ADDR_FMC_INFO        : std_logic_vector(31 downto 0) := x"00000004";
constant ADDR_XCVR_CTRL       : std_logic_vector(31 downto 0) := x"00000005";
constant ADDR_STATUS          : std_logic_vector(31 downto 0) := x"00000006";
constant ADDR_DAC_CTRL        : std_logic_vector(31 downto 0) := x"00000007";
constant ADDR_FMC_CTRL        : std_logic_vector(31 downto 0) := x"00000008";

constant EXT_TRIGGER_DISABLE  : std_logic_vector(1 downto 0) := "00";
constant EXT_TRIGGER_RISE     : std_logic_vector(1 downto 0) := "01";
constant EXT_TRIGGER_FALL     : std_logic_vector(1 downto 0) := "10";
constant EXT_TRIGGER_BOTH     : std_logic_vector(1 downto 0) := "11";

----------------------------------------------------------------------------------------------------
-- Signals
----------------------------------------------------------------------------------------------------
signal out_reg_val       : std_logic;
signal out_reg_addr      : std_logic_vector(27 downto 0);
signal out_reg           : std_logic_vector(31 downto 0);
signal in_reg_req        : std_logic;
signal in_reg_addr       : std_logic_vector(27 downto 0);
signal in_reg_val        : std_logic;
signal in_reg            : std_logic_vector(31 downto 0);
signal out_reg_val_ack   : std_logic;
signal wr_ack            : std_logic;

signal wfm_arm           : std_logic_vector(NB_CONVERTERS-1 downto 0);
signal wfm_disarm        : std_logic_vector(NB_CONVERTERS-1 downto 0);
signal wfm_load          : std_logic_vector(NB_CONVERTERS-1 downto 0);
signal dac_en            : std_logic_vector(NB_CONVERTERS-1 downto 0);
signal dac_en_reg        : std_logic_vector(15 downto 0);
signal dac_cmd           : std_logic_vector(31 downto 0);

signal trigger_sel_reg   : std_logic_vector(1 downto 0);
signal nb_bursts_reg     : std_logic_vector(31 downto 0);
signal burst_size_reg    : std_logic_vector(31 downto 0);
signal cmd_reg           : std_logic_vector(31 downto 0);
signal sw_trigger        : std_logic;
signal armed             : std_logic;
signal trigger           : std_logic;
signal ext_trigger       : std_logic;
signal ext_trigger_prev0 : std_logic;
signal ext_trigger_prev1 : std_logic;
signal ext_trigger_re    : std_logic;
signal ext_trigger_fe    : std_logic;

signal xcvr_ctrl_reg     : std_logic_vector(31 downto 0);
signal dac_ctrl_reg     : std_logic_vector(31 downto 0);
signal fmc_ctrl_reg     : std_logic_vector(31 downto 0);

----------------------------------------------------------------------------------------------------
begin
----------------------------------------------------------------------------------------------------

o_xcvr_ctrl <= xcvr_ctrl_reg;
o_fmc_ctrl  <= fmc_ctrl_reg;
o_dac_ctrl  <= dac_ctrl_reg;

----------------------------------------------------------------------------------------------------
-- Stellar Command Interface
----------------------------------------------------------------------------------------------------
fmc216_stellar_cmd_inst: 
entity work.fmc216_stellar_cmd
generic map (
  START_ADDR   => START_ADDR,
  STOP_ADDR    => STOP_ADDR
)
port map (
  reset        => rst,
  clk_cmd      => clk_cmd,
  in_cmd_val   => in_cmd_val,
  in_cmd       => in_cmd,
  out_cmd_val  => out_cmd_val,
  out_cmd      => out_cmd,
  clk_reg      => clk_cmd,
  out_reg_val  => out_reg_val,
  out_reg_val_ack => out_reg_val_ack,
  out_reg_addr => out_reg_addr,
  out_reg      => out_reg,
  in_reg_req   => in_reg_req,
  in_reg_addr  => in_reg_addr,
  in_reg_val   => in_reg_val,
  in_reg       => in_reg,
  wr_ack       => wr_ack,
  mbx_in_val   => '0',
  mbx_in_reg   => (others => '0')
);
cmd_busy    <= '0';

----------------------------------------------------------------------------------------------------
-- Registers
----------------------------------------------------------------------------------------------------
process (rst, clk_cmd)
begin
  if (rst = '1') then
    cmd_reg         <= (others => '0');
    trigger_sel_reg <= (others => '0');
    nb_bursts_reg   <= (others => '0');
    burst_size_reg  <= (others => '0');
    in_reg_val      <= '0';
    in_reg          <= (others => '0');
    dac_en_reg      <= (others=>'0');
    wr_ack          <= '0';
    fmc_ctrl_reg    <= (others=>'0');
    dac_ctrl_reg    <= (others=>'0');
    xcvr_ctrl_reg   <= (others=>'0');
  elsif (rising_edge(clk_cmd)) then

    ----------------------------------------------------------
    -- Write
    ----------------------------------------------------------
    if ((out_reg_val = '1' or out_reg_val_ack = '1') and out_reg_addr = ADDR_COMMAND) then
      cmd_reg <= out_reg;
    else
      cmd_reg <= (others => '0');
    end if;

    if ((out_reg_val = '1' or out_reg_val_ack = '1') and out_reg_addr = ADDR_CONTROL) then
      dac_en_reg(0)     <= out_reg(0);
      dac_en_reg(1)     <= out_reg(1);
      dac_en_reg(2)     <= out_reg(2);
      dac_en_reg(3)     <= out_reg(3);
      dac_en_reg(4)     <= out_reg(4);
      dac_en_reg(5)     <= out_reg(5);
      dac_en_reg(6)     <= out_reg(6);
      dac_en_reg(7)     <= out_reg(7);
      dac_en_reg(8)     <= out_reg(8);
      dac_en_reg(9)     <= out_reg(9);
      dac_en_reg(10)     <= out_reg(10);
      dac_en_reg(11)     <= out_reg(11);
      dac_en_reg(12)     <= out_reg(12);
      dac_en_reg(13)     <= out_reg(13);
      dac_en_reg(14)     <= out_reg(14);
      dac_en_reg(15)     <= out_reg(15);
      trigger_sel_reg  <= out_reg(17 downto 16);
    end if;

    if ((out_reg_val = '1'  or out_reg_val_ack = '1') and out_reg_addr = ADDR_NB_BURSTS) then
      nb_bursts_reg <= out_reg;
    end if;

    if ((out_reg_val = '1' or out_reg_val_ack = '1')  and out_reg_addr = ADDR_BURST_SIZE) then
      burst_size_reg <= out_reg;
    end if;

    if ((out_reg_val = '1' or out_reg_val_ack = '1')  and out_reg_addr = ADDR_XCVR_CTRL) then
      xcvr_ctrl_reg <= out_reg;
    end if;

    if ((out_reg_val = '1' or out_reg_val_ack = '1')  and out_reg_addr = ADDR_DAC_CTRL) then
      dac_ctrl_reg  <= out_reg;
    end if;

    if ((out_reg_val = '1' or out_reg_val_ack = '1')  and out_reg_addr = ADDR_FMC_CTRL) then
      fmc_ctrl_reg  <= out_reg;
    end if;

    -- Write acknowledge
    if (out_reg_val_ack = '1') then
      wr_ack     <= '1';
    else
      wr_ack     <= '0';
    end if;

    ----------------------------------------------------------
    -- Read
    ----------------------------------------------------------
    if (in_reg_req = '1' and in_reg_addr = ADDR_COMMAND) then
      in_reg_val    <= '1';
      in_reg        <= cmd_reg;
    elsif (in_reg_req = '1' and in_reg_addr = ADDR_CONTROL) then
      in_reg_val    <= '1';
      --in_reg        <= x"A5A5" & status;
      in_reg        <= x"A5A5" & x"0000";
    elsif (in_reg_req = '1' and in_reg_addr = ADDR_NB_BURSTS) then
        in_reg_val  <= '1';
        in_reg      <= nb_bursts_reg;
    elsif (in_reg_req = '1' and in_reg_addr = ADDR_BURST_SIZE) then
        in_reg_val  <= '1';
        in_reg      <= burst_size_reg;
    elsif (in_reg_req = '1' and in_reg_addr = ADDR_FMC_INFO) then
        in_reg_val  <= '1';
        in_reg      <= conv_std_logic_vector(0, 30) & pg_m2c & not prsnt_m2c_l;
    elsif (in_reg_req = '1' and in_reg_addr = ADDR_XCVR_CTRL) then
        in_reg_val  <= '1';
        in_reg      <= xcvr_ctrl_reg;
    elsif (in_reg_req = '1' and in_reg_addr = ADDR_STATUS) then
        in_reg_val  <= '1';
        in_reg      <= i_status;
    elsif (in_reg_req = '1' and in_reg_addr = ADDR_DAC_CTRL) then
        in_reg_val  <= '1';
        in_reg      <= dac_ctrl_reg;
    elsif (in_reg_req = '1' and in_reg_addr = ADDR_FMC_CTRL) then
        in_reg_val  <= '1';
        in_reg      <= fmc_ctrl_reg;
    else
        in_reg_val <= '0';
        in_reg     <= in_reg;
    end if;
  end if;
end process;



----------------------------------------------------------------------------------------------------
-- LVDS Trigger Input
----------------------------------------------------------------------------------------------------
ibufds_trig : ibufds
generic map (
  IOSTANDARD => "LVDS_25",
  DIFF_TERM => TRUE
)
port map (
  i  => ext_trigger_p,
  ib => ext_trigger_n,
  o  => ext_trigger
);

-----------------------------------------------------------------------------------
-- ADC triggering and burst control
-----------------------------------------------------------------------------------
process (rst, dac_clk)
begin
  if (rst = '1') then
    ext_trigger_prev0 <= '0';
    ext_trigger_prev1 <= '0';
    ext_trigger_re    <= '0';
    ext_trigger_fe    <= '0';
    trigger           <= '0';
  elsif (rising_edge(dac_clk)) then
    ext_trigger_prev0 <= ext_trigger;
    ext_trigger_prev1 <= ext_trigger_prev0;
    -- Generate pulse on rising edge external trigger
    if (ext_trigger_prev0 = '1' and ext_trigger_prev1 = '0') then
      ext_trigger_re <= '1';
    else
      ext_trigger_re <= '0';
    end if;
    -- Generate pulse on falling edge external trigger
    if (ext_trigger_prev0 = '0' and ext_trigger_prev1 = '1') then
      ext_trigger_fe <= '1';
    else
      ext_trigger_fe <= '0';
    end if;
    -- Select the trigger source
    if (armed = '1' and sw_trigger = '1') then
      trigger <= '1';
    elsif (armed = '1' and ext_trigger_re = '1' and (trigger_sel_reg = EXT_TRIGGER_RISE or trigger_sel_reg = EXT_TRIGGER_BOTH) ) then
      trigger <= '1';
    elsif (armed = '1' and ext_trigger_fe = '1' and (trigger_sel_reg = EXT_TRIGGER_FALL or trigger_sel_reg = EXT_TRIGGER_BOTH) ) then
      trigger <= '1';
    else
      trigger <= '0';
    end if;
  end if;
end process;

----------------------------------------------------------------------------------------------------
-- Transfer command pulses to other DAC clock domain
----------------------------------------------------------------------------------------------------
--dac0_cmd_pls: for i in 0 to 31 generate
--  pulse2pulse_inst : pulse2pulse
--  port map (
--    in_clk   => clk_cmd,
--    out_clk  => dac_clk,
--    rst      => rst,
--    pulsein  => cmd_reg(i),
--    inbusy   => open,
--    pulseout => dac_cmd(i)
--  );
--end generate;




----------------------------------------------------------------------------------------------------
-- Connect entity
----------------------------------------------------------------------------------------------------
generate_map_signals: 
for M in 0 to NB_CONVERTERS-1 generate
    


    wfm_arm(M)               <= cmd_reg(0);
    wfm_disarm(M)            <= cmd_reg(1);
    wfm_load(M)              <= cmd_reg(3);
    wfm_rst(M)               <= cmd_reg(4) or rst;

--    process(dac_clk, rst)
--    begin
--        if rst = '1' then
--            wfm_load_size(M)    <= (others=>'0');
--            wfm_offload_size(M) <= (others=>'0');
--            dac_en(M)           <= '0';
--
--
--            wfm_load_start(M)        <= '0';
--            wfm_offload_start(M)     <= '0';
--            wfm_offload_stop(M)      <= '0';
--
--        elsif rising_edge(dac_clk) then
            -- convert from samples to bytes, wfm repeat accepts bytes
            wfm_load_size(M)     <= burst_size_reg(30 downto 0) & '0'; 
            wfm_offload_size(M)  <= burst_size_reg(30 downto 0) & '0'; 
            dac_en(M)            <= dac_en_reg(M);


            wfm_load_start(M)        <= wfm_load(M) and dac_en(M);
            wfm_offload_start(M)     <= wfm_arm(M) and dac_en(M);
            wfm_offload_stop(M)      <= wfm_disarm(M);
--
--        end if;
--    end process;
--
end generate;

ext_trigger_buf         <= ext_trigger;

----------------------------------------------------------------------------------------------------
-- End
----------------------------------------------------------------------------------------------------
end Behavioral;

