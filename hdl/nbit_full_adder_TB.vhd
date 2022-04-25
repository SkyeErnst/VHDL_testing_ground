library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity nbit_full_adder_TB is
    generic (len : positive := 2);

end entity nbit_full_adder_TB;

architecture tb of nbit_full_adder_TB is
    
    component nbit_full_adder is
        generic (n : positive);
        port
        (
            i_a, i_b    : in std_logic_vector (len-1 downto 0);
            i_cin       : in std_logic;

            o_sum       : out std_logic_vector (len-1 downto 0);
            o_cout      : out std_logic;
            o_OV        : out std_logic
        );
    end component nbit_full_adder;

    signal tb_a, tb_b, tb_sum : std_logic_vector (len-1 downto 0) := (others => '0');
    signal tb_cin, tb_cout, tb_ov : std_logic := '0';

begin

    DUT:nbit_full_adder 
    generic map 
    (
        n => len
    )
    port map
    (
        i_a => tb_a,
        i_b => tb_b,
        i_cin => tb_cin,
        o_sum => tb_sum,
        o_cout => tb_cout,
        o_OV => tb_ov
    );
    
    stimulus:
    process begin
        --1
        tb_a <= "00";
        tb_b <= "00";
        tb_cin <= '0';
        wait for 10 ns;
        assert (tb_sum = "00" AND tb_cout = '0') report "addition error" severity failure;
        assert (tb_ov = '0') report "false positive: overflow" severity failure;

        --2
        tb_a <= "00";
        tb_b <= "01";
        tb_cin <= '0';
        wait for 10 ns;
        assert (tb_sum = "01" AND tb_cout = '0') report "addition error" severity failure;
        assert (tb_ov = '0') report "false positive: overflow" severity failure;

        --3
        tb_a <= "00";
        tb_b <= "10";
        tb_cin <= '0';
        wait for 10 ns;
        assert (tb_sum = "10" AND tb_cout = '0') report "addition error" severity failure;
        assert (tb_ov = '0') report "false positive: overflow" severity failure;

        --4
        tb_a <= "00";
        tb_b <= "11";
        tb_cin <= '0';
        wait for 10 ns;
        assert (tb_sum = "11" AND tb_cout = '0') report "addition error" severity failure;
        assert (tb_ov = '0') report "false positive: overflow" severity failure;

        --5
        tb_a <= "01";
        tb_b <= "00";
        tb_cin <= '0';
        wait for 10 ns;
        assert (tb_sum = "01" AND tb_cout = '0') report "addition error" severity failure;
        assert (tb_ov = '0') report "false positive: overflow" severity failure;

        --6
        tb_a <= "01";
        tb_b <= "01";
        tb_cin <= '0';
        wait for 10 ns;
        assert (tb_sum = "10" AND tb_cout = '0') report "addition error" severity failure;
        assert (tb_ov = '0') report "false positive: overflow" severity failure;

        --7
        tb_a <= "01";
        tb_b <= "10";
        tb_cin <= '0';
        wait for 10 ns;
        assert (tb_sum = "11" AND tb_cout = '0') report "addition error" severity failure;
        assert (tb_ov = '0') report "false positive: overflow" severity failure;

        --8
        tb_a <= "01";
        tb_b <= "11";
        tb_cin <= '0';
        wait for 10 ns;
        assert (tb_sum = "00" AND tb_cout = '1') report "addition error" severity failure;
        assert (tb_ov = '0') report "false positive: overflow" severity failure;

        --9
        tb_a <= "10";
        tb_b <= "00";
        tb_cin <= '0';
        wait for 10 ns;
        assert (tb_sum = "10" AND tb_cout = '0') report "addition error" severity failure;
        assert (tb_ov = '0') report "false positive: overflow" severity failure;

        --10
        tb_a <= "10";
        tb_b <= "01";
        tb_cin <= '0';
        wait for 10 ns;
        assert (tb_sum = "11" AND tb_cout = '0') report "addition error" severity failure;
        assert (tb_ov = '0') report "false positive: overflow" severity failure;

        --11
        tb_a <= "10";
        tb_b <= "10";
        tb_cin <= '0';
        wait for 10 ns;
        assert (tb_sum = "00" AND tb_cout = '1') report "addition error" severity failure;
        assert (tb_ov = '0') report "false positive: overflow" severity failure;

        --12
        tb_a <= "10";
        tb_b <= "11";
        tb_cin <= '0';
        wait for 10 ns;
        assert (tb_sum = "01" AND tb_cout = '1') report "addition error" severity failure;
        assert (tb_ov = '0') report "false positive: overflow" severity failure;

        --13
        tb_a <= "11";
        tb_b <= "00";
        tb_cin <= '0';
        wait for 10 ns;
        assert (tb_sum = "11" AND tb_cout = '0') report "addition error" severity failure;
        assert (tb_ov = '0') report "false positive: overflow" severity failure;

        --14
        tb_a <= "11";
        tb_b <= "01";
        tb_cin <= '0';
        wait for 10 ns;
        assert (tb_sum = "00" AND tb_cout = '1') report "addition error" severity failure;
        assert (tb_ov = '0') report "false positive: overflow" severity failure;

        --15
        tb_a <= "11";
        tb_b <= "10";
        tb_cin <= '0';
        wait for 10 ns;
        assert (tb_sum = "01" AND tb_cout = '1') report "addition error" severity failure;
        assert (tb_ov = '0') report "false positive: overflow" severity failure;

        --16
        tb_a <= "11";
        tb_b <= "11";
        tb_cin <= '0';
        wait for 10 ns;
        assert (tb_sum = "10" AND tb_cout = '1') report "addition error" severity failure;
        assert (tb_ov = '0') report "false positive: overflow" severity failure;
        
        --17
        tb_a <= "00";
        tb_b <= "00";
        tb_cin <= '1';
        wait for 10 ns;
        assert (tb_sum = "01" AND tb_cout = '0') report "addition error" severity failure;
        assert (tb_ov = '0') report "false positive: overflow" severity failure;

        --18
        tb_a <= "00";
        tb_b <= "01";
        tb_cin <= '1';
        wait for 10 ns;
        assert (tb_sum = "10" AND tb_cout = '0') report "addition error" severity failure;
        assert (tb_ov = '0') report "false positive: overflow" severity failure;

        --19
        tb_a <= "00";
        tb_b <= "10";
        tb_cin <= '1';
        wait for 10 ns;
        assert (tb_sum = "11" AND tb_cout = '0') report "addition error" severity failure;
        assert (tb_ov = '0') report "false positive: overflow" severity failure;

        --20
        tb_a <= "00";
        tb_b <= "11";
        tb_cin <= '1';
        wait for 10 ns;
        assert (tb_sum = "00" AND tb_cout = '1') report "addition error" severity failure;
        assert (tb_ov = '0') report "false positive: overflow" severity failure;

        --21
        tb_a <= "01";
        tb_b <= "00";
        tb_cin <= '1';
        wait for 10 ns;
        assert (tb_sum = "10" AND tb_cout = '0') report "addition error" severity failure;
        assert (tb_ov = '0') report "false positive: overflow" severity failure;

        --22
        tb_a <= "01";
        tb_b <= "01";
        tb_cin <= '1';
        wait for 10 ns;
        assert (tb_sum = "11" AND tb_cout = '0') report "addition error" severity failure;
        assert (tb_ov = '0') report "false positive: overflow" severity failure;

        --23
        tb_a <= "01";
        tb_b <= "10";
        tb_cin <= '1';
        wait for 10 ns;
        assert (tb_sum = "00" AND tb_cout = '1') report "addition error" severity failure;
        assert (tb_ov = '0') report "false positive: overflow" severity failure;

        --24
        tb_a <= "01";
        tb_b <= "11";
        tb_cin <= '1';
        wait for 10 ns;
        assert (tb_sum = "01" AND tb_cout = '1') report "addition error" severity failure;
        assert (tb_ov = '0') report "false positive: overflow" severity failure;

        --25
        tb_a <= "10";
        tb_b <= "00";
        tb_cin <= '1';
        wait for 10 ns;
        assert (tb_sum = "11" AND tb_cout = '0') report "addition error" severity failure;
        assert (tb_ov = '0') report "false positive: overflow" severity failure;
        
        --26
        tb_a <= "10";
        tb_b <= "01";
        tb_cin <= '1';
        wait for 10 ns;
        assert (tb_sum = "00" AND tb_cout = '1') report "addition error" severity failure;
        assert (tb_ov = '0') report "false positive: overflow" severity failure;

        --27
        tb_a <= "10";
        tb_b <= "10";
        tb_cin <= '1';
        wait for 10 ns;
        assert (tb_sum = "01" AND tb_cout = '1') report "addition error" severity failure;
        assert (tb_ov = '0') report "false positive: overflow" severity failure;

        --28
        tb_a <= "10";
        tb_b <= "11";
        tb_cin <= '1';
        wait for 10 ns;
        assert (tb_sum = "10" AND tb_cout = '1') report "addition error" severity failure;
        assert (tb_ov = '0') report "false positive: overflow" severity failure;

        --29
        tb_a <= "11";
        tb_b <= "00";
        tb_cin <= '1';
        wait for 10 ns;
        assert (tb_sum = "00" AND tb_cout = '1') report "addition error" severity failure;
        assert (tb_ov = '0') report "false positive: overflow" severity failure;

        --30
        tb_a <= "11";
        tb_b <= "01";
        tb_cin <= '1';
        wait for 10 ns;
        assert (tb_sum = "01" AND tb_cout = '1') report "addition error" severity failure;
        assert (tb_ov = '0') report "false positive: overflow" severity failure;

        --31
        tb_a <= "11";
        tb_b <= "10";
        tb_cin <= '1';
        wait for 10 ns;
        assert (tb_sum = "10" AND tb_cout = '1') report "addition error" severity failure;
        assert (tb_ov = '0') report "false positive: overflow" severity failure;

        --32
        tb_a <= "11";
        tb_b <= "11";
        tb_cin <= '1';
        wait for 10 ns;
        assert (tb_sum = "11" AND tb_cout = '1') report "addition error" severity failure;
        assert (tb_ov = '1') report "false negative: overflow" severity failure;
        
        wait;
    end process stimulus;
    
end architecture tb;