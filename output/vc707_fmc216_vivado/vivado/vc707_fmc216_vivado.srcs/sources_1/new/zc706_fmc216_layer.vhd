----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.10.2023 16:41:03
-- Design Name: 
-- Module Name: zc706_fmc216_layer - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library ieee;
use ieee.std_logic_1164.all ;
use ieee.std_logic_arith.all ;
use ieee.std_logic_unsigned.all ;
use ieee.std_logic_misc.all ;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity zc706_fmc216_layer is
    port (
        --STAR sip_i2c_master, ID=0 (ext_i2c)
           i2c_scl_0                               : inout std_logic;
           i2c_sda_0                               : inout std_logic;
        
        --STAR sip_vc707_mac_engine_sgmii, ID=0 (ext_mac_engine_sgmii)
        --    cpu_reset_0                             : in    std_logic;
           setup_end                               : in    std_logic;
           sysclk_p_0                              : in    std_logic;
           sysclk_n_0                              : in    std_logic;
           gpio_led_0                              : out   std_logic_vector(2 downto 0);
        --    phy_reset_l_0                           : out   std_logic;
        --    phy_mdc_0                               : out   std_logic;
        --    phy_mdio_0                              : inout std_logic;
        --    sgmii_refclk_p_0                        : in    std_logic;
        --    sgmii_refclk_n_0                        : in    std_logic;
        --    sgmii_tx_p_0                            : out   std_logic;
        --    sgmii_tx_n_0                            : out   std_logic;
        --    sgmii_rx_p_0                            : in    std_logic;
        --    sgmii_rx_n_0                            : in    std_logic;
        
        --STAR sip_fmc216_8lane, ID=0 (ext_fmc216_8lane)
           dac_syncb_n_0                           : in    std_logic_vector(3 downto 0);
           dac_syncb_p_0                           : in    std_logic_vector(3 downto 0);
           ext_trigger_n_0                         : in    std_logic;
           ext_trigger_p_0                         : in    std_logic;
           lmk_sync_0                              : out   std_logic;
           lmk_sysref_n_0                          : in    std_logic;
           lmk_sysref_p_0                          : in    std_logic;
        
           lmkclk_n_0                              : in    std_logic;
           lmkclk_p_0                              : in    std_logic;
           
        --    pg_m2c_0                                : in    std_logic; -- connectados ao gpio
        --    prsnt_m2c_l_0                           : in    std_logic; -- connectados ao gpio
           refclk_n_0                              : in    std_logic_vector(1 downto 0);
           refclk_p_0                              : in    std_logic_vector(1 downto 0);
           serdin_n_0                              : in    std_logic_vector(7 downto 0);
           serdin_p_0                              : in    std_logic_vector(7 downto 0);
           serdout_n_0                             : out   std_logic_vector(7 downto 0);
           serdout_p_0                             : out   std_logic_vector(7 downto 0);
           trigger_out_0                           : out   std_logic;

           -- Zynq connections
           DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
           DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
           DDR_cas_n : inout STD_LOGIC;
           DDR_ck_n : inout STD_LOGIC;
           DDR_ck_p : inout STD_LOGIC;
           DDR_cke : inout STD_LOGIC;
           DDR_cs_n : inout STD_LOGIC;
           DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
           DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
           DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
           DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
           DDR_odt : inout STD_LOGIC;
           DDR_ras_n : inout STD_LOGIC;
           DDR_reset_n : inout STD_LOGIC;
           DDR_we_n : inout STD_LOGIC;
           FIXED_IO_ddr_vrn : inout STD_LOGIC;
           FIXED_IO_ddr_vrp : inout STD_LOGIC;
           FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
           FIXED_IO_ps_clk : inout STD_LOGIC;
           FIXED_IO_ps_porb : inout STD_LOGIC;
           FIXED_IO_ps_srstb : inout STD_LOGIC;

           --pinos gpio que dão informação do estado do pg e prsnt
           gpio_2_pins_tri_io : inout STD_LOGIC_VECTOR( 1 downto 0 )


           );
end zc706_fmc216_layer;

architecture Behavioral of zc706_fmc216_layer is

    signal cmdclk           :       std_logic;
    signal locked_pll       :       std_logic := '0';
    signal rst              :       std_logic := '1';
    signal counter          :       integer range 0 to 10 := 0;


    --give values to unceonnected pins
    signal phy_reset_l_0          : std_logic := '0';
    signal phy_mdc_0              : std_logic := '0';
    signal phy_mdio_0             : std_logic := '0';
    signal sgmii_refclk_p_0       : std_logic := '0';
    signal sgmii_refclk_n_0       : std_logic := '0';
    signal sgmii_tx_p_0           : std_logic := '0';
    signal sgmii_tx_n_0           : std_logic := '0';
    signal sgmii_rx_p_0           : std_logic := '0';
    signal sgmii_rx_n_0           : std_logic := '0';
    
    signal pg_m2c_0               : std_logic := '1';
    signal prsnt_m2c_l_0          : std_logic := '1';
    signal gpio_top_out           : std_logic_vector(1 downto 0);
    
    signal i_slv_reg2_0           : std_logic_vector(31 downto 0) := (others => '0');
    signal i_slv_reg3_0           : std_logic_vector(31 downto 0) := (others => '0');
    signal o_read_complete_reg2_0 : std_logic;
    signal o_read_complete_reg3_0 : std_logic;
    signal o_slv_reg0_0           : std_logic_vector(31 downto 0);
    signal o_slv_reg1_0           : std_logic_vector(31 downto 0);
    signal o_slv_reg4_0           : std_logic_vector(31 downto 0);
    signal o_write_complete_reg0_0: std_logic;
    signal o_write_complete_reg1_0: std_logic;
    signal user_wdone_interrupt_0 : std_logic;
    signal mac_engine_wstart_0     :   STD_LOGIC :='0';
    signal mac_engine_rack_0       :   STD_LOGIC := '0' ;
    signal mac_engine_wack_0       :   STD_LOGIC :='0' ;

    signal write_DAC_start :  std_logic := '0';
    signal write_DAC_end   :  std_logic := '0';  

begin

    vc707_fmc216_viv_inst:
    entity work.vc707_fmc216_vivado
    port map(
        
        i2c_scl_0           =>   i2c_scl_0        ,          
        i2c_sda_0           =>   i2c_sda_0        ,          
        cpu_reset_0         =>   rst              ,          
        -- sysclk_p_0          =>   open       ,          
        -- sysclk_n_0          =>   open       ,          
        gpio_led_0          =>   open             ,          
        phy_reset_l_0       =>   phy_reset_l_0    ,          
        phy_mdc_0           =>   phy_mdc_0        ,          
        phy_mdio_0          =>   phy_mdio_0       ,          
        sgmii_refclk_p_0    =>   sgmii_refclk_p_0 ,          
        sgmii_refclk_n_0    =>   sgmii_refclk_n_0 ,          
        sgmii_tx_p_0        =>   sgmii_tx_p_0     ,          
        sgmii_tx_n_0        =>   sgmii_tx_n_0     ,          
        sgmii_rx_p_0        =>   sgmii_rx_p_0     ,          
        sgmii_rx_n_0        =>   sgmii_rx_n_0     ,          
        dac_syncb_n_0       =>   dac_syncb_n_0    ,          
        dac_syncb_p_0       =>   dac_syncb_p_0    ,          
        ext_trigger_n_0     =>   ext_trigger_n_0  ,          
        ext_trigger_p_0     =>   ext_trigger_p_0  ,          
        lmk_sync_0          =>   lmk_sync_0       ,          
        lmk_sysref_n_0      =>   lmk_sysref_n_0   ,          
        lmk_sysref_p_0      =>   lmk_sysref_p_0   ,          
        lmkclk_n_0          =>   lmkclk_n_0       ,          
        lmkclk_p_0          =>   lmkclk_p_0       ,          
        pg_m2c_0            =>   pg_m2c_0         ,          
        prsnt_m2c_l_0       =>   prsnt_m2c_l_0    ,          
        refclk_n_0          =>   refclk_n_0       ,          
        refclk_p_0          =>   refclk_p_0       ,          
        serdin_n_0          =>   serdin_n_0       ,          
        serdin_p_0          =>   serdin_p_0       ,          
        serdout_n_0         =>   serdout_n_0      ,          
        serdout_p_0         =>   serdout_p_0      ,          
        trigger_out_0       =>   trigger_out_0  ,

        write_DAC_end => write_DAC_end,
        write_DAC_start => write_DAC_start,

        setup_end => '1',
        -- zc706_usr_clk => cmdclk --< command clock
        clk_out_wizz_125   =>   cmdclk,  
        locked_pll_wizz   =>   locked_pll ,
        
        i_slv_reg2_0            => i_slv_reg2_0            ,
        i_slv_reg3_0            => i_slv_reg3_0            ,
        mac_engine_rack_0       => mac_engine_rack_0       ,
        mac_engine_wack_0       => mac_engine_wack_0       ,
        mac_engine_wstart_0     => mac_engine_wstart_0     ,
        o_read_complete_reg2_0  => o_read_complete_reg2_0  ,
        o_read_complete_reg3_0  => o_read_complete_reg3_0  ,
        o_slv_reg0_0            => o_slv_reg0_0            ,
        o_slv_reg1_0            => o_slv_reg1_0            ,
        o_slv_reg4_0            => o_slv_reg4_0            ,
        o_write_complete_reg0_0 => o_write_complete_reg0_0 ,
        o_write_complete_reg1_0 => o_write_complete_reg1_0 ,
        user_wdone_interrupt_0  => user_wdone_interrupt_0  

        );


    zynq_inst : entity work.processing_system_wrapper
    port map (
        DDR_addr(14 downto 0) => DDR_addr(14 downto 0),
        DDR_ba(2 downto 0) => DDR_ba(2 downto 0),
        DDR_cas_n => DDR_cas_n,
        DDR_ck_n => DDR_ck_n,
        DDR_ck_p => DDR_ck_p,
        DDR_cke => DDR_cke,
        DDR_cs_n => DDR_cs_n,
        DDR_dm(3 downto 0) => DDR_dm(3 downto 0),
        DDR_dq(31 downto 0) => DDR_dq(31 downto 0),
        DDR_dqs_n(3 downto 0) => DDR_dqs_n(3 downto 0),
        DDR_dqs_p(3 downto 0) => DDR_dqs_p(3 downto 0),
        DDR_odt => DDR_odt,
        DDR_ras_n => DDR_ras_n,
        DDR_reset_n => DDR_reset_n,
        DDR_we_n => DDR_we_n,
        FIXED_IO_ddr_vrn => FIXED_IO_ddr_vrn,
        FIXED_IO_ddr_vrp => FIXED_IO_ddr_vrp,
        FIXED_IO_mio(53 downto 0) => FIXED_IO_mio(53 downto 0),
        FIXED_IO_ps_clk => FIXED_IO_ps_clk,
        FIXED_IO_ps_porb => FIXED_IO_ps_porb,
        FIXED_IO_ps_srstb => FIXED_IO_ps_srstb,

        dac_write_end_tri_i(0) => write_DAC_end,
        dac_write_start_tri_o(0) => write_DAC_start,

        gpio_2_pins_tri_io( 1 downto 0 ) => gpio_2_pins_tri_io( 1 downto 0 ),
        
        gpio_2_pins_out(1 downto 0)  =>  gpio_top_out(1 downto 0), 

        CLK_IN1_D_0_clk_p => sysclk_p_0 ,
        CLK_IN1_D_0_clk_n => sysclk_n_0 , 
        
        clk_out1_0 => cmdclk ,
        locked_0 => locked_pll,
        reset_0 => '0',

        i_slv_reg2_0            => i_slv_reg2_0            ,
        i_slv_reg3_0            => i_slv_reg3_0            ,
        mac_engine_rack_0       => mac_engine_rack_0       ,
        mac_engine_wack_0       => mac_engine_wack_0       ,
        mac_engine_wstart_0     => mac_engine_wstart_0     ,
        o_read_complete_reg2_0  => o_read_complete_reg2_0  ,
        o_read_complete_reg3_0  => o_read_complete_reg3_0  ,
        o_slv_reg0_0            => o_slv_reg0_0            ,
        o_slv_reg1_0            => o_slv_reg1_0            ,
        o_slv_reg4_0            => o_slv_reg4_0            ,
        o_write_complete_reg0_0 => o_write_complete_reg0_0 ,
        o_write_complete_reg1_0 => o_write_complete_reg1_0 ,
        user_wdone_interrupt_0  => user_wdone_interrupt_0     
      );


    gpio_led_0(0) <= setup_end;

    gpio_led_0(1) <=prsnt_m2c_l_0;
    gpio_led_0(2) <= pg_m2c_0;


    prsnt_m2c_l_0 <= gpio_top_out(0);--gpio_2_pins_tri_io(0);''
    pg_m2c_0 <= gpio_top_out(1);--gpio_2_pins_tri_io(1);



end Behavioral;
