-------------------------------------------------------------------------------------
-- FILE NAME : jesd204b_vc707_8lane_dac.vhd
-- AUTHOR    : John Cunningham
-- COMPANY   : AUstind Designwave consultant for 4DSP
-- UNITS     : Entity       - jesd204b_vc707_8lane_dac
--             Architecture - Behavioral
-- LANGUAGE  : VHDL
-- DATE      : AUG 21, 2015
-------------------------------------------------------------------------------------
--
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
Library UNISIM;
    use UNISIM.vcomponents.all;

library xil_defaultlib;
   use xil_defaultlib.types.all; 
-------------------------------------------------------------------------------------
-- ENTITY
-------------------------------------------------------------------------------------
entity jesd204b_vc707_8lane_dac is
port (
  	rst               : in std_logic;
	i_sysref_bufg     : in std_logic;
	i_tx_clk          : in std_logic; 
    o_status          : out std_logic_vector(31 downto 0);
    i_control         : in std_logic_vector(31 downto 0);
	-- dac interface
	i_dac_data0       : in std_logic_vector(15 downto 0);
	i_dac_data1       : in std_logic_vector(15 downto 0);
	i_dac_data2       : in std_logic_vector(15 downto 0);
	i_dac_data3       : in std_logic_vector(15 downto 0);
	i_dac_data4       : in std_logic_vector(15 downto 0);
	i_dac_data5       : in std_logic_vector(15 downto 0);
	i_dac_data6       : in std_logic_vector(15 downto 0);
	i_dac_data7       : in std_logic_vector(15 downto 0);
	i_dac_data8       : in std_logic_vector(15 downto 0);
	i_dac_data9       : in std_logic_vector(15 downto 0);
	i_dac_data10      : in std_logic_vector(15 downto 0);
	i_dac_data11      : in std_logic_vector(15 downto 0);
	i_dac_data12      : in std_logic_vector(15 downto 0);
	i_dac_data13      : in std_logic_vector(15 downto 0);
	i_dac_data14      : in std_logic_vector(15 downto 0);
	i_dac_data15      : in std_logic_vector(15 downto 0);
	i_dac_valid0      : in std_logic;
	i_dac_valid1      : in std_logic;
	i_dac_valid2      : in std_logic;
	i_dac_valid3      : in std_logic;
	i_dac_valid4      : in std_logic;
	i_dac_valid5      : in std_logic;
	i_dac_valid6      : in std_logic;
	i_dac_valid7      : in std_logic;
	i_dac_valid8      : in std_logic;
	i_dac_valid9      : in std_logic;
	i_dac_valid10     : in std_logic;
	i_dac_valid11     : in std_logic;
	i_dac_valid12     : in std_logic;
	i_dac_valid13     : in std_logic;
	i_dac_valid14     : in std_logic;
	i_dac_valid15     : in std_logic;
	-- Transceiver TX Interface
	o_tx_data_in0     : out std_logic_vector(31 downto 0);
	o_tx_data_in1     : out std_logic_vector(31 downto 0);
	o_tx_data_in2     : out std_logic_vector(31 downto 0);
	o_tx_data_in3     : out std_logic_vector(31 downto 0);
	o_tx_data_in4     : out std_logic_vector(31 downto 0);
	o_tx_data_in5     : out std_logic_vector(31 downto 0);
	o_tx_data_in6     : out std_logic_vector(31 downto 0);
	o_tx_data_in7     : out std_logic_vector(31 downto 0);
	o_tx_kchar_in0    : out std_logic_vector(3 downto 0);
	o_tx_kchar_in1    : out std_logic_vector(3 downto 0);
	o_tx_kchar_in2    : out std_logic_vector(3 downto 0);
	o_tx_kchar_in3    : out std_logic_vector(3 downto 0);
	o_tx_kchar_in4    : out std_logic_vector(3 downto 0);
	o_tx_kchar_in5    : out std_logic_vector(3 downto 0);
	o_tx_kchar_in6    : out std_logic_vector(3 downto 0);
	o_tx_kchar_in7    : out std_logic_vector(3 downto 0);
	 --EXT  
	dac_syncb         : in std_logic_vector(3 downto 0)
);
end jesd204b_vc707_8lane_dac;

-------------------------------------------------------------------------------------
-- ARCHITECTURE
-------------------------------------------------------------------------------------
architecture Behavioral of jesd204b_vc707_8lane_dac is


-------------------------------------------------------------------------------------
-- SIGNALS
-------------------------------------------------------------------------------------
constant NB_DAC39J84    : integer := 4;
constant JESD_L         : integer := 2;
constant JESD_M         : integer := 4;
constant JESD_F         : integer := 4;
constant NB_CHANNELS    : integer := NB_DAC39J84*JESD_M;

-------------------------------------------------------------------------------------
-- SIGNALS
-------------------------------------------------------------------------------------
signal dac_data     : bus016(NB_CHANNELS-1 downto 0);
signal dac_valid    : std_logic_vector(NB_CHANNELS-1 downto 0);
signal tx_data      : bus032(7 downto 0);
signal tx_kchar     : bus004(7 downto 0);
signal data_select  : std_logic_vector(1 downto 0);

--***********************************************************************************
begin
--***********************************************************************************
-- DAC Data Interface Mapping
dac_data(0)   <= i_dac_data0;
dac_data(1)   <= i_dac_data1;
dac_data(2)   <= i_dac_data2;
dac_data(3)   <= i_dac_data3;
dac_data(4)   <= i_dac_data4;
dac_data(5)   <= i_dac_data5;
dac_data(6)   <= i_dac_data6;
dac_data(7)   <= i_dac_data7;
dac_data(8)   <= i_dac_data8;
dac_data(9)   <= i_dac_data9;
dac_data(10)  <= i_dac_data10;
dac_data(11)  <= i_dac_data11;
dac_data(12)  <= i_dac_data12;
dac_data(13)  <= i_dac_data13;
dac_data(14)  <= i_dac_data14;
dac_data(15)  <= i_dac_data15;
dac_valid(0)  <= i_dac_valid0;
dac_valid(1)  <= i_dac_valid1;
dac_valid(2)  <= i_dac_valid2;
dac_valid(3)  <= i_dac_valid3;
dac_valid(4)  <= i_dac_valid4;
dac_valid(5)  <= i_dac_valid5;
dac_valid(6)  <= i_dac_valid6;
dac_valid(7)  <= i_dac_valid7;
dac_valid(8)  <= i_dac_valid8;
dac_valid(9)  <= i_dac_valid9;
dac_valid(10) <= i_dac_valid10;
dac_valid(11) <= i_dac_valid11;
dac_valid(12) <= i_dac_valid12;
dac_valid(13) <= i_dac_valid13;
dac_valid(14) <= i_dac_valid14;
dac_valid(15) <= i_dac_valid15;

-- TX Transceiver Interface Mapping
o_tx_data_in0    <= tx_data(0);
o_tx_data_in1    <= tx_data(1);
o_tx_data_in2    <= tx_data(2);
o_tx_data_in3    <= tx_data(3);
o_tx_data_in4    <= tx_data(4);
o_tx_data_in5    <= tx_data(5);
o_tx_data_in6    <= tx_data(6);
o_tx_data_in7    <= tx_data(7);
o_tx_kchar_in0   <= tx_kchar(0);
o_tx_kchar_in1   <= tx_kchar(1);
o_tx_kchar_in2   <= tx_kchar(2);
o_tx_kchar_in3   <= tx_kchar(3);
o_tx_kchar_in4   <= tx_kchar(4);
o_tx_kchar_in5   <= tx_kchar(5);
o_tx_kchar_in6   <= tx_kchar(6);
o_tx_kchar_in7   <= tx_kchar(7);


process(i_tx_clk)
begin
    if rst = '1' then
        data_select <= "00";
    elsif rising_edge(i_tx_clk) then
        data_select <= i_control(5 downto 4);
    end if;
end process;

-------------------------------------------------------------------------------------
-- DAC Wrapper  
-------------------------------------------------------------------------------------
generate_dac_if: 
for i in 0 to NB_DAC39J84-1 generate

    dac_wrapper_inst0:
    entity work.dac_wrapper
    port map (
        -- Command Interface
        rst         => rst,
        dac_clk     => i_tx_clk,
        i_dselect   => data_select,
        --Transceiver Interface
        data_out    => tx_data(2*i+1 downto 2*i),
        kchar_out   => tx_kchar(2*i+1 downto 2*i),
        -- Waveform Interface
        i_dac_data  => dac_data(4*i+3 downto 4*i),
        i_dac_valid => dac_valid(4*i+3 downto 4*i),
        -- External Connections
        i_sysref      => i_sysref_bufg,
        i_dac_syncb => dac_syncb(i)
    );

end generate; 

--***********************************************************************************
end architecture Behavioral;
--***********************************************************************************

