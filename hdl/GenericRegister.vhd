library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity GenericRegister is

    generic (n : positive := 8);                                    -- size of register

    port 
    (
        i_clk           : in std_logic := '0';                      -- clock
        i_n_clr         : in std_logic := '1';                      -- async active low clearclear
        i_chip_sel      : in std_logic := '1';                      -- active low chip select
        i_write_enable  : in std_logic := '1';                      -- active low write enable (writes from bus to register)
        i_output_enable : in std_logic := '1';                      -- active low output enable (outputs from register to bus)
        b_data          : inout std_logic_vector(n-1 downto 0);  -- data out port, obeys OE

        o_n_q           : out std_logic_vector(n-1 downto 0);       -- data out inverted, obeys OE
        o_q_direct      : out std_logic_vector(n-1 downto 0)        -- data out port, DOES NOT OBEY OE, will always output
    );
end GenericRegister;

architecture rtl of GenericRegister is

    signal s_reg_latch        : std_logic_vector (n-1 downto 0);

begin

    o_q_direct <= s_reg_latch;

    p_on_clock: process(i_clk, i_n_clr)
    begin
        if i_n_clr = '0' then                                       -- Clear if clear is low
            s_reg_latch <= (others => '0');

        else
            if (rising_edge(i_clk)) then

                if(i_write_enable = '0') then
                    s_reg_latch <= b_data;
                elsif (i_output_enable = '0') then
                    b_data <= s_reg_latch;
                else
                    b_data <= (others => 'Z');

                end if;

            end if;
        end if;
    end process p_on_clock;

end rtl;