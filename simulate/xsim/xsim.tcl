################################################################################
# This Tcl script is meant to run from the Tcl Console in VIVADO after StellarIP
# generated the VIVADO project. This Tcl script will prepare to project for
# simulation in XSIM. Run the following command from the Tcl console:
#
#  source ../../../simulate/xsim/xsim.tcl
#
# Note: You must be in the same directory as the .xpr file
# 
#  cd [get_property DIRECTORY [current_project]]
#
################################################################################

################################################################################
# Helper functions
################################################################################
# This function determine the path to a specified file
proc get_path {} {
    set file_path [get_files -filter {NAME =~ *fmc216.vhd}] 
    set first [string first "/star_lib" $file_path]
    set path [string range $file_path 0 $first]
    return "${path}star_lib/"
}

# This function determines if the "Do Not Copy" was used in StellarIP
proc doNotCopy {} {
    if {[string compare -nocase [get_files -filter {NAME =~ *star_lib*}] "*star_lib*"] == 1} {
       return 1; 
    } else {
       return 0;
    }
}

################################################################################
# Global variables
################################################################################
set PROJECT [get_project]
set STAR_LIB [get_path];
puts $STAR_LIB

################################################################################
# VC707 FMC216
################################################################################
set file "../../../simulate/tb_fmc216.vhd"
add_files $file
set_property USED_IN_SYNTHESIS false [get_files $file]

add_files -fileset sim_1 ../../../simulate/xsim/sip_cmd.sip
add_files -fileset sim_1 ../../../simulate/xsim/input.txt

set files {
    ../../../simulate/vhdl/xcvr_wrapper_emu.vhd
    ../../../simulate/vhdl/div_clock.vhd
    ../../../simulate/vhdl/sip_vc707_mac_engine_sgmii_emu/sip_vc707_mac_engine_sgmii_emu.vhd
    ../../../simulate/vhdl/sip_vc707_mac_engine_sgmii_emu/std_logic_textio.vhd
    ../../../simulate/vhdl/sip_vc707_mac_engine_sgmii_emu/txt_util.vhd
}

foreach sim_file $files {
	add_files $sim_file;
	set_property used_in_synthesis false [get_files  $sim_file];
}

if {[doNotCopy] == 1} {
     set files [list \
         $STAR_LIB/sip_vc707_mac_engine_sgmii/sip_files/sip_vc707_mac_engine_sgmii.vhd \
         $STAR_LIB/sip_vc707_mac_engine_sgmii/vhdl/v7/vivado/mac_engine.vhd \
         $STAR_LIB/sip_vc707_mac_engine_sgmii/vhdl/brd_packet_engine.vhd \
         $STAR_LIB/sip_vc707_mac_engine_sgmii/vhdl/ge_mac_stream.vhd \
         $STAR_LIB/sip_vc707_mac_engine_sgmii/vhdl/eth_tx_crc.v \
         $STAR_LIB/sip_vc707_mac_engine_sgmii/vhdl/brd_clocks.vhd \
         $STAR_LIB/sip_vc707_mac_engine_sgmii/vhdl/eth_rx_stream_buf.vhd \
         $STAR_LIB/sip_vc707_mac_engine_sgmii/vhdl/eth_rx_crc.v \
         $STAR_LIB/sip_vc707_mac_engine_sgmii/vhdl/gmii_eth_rx_stream.vhd \
         $STAR_LIB/sip_vc707_mac_engine_sgmii/vhdl/crc32.v \
         $STAR_LIB/sip_vc707_mac_engine_sgmii/vhdl/eth_filter.vhd \
         $STAR_LIB/sip_vc707_mac_engine_sgmii/vhdl/eth_mdio.vhd \
         $STAR_LIB/sip_vc707_mac_engine_sgmii/vhdl/v7/vivado/gig_eth_gt_common.vhd \
         $STAR_LIB/sip_vc707_mac_engine_sgmii/vhdl/v7/gmii_eth_tx_stream.vhd \
         $STAR_LIB/sip_vc707_mac_engine_sgmii/vhdl/rst_gen.vhd \
         $STAR_LIB/sip_fmc216_8lane/vhdl/xcvr_wrapper.vhd \
        ./vc707_fmc216_vivado.srcs/sources_1/ip/afifo/afifo.xci \
        ./vc707_fmc216_vivado.srcs/sources_1/ip/fifo_64_to_8/fifo_64_to_8.xci \
        ./vc707_fmc216_vivado.srcs/sources_1/ip/gig_ethernet_pcs_pma_1/gig_ethernet_pcs_pma_1.xci \
        ./vc707_fmc216_vivado.srcs/sources_1/ip/pll0/pll0.xci \
    ]
} else {
    set files {
        "../Src/sip_vc707_mac_engine_sgmii/sip_vc707_mac_engine_sgmii.vhd" 
        "../Src/sip_vc707_mac_engine_sgmii/mac_engine.vhd"
        "../Src/sip_vc707_mac_engine_sgmii/brd_packet_engine.vhd"
        "../Src/sip_vc707_mac_engine_sgmii/ge_mac_stream.vhd"
        "../Src/sip_vc707_mac_engine_sgmii/eth_tx_crc.v"
        "../Src/sip_vc707_mac_engine_sgmii/brd_clocks.vhd"
        "../Src/sip_vc707_mac_engine_sgmii/eth_rx_stream_buf.vhd"
        "../Src/sip_vc707_mac_engine_sgmii/eth_rx_crc.v"
        "../Src/sip_vc707_mac_engine_sgmii/gmii_eth_rx_stream.vhd"
        "../Src/sip_vc707_mac_engine_sgmii/crc32.v"
        "../Src/sip_vc707_mac_engine_sgmii/eth_filter.vhd"
        "../Src/sip_vc707_mac_engine_sgmii/eth_mdio.vhd"
        "../Src/sip_vc707_mac_engine_sgmii/gig_eth_gt_common.vhd"
        "../Src/sip_vc707_mac_engine_sgmii/gmii_eth_tx_stream.vhd"
        "../Src/sip_vc707_mac_engine_sgmii/rst_gen.vhd"
        "./vc707_fmc216_vivado.srcs/sources_1/ip/afifo/afifo.xci"
        "./vc707_fmc216_vivado.srcs/sources_1/ip/fifo_64_to_8/fifo_64_to_8.xci" 
        "./vc707_fmc216_vivado.srcs/sources_1/ip/gig_ethernet_pcs_pma_1/gig_ethernet_pcs_pma_1.xci" 
        "./vc707_fmc216_vivado.srcs/sources_1/ip/pll0/pll0.xci" 
    }
}

set_property USED_IN_SIMULATION false [get_files $files]

