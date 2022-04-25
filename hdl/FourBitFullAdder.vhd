------------------------------------------------------------------
-- FourBitFullAdder.vhd
-- Skye Ernst, Designer
-- Date 4/14/2022
-- Revision 1.0
------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FourBitFullAdder is
  port 
  (
    i_a, i_b    : in std_logic_vector (3 downto 0) := (others => '0');
    i_cin       : in std_logic := '0';
    o_leds      : out std_logic_vector (4 downto 0);
    o_seven_seg : out std_logic_vector (7 downto 0)
  );
end FourBitFullAdder;

architecture behavior of FourBitFullAdder is

component Full_Adder_1bit is
    port (a, b, cin : in std_logic; sum, cout : out std_logic);
end component Full_Adder_1bit;

component seven_seg_decoder is
    port (dcba : in std_logic_vector(3 downto 0); decode : out std_logic_vector(7 downto 0));
end component seven_seg_decoder;

signal s_sums, s_couts  : std_logic_vector (3 downto 0) := (others => '0');

begin

    FA0:Full_Adder_1bit port map 
    (
        a   => i_a(0),
        b   => i_b(0),
        cin => i_cin,
        sum => s_sums(0),
        cout => s_couts(0)
    );

    FA1:Full_Adder_1bit port map 
    (
        a   => i_a(1),
        b   => i_b(1),
        cin => s_couts(0),
        sum => s_sums(1),
        cout => s_couts(1)
    );

    FA2:Full_Adder_1bit port map 
    (
        a   => i_a(2),
        b   => i_b(2),
        cin => s_couts(1),
        sum => s_sums(2),
        cout => s_couts(2)
    );

    FA3:Full_Adder_1bit port map 
    (
        a   => i_a(3),
        b   => i_b(3),
        cin => s_couts(2),
        sum => s_sums(3),
        cout => s_couts(3)
    );

    disp:seven_seg_decoder port map
    (
        dcba => s_sums,
        decode => o_seven_seg
    );

    o_leds(3 downto 0) <= s_sums;
    o_leds(4)   <= s_couts(3);

end behavior ; -- behavior