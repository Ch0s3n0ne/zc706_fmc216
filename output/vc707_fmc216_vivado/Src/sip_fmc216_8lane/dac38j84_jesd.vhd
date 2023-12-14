-------------------------------------------------------------------------------------
-- FILE NAME : jesd_tx.vhd
-- AUTHOR    : Luis
-- COMPANY   : 
-- UNITS     : Entity       - toplevel_template
--             Architecture - Behavioral
-- LANGUAGE  : VHDL
-- DATE      : May 21, 2010
-------------------------------------------------------------------------------------
--
-------------------------------------------------------------------------------------
-- DESCRIPTION
-- ===========
-- This entity is template for writing test benches
-- 
-- sysref has a two cycle delay. sysref comes into the fpga, we register it to sysref_rst
-- then the next clock frame_cnt = 0.
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


library xil_defaultlib;
   use xil_defaultlib.types.all; 

-------------------------------------------------------------------------------------
-- ENTITY
-------------------------------------------------------------------------------------
entity dac38j84_jesd is
generic (
    OCTETS      : integer := 4;
    F           : integer := 1;
    K           : integer := 32 
);
port (
    clk         : in  std_logic;
    rst         : in  std_logic;
    data_in     : in  std_logic_vector(31 downto 0);
    data        : out std_logic_vector(31 downto 0);
    k_char      : out std_logic_vector(3 downto 0);
    sysref      : in  std_logic;
    syncb       : in  std_logic;
    octet00     : in  std_logic_vector(7 downto 0); -- DID
    octet01     : in  std_logic_vector(7 downto 0); -- BID
    octet02     : in  std_logic_vector(7 downto 0); -- LID
    octet03     : in  std_logic_vector(7 downto 0); -- SCR & L
    octet04     : in  std_logic_vector(7 downto 0); -- F
    octet05     : in  std_logic_vector(7 downto 0); -- K
    octet06     : in  std_logic_vector(7 downto 0); -- M
    octet07     : in  std_logic_vector(7 downto 0); -- CS & N
    octet08     : in  std_logic_vector(7 downto 0); -- SUBCLASS & N'
    octet09     : in  std_logic_vector(7 downto 0); -- JESDV & S
    octet10     : in  std_logic_vector(7 downto 0); -- HID & CF
    octet11     : in  std_logic_vector(7 downto 0); -- RES
    octet12     : in  std_logic_vector(7 downto 0); -- RES
    octet13     : in  std_logic_vector(7 downto 0) -- checksum
);
end dac38j84_jesd;

-------------------------------------------------------------------------------------
-- ARCHITECTURE
-------------------------------------------------------------------------------------
architecture Behavioral of dac38j84_jesd is

-------------------------------------------------------------------------------------
-- CONSTANTS
-------------------------------------------------------------------------------------
type jesd_sm is (
    JESD_CGS, 
    JESD_ILA0_START,
    JESD_ILA0,
    JESD_ILA0_END, 
    JESD_CONFIG_START,
    JESD_CONFIG,
    JESD_CONFIG_END, 
    JESD_DATA0,
    JESD_DATA1,
    JESD_DATA2,
    JESD_DATA3,
    JESD_DATA4,
    JESD_DATA5,
    JESD_DATA6,
    JESD_DATA7
);

constant CHAR_K : std_logic_vector(7 downto 0) := x"BC"; -- K28.5
constant CHAR_Q : std_logic_vector(7 downto 0) := x"9C"; -- K28.4
constant CHAR_R : std_logic_vector(7 downto 0) := x"1C"; -- k28.0
constant CHAR_F : std_logic_vector(7 downto 0) := x"FC"; -- k28.
constant CHAR_A : std_logic_vector(7 downto 0) := x"7C"; -- k28.

constant ALIGN_CHAIN    : std_logic_vector(31 downto 0) := x"BCBCBCBC";
constant ILA0_START     : std_logic_vector(31 downto 0) := x"BCBCBCBC";
constant K_CNT : integer := K * F / OCTETS;

-----------------------------------------------------------------------------------
-- SIGNALS
-----------------------------------------------------------------------------------
signal jesd_state           : jesd_sm;
signal jesd_rst             : std_logic := '1';
--signal config               :  bus032(7 downto 0);
signal config_data          : std_logic_vector(31 downto 0);
signal config_state         : std_logic_vector(2 downto 0);
signal config_rst           : std_logic;
signal frame_count          : std_logic_vector(7 downto 0);
signal byte_count           : std_logic_vector(7 downto 0);
signal frame_cnt            : bus008(3 downto 0);
signal count_state          : std_logic;
signal multiframe_count     : std_logic_vector(7 downto 0);
signal multiframe_position  : std_logic;
signal multiframe_prev      : std_logic;
signal multiframe_mark      : std_logic;
signal rx_valid_out         : std_logic;
signal tx_data              : std_logic_vector(31 downto 0);
signal tx_char              : std_logic_vector(3 downto 0);
signal sysref_rst           : std_logic;
signal state_flag           : std_logic_vector(1 downto 0);


signal frame_counter        : std_logic_vector(7 downto 0);
signal syncb_r              : std_logic;
signal sysref_r             : std_logic;

--***********************************************************************************
begin
--***********************************************************************************

-------------------------------------------------------------------------------------
-- Register Outputs 
-------------------------------------------------------------------------------------
--process(clk)
--begin
--    if rising_edge(clk) then
        data    <= tx_data;
        k_char  <= tx_char; 
--    end if;
--end process;

-------------------------------------------------------------------------------------
-- State-machine reset 
-------------------------------------------------------------------------------------
--process(clk)
--begin
--    if rising_edge(clk) then
--      jesd_rst <= (not syncb) or rst;
--    end if;
--end process;

--process(clk)
--begin
--    if rising_edge(clk) then
--      syncb_r <= syncb;
--    end if;
--end process;

process(clk)
begin
    if sysref = '1' then
      sysref_r <= '1';
    elsif rising_edge(clk) then
      sysref_r <= '0';
    end if;
end process;


process(clk)
begin
    if syncb = '1' then
      syncb_r <= '1';
    elsif rising_edge(clk) then
      syncb_r <= '0';
    end if;
end process;

--
--process(clk, sysref)
--begin
--   if sysref = '1' then
--      jesd_rst  <= '1';
--     
--   elsif rising_edge(clk) then
--      jesd_rst  <= rst and syncb_r;
--   end if;
--end process;

-- OG
--process(clk, sysref)
--begin
--   if sysref = '1' then
--      jesd_rst  <= '1';
--   elsif rising_edge(clk) then
--      jesd_rst  <= rst and (not syncb);
--   end if;
--end process;


--process(clk, sysref_r)
--begin
--   if sysref_r = '1' then
--      jesd_rst  <= '1';
--   elsif rising_edge(clk) then
--      jesd_rst  <= rst and (not syncb_r);
--   end if;
--end process;

-- syncb: '1' = send data, '0' send = bcbcbc
process(clk)
begin
   if rising_edge(clk) then
      jesd_rst  <= rst or (not syncb_r);
   end if;
end process;

-------------------------------------------------------------------------------------
-- Frame Counter
-------------------------------------------------------------------------------------
process(clk, sysref_r)
begin
  if rising_edge(clk) then
    if sysref_r = '1' then
        frame_count         <= (others=>'0');
        multiframe_mark <= '0';
        multiframe_prev     <= '0';
        multiframe_position <= '0';
        multiframe_count    <= (others=>'0');
        frame_counter       <= (others=>'0');
  --  elsif rising_edge(clk) then
    else
        if frame_counter = K - 1 then  --K
            frame_counter <= (others=>'0');
        else
            frame_counter <= frame_counter + 1;
        end if;

        -- tells me when the next multiframe is starting
        if frame_counter = K - 2  then  -- 1E
            multiframe_position <= '1';
        else
            multiframe_position <= '0';
        end if;

        if frame_counter = K-3 then --1D
            multiframe_mark <= '1';
        else
            multiframe_mark <= '0';
        end if;
        -- tells me when the last frame is starting
        if frame_counter = K-4 then --1C
            multiframe_prev <= '1';
        else
            multiframe_prev <= '0';
        end if;

         if frame_count < K - OCTETS then
            frame_count    <= frame_count + OCTETS; 
         else
            frame_count    <=  (others=>'0');
         end if;
    end if;
  end if;
end process;


frame_cnt(0) <= byte_count + 0; 
frame_cnt(1) <= byte_count + 1; 
frame_cnt(2) <= byte_count + 2; 
frame_cnt(3) <= byte_count + 3; 

process(clk, sysref_r)
begin
    if rising_edge(clk) then
        if sysref_r = '1' then
            byte_count  <= (others=>'0');
            count_state <= '0';
        else
            case count_state is
                  when '0' =>
                      byte_count <= (others=>'0');
                      if multiframe_mark = '1' and  jesd_rst = '0' then
                          count_state <= '1';
                      end if;
                  when '1' =>
                       byte_count <= byte_count + OCTETS;
                  when others =>
                    byte_count  <= (others=>'0');
                    count_state <= '0'; 
            end case;
        end if;
    end if;
end process;

-------------------------------------------------------------------------------------
-- code group synchronization state machine
-------------------------------------------------------------------------------------
process(clk, jesd_rst)
begin
    if rising_edge(clk) then

        if jesd_rst = '1' then
            jesd_state  <= JESD_CGS;
            tx_data     <= ALIGN_CHAIN;
            tx_char     <= "1111";
           -- frame_rst   <= '1';
            config_rst  <= '1';
            state_flag <= (others=>'0');
  --      elsif rising_edge(clk) then 
        else          
            case jesd_state is
              
               when JESD_CGS =>
                    jesd_state  <= JESD_ILA0_START;
                    tx_data     <= ALIGN_CHAIN;
                    tx_char     <= "1111";
               when JESD_ILA0_START =>
                    if multiframe_position = '1' then
                        jesd_state  <= JESD_ILA0;
                        tx_data     <= frame_cnt(3) & frame_cnt(2) & frame_cnt(1) & CHAR_R;
                        tx_char     <= "0001"; 
                        state_flag  <= state_flag + 1;
                    end if;
               when JESD_ILA0 => 
                    if multiframe_prev = '1' then 
                        jesd_state <= JESD_ILA0_END;
                        config_rst <= '0';
                       -- frame_rst  <= '1';
                    end if; 
                   -- frame_rst   <= '0';
                    tx_data     <= frame_cnt(3) & frame_cnt(2) & frame_cnt(1) & frame_cnt(0);
                    tx_char     <= "0000";
               when JESD_ILA0_END =>  
                    tx_data     <= CHAR_A & frame_cnt(2) & frame_cnt(1) & frame_cnt(0);
                    tx_char     <= "1000"; 
                    --frame_rst   <= '0';
                    config_rst  <= '0';

                    if state_flag = 1 then
                        jesd_state  <= JESD_CONFIG_START;
                    elsif state_flag = 2 or state_flag = 3 then 
                        jesd_state  <= JESD_ILA0_START;
                    else
                        jesd_state  <= JESD_DATA0;
                    end if; 
               when JESD_CONFIG_START =>
                    jesd_state <= JESD_CONFIG;
                    tx_data    <= config_data;
                    tx_char    <= "0011";
                    state_flag <= state_flag + 1; 
               when JESD_CONFIG => 
                    if multiframe_prev = '1' then 
                        jesd_state <= JESD_CONFIG_END;
                    end if; 
                    --frame_rst   <= '0';
                    tx_data     <= config_data;
                    tx_char     <= "0000";
               when JESD_CONFIG_END =>  
                    tx_data     <= x"7C" & config_data(23 downto 0);
                    tx_char     <= "1000"; 
                    --frame_rst   <= '0';
                    config_rst  <= '1';
                    jesd_state <= JESD_ILA0_START;
               when JESD_DATA0 =>

                    tx_data   <= data_in;
                    tx_char   <= "0000";
                    jesd_state <= JESD_DATA0;

               when others =>
                    jesd_state  <=  JESD_CGS;
                    tx_data     <= ALIGN_CHAIN;
                    tx_char     <= "1111";
                    --frame_rst   <= '1';
                    config_rst  <= '1';
            end case;
        end if; --end rst
    end if; --end if rising
end process;

-------------------------------------------------------------------------------------
-- Configuration Registers 
-------------------------------------------------------------------------------------
process (clk, config_rst)
begin
    if rising_edge(clk) then
        if config_rst = '1' then
            config_data     <= (others=>'0');
            config_state    <= "000";
        else
            case config_state is
                when "000" =>
                    config_data  <= octet01 &  octet00 &  x"9C1C";  
                    config_state <= "001";
                when "001" =>
                    config_data <= octet05 &  octet04 & octet03 & octet02;  
                    config_state <= "010";
                when "010" =>
                    config_data <= octet09 &  octet08 & octet07 & octet06;
                    config_state <= "011";
                when "011" =>
                    config_data <= octet13 &  octet12 & octet11 & octet10;
                    config_state <= "100";
                when "100" =>
                    config_data <=  frame_cnt(3) & frame_cnt(2) & frame_cnt(1) & frame_cnt(0);
                    config_state <= "100";
                when others =>
                    config_data <= (others=>'0');
            end case;
        end if;
    end if;
end process;


--***********************************************************************************
end architecture Behavioral;
--***********************************************************************************





