library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity one_bit_d_ff is
    port
    (
        i_clk           : in std_logic := '0';
        i_rst           : in std_logic := '1'; 
        i_enable_in     : in std_logic := '1';
        i_enable_out    : in std_logic := '1';
        b_data          : inout std_logic := 'Z';

        o_direct_out    : out std_logic := '0'
    );
end one_bit_d_ff;

architecture rtl of one_bit_d_ff is
    signal s_latched_data : std_logic := '0';

begin

    p_on_clock: process(i_clk, i_rst)
    begin
        if (i_rst = '0') then
            s_latched_data <= '0';

        elsif rising_edge(i_clk) then
            if (i_enable_in = '0') then
                s_latched_data <= b_data;

            else
                s_latched_data <= s_latched_data;
                --b_data <= 'Z';

            end if;
            
        elsif falling_edge(i_clk) then
            if (i_enable_out = '0') then
                b_data <= s_latched_data;
            
            elsif (i_enable_out = '1') then
                b_data <= 'Z';

            end if;

        end if;
    end process p_on_clock;

    o_direct_out <= s_latched_data;

end rtl ;