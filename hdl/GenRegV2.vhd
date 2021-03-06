library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity GenRegV2 is

    generic (n : positive := 8);

    port
    (
        i_clk           : in std_logic := '0';
        i_rst           : in std_logic := '1'; 
        i_enable_in     : in std_logic := '1';
        i_enable_out    : in std_logic := '1';
        b_data          : inout std_logic_vector (n-1 downto 0) := (others => 'Z');

        o_direct_out    : out std_logic_vector (n-1 downto 0) := (others =>'0')
    );
end GenRegV2;

architecture rtl of GenRegV2 is
    component one_bit_d_ff
        port 
        (
            i_clk, i_rst, i_enable_in, i_enable_out : in std_logic;
            b_data                                  : inout std_logic;
            o_direct_out                            : out std_logic
        );
    end component;
begin
    GEN_REG:
    for i in 0 to n-1 generate
        REGX : one_bit_d_ff port map
            (i_clk, i_rst, i_enable_in, i_enable_out, b_data(i), o_direct_out(i));
    end generate GEN_REG;

end rtl;