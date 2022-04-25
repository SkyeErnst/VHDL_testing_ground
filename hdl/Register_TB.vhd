library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Register_TB is
    generic (n : positive := 8);
end entity Register_TB;

architecture rtl_tb of Register_TB is

    component GenRegV2 is
        port 
        (
            i_clk           : in std_logic;
            i_rst           : in std_logic; 
            i_enable_in     : in std_logic;
            i_enable_out    : in std_logic;
            b_data          : inout std_logic_vector (n-1 downto 0)
        );
    end component GenRegV2;

    signal tb_clk, tb_rst, tb_enable_in, tb_enable_out : std_logic := '0';
    signal tb_data : std_logic_vector(n-1 downto 0) := (others => 'Z');

begin
    
    DUT:GenRegV2 port map
    (
        i_clk => tb_clk,
        i_rst => tb_rst,
        i_enable_in => tb_enable_in,
        i_enable_out => tb_enable_out,
        b_data => tb_data
    );

    tb_clk <= not tb_clk after 2 ns;
    --tb_rst <= '0', '1' after 320 ns;

    stimulus: 
    process begin
        -- wait to come out of reset
        --wait until (tb_rst = '1');
        tb_rst <= '1';

        wait for 1 ns;
        tb_enable_in <= '0';
        tb_enable_out <= '1';
        tb_data <= "10101010";

        wait for 1 ns;

        --rising edge

        wait for 1 ns;

        tb_enable_in <= '1';
        tb_data <= (others => 'Z');

        wait for 1 ns;

        tb_enable_out <= '0';

        wait for 4 ns;

        tb_enable_out <= '1';

        wait for 500 ps;

        tb_rst <= '0';

        wait for 500 ps;

        tb_rst <= '1';

        wait for 500 ps;

        tb_enable_out <= '0';

        wait for 500 ps;

        wait for 2 ns;

        -- Done
        wait;
    end process stimulus;

end architecture rtl_tb;