library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity nbit_full_adder is

    generic (n : positive := 2);

    port 
    (
        i_a, i_b    : in std_logic_vector (n-1 downto 0) := (others => '0');
        i_cin       : in std_logic := '0';

        o_sum       : out std_logic_vector (n-1 downto 0) := (others => '0');
        o_cout      : out std_logic := '0';
        o_OV        : out std_logic := '0'                                   -- overflow flag
    );
end nbit_full_adder;

architecture rtl of nbit_full_adder is
    component Full_Adder_1bit
        port
        (
            a, b, cin       : in std_logic;
            sum, cout, ov   : out std_logic
        );
    end component Full_Adder_1bit;

    signal s_tmp_carry : std_logic_vector (n downto 0);
    signal s_ov_array  : std_logic_vector (n-1 downto 0);

begin
    
    s_tmp_carry(0) <= i_cin;
    o_cout <= s_tmp_carry(n);

    GEN_ADDER:
    for i in 0 to n-1 generate 
        ADDX : Full_Adder_1bit port map
            (
                i_a(i),
                i_b(i),
                s_tmp_carry(i),
                o_sum(i),
                s_tmp_carry(i+1),
                s_ov_array(i)
            );
    end generate GEN_ADDER;

    --o_ov <= i_a AND i_b; --AND s_tmp_carry(n);
    o_ov <= '1' when (s_ov_array=(s_ov_array'range=>'1')) else '0';
    
end architecture rtl;