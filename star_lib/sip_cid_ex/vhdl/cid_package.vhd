--------------------------------------------------------------------------------
-- file name : cid.vhd
--
-- author    : e. barhorst
--
-- company   : 4dsp
--
-- item      : number
--
-- units     : entity       -cid
--             arch_itecture - arch_cid
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
-- 0.0    0        19-01-2009        new version
--
----------------------------------------------
--
--------------------------------------------------------------------------------


--------------------------------------------------------------------------------
-- specify libraries.
--------------------------------------------------------------------------------

library  ieee ;
use ieee.std_logic_unsigned.all ;
use ieee.std_logic_misc.all ;
use ieee.std_logic_arith.all ;
use ieee.std_logic_1164.all ;

--------------------------------------------------------------------------------
-- entity declaration
--------------------------------------------------------------------------------
package cid_package  is

type cid_register_type is array(natural range <>) of std_logic_vector(31 downto 0);

constant FW_BUILD             : std_logic_vector(31 downto 0):= conv_std_logic_vector(0,32);
constant SW_BUILD             : std_logic_vector(31 downto 0):= conv_std_logic_vector(0,32);
constant CID_VER_HI           : std_logic_vector(7 downto 0):= conv_std_logic_vector(1,8);
constant CID_VER_LO           : std_logic_vector(7 downto 0):= conv_std_logic_vector(0,8);
constant CID                  : std_logic_vector(15 downto 0):= conv_std_logic_vector(63,16);



constant nb_stars             :integer := 7;
constant nb_cid_registers     :integer := 8+3*nb_stars;



constant cid_registers :cid_register_type(0 to nb_cid_registers-1):=(
(CID & (conv_std_logic_vector(nb_stars,16))),
(SW_BUILD),
(FW_BUILD),
(x"0000" & CID_VER_HI & CID_VER_LO),
(x"00000000"),
(x"00000000"),
(x"00000000"),
(x"00000000"),

(x"00000100"),
(x"00000107"),
(x"00040100"),

(x"00000200"),
(x"0000020A"),
(x"00020100"),

(x"00000300"),
(x"00000301"),
(x"00080100"),

(x"00010000"),
(x"0001FFFF"),
(x"00050100"),

(x"00002000"),
(x"00002010"),
(x"00010100"),

(x"00000000"),
(x"00000000"),
(x"00060100"),

(x"00000000"),
(x"00000000"),
(x"00030100")

);
end cid_package;

