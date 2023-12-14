-------------------------------------------------------------------------------------
-- FILE NAME : dac_wrapper.vhd
-- AUTHOR    : Luis
-- COMPANY   : 
-- UNITS     : Entity       - dac_wrapper
--             Architecture - Behavioral
-- LANGUAGE  : VHDL
-- DATE      : May 21, 2010
-------------------------------------------------------------------------------------
--
-------------------------------------------------------------------------------------
-- DESCRIPTION
-- ===========
-- Sample Rate 257.8125 MHz 
-- 257.8125 * 4 = 1031.25  Sampls per second
-- 2 (bytes per sample) / 2 (Lanes) * 1031.25 = 1031.25 MBytes/sec

-- dac_clk 257.8125 MHZ
-- TX Reference 103.125 MHz
-- TX Line Rate(Gbps) 10.3125 
-------------------------------------------------------------------------------------
 
-------------------------------------------------------------------------------------
-- LIBRARIES
-------------------------------------------------------------------------------------
library ieee;
    use ieee.std_logic_1164.all;
    -- IEEE  
    --use ieee.numeric_std.all; 
    -- non-IEEE 
    use ieee.std_logic_unsigned.all;
    use ieee.std_logic_misc.all;
    use ieee.std_logic_arith.all; 

library unisim;
  use unisim.vcomponents.all;

library xil_defaultlib;
   use xil_defaultlib.types.all; 

-------------------------------------------------------------------------------------
-- ENTITY
-------------------------------------------------------------------------------------
entity dac_wrapper is
port (
    rst          : in  std_logic;
    dac_clk      : in std_logic; 
    i_dselect  : in std_logic_vector(1 downto 0);
    -- Tranceiver Interface
    data_out     : out bus032(1 downto 0); 
    kchar_out    : out bus004(1 downto 0);
    -- Waveform Interface 
    i_dac_data   : in bus016(3 downto 0);
    i_dac_valid  : in std_logic_vector(3 downto 0);
    -- External Signals
    i_dac_syncb  : in std_logic; 
    i_sysref     : in std_logic
);
end dac_wrapper;

-------------------------------------------------------------------------------------
-- ARCHITECTURE
-------------------------------------------------------------------------------------
architecture Behavioral of dac_wrapper is

-------------------------------------------------------------------------------------
-- CONSTANTS
-------------------------------------------------------------------------------------
constant DAC_0_DEBUG    : boolean  := FALSE;
constant JESD_L         : integer := 2;
constant JESD_M         : integer := 4;

attribute keep : string;
attribute    S : string;
-----------------------------------------------------------------------------------
-- SIGNALS
-----------------------------------------------------------------------------------
signal data          : bus008(7 downto 0);

signal lane_data     : bus032(JESD_L-1 downto 0);
--signal dac_sample    : bus016(JESD_M-1 downto 0);

signal fifo_full            : std_logic_vector(JESD_M-1 downto 0);
signal fifo_empty           : std_logic_vector(JESD_M-1 downto 0);
signal fifo_rd_en           : std_logic_vector(JESD_M-1 downto 0);
signal fifo_valid           : std_logic_vector(JESD_M-1 downto 0);
signal fifo_wr_data_count   : bus009(JESD_M-1 downto 0);    

signal data_select   : std_logic_vector(1 downto 0);
signal point_state   : std_logic_vector(1 downto 0) := "00";

-- configuration data
signal checksum_mid  : std_logic_vector(7 downto 0);
signal check_sum     : bus008(JESD_L-1 downto 0);
signal octet00       : bus008(JESD_L-1 downto 0); -- DID
signal octet01       : bus008(JESD_L-1 downto 0); -- BID
signal octet02       : bus008(JESD_L-1 downto 0); -- LID
signal octet03       : bus008(JESD_L-1 downto 0); -- SCR & L
signal octet04       : bus008(JESD_L-1 downto 0); -- F
signal octet05       : bus008(JESD_L-1 downto 0); -- K
signal octet06       : bus008(JESD_L-1 downto 0); -- M
signal octet07       : bus008(JESD_L-1 downto 0); -- CS & N
signal octet08       : bus008(JESD_L-1 downto 0); -- SUBCLASS & N'
signal octet09       : bus008(JESD_L-1 downto 0); -- JESDV & S
signal octet10       : bus008(JESD_L-1 downto 0); -- HID & CF
signal octet11       : bus008(JESD_L-1 downto 0); -- RES
signal octet12       : bus008(JESD_L-1 downto 0); -- RES
signal octet13       : bus008(JESD_L-1 downto 0); -- checksum

signal dac_data      : bus032(JESD_L-1 downto 0); 
signal dac_kchar     : bus004(JESD_L-1 downto 0);
signal dac_tx_en_reg : std_logic;
signal tx_block      : std_logic :='0';
signal test          : std_logic_vector(1 downto 0);
signal delay         : std_logic_vector(7 downto 0);
signal dac_syncb     : std_logic;
-- debug
signal probe0        : std_logic_vector(127 downto 0);
signal dbg_data      : std_logic_vector(63 downto 0);

attribute keep of i_dac_syncb : signal is "true";
attribute    S of i_dac_syncb : signal is "true";
attribute keep of dac_data : signal is "true";
attribute    S of dac_data : signal is "true";

--***********************************************************************************
begin
--***********************************************************************************

-- output mapping
data_out    <= dac_data;
kchar_out   <= dac_kchar;

--gen_debug: 
--if (DAC_0_DEBUG = TRUE) generate
--begin
--
--
----    inst1_ila: entity work.ila_0
----    PORT MAP (
----        clk     => dac_clk,
----        probe0  => probe0
----    );
--
--    probe0(31 downto 0) <= dac_data(0);
--    probe0(63 downto 32) <= dac_data(1);
--
-- probe0(64)  <= dac_syncb;
-- probe0(66 downto 65) <= data_select;
-- probe0(70 downto 67) <= dac_kchar(0);
-- probe0(74 downto 71) <= dac_kchar(1);
-- probe0(127 downto 75) <= (others=>'0');
--
--end generate;  
-------------------------------------------------------------------------------------
-- DAC Control 
-------------------------------------------------------------------------------------
--generate_dac38j84_cmd_ctrl: 
--for I in 0 to 7 generate
--    dac38j84_cmd_ctrl:
--    entity work.dac38j84_cmd_ctrl
--    generic map (
--      START_ADDR  => START_ADDR,    
--      STOP_ADDR   => STOP_ADDR 
--    )
--    port map (
--        rst         => rst, 
--        clk_cmd     => clk_cmd(I),
--        out_cmd     => out_cmd(I),
--        out_cmd_val => out_cmd_val(I),
--        in_cmd      => in_cmd(I),
--        in_cmd_val  => in_cmd_val(I),
--    
--        tx_clk      => dac_clk,
--        tx_enable   => dac_tx_en,
--        data_select => data_select
--    );
--end generate;




------------------------------------------------------------------------------------------
-- Data Select
-- TI DAC39J84 16-bit 2.8 GSPS, DAC w/ 12.5 Gbps JESD204B Interface
-- FMC216 2 lanes per chip, each chip has 4 ADCs, 4 chips total, 16 channels

-- L  : 2
-- M  : 4
-- F  : 4
-- S  : 1
-- HD : 0

-- LANE0: DA0[15:8] + DA0[7:0] + DB0[15:8] + DB0[7:0]
-- LANE1: DC0[15:8] + DC0[7:0] + DD0[15:8] + DD0[7:0]

------------------------------------------------------------------------------------------
-- Signal assignment
process(dac_clk)
begin
    if rising_edge(dac_clk) then
        if i_dselect = "00" then
            --LANE 0 (Converter 0 + Converter 1) (notice MSB goes first)
            lane_data(0) <= i_dac_data(1)(7 downto 0) & i_dac_data(1)(15 downto 8) &
                            i_dac_data(0)(7 downto 0) & i_dac_data(0)(15 downto 8);
            --LANE 1 (Converter 2 + Converter 3)
            lane_data(1) <= i_dac_data(3)(7 downto 0) & i_dac_data(3)(15 downto 8) &
                            i_dac_data(2)(7 downto 0) & i_dac_data(2)(15 downto 8);
        elsif i_dselect = "01" then 
            -- Transport layer test pattern. 
            -- For F = 4: Looks for constant 0xF1, 0xE2, 0xD3, 0xC4
            lane_data(0) <= x"D3C4F1E2";
            lane_data(1) <= x"D3C4F1E2";
        elsif i_dselect = "10" then --waveform generation
            if point_state = "00" then
                lane_data(0) <= x"FF7F" & x"FF7F"; 
                lane_data(1) <= x"FF7F" & x"FF7F"; 
                point_state <= point_state + 1;
            elsif point_state = "01" then
                lane_data(0) <= x"0000" & x"0000"; 
                lane_data(1) <= x"0000" & x"0000";  
                point_state <= point_state + 1;
            elsif point_state = "10" then
                lane_data(0) <= x"0180" & x"0180";
                lane_data(1) <= x"0180" & x"0180";
                point_state <= point_state + 1;
            else
                lane_data(0) <= x"0000" & x"0000"; 
                lane_data(1) <= x"0000" & x"0000"; 
                point_state <= point_state + 1;
            end if;
        else
            --LANE 0 (Converter 0 + Converter 1)
            lane_data(0) <= i_dac_data(0)(7 downto 0) & i_dac_data(0)(15 downto 8) &
                            i_dac_data(1)(7 downto 0) & i_dac_data(1)(15 downto 8);
            --LANE 1 (Converter 2 + Converter 3)
            lane_data(1) <= i_dac_data(2)(7 downto 0) & i_dac_data(2)(15 downto 8) &
                            i_dac_data(3)(7 downto 0) & i_dac_data(3)(15 downto 8);
        end if;
    end if;
end process;

------------------------------------------------------------------------------------------
-- DAC JESD Entity
------------------------------------------------------------------------------------------
generate_jesd: 
for I in 0 to JESD_L-1 generate

    dac38j84_lane: 
    entity work.dac38j84_jesd 
    generic map (
        OCTETS      => 4,
        F           => 1,
        K           => 16 
    )
    port map (
        clk         => dac_clk,  
        rst         => rst, 
        data_in     => lane_data(I),
        data        => dac_data(I),
        k_char      => dac_kchar(I),
        sysref      => i_sysref, 
        syncb       => i_dac_syncb,     

        octet00     => octet00(I),
        octet01     => octet01(I),
        octet02     => octet02(I),
        octet03     => octet03(I),
        octet04     => octet04(I),
        octet05     => octet05(I),
        octet06     => octet06(I),
        octet07     => octet07(I),
        octet08     => octet08(I),
        octet09     => octet09(I),
        octet10     => octet10(I),
        octet11     => octet11(I),
        octet12     => octet12(I),
        octet13     => octet13(I)
    );

end generate;

-------------------------------------------------------------------------------------
-- LANE CONFIGURATIONS 
-------------------------------------------------------------------------------------
-- LANE 0 CONFIG
octet00(0) <= x"00"; -- DID
octet01(0) <= x"00"; -- BID
octet02(0) <= x"00"; -- LID
octet03(0) <= x"01"; -- SCR & L
octet04(0) <= x"03"; -- F
octet05(0) <= x"0f"; -- K
octet06(0) <= x"03"; -- M
octet07(0) <= x"0f"; -- CS & N
octet08(0) <= x"2f"; -- SUBCLASS & N'
octet09(0) <= x"20"; -- JESDV & S
octet10(0) <= x"00"; -- HID & CF
octet11(0) <= x"00"; -- RES
octet12(0) <= x"00"; -- RES
octet13(0) <= check_sum(0);
-- LANE 1 CONFIG
octet00(1) <= x"00"; -- DID
octet01(1) <= x"00"; -- BID
octet02(1) <= x"01"; -- LID
octet03(1) <= x"01"; -- SCR & L
octet04(1) <= x"03"; -- F
octet05(1) <= x"0f"; -- K
octet06(1) <= x"03"; -- M
octet07(1) <= x"0f"; -- CS & N
octet08(1) <= x"2f"; -- SUBCLASS & N'
octet09(1) <= x"20"; -- JESDV & S
octet10(1) <= x"00"; -- HID & CF
octet11(1) <= x"00"; -- RES
octet12(1) <= x"00"; -- RES
octet13(1) <= check_sum(1);


-- CHECKSUM ( 8 bit checsum by summing the bytes )
checksum_mid    <= x"36";
               --    x"01" + -- L 
               --    x"03" + -- F
               --    x"0f" + -- K
               --    x"03" + -- M
               --    x"0f" + -- N
               --    x"0f" + -- N'
               --    x"01" + -- Subclass 1
               --    x"01" + -- JESD204B
               --    x"00";  -- HID

check_sum(0) <=  checksum_mid + x"00"; --LID
check_sum(1) <=  checksum_mid + x"01"; 

------------------------------------------------------------------------------------
-- dac_syncb input
------------------------------------------------------------------------------------
--IBUFDS_inst0 : IBUFDS
--generic map (
--   DQS_BIAS => "FALSE"  -- (FALSE, TRUE)
--)
--port map (
--   O => dac_syncb,   -- 1-bit output: Buffer output
--   I => dac_syncb_p,   -- 1-bit input: Diff_p buffer input (connect directly to top-level port)
--   IB => dac_syncb_n  -- 1-bit input: Diff_n buffer input (connect directly to top-level port)
--);


--***********************************************************************************
end architecture Behavioral;
--***********************************************************************************

