/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// File name        : vc707_fmc216_vivado.h 
// File description : Star's base address definitions header file
//
// Author(s)        : StellarIP (4DSP)
//                  : 
//                  : 
//                  : 
// Modification(s)  : Initial release automatically generated by StellarIP
//                  : 
//                  : 
//                  : 
//
#pragma once


//Definitions start here:
//-----------------------

// Constellation definitions
#define CONSTELLATION_ID          0x020F
#define CONSTELLATION_NBR_STARS   0x0006
#define SOFTWARE_BUILD_CODE       0x64B692B9
#define FIRMWARE_BUILD_CODE       0x00000000
#define CONSTELLATION_VERSION_HI  0x01
#define CONSTELLATION_VERSION_LOW 0x02

// Star addresses definitions
#define SIP_CID_EX_00_BASE_ADDRESS  0x00002000
#define SIP_CID_EX_00_END_ADDRESS   0x000023FF
#define SIP_CID_EX_00_NBR_REGISTERS 0x00000008
#define SIP_CID_EX_00_ID            0x0101
#define SIP_CID_EX_00_VERSION       0x0100

#define SIP_I2C_MASTER_00_BASE_ADDRESS  0x00002400
#define SIP_I2C_MASTER_00_END_ADDRESS   0x000123FF
#define SIP_I2C_MASTER_00_NBR_REGISTERS 0x00010000
#define SIP_I2C_MASTER_00_ID            0x0005
#define SIP_I2C_MASTER_00_VERSION       0x0101

#define SIP_CMD12_MUX_00_BASE_ADDRESS  0x00000000
#define SIP_CMD12_MUX_00_END_ADDRESS   0x00000000
#define SIP_CMD12_MUX_00_NBR_REGISTERS 0x00000000
#define SIP_CMD12_MUX_00_ID            0x0018
#define SIP_CMD12_MUX_00_VERSION       0x0100

#define SIP_VC707_MAC_ENGINE_SGMII_00_BASE_ADDRESS  0x00000000
#define SIP_VC707_MAC_ENGINE_SGMII_00_END_ADDRESS   0x00000000
#define SIP_VC707_MAC_ENGINE_SGMII_00_NBR_REGISTERS 0x00000000
#define SIP_VC707_MAC_ENGINE_SGMII_00_ID            0x0088
#define SIP_VC707_MAC_ENGINE_SGMII_00_VERSION       0x0100

#define SIP_FMC216_8LANE_00_BASE_ADDRESS  0x00012400
#define SIP_FMC216_8LANE_00_END_ADDRESS   0x000143FE
#define SIP_FMC216_8LANE_00_NBR_REGISTERS 0x00001FFF
#define SIP_FMC216_8LANE_00_ID            0x0137
#define SIP_FMC216_8LANE_00_VERSION       0x0100

#define SIP_ROUTER_S1D16_00_BASE_ADDRESS  0x000143FF
#define SIP_ROUTER_S1D16_00_END_ADDRESS   0x00014402
#define SIP_ROUTER_S1D16_00_NBR_REGISTERS 0x00000004
#define SIP_ROUTER_S1D16_00_ID            0x0081
#define SIP_ROUTER_S1D16_00_VERSION       0x0100

// Star Index definitions
#define STAR_INDEXES_START 0x00000016

// Device Info definitions
#define BOARD_TYPE_START   0x00000018
#define FPGA_TYPE_START    0x0000001B

// Capability Register definitions
#define CAPABILITY_REGISTER_START                   0x00000021
#define CAPABILITY_SIP_CID_EX_START                 0x00000021
#define CAPABILITY_SIP_CMD12_MUX_START              0x00000025
#define CAPABILITY_SIP_FMC216_8LANE_START           0x00000029
#define CAPABILITY_SIP_I2C_MASTER_START             0x0000002D
#define CAPABILITY_SIP_ROUTER_S1D16_START           0x00000031
#define CAPABILITY_SIP_VC707_MAC_ENGINE_SGMII_START 0x00000035

// Unit Table definitions
#define UNIT_TABLE_START 0x00000039
#define UNIT_00_START    0x0000003A
#define UNIT_01_START    0x000000AC
#define UNIT_04_START    0x0000011E

