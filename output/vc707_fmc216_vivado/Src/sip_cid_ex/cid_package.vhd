--------------------------------------------------------------------------------
-- specify libraries.
--------------------------------------------------------------------------------

library  ieee;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_misc.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_1164.all;

--------------------------------------------------------------------------------
-- entity declaration
-------------------------------------------------------------------------------
package cid_package  is

type cid_register_type is array(natural range <>) of std_logic_vector(31 downto 0);

constant nb_cid_registers     :integer := 289;

constant cid_registers :cid_register_type(0 to nb_cid_registers-1):=(
-- REG0 : constellationid<<16|nbrstar
x"020F0006",
-- REG1 : software build code
x"64B692B9",
-- REG2 : firmware build code
x"00000000",
-- REG3 : VersionHI<<8|VersionLO
x"00000102",
-- REG4..6 : star 'sip_cid_ex' {BaseAddress, EndAddress, StarId<<16|StarVersion}
x"00002000",
x"000023FF",
x"01010100",
-- REG7..9 : star 'sip_i2c_master' {BaseAddress, EndAddress, StarId<<16|StarVersion}
x"00002400",
x"000123FF",
x"00050101",
-- REG10..12 : star 'sip_cmd12_mux' {BaseAddress, EndAddress, StarId<<16|StarVersion}
x"00000000",
x"00000000",
x"00180100",
-- REG13..15 : star 'sip_vc707_mac_engine_sgmii' {BaseAddress, EndAddress, StarId<<16|StarVersion}
x"00000000",
x"00000000",
x"00880100",
-- REG16..18 : star 'sip_fmc216_8lane' {BaseAddress, EndAddress, StarId<<16|StarVersion}
x"00012400",
x"000143FE",
x"01370100",
-- REG19..21 : star 'sip_router_s1d16' {BaseAddress, EndAddress, StarId<<16|StarVersion}
x"000143FF",
x"00014402",
x"00810100",
-- REG22 : Star Indexes {sip_vc707_mac_engine_sgmii<<24|sip_cmd12_mux<<16|sip_i2c_master<<8|sip_cid_ex<<0}
x"00000000",
-- REG23 : Star Indexes {sip_router_s1d16<<8|sip_fmc216_8lane<<0}
x"00000000",
-- REG24..26 : Board type: {StrSize, ASCII String...}
x"00000005",
x"30374356",
x"00000037",
-- REG27..32 : FPGA type: {StrSize, ASCII String...}
x"00000012",
x"56374358",
x"35383458",
x"46322D54",
x"37314746",
x"00003136",
-- REG33..36 : Capability of star 'sip_cid_ex' {NbrExtRegs<<24|NbrBasicRegs<<16|StarId, BasicRegs..., ExtRegs...}
x"01030101",
x"00000000",
x"00000000",
x"00000000",
-- REG37..40 : Capability of star 'sip_cmd12_mux' {NbrExtRegs<<24|NbrBasicRegs<<16|StarId, BasicRegs..., ExtRegs...}
x"01030018",
x"00000000",
x"00000000",
x"00000000",
-- REG41..44 : Capability of star 'sip_fmc216_8lane' {NbrExtRegs<<24|NbrBasicRegs<<16|StarId, BasicRegs..., ExtRegs...}
x"01030137",
x"00100006",
x"00080001",
x"0005000A",
-- REG45..48 : Capability of star 'sip_i2c_master' {NbrExtRegs<<24|NbrBasicRegs<<16|StarId, BasicRegs..., ExtRegs...}
x"01030005",
x"0000000E",
x"00000000",
x"00000000",
-- REG49..52 : Capability of star 'sip_router_s1d16' {NbrExtRegs<<24|NbrBasicRegs<<16|StarId, BasicRegs..., ExtRegs...}
x"01030081",
x"10010001",
x"00000000",
x"00000000",
-- REG53..56 : Capability of star 'sip_vc707_mac_engine_sgmii' {NbrExtRegs<<24|NbrBasicRegs<<16|StarId, BasicRegs..., ExtRegs...}
x"01030088",
x"0101000D",
x"00000001",
x"00000000",
-- REG57...  : UNIT TABLE {numberOfUnits<<8|sipCidExVersion}
x"00000300",
-- REG58...  : UNIT 0 {fmcSide<<24|numberOfDatapaths<<8|unitNumber, StarId<<8|StarIndex}
x"FF001000",
x"00008800",
-- REG60..66 : DATAPATH 0 {numberOfStarsCrossed<<16|datapathDir<<15|datapathNumber}
x"00010000",
-- REG61..62 : SEGMENT
x"00000000",
x"00880000",
-- REG63..64 : SEGMENT
x"00810080",
x"00810000",
-- REG65..66 : SEGMENT
x"01370080",
x"00000000",
-- REG67..73 : DATAPATH 1 {numberOfStarsCrossed<<16|datapathDir<<15|datapathNumber}
x"00010001",
-- REG68..69 : SEGMENT
x"00000000",
x"00880000",
-- REG70..71 : SEGMENT
x"00810080",
x"00810001",
-- REG72..73 : SEGMENT
x"01370081",
x"00000000",
-- REG74..80 : DATAPATH 2 {numberOfStarsCrossed<<16|datapathDir<<15|datapathNumber}
x"00010002",
-- REG75..76 : SEGMENT
x"00000000",
x"00880000",
-- REG77..78 : SEGMENT
x"00810080",
x"00810002",
-- REG79..80 : SEGMENT
x"01370082",
x"00000000",
-- REG81..87 : DATAPATH 3 {numberOfStarsCrossed<<16|datapathDir<<15|datapathNumber}
x"00010003",
-- REG82..83 : SEGMENT
x"00000000",
x"00880000",
-- REG84..85 : SEGMENT
x"00810080",
x"00810003",
-- REG86..87 : SEGMENT
x"01370083",
x"00000000",
-- REG88..94 : DATAPATH 4 {numberOfStarsCrossed<<16|datapathDir<<15|datapathNumber}
x"00010004",
-- REG89..90 : SEGMENT
x"00000000",
x"00880000",
-- REG91..92 : SEGMENT
x"00810080",
x"00810004",
-- REG93..94 : SEGMENT
x"01370084",
x"00000000",
-- REG95..101 : DATAPATH 5 {numberOfStarsCrossed<<16|datapathDir<<15|datapathNumber}
x"00010005",
-- REG96..97 : SEGMENT
x"00000000",
x"00880000",
-- REG98..99 : SEGMENT
x"00810080",
x"00810005",
-- REG100..101 : SEGMENT
x"01370085",
x"00000000",
-- REG102..108 : DATAPATH 6 {numberOfStarsCrossed<<16|datapathDir<<15|datapathNumber}
x"00010006",
-- REG103..104 : SEGMENT
x"00000000",
x"00880000",
-- REG105..106 : SEGMENT
x"00810080",
x"00810006",
-- REG107..108 : SEGMENT
x"01370086",
x"00000000",
-- REG109..115 : DATAPATH 7 {numberOfStarsCrossed<<16|datapathDir<<15|datapathNumber}
x"00010007",
-- REG110..111 : SEGMENT
x"00000000",
x"00880000",
-- REG112..113 : SEGMENT
x"00810080",
x"00810007",
-- REG114..115 : SEGMENT
x"01370087",
x"00000000",
-- REG116..122 : DATAPATH 8 {numberOfStarsCrossed<<16|datapathDir<<15|datapathNumber}
x"00010008",
-- REG117..118 : SEGMENT
x"00000000",
x"00880000",
-- REG119..120 : SEGMENT
x"00810080",
x"00810008",
-- REG121..122 : SEGMENT
x"01370088",
x"00000000",
-- REG123..129 : DATAPATH 9 {numberOfStarsCrossed<<16|datapathDir<<15|datapathNumber}
x"00010009",
-- REG124..125 : SEGMENT
x"00000000",
x"00880000",
-- REG126..127 : SEGMENT
x"00810080",
x"00810009",
-- REG128..129 : SEGMENT
x"01370089",
x"00000000",
-- REG130..136 : DATAPATH 10 {numberOfStarsCrossed<<16|datapathDir<<15|datapathNumber}
x"0001000A",
-- REG131..132 : SEGMENT
x"00000000",
x"00880000",
-- REG133..134 : SEGMENT
x"00810080",
x"0081000A",
-- REG135..136 : SEGMENT
x"0137008A",
x"00000000",
-- REG137..143 : DATAPATH 11 {numberOfStarsCrossed<<16|datapathDir<<15|datapathNumber}
x"0001000B",
-- REG138..139 : SEGMENT
x"00000000",
x"00880000",
-- REG140..141 : SEGMENT
x"00810080",
x"0081000B",
-- REG142..143 : SEGMENT
x"0137008B",
x"00000000",
-- REG144..150 : DATAPATH 12 {numberOfStarsCrossed<<16|datapathDir<<15|datapathNumber}
x"0001000C",
-- REG145..146 : SEGMENT
x"00000000",
x"00880000",
-- REG147..148 : SEGMENT
x"00810080",
x"0081000C",
-- REG149..150 : SEGMENT
x"0137008C",
x"00000000",
-- REG151..157 : DATAPATH 13 {numberOfStarsCrossed<<16|datapathDir<<15|datapathNumber}
x"0001000D",
-- REG152..153 : SEGMENT
x"00000000",
x"00880000",
-- REG154..155 : SEGMENT
x"00810080",
x"0081000D",
-- REG156..157 : SEGMENT
x"0137008D",
x"00000000",
-- REG158..164 : DATAPATH 14 {numberOfStarsCrossed<<16|datapathDir<<15|datapathNumber}
x"0001000E",
-- REG159..160 : SEGMENT
x"00000000",
x"00880000",
-- REG161..162 : SEGMENT
x"00810080",
x"0081000E",
-- REG163..164 : SEGMENT
x"0137008E",
x"00000000",
-- REG165..171 : DATAPATH 15 {numberOfStarsCrossed<<16|datapathDir<<15|datapathNumber}
x"0001000F",
-- REG166..167 : SEGMENT
x"00000000",
x"00880000",
-- REG168..169 : SEGMENT
x"00810080",
x"0081000F",
-- REG170..171 : SEGMENT
x"0137008F",
x"00000000",
-- REG172...  : UNIT 1 {fmcSide<<24|numberOfDatapaths<<8|unitNumber, StarId<<8|StarIndex}
x"00001001",
x"00013700",
-- REG174..180 : DATAPATH 0 {numberOfStarsCrossed<<16|datapathDir<<15|datapathNumber}
x"00018000",
-- REG175..176 : SEGMENT
x"00000000",
x"00880000",
-- REG177..178 : SEGMENT
x"00810080",
x"00810000",
-- REG179..180 : SEGMENT
x"01370080",
x"00000000",
-- REG181..187 : DATAPATH 1 {numberOfStarsCrossed<<16|datapathDir<<15|datapathNumber}
x"00018001",
-- REG182..183 : SEGMENT
x"00000000",
x"00880000",
-- REG184..185 : SEGMENT
x"00810080",
x"00810001",
-- REG186..187 : SEGMENT
x"01370081",
x"00000000",
-- REG188..194 : DATAPATH 2 {numberOfStarsCrossed<<16|datapathDir<<15|datapathNumber}
x"00018002",
-- REG189..190 : SEGMENT
x"00000000",
x"00880000",
-- REG191..192 : SEGMENT
x"00810080",
x"00810002",
-- REG193..194 : SEGMENT
x"01370082",
x"00000000",
-- REG195..201 : DATAPATH 3 {numberOfStarsCrossed<<16|datapathDir<<15|datapathNumber}
x"00018003",
-- REG196..197 : SEGMENT
x"00000000",
x"00880000",
-- REG198..199 : SEGMENT
x"00810080",
x"00810003",
-- REG200..201 : SEGMENT
x"01370083",
x"00000000",
-- REG202..208 : DATAPATH 4 {numberOfStarsCrossed<<16|datapathDir<<15|datapathNumber}
x"00018004",
-- REG203..204 : SEGMENT
x"00000000",
x"00880000",
-- REG205..206 : SEGMENT
x"00810080",
x"00810004",
-- REG207..208 : SEGMENT
x"01370084",
x"00000000",
-- REG209..215 : DATAPATH 5 {numberOfStarsCrossed<<16|datapathDir<<15|datapathNumber}
x"00018005",
-- REG210..211 : SEGMENT
x"00000000",
x"00880000",
-- REG212..213 : SEGMENT
x"00810080",
x"00810005",
-- REG214..215 : SEGMENT
x"01370085",
x"00000000",
-- REG216..222 : DATAPATH 6 {numberOfStarsCrossed<<16|datapathDir<<15|datapathNumber}
x"00018006",
-- REG217..218 : SEGMENT
x"00000000",
x"00880000",
-- REG219..220 : SEGMENT
x"00810080",
x"00810006",
-- REG221..222 : SEGMENT
x"01370086",
x"00000000",
-- REG223..229 : DATAPATH 7 {numberOfStarsCrossed<<16|datapathDir<<15|datapathNumber}
x"00018007",
-- REG224..225 : SEGMENT
x"00000000",
x"00880000",
-- REG226..227 : SEGMENT
x"00810080",
x"00810007",
-- REG228..229 : SEGMENT
x"01370087",
x"00000000",
-- REG230..236 : DATAPATH 8 {numberOfStarsCrossed<<16|datapathDir<<15|datapathNumber}
x"00018008",
-- REG231..232 : SEGMENT
x"00000000",
x"00880000",
-- REG233..234 : SEGMENT
x"00810080",
x"00810008",
-- REG235..236 : SEGMENT
x"01370088",
x"00000000",
-- REG237..243 : DATAPATH 9 {numberOfStarsCrossed<<16|datapathDir<<15|datapathNumber}
x"00018009",
-- REG238..239 : SEGMENT
x"00000000",
x"00880000",
-- REG240..241 : SEGMENT
x"00810080",
x"00810009",
-- REG242..243 : SEGMENT
x"01370089",
x"00000000",
-- REG244..250 : DATAPATH 10 {numberOfStarsCrossed<<16|datapathDir<<15|datapathNumber}
x"0001800A",
-- REG245..246 : SEGMENT
x"00000000",
x"00880000",
-- REG247..248 : SEGMENT
x"00810080",
x"0081000A",
-- REG249..250 : SEGMENT
x"0137008A",
x"00000000",
-- REG251..257 : DATAPATH 11 {numberOfStarsCrossed<<16|datapathDir<<15|datapathNumber}
x"0001800B",
-- REG252..253 : SEGMENT
x"00000000",
x"00880000",
-- REG254..255 : SEGMENT
x"00810080",
x"0081000B",
-- REG256..257 : SEGMENT
x"0137008B",
x"00000000",
-- REG258..264 : DATAPATH 12 {numberOfStarsCrossed<<16|datapathDir<<15|datapathNumber}
x"0001800C",
-- REG259..260 : SEGMENT
x"00000000",
x"00880000",
-- REG261..262 : SEGMENT
x"00810080",
x"0081000C",
-- REG263..264 : SEGMENT
x"0137008C",
x"00000000",
-- REG265..271 : DATAPATH 13 {numberOfStarsCrossed<<16|datapathDir<<15|datapathNumber}
x"0001800D",
-- REG266..267 : SEGMENT
x"00000000",
x"00880000",
-- REG268..269 : SEGMENT
x"00810080",
x"0081000D",
-- REG270..271 : SEGMENT
x"0137008D",
x"00000000",
-- REG272..278 : DATAPATH 14 {numberOfStarsCrossed<<16|datapathDir<<15|datapathNumber}
x"0001800E",
-- REG273..274 : SEGMENT
x"00000000",
x"00880000",
-- REG275..276 : SEGMENT
x"00810080",
x"0081000E",
-- REG277..278 : SEGMENT
x"0137008E",
x"00000000",
-- REG279..285 : DATAPATH 15 {numberOfStarsCrossed<<16|datapathDir<<15|datapathNumber}
x"0001800F",
-- REG280..281 : SEGMENT
x"00000000",
x"00880000",
-- REG282..283 : SEGMENT
x"00810080",
x"0081000F",
-- REG284..285 : SEGMENT
x"0137008F",
x"00000000",
-- REG286...  : UNIT 4 {fmcSide<<24|numberOfDatapaths<<8|unitNumber, StarId<<8|StarIndex}
x"FF000004",
x"00000500",
-- REG288...  : OPTIONS0 {(Write Ack Supported & 1) << 0}
x"00000001"
);

end cid_package;

